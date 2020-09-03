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

"""Loads the BAG analog circuit generator toolkit."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_bcanalog_bag",
        urls = [
            "https://github.com/bluecheetah/bag/archive/a496368ad8fc92ff0f5bf3bfb4ebaa45c540a104.zip",  # 2020-09-03
        ],
        strip_prefix = "bag-a496368ad8fc92ff0f5bf3bfb4ebaa45c540a104",
        sha256 = "796a60e9fab3f3f6fc3956c6b3611f4030e82c440e541ade8841ad6a79beeeca",
        build_file = Label("//dependency_support/com_bcanalog_bag:bundled.BUILD.bazel"),
    )
