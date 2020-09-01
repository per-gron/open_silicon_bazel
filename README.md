# Bazel rules for open silicon

This repository has Bazel rules for building and using tools for designing
silicon devices/chips with open source tools, initially focusing on the Skywater
130nm PDK.

There are some really great open source tools for this, but they are many, and
compiling everything into a working flow tends to involve many manual steps that
involve installing things in certain paths on your computer. This is not
particularly user friendly. This project sets out to simplify this by
configuring Bazel to perform all of these steps automatically: Nothing but Bazel
needs to be installed to build and use the tools.
