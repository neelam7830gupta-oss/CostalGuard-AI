@echo off
echo.
echo ============================================================
echo   CoastalGuard AI - Setup ^& Launch Script
echo ============================================================
echo.

:: Check for Node.js
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed!
    echo.
    echo Please install Node.js from: https://nodejs.org/en/download
    echo Recommended: LTS version 18 or 20
    echo.
    pause
    exit /b 1
)

echo [OK] Node.js found:
node --version
echo.

:: Check for npm
where npm >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] npm not found. Please reinstall Node.js.
    pause
    exit /b 1
)

:: Create .env if it doesn't exist
if not exist ".env" (
    echo [INFO] Creating .env from .env.example...
    copy .env.example .env
    echo.
    echo [IMPORTANT] Edit .env and set your GROQ_API_KEY before starting!
    echo.
    notepad .env
)

:: Install dependencies
echo [INFO] Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo [ERROR] npm install failed!
    pause
    exit /b 1
)

echo.
echo [OK] Dependencies installed!
echo.
echo ============================================================
echo   Starting CoastalGuard AI Server...
echo   Open: http://localhost:3000
echo ============================================================
echo.

:: Start the server
call npm start

pause
