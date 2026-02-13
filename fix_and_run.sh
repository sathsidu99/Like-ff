#!/bin/bash

echo "🔧 FIXING FREE FIRE LIKE BOOSTER DEPLOYMENT"
echo "============================================"

# Create necessary directories
echo "📁 Creating directories..."
mkdir -p templates
mkdir -p static

# Install required packages
echo "📦 Installing Python packages..."
pip install flask requests aiohttp pycryptodome protobuf googleapis-common-protos werkzeug

# Create token files with sample data if they don't exist
echo "🔑 Creating token files..."

# IND token file
if [ ! -f "token_ind.json" ]; then
    echo '[{"token": "sample_token_ind_1"}, {"token": "sample_token_ind_2"}]' > token_ind.json
    echo "  ✅ Created token_ind.json"
fi

# BR token file
if [ ! -f "token_br.json" ]; then
    echo '[{"token": "sample_token_br_1"}, {"token": "sample_token_br_2"}]' > token_br.json
    echo "  ✅ Created token_br.json"
fi

# BD token file
if [ ! -f "token_bd.json" ]; then
    echo '[{"token": "sample_token_bd_1"}, {"token": "sample_token_bd_2"}]' > token_bd.json
    echo "  ✅ Created token_bd.json"
fi

# Visit token files
if [ ! -f "token_ind_visit.json" ]; then
    echo '[{"token": "visit_token_ind_1"}]' > token_ind_visit.json
    echo "  ✅ Created token_ind_visit.json"
fi

if [ ! -f "token_br_visit.json" ]; then
    echo '[{"token": "visit_token_br_1"}]' > token_br_visit.json
    echo "  ✅ Created token_br_visit.json"
fi

if [ ! -f "token_bd_visit.json" ]; then
    echo '[{"token": "visit_token_bd_1"}]' > token_bd_visit.json
    echo "  ✅ Created token_bd_visit.json"
fi

echo ""
echo "🚀 Starting Flask server on port 5001..."
echo "🌐 Access the website at: http://localhost:5001"
echo ""

# Run the app
python app.py