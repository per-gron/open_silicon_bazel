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

"""Loads the FFTW fast fourier transform library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_github_flang_compiler_flang",
        urls = [
            "https://github.com/flang-compiler/flang/releases/download/flang_20190329/flang-20190329-x86-70.tgz",  # 2020-10-31
        ],
        sha256 = "5d1ef681f7d7239c1c125e5bbee17124b0477f76405c69655a2d2a45979b2949",
        build_file = Label("//dependency_support/org_netlib_lapack:flang.BUILD.bazel"),
    )

    maybe(
        http_archive,
        name = "org_netlib_lapack",
        urls = [
            "https://github.com/Reference-LAPACK/lapack/archive/v3.9.0.tar.gz",  # 2020-10-31
        ],
        strip_prefix = "lapack-3.9.0",
        sha256 = "106087f1bb5f46afdfba7f569d0cbe23dacb9a07cd24733765a0e89dbe1ad573",
        build_file = Label("//dependency_support/org_netlib_lapack:bundled.BUILD.bazel"),
    )
