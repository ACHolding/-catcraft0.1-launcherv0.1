@echo off
title AUTO CATSDK 0.1 - Java Coders Edition
echo.
echo =====================================================
echo     AUTO CATSDK 0.1
echo     For Java Coders and Vibe Developers
echo =====================================================
echo.

net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Admin privileges confirmed
) else (
    echo [ERROR] Please run as Administrator
    pause
    exit /b 1
)

echo Installing OpenJDK 21 LTS...
winget install --id EclipseAdoptium.Temurin.21.JDK -e --source winget --accept-source-agreements --accept-package-agreements --silent

echo.
echo Setting up JAVA_HOME and PATH for CatSDK...
set "JAVA_HOME=C:\Program Files\Eclipse Adoptium\temurin-21-jdk"
setx JAVA_HOME "%JAVA_HOME%" /M
setx PATH "%PATH%;%JAVA_HOME%\bin" /M

echo.
echo =====================================================
echo AUTO CATSDK 0.1 JAVA SETUP COMPLETE
echo OpenJDK 21 LTS installed and configured
echo.
echo You can now run java -version
echo Ready for CatSDK vibe coding supremacy
echo =====================================================
echo.

java -version
echo.
pause
