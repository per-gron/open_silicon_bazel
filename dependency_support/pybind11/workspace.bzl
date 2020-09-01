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

"""Registers Bazel workspaces for the Pybind11 Python<->C++ binding library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "pybind11_bazel",
        strip_prefix = "pybind11_bazel-203508e14aab7309892a1c5f7dd05debda22d9a5",
        urls = ["https://github.com/pybind/pybind11_bazel/archive/203508e14aab7309892a1c5f7dd05debda22d9a5.zip"],
        sha256 = "75922da3a1bdb417d820398eb03d4e9bd067c4905a4246d35a44c01d62154d91",
    )

    maybe(
        http_archive,
        name = "pybind11",
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        strip_prefix = "pybind11-b3d8fec066285c831b69fd77c092f1cc70e38882",
        urls = ["https://github.com/pybind/pybind11/archive/b3d8fec066285c831b69fd77c092f1cc70e38882.tar.gz"],  # 2020-08-24
        sha256 = "ad34de953b1f15629a784ca7f50adf726d3055df3fd31965b996011cb8f4330a",
    )
