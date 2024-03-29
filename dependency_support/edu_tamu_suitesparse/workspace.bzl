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

"""Loads the SuiteSparse suite of matrix software."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "edu_tamu_suitesparse",
        urls = [
            "https://github.com/DrTimothyAldenDavis/SuiteSparse/archive/v5.8.1.zip",  # 2020-08-28
        ],
        strip_prefix = "SuiteSparse-5.8.1",
        sha256 = "54f6dcb31aea6407e80ea2a36a2b98e0d53873452928a641b4399302a54286c6",
        build_file = Label("//dependency_support/edu_tamu_suitesparse:bundled.BUILD.bazel"),
    )
