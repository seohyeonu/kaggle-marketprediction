#!/bin/bash

set -e

echo "🔧 Committing changes..."
git add .
git commit -m "Update notebook on $(date '+%Y-%m-%d %H:%M:%S')"

echo "📤 Pushing to GitHub..."
git push

echo "🚀 Pushing updated notebook to Kaggle..."
kaggle kernels push -p "$(pwd)"

echo "✅ Sync complete!"
