@echo off
echo ============================================
echo  AcademiCheck v2 - Starting Application
echo ============================================
echo.
echo Starting Backend (FastAPI) on http://localhost:8000
echo Starting Frontend (React)  on http://localhost:3000
echo.
echo Press Ctrl+C in each window to stop.
echo.

:: Start backend in new window
start "AcademiCheck Backend" cmd /k "cd backend && venv\Scripts\activate && uvicorn main:app --reload --port 8000"

:: Wait 3 seconds for backend to start
timeout /t 3 /nobreak >nul

:: Start frontend in new window
start "AcademiCheck Frontend" cmd /k "cd frontend && npm run dev"

:: Open browser
timeout /t 5 /nobreak >nul
start http://localhost:3000

echo Both servers are running!
echo Backend API docs: http://localhost:8000/docs
echo Frontend app:     http://localhost:3000
pause
