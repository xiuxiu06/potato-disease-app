# Build and Deploy Script for Combined Deployment
Write-Host "Building React Frontend..." -ForegroundColor Green

# Navigate to frontend and build
Set-Location frontend
npm install
npm run build

# Copy build to app directory for Quarto site
Set-Location ..
if (Test-Path "app") { Remove-Item -Recurse -Force "app" }
Copy-Item -Recurse "frontend/build" "app"

Write-Host "Building Quarto Documentation..." -ForegroundColor Green

# Build Quarto site (which will now include the React app)
quarto render

Write-Host "Deploying to GitHub Pages..." -ForegroundColor Green

# Deploy to GitHub Pages
quarto publish gh-pages --no-prompt

Write-Host "✅ Deployment Complete!" -ForegroundColor Cyan
Write-Host "📖 Documentation: https://xiuxiu06.github.io/potato-disease-app/" -ForegroundColor Yellow
Write-Host "⚛️ React App: https://xiuxiu06.github.io/potato-disease-app/app/" -ForegroundColor Yellow