@echo off
title DSA_SD_COACH_4Oct2026
cd /d "C:\Users\glsri\repos\aaroh\DSA_SD_Coach\DSA_SD_Coach_04Oct2026"
if not exist .venv\Scripts\activate.bat (
  echo First run: creating virtual environment...
  python -m venv .venv
  call .venv\Scripts\activate.bat
  pip install -r requirements.txt
) else (
  call .venv\Scripts\activate.bat
)
python -m app.cli
pause
