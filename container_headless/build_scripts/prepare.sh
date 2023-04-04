#!/bin/bash

mkdir -p "${TARGET_DIR}" && cd "${TARGET_DIR}" && \
git clone https://github.com/vim/vim.git && \
cd vim
