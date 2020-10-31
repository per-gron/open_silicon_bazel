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

"""Provides helper that loads external repositories with third-party code."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//dependency_support/boost:workspace.bzl", repo_boost = "repo")
load("//dependency_support/com_bcanalog_bag:workspace.bzl", repo_bag = "repo")
load("//dependency_support/com_bcanalog_cbag_polygon:workspace.bzl", repo_cbag_polygon = "repo")
load("//dependency_support/com_bcanalog_cbag:workspace.bzl", repo_cbag = "repo")
load("//dependency_support/com_bcanalog_pybag:workspace.bzl", repo_pybag = "repo")
load("//dependency_support/com_bcanalog_xbase:workspace.bzl", repo_xbase = "repo")
load("//dependency_support/com_github_fmtlib_fmt:workspace.bzl", repo_fmt = "repo")
load("//dependency_support/com_github_gabime_spdlog:workspace.bzl", repo_spdlog = "repo")
load("//dependency_support/com_github_pkerichang_pybind11_generics:workspace.bzl", repo_pybind11_generics = "repo")
load("//dependency_support/com_github_westes_flex:workspace.bzl", repo_flex = "repo")
load("//dependency_support/com_google_skywater_pdk:workspace.bzl", repo_skywater_pdk = "repo")
load("//dependency_support/com_opencircuitdesign_magic:workspace.bzl", repo_magic = "repo")
load("//dependency_support/com_opencircuitdesign_netgen:workspace.bzl", repo_netgen = "repo")
load("//dependency_support/edu_tamu_suitesparse:workspace.bzl", repo_suitesparse = "repo")
load("//dependency_support/gov_sandia_xyce:workspace.bzl", repo_xyce = "repo")
load("//dependency_support/net_invisible_island_ncurses:workspace.bzl", repo_ncurses = "repo")
load("//dependency_support/org_fftw:workspace.bzl", repo_fftw = "repo")
load("//dependency_support/org_gnu_bison:workspace.bzl", repo_bison = "repo")
load("//dependency_support/org_gnu_m4:workspace.bzl", repo_m4 = "repo")
load("//dependency_support/org_gnu_readline:workspace.bzl", repo_readline = "repo")
load("//dependency_support/org_netlib_lapack:workspace.bzl", repo_lapack = "repo")
load("//dependency_support/org_trilinos:workspace.bzl", repo_trilinos = "repo")
load("//dependency_support/org_tuxfamily_eigen:workspace.bzl", repo_eigen = "repo")
load("//dependency_support/pybind11:workspace.bzl", repo_pybind11 = "repo")
load("//dependency_support/tk_tcl_tcl:workspace.bzl", repo_tcl = "repo")
load("//dependency_support/zlib:workspace.bzl", repo_zlib = "repo")

def load_external_repositories():
    """Loads external repositories with third-party code."""
    repo_boost()
    repo_bag()
    repo_cbag_polygon()
    repo_cbag()
    repo_pybag()
    repo_xbase()
    repo_fmt()
    repo_spdlog()
    repo_pybind11_generics()
    repo_flex()
    repo_skywater_pdk()
    repo_magic()
    repo_netgen()
    repo_suitesparse()
    repo_xyce()
    repo_ncurses()
    repo_fftw()
    repo_bison()
    repo_m4()
    repo_readline()
    repo_lapack()
    repo_trilinos()
    repo_eigen()
    repo_pybind11()
    repo_tcl()
    repo_zlib()

    maybe(
        http_archive,
        name = "com_google_googletest",
        urls = ["https://github.com/google/googletest/archive/0eea2e9fc63461761dea5f2f517bd6af2ca024fa.zip"],  # 2020-04-30
        strip_prefix = "googletest-0eea2e9fc63461761dea5f2f517bd6af2ca024fa",
        sha256 = "9463ff914d7c3db02de6bd40a3c412a74e979e3c76eaa89920a49ff8488d6d69",
    )

    maybe(
        http_archive,
        name = "com_google_absl",
        strip_prefix = "abseil-cpp-a1d6689907864974118e592ef2ac7d716c576aad",
        urls = ["https://github.com/abseil/abseil-cpp/archive/a1d6689907864974118e592ef2ac7d716c576aad.zip"],
        sha256 = "53b78ffe87db3c737feddda52fa10dcdb75e2d85eed1cb1c5bfd77ca22e53e53",
    )

    maybe(
        http_archive,
        name = "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz",
        sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
    )

    maybe(
        http_archive,
        name = "com_github_jbeder_yaml_cpp",
        urls = [
            "https://github.com/jbeder/yaml-cpp/archive/98acc5a8874faab28b82c28936f4b400b389f5d6.zip",  # 2020-08-23
        ],
        strip_prefix = "yaml-cpp-98acc5a8874faab28b82c28936f4b400b389f5d6",
        sha256 = "8f53f003dfa958b932cd8a289f08cfd062193aa4728fc8f5156d186cd01a0313",
    )
