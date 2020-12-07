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

"""Provides helper that initializes external repositories with third-party code."""

load("//dependency_support/boost:initialize.bzl", initialize_boost = "initialize")
load("//dependency_support/pybind11:initialize.bzl", initialize_pybind11 = "initialize")
load("@rules_python//python:pip.bzl", "pip_install")

def initialize_external_repositories(python_interpreter = None, python_interpreter_target = None):
    """Calls set-up methods for external repositories that require that."""
    initialize_boost()
    initialize_pybind11()
    pip_install(
        name = "com_google_open_silicon_bazel_pip_deps",
        requirements = "@com_google_open_silicon_bazel//dependency_support:pip_requirements.txt",
        python_interpreter = python_interpreter,
        python_interpreter_target = python_interpreter_target
    )
