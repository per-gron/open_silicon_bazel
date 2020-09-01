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

"""Loads the Xyce SPICE compatible circuit simulator."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "gov_sandia_xyce",
        urls = [
            "https://github.com/Xyce/Xyce/archive/Release-7.1.0.zip",  # 2020-08-28
        ],
        strip_prefix = "Xyce-Release-7.1.0",
        sha256 = "c3a5ab4f48b42f9f4dac78f72add9db0c313d6d28670b10b458b18bfd468871f",
        build_file = Label("//dependency_support/gov_sandia_xyce:bundled.BUILD.bazel"),
        patches = [
            "@com_google_open_silicon_bazel//dependency_support/gov_sandia_xyce:streambuf.patch",
            "@com_google_open_silicon_bazel//dependency_support/gov_sandia_xyce:cxx17.patch",
            "@com_google_open_silicon_bazel//dependency_support/gov_sandia_xyce:static_init.patch",
        ],
    )

    maybe(
        http_archive,
        name = "gov_sandia_xyce_regression",
        urls = [
            "https://github.com/Xyce/Xyce_Regression/archive/Release-7.1.0.tar.gz",
        ],
        strip_prefix = "Xyce_Regression-Release-7.1.0",
        sha256 = "5a33813b93022c9890f2896524d4ec61bedee40f5cf7de17c1d3303c608816dc",
        build_file = Label("//dependency_support/gov_sandia_xyce:bundled_regression.BUILD.bazel"),
    )
