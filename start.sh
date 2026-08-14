#!/bin/bash
echo ""
echo "============================================================"
echo "  CoastalGuard AI - Setup & Launch Script"
echo "============================================================"
echo ""

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo "[ERROR] Node.js is not installed!"
    echo ""
    echo "Install with: curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -"
    echo "Then: sudo apt-get install -y nodejs"
    echo ""
    exit 1
fi

echo "[OK] Node.js: $(node --version)"
echo ""

# Create .env if missing
if [ ! -f ".env" ]; then
    echo "[INFO] Creating .env from .env.example..."
    cp .env.example .env
    echo ""
    echo "[IMPORTANT] Edit .env and set your GROQ_API_KEY before starting!"
    echo "  nano .env"
    echo ""
    exit 0
fi

# Install dependencies
echo "[INFO] Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "[ERROR] npm install failed!"
    exit 1
fi

echo ""
echo "[OK] Dependencies installed!"
echo ""
echo "============================================================"
echo "  Starting CoastalGuard AI Server..."
echo "  Open: http://localhost:3000"
echo "============================================================"
echo ""

npm start
