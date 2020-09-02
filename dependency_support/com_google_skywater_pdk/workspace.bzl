# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Loads the Skywater open source process design kit."""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load(":cell_libraries.bzl", "CELL_LIBRARIES")

def _build_file(library_name):
    library = CELL_LIBRARIES[library_name]
    return """
load("@com_google_open_silicon_bazel//dependency_support/com_google_skywater_pdk:declare_cell_library.bzl", "declare_cell_library")
declare_cell_library("%s")
""" % library_name

def repo():
    maybe(
        http_archive,
        name = "com_google_skywater_pdk",
        urls = [
            "https://github.com/google/skywater-pdk/archive/8de719a7bb445bf56a6f1fe11db162ccc783f37d.tar.gz",  # 2020-09-01
        ],
        strip_prefix = "skywater-pdk-8de719a7bb445bf56a6f1fe11db162ccc783f37d",
        sha256 = "5abdb44d5283f82fb61cbee5db03ba8512f0b0e28a22c8705654afb6a928c150",
        build_file = Label("//dependency_support/com_google_skywater_pdk:bundled.BUILD.bazel"),
    )

    for library_name in CELL_LIBRARIES:
        library = CELL_LIBRARIES[library_name]
        maybe(
            new_git_repository,
            name = "com_google_skywater_pdk_" + library_name,
            commit = library["commit"],
            remote = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/%s.git" % library_name,
            shallow_since = library["shallow_since"],
            build_file_content = _build_file(library_name),
        )
