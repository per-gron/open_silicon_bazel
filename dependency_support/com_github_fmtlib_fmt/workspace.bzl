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

"""Loads the {fmt} formatting library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_github_fmtlib_fmt",
        urls = [
            "https://github.com/fmtlib/fmt/archive/cd4af11efc9c622896a3e4cb599fa28668ca3d05.zip",  # 7.0.3, 2020-08-23
        ],
        strip_prefix = "fmt-cd4af11efc9c622896a3e4cb599fa28668ca3d05",
        sha256 = "ec792b71c30b871262894fd5cf64b8b0553ef7b7831ab84352db37e46b61b73e",
        build_file = Label("//dependency_support/com_github_fmtlib_fmt:bundled.BUILD.bazel"),
    )
