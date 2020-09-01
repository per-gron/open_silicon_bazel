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

"""Loads the spdlog logging library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_github_gabime_spdlog",
        urls = [
            "https://github.com/gabime/spdlog/archive/616caa5d30172b65cc3a06800894c575d70cb8e6.zip",  # 1.7.0, 2020-08-23
        ],
        strip_prefix = "spdlog-616caa5d30172b65cc3a06800894c575d70cb8e6",
        sha256 = "61d161fc0ab40f4b5a9a8fa1da696a880f8029cc01401edfa4628ffdc159379f",
        build_file = Label("//dependency_support/com_github_gabime_spdlog:bundled.BUILD.bazel"),
    )
