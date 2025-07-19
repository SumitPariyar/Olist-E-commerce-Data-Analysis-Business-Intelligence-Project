@echo off
title Quick GitHub Setup
color 0A

echo.
echo ================================================================
echo    🚀 QUICK GITHUB SETUP FOR OLIST PROJECT
echo ================================================================
echo.

echo Current situation:
echo - Your project is perfectly organized locally
echo - We need to create a new repository on GitHub
echo - Then push everything there
echo.

echo Step 1: Create new repository
echo.
echo Please go to: https://github.com/new
echo.
echo Fill in:
echo - Repository name: olist-analysis
echo - Description: Olist e-commerce data analysis with ML and SQL
echo - Make it Public
echo - Don't check any boxes
echo - Click "Create repository"
echo.

echo After creating the repository, press any key to continue...
pause >nul

echo.
echo Step 2: Pushing to GitHub...
git remote set-url origin https://github.com/SumitPariyar/olist-analysis.git
git push -u origin main

echo.
echo ================================================================
echo    ✅ DONE!
echo ================================================================
echo.
echo Your project should now be at:
echo https://github.com/SumitPariyar/olist-analysis
echo.
echo If you get an error, the repository name might be taken.
echo Try a different name like: olist-project, olist-data, etc.
echo.
pause 