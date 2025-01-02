echo "begining download..."
git clone https://github.com/Mequam/samgobmatrix.git
cd samgobmatrix
git submodule update --init --recursive

echo "setting up virtual enviornment..."
python -m venv .venv
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
./.venv\\Scripts\\activate

echo "installing pythonic dependencies..."
python -m pip install -r ./requirements.txt

echo "finished install, performing unit tests..."
python -m unittest -v
