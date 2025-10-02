# Quarto Build and Preview Script for Potato Disease Detection Project

# Install Quarto (if not already installed)
# Download from: https://quarto.org/docs/get-started/

# Build the entire website
Write-Host "Building Quarto website..." -ForegroundColor Green
quarto render

# Preview the website locally
Write-Host "Starting preview server..." -ForegroundColor Green
quarto preview

# Alternative commands:

# Render specific document
# quarto render index.qmd

# Render to different formats
# quarto render --to pdf
# quarto render --to docx

# Publish to GitHub Pages (requires setup)
# quarto publish gh-pages

Write-Host "Quarto documentation is ready!" -ForegroundColor Cyan
Write-Host "Access your documentation at: http://localhost:4000" -ForegroundColor Yellow