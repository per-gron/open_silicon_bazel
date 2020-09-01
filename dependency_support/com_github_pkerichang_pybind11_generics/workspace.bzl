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

"""Loads the pybind11_generics Pybind11 helper library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_github_pkerichang_pybind11_generics",
        urls = [
            "https://github.com/bluecheetah/pybind11_generics/archive/0e7b98b91533b9f7e0a96ccf21fc0b7f78036f9c.zip",  # 2020-08-23
        ],
        strip_prefix = "pybind11_generics-0e7b98b91533b9f7e0a96ccf21fc0b7f78036f9c",
        sha256 = "0b7753d1a59bf5c9e976abb421277d32e01b4f02b9d50f9bbd8f509d87475369",
        build_file = Label("//dependency_support/com_github_pkerichang_pybind11_generics:bundled.BUILD.bazel"),
        patches = [
            "@com_google_open_silicon_bazel//dependency_support/com_github_pkerichang_pybind11_generics:clang.patch",
        ],
    )
