(lang dune 2.0)
(name dune)

(generate_opam_files true)

(license MIT)
(maintainers "Jane Street Group, LLC <opensource@janestreet.com>")
(authors "Jane Street Group, LLC <opensource@janestreet.com>")
(source (github ocaml/dune))
(documentation "https://dune.readthedocs.io/")

(package
 (name dune)
 (depends
  (ocaml (>= 4.02))
  base-unix
  base-threads)
 (conflicts
  (odoc (< 1.3.0))
  (dune-release (< 1.3.0))
  (jbuilder (= transition)))
 (synopsis "Fast, portable, and opinionated build system")
 (description "
dune is a build system that was designed to simplify the release of
Jane Street packages. It reads metadata from \"dune\" files following a
very simple s-expression syntax.

dune is fast, has very low-overhead, and supports parallel builds on
all platforms. It has no system dependencies; all you need to build
dune or packages using dune is OCaml. You don't need make or bash
as long as the packages themselves don't use bash explicitly.

dune supports multi-package development by simply dropping multiple
repositories into the same directory.

It also supports multi-context builds, such as building against
several opam roots/switches simultaneously. This helps maintaining
packages across several versions of OCaml and gives cross-compilation
for free.
"))

(package
 (name dune-build-info)
 (depends
  (ocaml (>= 4.02))
  (dune (>= 1.11)))
 (synopsis "Embed build informations inside executable")
 (description "\
The build-info library allows to access information about how the
executable was built, such as the version of the project at which it
was built or the list of statically linked libraries with their
versions.  It supports reporting the version from the version control
system during development to get an precise reference of when the
executable was built.
"))
