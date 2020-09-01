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

"""Loads the PYBAG Polygon wrapper library for CBAG."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_bcanalog_pybag",
        urls = [
            "https://github.com/bluecheetah/pybag/archive/00ef50ecefc5e337c8fe9877c1813129d2163dcc.zip",  # 2020-08-23
        ],
        strip_prefix = "pybag-00ef50ecefc5e337c8fe9877c1813129d2163dcc",
        sha256 = "5260379c8aced4328a46268556a814ae6374ad52a007d7427e3e52aa1b572477",
        build_file = Label("//dependency_support/com_bcanalog_pybag:bundled.BUILD.bazel"),
    )
