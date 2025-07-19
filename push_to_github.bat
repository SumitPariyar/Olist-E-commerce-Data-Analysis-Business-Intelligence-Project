@echo off
echo ========================================
echo    Pushing Olist Project to GitHub
echo ========================================
echo.

echo Step 1: Setting up remote repository...
git remote set-url origin https://github.com/SumitPariyar/olist-ecommerce-analysis.git

echo.
echo Step 2: Pushing to GitHub...
git push -u origin main

echo.
echo Step 3: Checking status...
git status

echo.
echo ========================================
echo    Push Complete!
echo ========================================
echo.
echo Your project is now available at:
echo https://github.com/SumitPariyar/olist-ecommerce-analysis
echo.
pause 