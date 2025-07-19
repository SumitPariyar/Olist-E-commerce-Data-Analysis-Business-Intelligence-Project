@echo off
title Push Olist Project to GitHub
color 0A

echo.
echo ================================================================
echo    🚀 PUSHING OLIST PROJECT TO GITHUB
echo ================================================================
echo.

echo Step 1: Setting remote repository...
git remote set-url origin https://github.com/SumitPariyar/Olist-Ecommerce-Analysis.git

echo.
echo Step 2: Pushing to GitHub...
git push -u origin main

echo.
echo ================================================================
echo    ✅ DONE!
echo ================================================================
echo.
echo Your project should now be at:
echo https://github.com/SumitPariyar/Olist-Ecommerce-Analysis
echo.
echo If you get an error, make sure you created the repository first!
echo.
pause 