@echo off
echo ============================================
echo  AcademiCheck v2 - Setup Script (Windows)
echo ============================================
echo.

echo [1/5] Creating backend virtual environment...
cd backend
python -m venv venv
call venv\Scripts\activate

echo [2/5] Installing backend dependencies...
pip install --upgrade pip
pip install -r requirements.txt

echo [3/5] Downloading NLP models...
python -c "import nltk; nltk.download('punkt'); nltk.download('punkt_tab'); nltk.download('stopwords')"
pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-3.7.1/en_core_web_sm-3.7.1-py3-none-any.whl

echo [4/5] Generating dataset and training model...
python train.py

echo [5/5] Backend ready!
cd ..

echo.
echo ============================================
echo  Now install frontend (requires Node.js)
echo ============================================
cd frontend
npm install
cd ..

echo.
echo Setup complete! Run start.bat to launch the app.
pause
