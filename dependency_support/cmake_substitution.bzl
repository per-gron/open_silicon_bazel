"""TODO(pgron): Write module docstring."""
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

"""Replaces "#cmakedefine VARIABLE_NAME" with "#define VARIABLE_NAME VALUE", as
specified by a provided map."""

load("//dependency_support:automake_substitution.bzl", "automake_substitution")

def cmake_substitution(name, src, out, substitutions = {}, automake_substitutions = {}):
    """Replaces "#cmakedefine VARIABLE_NAME" with "#define VARIABLE_NAME VALUE".

    Note: The current implementation does not allow slashes in variable
    values."""

    substitution_pipe = " ".join([
        "| sed 's/#cmakedefine %s/#define %s %s/g'" % (variable_name, variable_name, substitutions[variable_name])
        for variable_name in substitutions.keys()
    ] + ["| sed 's/#cmakedefine \\(.*\\)/#undef \\1/g'"])
    native.genrule(
        name = name + "_intermediate",
        srcs = [src],
        outs = [out + ".automake"],
        cmd = "cat $(location :%s) %s > $@" % (src, substitution_pipe),
    )

    automake_substitution(
        name = name + "_automake",
        src = out + ".automake",
        out = out,
        substitutions = automake_substitutions,
    )
