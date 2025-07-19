@echo off
title GitHub Repository Checker
color 0B

echo.
echo ================================================================
echo    🔍 GITHUB REPOSITORY CHECKER
echo ================================================================
echo.
echo Let's check what happened with your Olist project...
echo.

echo Current Git Remote:
git remote -v

echo.
echo ================================================================
echo    📋 WHAT YOU NEED TO DO:
echo ================================================================
echo.
echo 1. Go to your GitHub profile: https://github.com/SumitPariyar
echo.
echo 2. Check if you see any of these repositories:
echo    - CODSOFT_CHURN_PREDICTION (might have Olist content now)
echo    - Olist-Ecommerce-Analysis (new repository)
echo    - olist-ecommerce-analysis (if created)
echo.
echo 3. If you don't see the Olist project, create a new repository:
echo    - Go to: https://github.com/new
echo    - Name: Olist-Ecommerce-Analysis
echo    - Make it Public
echo    - Don't check any boxes
echo    - Click "Create repository"
echo.
echo 4. After creating the repository, run this command:
echo    git push -u origin main
echo.
echo ================================================================
echo    🎯 CURRENT STATUS:
echo ================================================================
echo.
echo Your local project is ready and organized!
echo We just need to push it to the right GitHub repository.
echo.
pause 