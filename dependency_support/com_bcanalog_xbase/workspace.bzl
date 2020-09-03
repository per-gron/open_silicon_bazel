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

"""Loads the Xbase framework for layout generators in BAG."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "com_bcanalog_xbase",
        urls = [
            "https://github.com/bluecheetah/xbase/archive/224059464fb60add4532cb2d5b85780698be1ab9.zip",  # 2020-09-03
        ],
        strip_prefix = "xbase-224059464fb60add4532cb2d5b85780698be1ab9",
        sha256 = "198b33c974f3e9e472854561450a610eb27394fc9f45099d162e5ee923ee2170",
        build_file = Label("//dependency_support/com_bcanalog_xbase:bundled.BUILD.bazel"),
    )
