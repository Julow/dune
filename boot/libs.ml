let executables = [ "main" ]

let external_libraries = [ "unix"; "csexp"; "threads.posix" ]

let local_libraries =
  [ ("vendor/dune/vendor/pp/src", Some "Pp", false, None)
  ; ("vendor/dune/otherlibs/dyn", Some "Dyn", false, None)
  ; ("vendor/dune/otherlibs/stdune-unstable/dune_filesystem_stubs",
    Some "Dune_filesystem_stubs", false, None)
  ; ("vendor/dune/otherlibs/stdune-unstable", Some "Stdune", false, None)
  ; ("vendor/dune/src/dune_lang", Some "Dune_lang", false, None)
  ; ("vendor/dune/vendor/incremental-cycles/src", Some "Incremental_cycles",
    false, None)
  ; ("vendor/dune/src/dag", Some "Dag", false, None)
  ; ("vendor/dune/src/fiber", Some "Fiber", false, None)
  ; ("vendor/dune/src/memo", Some "Memo", false, None)
  ; ("vendor/dune/otherlibs/xdg", Some "Xdg", false, None)
  ; ("vendor/dune/src/dune_util", Some "Dune_util", false, None)
  ; ("vendor/dune/src/dune_cache_storage", Some "Dune_cache_storage", false,
    None)
  ; ("vendor/dune/src/dune_cache", Some "Dune_cache", false, None)
  ; ("vendor/dune/vendor/re/src", Some "Dune_re", false, None)
  ; ("vendor/dune/vendor/opam-file-format/src", Some "Dune_opam_file_format",
    false, None)
  ; ("vendor/dune/otherlibs/dune-glob/src", Some "Dune_glob", false, None)
  ; ("vendor/dune/src/ocaml-config", Some "Ocaml_config", false, None)
  ; ("vendor/dune/otherlibs/action-plugin/src", Some "Dune_action_plugin",
    false, None)
  ; ("vendor/dune/src/chrome_trace", Some "Chrome_trace", false, None)
  ; ("vendor/dune/vendor/spawn/src", Some "Spawn", false, None)
  ; ("vendor/dune/src/dune_stats", Some "Dune_stats", false, None)
  ; ("vendor/dune/src/meta_parser", Some "Dune_meta_parser", false, None)
  ; ("vendor/dune/src/section", Some "Dune_section", false, None)
  ; ("vendor/dune/vendor/build_path_prefix_map/src",
    Some "Build_path_prefix_map", false, None)
  ; ("vendor/dune/otherlibs/dune-rpc/private", Some "Dune_rpc_private",
    false, None)
  ; ("vendor/dune/src/dune_rpc_server", Some "Dune_rpc_server", false, None)
  ; ("vendor/dune/src/thread_worker", Some "Thread_worker", false, None)
  ; ("vendor/dune/src/ocamlc_loc", Some "Ocamlc_loc", false, None)
  ; ("vendor/dune/vendor/ocaml-inotify/src", Some "Ocaml_inotify", false,
    None)
  ; ("vendor/dune/src/async_inotify_for_dune", Some "Async_inotify_for_dune",
    false, None)
  ; ("vendor/dune/src/dune_file_watcher", Some "Dune_file_watcher", false,
    None)
  ; ("vendor/dune/src/dune_engine", Some "Dune_engine", false, None)
  ; ("vendor/dune/src/dune_config", Some "Dune_config", false, None)
  ; ("vendor/dune/src/dune_rules", Some "Dune_rules", true, None)
  ; ("vendor/dune/src/upgrader", Some "Dune_upgrader", false, None)
  ; ("vendor/dune/vendor/cmdliner/src", None, false, None)
  ; ("vendor/dune/otherlibs/build-info/src", Some "Build_info", false,
    Some "Build_info_data")
  ; ("vendor/dune/src/csexp_rpc", Some "Csexp_rpc", false, None)
  ; ("vendor/dune/src/dune_rpc_impl", Some "Dune_rpc_impl", false, None)
  ]
