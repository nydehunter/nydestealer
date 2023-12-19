@echo off

NET SESSION >nul 2>&1
if %errorLevel% neq 0 (
    echo Le script doit être exécuté en tant qu'administrateur. Fermeture du script.
    pause
    exit /b 1
)

start /B "" "%~dp0READ ME.txt"

set /p webhook=Quel est le lien de votre webhook? 
echo Vous avez saisi le lien de webhook : %webhook%

set /p build=Voulez-vous build le fichier? (y/n)
if /i "%build%"=="y" (
    echo Construction du fichier en cours...
    REM Mettez ici les instructions pour la construction du fichier si nécessaire
) else (
    echo Construction du fichier annulée.
)

echo Fermeture du script...
exit /b 0
