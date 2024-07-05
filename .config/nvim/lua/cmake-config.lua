require("cmake-tools").setup {
    build_folder = "build",
    build_target = "all",
    run_target = "run",
    build_type = "Debug",
    generator = "Ninja",
    cmake_args = "",
    extra_args = "",
    source_dir = "",
    build_dir = "",
    run_args = "",
    run_in_terminal = true,
    lint_on_save = true,
    lint_executable = "cppcheck",
    lint_args = "",
    lint_ignore = "",
    lint_severity = "error",
    lint_patterns = {
        "error: ",
        "warning: ",
        "note: ",
        "error C",
        "warning C",
        "note C",
    },
    lint_source_extensions = {
        ".cpp",
        ".h",
        ".hpp",
        ".c",
        ".cc",
        ".cxx",
        ".hxx",
    },
    lint_header_extensions = {
        ".h",
        ".hpp",
        ".hxx",
    },
    lint_ignore_patterns = {
        "CMakeFiles",
        "build",
        "cmake-build-debug",
        "cmake-build-release",
        "CMakeCache",
        "CMakeScripts",
        "CMakeTmp",
        "CMakeInstall",
        "CMakeTools",
        "CMakeLists",
        "CMakeUser",
        "CMakeDetermine",
        "CMakeOutput",
        "CMakeDownload",
        "CMakeServer",
        "CMakeInclude",
        "CMakeFiles",
        "CMakeTmp",
        "CMakeScripts",
        "CMakeInstall",
        "CMakeTools",
        "CMakeLists",
        "CMakeUser",
        "CMakeDetermine",
        "CMakeOutput",
        "CMakeDownload",
        "CMakeServer",
        "CMakeInclude",
    },
    lint_severity_map = {
        error = "Error",
        warning = "Warning",
        note = "Note",
    },
    lint_executable_map = {
        cppcheck = "cppcheck",
        cpplint = "cpplint",
        clangtidy = "clang-tidy",
        clangformat = "clang-format",
        clangd = "clangd",
        ccls = "ccls",
        cquery = "cquery",
        ctags = "ctags",
        cscope = "cscope",
        ccache = "ccache",
        make = "make",
    },
}