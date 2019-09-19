`preprocessor_deps` is provided without `preprocess` and is ignored.
Should warn.

  $ dune build
  File "dune", line 4, characters 1-39:
  4 |  (preprocessor_deps does-not-exist.txt))
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  Error: This preprocessor_deps field will be ignored because there is no
  preprocessor configured.
  [1]
