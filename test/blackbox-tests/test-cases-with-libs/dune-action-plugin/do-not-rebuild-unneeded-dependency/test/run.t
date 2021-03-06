This test checks that in case the dependency of multi staged computation changes,
only the dependencies up to this stage are rebuilt.

  $ echo "(lang dune 2.0)" > dune-project

  $ cat > dune << EOF
  > (rule
  >  (deps   bar_source)
  >  (target bar)
  >  (action
  >   (progn
  >    (echo "Building bar!\n")
  >    (copy %{deps} %{target}))))
  > \
  > (rule
  >  (deps   foo_source)
  >  (target foo)
  >  (action
  >   (progn
  >    (echo "Building foo!\n")
  >    (copy %{deps} %{target}))))
  > \
  > (rule
  >  (deps   foo_or_bar_source)
  >  (target foo_or_bar)
  >  (action
  >   (progn
  >    (echo "Building foo_or_bar!\n")
  >    (copy %{deps} %{target}))))
  > \
  > (alias
  >  (name runtest)
  >  (action (dynamic-run ./client.exe)))
  > EOF

  $ cp ../bin/client.exe ./

  $ printf "foo" > foo_or_bar_source
  $ printf "Hello from foo!" > foo_source
  $ printf "SHOULD NOT BE PRINTED!" > bar_source

  $ dune runtest --display short
        client alias runtest
  Building foo_or_bar!
        client alias runtest
  Building foo!
        client alias runtest
  Hello from foo!

  $ printf "bar" > foo_or_bar_source
  $ printf "SHOULD NOT BE PRINTED!" > foo_source
  $ printf "Hello from bar!" > bar_source

  $ dune runtest --display short
  Building foo_or_bar!
        client alias runtest
        client alias runtest
  Building bar!
        client alias runtest
  Hello from bar!
