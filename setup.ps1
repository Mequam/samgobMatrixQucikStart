git clone https://github.com/Mequam/samgobmatrix.git
cd samgobmatrix
git submodule update --init --recursive
python -m venv .venv
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
./.venv\\Scripts\\activate
python -m pip install -r ./requirements.txt
