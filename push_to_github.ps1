Write-Host "========================================" -ForegroundColor Green
Write-Host "    Pushing Olist Project to GitHub" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

Write-Host "Step 1: Checking current git status..." -ForegroundColor Yellow
git status

Write-Host ""
Write-Host "Step 2: Setting up remote repository..." -ForegroundColor Yellow
git remote set-url origin https://github.com/SumitPariyar/olist-ecommerce-analysis.git

Write-Host ""
Write-Host "Step 3: Attempting to push to GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host ""
    Write-Host "✅ SUCCESS! Project pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your project is now available at:" -ForegroundColor Cyan
    Write-Host "https://github.com/SumitPariyar/olist-ecommerce-analysis" -ForegroundColor Cyan
} catch {
    Write-Host ""
    Write-Host "❌ Repository doesn't exist yet on GitHub" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please create the repository first:" -ForegroundColor Yellow
    Write-Host "1. Go to: https://github.com/new" -ForegroundColor Cyan
    Write-Host "2. Repository name: olist-ecommerce-analysis" -ForegroundColor Cyan
    Write-Host "3. Make it Public" -ForegroundColor Cyan
    Write-Host "4. Click 'Create repository'" -ForegroundColor Cyan
    Write-Host "5. Run this script again!" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "    Process Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Read-Host "Press Enter to continue..." 