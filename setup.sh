#!/bin/bash
echo "[*] begining code download..."
git clone https://github.com/Mequam/samgobmatrix.git
cd samgobmatrix
git submodule update --init --recursive

echo "[*] starting virtual environment..."
python -m venv .venv
source .venv/bin/activate

echo "[*] intalling pythonic dependencies..."
python -m pip install -r ./requirements.txt

echo "[*] finished, performing unit tests..."
python -m unittest -v
