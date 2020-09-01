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

"""Loads the CBAG Polygon integer polygon manipulation library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_bcanalog_cbag_polygon",
        urls = [
            "https://github.com/bluecheetah/cbag_polygon/archive/2c00d8c768fca40ced7905f77b4e3dad49c0b85b.zip",  # 2020-08-23
        ],
        strip_prefix = "cbag_polygon-2c00d8c768fca40ced7905f77b4e3dad49c0b85b",
        sha256 = "260e20ca979b1db41cfd7d51c7e860a892fc4447abaa0b0856839c9fc488b413",
        build_file = Label("//dependency_support/com_bcanalog_cbag_polygon:bundled.BUILD.bazel"),
    )
