Write-Host "========================================" -ForegroundColor Green
Write-Host "    🚀 CREATE NEW REPOSITORY AND PUSH" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

Write-Host "Step 1: Creating new repository on GitHub..." -ForegroundColor Yellow
Write-Host ""
Write-Host "⚠️  IMPORTANT: You need to create the repository first!" -ForegroundColor Red
Write-Host ""
Write-Host "Please follow these steps:" -ForegroundColor Cyan
Write-Host "1. Open this link: https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: Olist-Ecommerce-Analysis" -ForegroundColor White
Write-Host "3. Description: Comprehensive Olist e-commerce data analysis with ML and SQL" -ForegroundColor White
Write-Host "4. Make it Public" -ForegroundColor White
Write-Host "5. DO NOT check any boxes (README, .gitignore, license)" -ForegroundColor White
Write-Host "6. Click 'Create repository'" -ForegroundColor White
Write-Host ""
Write-Host "After creating the repository, press Enter to continue..." -ForegroundColor Yellow
Read-Host

Write-Host ""
Write-Host "Step 2: Setting up remote repository..." -ForegroundColor Yellow
git remote set-url origin https://github.com/SumitPariyar/Olist-Ecommerce-Analysis.git

Write-Host ""
Write-Host "Step 3: Adding all files..." -ForegroundColor Yellow
git add .

Write-Host ""
Write-Host "Step 4: Committing changes..." -ForegroundColor Yellow
git commit -m "Complete Olist E-commerce Analysis Project - Professional organization with ML, SQL, and dashboards"

Write-Host ""
Write-Host "Step 5: Pushing to GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host ""
    Write-Host "✅ SUCCESS! YOUR PROJECT IS NOW ON GITHUB!" -ForegroundColor Green
    Write-Host ""
    Write-Host "🌐 Your project is available at:" -ForegroundColor Cyan
    Write-Host "https://github.com/SumitPariyar/Olist-Ecommerce-Analysis" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "📊 What's included:" -ForegroundColor Yellow
    Write-Host "   - Professional file organization" -ForegroundColor White
    Write-Host "   - Comprehensive documentation" -ForegroundColor White
    Write-Host "   - Machine learning models" -ForegroundColor White
    Write-Host "   - SQL analysis scripts" -ForegroundColor White
    Write-Host "   - Dashboard visualizations" -ForegroundColor White
    Write-Host "   - Data cleaning workflows" -ForegroundColor White
} catch {
    Write-Host ""
    Write-Host "❌ Error: Repository might not exist yet." -ForegroundColor Red
    Write-Host "Please make sure you created the repository first!" -ForegroundColor Red
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "    🎉 PROCESS COMPLETE!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Read-Host "Press Enter to continue..." 