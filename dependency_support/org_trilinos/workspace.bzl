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

"""Loads the Trilinos collection of reusable scientific software libraries."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "org_trilinos",
        urls = [
            "https://github.com/trilinos/Trilinos/archive/89b8c7f016c247568f7c9c1f32d250c8d2683de0.zip",  # 2020-08-28: 12.12.1, required by Xyce
        ],
        strip_prefix = "Trilinos-89b8c7f016c247568f7c9c1f32d250c8d2683de0",
        sha256 = "91c8a6ad5011ea6928602e5d86de03928e89f3abfa22b1227cfb6efa4ce8c813",
        build_file = Label("//dependency_support/org_trilinos:bundled.BUILD.bazel"),
        patches = [
            "@com_google_open_silicon_bazel//dependency_support/org_trilinos:cxx17.patch",
        ],
    )
