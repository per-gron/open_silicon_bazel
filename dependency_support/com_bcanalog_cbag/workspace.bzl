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

"""Loads the CBAG schematic and layout database library library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_bcanalog_cbag",
        urls = [
            "https://github.com/bluecheetah/cbag/archive/804c491406ff0cdfcf70cefd88edd1eaefbc52f9.zip",  # 2020-08-23
        ],
        strip_prefix = "cbag-804c491406ff0cdfcf70cefd88edd1eaefbc52f9",
        sha256 = "281d14d131f0e2f2694e0660d68e77d5d858f310c923ad725b90a6af29559ab7",
        build_file = Label("//dependency_support/com_bcanalog_cbag:bundled.BUILD.bazel"),
        patches = [
            "@com_google_open_silicon_bazel//dependency_support/com_bcanalog_cbag:clang.patch",
        ],
    )
