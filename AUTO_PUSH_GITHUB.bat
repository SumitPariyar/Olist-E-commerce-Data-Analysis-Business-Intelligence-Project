@echo off
title Olist Project - GitHub Push Assistant
color 0A

echo.
echo ================================================================
echo    🚀 OLIST PROJECT - GITHUB PUSH ASSISTANT
echo ================================================================
echo.
echo This script will automatically push your Olist project to GitHub!
echo.

:CHOICE
echo Choose an option:
echo.
echo 1. Push to NEW repository: olist-ecommerce-analysis
echo 2. Push to EXISTING repository: CodeSoft_Credit_Card
echo 3. Push to EXISTING repository: CODSOFT_CHURN_PREDICTION
echo 4. Push to EXISTING repository: CodSoft_RNN
echo 5. Exit
echo.
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto NEW_REPO
if "%choice%"=="2" goto EXISTING_1
if "%choice%"=="3" goto EXISTING_2
if "%choice%"=="4" goto EXISTING_3
if "%choice%"=="5" goto EXIT
goto CHOICE

:NEW_REPO
echo.
echo ================================================================
echo    📋 SETTING UP NEW REPOSITORY
echo ================================================================
echo.
echo ⚠️  IMPORTANT: You need to create the repository first!
echo.
echo Please follow these steps:
echo 1. Go to: https://github.com/new
echo 2. Repository name: olist-ecommerce-analysis
echo 3. Description: Olist e-commerce data analysis with ML and SQL
echo 4. Make it Public
echo 5. DO NOT check any boxes (README, .gitignore, license)
echo 6. Click "Create repository"
echo.
echo After creating the repository, press any key to continue...
pause >nul

echo.
echo 🔄 Setting up remote repository...
git remote set-url origin https://github.com/SumitPariyar/olist-ecommerce-analysis.git

echo.
echo 🚀 Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ SUCCESS! Your project is now on GitHub!
    echo.
    echo 🌐 View your project at:
    echo https://github.com/SumitPariyar/olist-ecommerce-analysis
) else (
    echo.
    echo ❌ Error: Repository might not exist yet.
    echo Please make sure you created the repository first.
)
goto END

:EXISTING_1
echo.
echo ================================================================
echo    📁 PUSHING TO CodeSoft_Credit_Card
echo ================================================================
echo.
echo 🔄 Setting up remote repository...
git remote set-url origin https://github.com/SumitPariyar/CodeSoft_Credit_Card.git

echo.
echo 🚀 Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ SUCCESS! Your project is now on GitHub!
    echo.
    echo 🌐 View your project at:
    echo https://github.com/SumitPariyar/CodeSoft_Credit_Card
) else (
    echo.
    echo ❌ Error pushing to repository.
)
goto END

:EXISTING_2
echo.
echo ================================================================
echo    📁 PUSHING TO CODSOFT_CHURN_PREDICTION
echo ================================================================
echo.
echo 🔄 Setting up remote repository...
git remote set-url origin https://github.com/SumitPariyar/CODSOFT_CHURN_PREDICTION.git

echo.
echo 🚀 Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ SUCCESS! Your project is now on GitHub!
    echo.
    echo 🌐 View your project at:
    echo https://github.com/SumitPariyar/CODSOFT_CHURN_PREDICTION
) else (
    echo.
    echo ❌ Error pushing to repository.
)
goto END

:EXISTING_3
echo.
echo ================================================================
echo    📁 PUSHING TO CodSoft_RNN
echo ================================================================
echo.
echo 🔄 Setting up remote repository...
git remote set-url origin https://github.com/SumitPariyar/CodSoft_RNN.git

echo.
echo 🚀 Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ SUCCESS! Your project is now on GitHub!
    echo.
    echo 🌐 View your project at:
    echo https://github.com/SumitPariyar/CodSoft_RNN
) else (
    echo.
    echo ❌ Error pushing to repository.
)
goto END

:END
echo.
echo ================================================================
echo    🎉 PROCESS COMPLETE!
echo ================================================================
echo.
echo Your Olist project is now professionally organized and on GitHub!
echo.
echo 📊 Project includes:
echo    - Data cleaning and preprocessing
echo    - SQL analysis and business intelligence
echo    - Machine learning (customer churn prediction)
echo    - Professional documentation
echo    - Dashboard and visualizations
echo.
pause
goto EXIT

:EXIT
echo.
echo 👋 Thank you for using the GitHub Push Assistant!
echo.
exit 