@echo off
echo Pidiendo permisos de administrador...
echo.

:: Solicitar permisos de administrador
NET SESSION >nul 2>&1
if %errorlevel% neq 0 (
    echo Debes ejecutar este instalador con permisos de administrador.
    echo Cierra esta ventana y ejecútala como administrador.
    pause
    exit /b
)

:: Crear carpeta en Archivos de Programa
set "install_dir=%ProgramFiles%\YourProgramName"
mkdir "%install_dir%"

:: Mover el ejecutable a la carpeta creada
move "%~dp0src.exe" "%install_dir%"

:: Agregar la carpeta al PATH
setx PATH "%PATH%;%install_dir%" /M

echo.
echo Instalación completada.
echo Ahora puedes ejecutar el programa desde cualquier ubicación en la línea de comandos.
pause

