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

"""Has metadata about the cell libraries in the PDK.

This is used by the Bazel rules to set up the proper workspaces and targets."""

# The following is a list of cell libraries in the PDK. Each cell library has the
# git commit to use and a list of process corners.
#
# This list is manually curated and needs to be updated when upgrading to newer
# cell library versions.
CELL_LIBRARIES = {
    "sky130_fd_sc_hd": {
        "commit": "74c2ab17ad6c7749f3cd503d28c42758ddb98e23",  # v0.0.2, 2020-09-01
        "shallow_since": "1595647393 -0700",
        "corners": {
            "ff_100C_1v65": ["basic"],
            "ff_100C_1v95": ["basic"],
            "ff_n40C_1v56": ["basic"],
            "ff_n40C_1v65": ["basic"],
            "ff_n40C_1v76": ["basic"],
            "ff_n40C_1v95": ["basic", "ccsnoise"],
            "ss_100C_1v40": ["basic"],
            "ss_100C_1v60": ["basic"],
            "ss_n40C_1v28": ["basic"],
            "ss_n40C_1v35": ["basic"],
            "ss_n40C_1v40": ["basic"],
            "ss_n40C_1v44": ["basic"],
            "ss_n40C_1v60": ["basic", "ccsnoise"],
            "ss_n40C_1v76": ["basic"],
            "tt_025C_1v80": ["basic"],
            "tt_100C_1v80": ["basic"],
        },
    },
    "sky130_fd_sc_hdll": {
        "commit": "8cc94d234e6c72441a7b1d255f50468944530b84",  # v0.1.1, 2020-09-01
        "shallow_since": "1595647438 -0700",
        "corners": {
            "ff_100C_1v65": ["basic"],
            "ff_100C_1v95": ["basic"],
            "ff_n40C_1v56": ["basic"],
            "ff_n40C_1v65": ["basic"],
            "ff_n40C_1v95": ["basic", "ccsnoise"],
            "ss_100C_1v60": ["basic"],
            "ss_n40C_1v28": ["basic"],
            "ss_n40C_1v44": ["basic"],
            "ss_n40C_1v60": ["basic", "ccsnoise"],
            "ss_n40C_1v76": ["basic"],
            "tt_025C_1v80": ["basic"],
        },
    },
    "sky130_fd_sc_hs": {
        "commit": "5e6297f4c63b7e05c182e2fe671c16c4a5aac9af",  # v0.0.2, 2020-09-01
        "shallow_since": "1595647602 -0700",
        "corners": {
            "ff_100C_1v95": ["basic"],
            "ff_150C_1v95": ["basic"],
            "ff_n40C_1v56": ["basic"],
            "ff_n40C_1v76": ["basic"],
            "ff_n40C_1v95": ["basic", "ccsnoise"],
            "ss_100C_1v60": ["basic"],
            "ss_150C_1v60": ["basic"],
            "ss_n40C_1v28": ["basic"],
            "ss_n40C_1v44": ["basic"],
            "ss_n40C_1v60": ["basic", "ccsnoise"],
            "tt_025C_1v20": ["basic"],
            "tt_025C_1v35": ["basic"],
            "tt_025C_1v44": ["basic"],
            "tt_025C_1v50": ["basic"],
            "tt_025C_1v62": ["basic"],
            "tt_025C_1v68": ["basic"],
            "tt_025C_1v80": ["basic", "ccsnoise"],
            "tt_025C_1v89": ["basic"],
            "tt_025C_2v10": ["basic"],
            "tt_100C_1v80": ["basic"],
            "tt_150C_1v80": ["basic"],
        },
    },
    "sky130_fd_sc_ls": {
        "commit": "9f0322409f9edcb831d8ffcd409c699f377010ed",  # v0.0.2, 2020-09-01
        "shallow_since": "1591047380 -0700",
        "corners": {
            "ff_085C_1v95": ["basic"],
            "ff_100C_1v65_dest1v76_destvpb1v76_ka1v76": ["basic"],
            "ff_100C_1v95": ["basic"],
            "ff_150C_1v95": ["basic"],
            "ff_n40C_1v56": ["basic"],
            "ff_n40C_1v65_dest1v76_destvpb1v76_ka1v76": ["basic"],
            "ff_n40C_1v76": ["basic"],
            "ff_n40C_1v95": ["basic", "ccsnoise"],
            "ss_100C_1v40": ["basic"],
            "ss_100C_1v60": ["basic"],
            "ss_150C_1v60": ["basic"],
            "ss_n40C_1v28": ["basic"],
            "ss_n40C_1v35": ["basic"],
            "ss_n40C_1v40": ["basic"],
            "ss_n40C_1v44": ["basic"],
            "ss_n40C_1v60": ["basic", "ccsnoise"],
            "ss_n40C_1v76": ["basic"],
            "tt_025C_1v80": ["basic", "ccsnoise"],
            "tt_100C_1v80": ["basic"],
        },
    },
    "sky130_fd_sc_ms": {
        "commit": "191a2bf03baf82d2dac0e4b35b631e7a319e7116",  # v0.1.1, 2020-09-01
        "shallow_since": "1595647761 -0700",
        "corners": {
            "ff_085C_1v95": ["leakage"],
            "ff_100C_1v65": ["basic"],
            "ff_100C_1v95": ["basic", "leakage"],
            "ff_150C_1v95": ["basic"],
            "ff_n40C_1v56": ["basic"],
            "ff_n40C_1v65_ka1v76": ["basic"],
            "ff_n40C_1v76": ["basic"],
            "ff_n40C_1v95": ["basic", "ccsnoise", "leakage"],
            "ss_100C_1v60": ["basic"],
            "ss_150C_1v60": ["basic"],
            "ss_n40C_1v28": ["basic"],
            "ss_n40C_1v44": ["basic"],
            "ss_n40C_1v60": ["basic", "ccsnoise"],
            "tt_025C_1v80": ["basic", "ccsnoise"],
            "tt_100C_1v80": ["basic"],
        },
    },
}
