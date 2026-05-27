#!/bin/bash
# Deploy to both Quick and GitHub Pages
set -e

echo "Deploying to Quick..."
quick deploy . champion-starter-kit -f

echo "Pushing to GitHub (triggers GitHub Pages deploy)..."
git add -A
git commit -m "${1:-Update site}" 2>/dev/null || echo "Nothing to commit"
git push origin main

echo "✅ Deployed to:"
echo "   https://champion-starter-kit.quick.shopify.io"
echo "   https://ryleegrace1.github.io/champion-starter-kit/"
