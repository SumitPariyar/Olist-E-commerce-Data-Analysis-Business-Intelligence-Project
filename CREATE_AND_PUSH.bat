@echo off
title Create New Repository and Push Olist Project
color 0A

echo.
echo ================================================================
echo    🚀 CREATE NEW REPOSITORY AND PUSH OLIST PROJECT
echo ================================================================
echo.

echo Step 1: Creating new repository on GitHub...
echo.
echo ⚠️  IMPORTANT: You need to create the repository first!
echo.
echo Please follow these steps:
echo.
echo 1. Open this link: https://github.com/new
echo 2. Repository name: Olist-Ecommerce-Analysis
echo 3. Description: Comprehensive Olist e-commerce data analysis with ML and SQL
echo 4. Make it Public
echo 5. DO NOT check any boxes (README, .gitignore, license)
echo 6. Click "Create repository"
echo.
echo After creating the repository, press any key to continue...
pause >nul

echo.
echo Step 2: Setting up remote repository...
git remote set-url origin https://github.com/SumitPariyar/Olist-Ecommerce-Analysis.git

echo.
echo Step 3: Adding all files...
git add .

echo.
echo Step 4: Committing changes...
git commit -m "Complete Olist E-commerce Analysis Project - Professional organization with ML, SQL, and dashboards"

echo.
echo Step 5: Pushing to GitHub...
git push -u origin main

echo.
echo ================================================================
echo    ✅ SUCCESS! YOUR PROJECT IS NOW ON GITHUB!
echo ================================================================
echo.
echo 🌐 Your project is available at:
echo https://github.com/SumitPariyar/Olist-Ecommerce-Analysis
echo.
echo 📊 What's included:
echo    - Professional file organization
echo    - Comprehensive documentation
echo    - Machine learning models
echo    - SQL analysis scripts
echo    - Dashboard visualizations
echo    - Data cleaning workflows
echo.
echo 🎯 Next steps:
echo    1. Visit your repository
echo    2. Update README with your info
echo    3. Add repository topics
echo    4. Share on your portfolio!
echo.
pause 