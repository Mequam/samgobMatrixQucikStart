#!/bin/bash
git clone https://github.com/Mequam/samgobmatrix.git
cd samgobmatrix
git submodule update --init --recursive
python -m venv .venv
source .venv/bin/activate
python -m pip install -r ./requirements.txt
