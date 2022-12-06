
@echo off 
Rem a comment line must start with Rem

Rem create build folder if not exist
echo create Build folder
set "BuildFolderName=dist"

if exist %BuildFolderName% echo "Folder  exist" 

if not exist %BuildFolderName% echo "Folder does not exist" 
md  %BuildFolder% >nul 2>&1

:: copy folders
echo copy folders ***********************
for %%d in (
   ::\ThirdParty
   \src\assets
) do (
  echo ss %%d
  call :copyDirectory %%d %BuildFolderName%
)


goto End

:: function to copy from source to buid folder
:copyDirectory
set folderSrc=%1
set dest=%2
echo a %folderSrc%
echo b %1
echo dest %dest%

echo start copy *****************
::xcopy /e /v /s /i %folderSrc% %dest%
robocopy .%folderSrc% %dest%%folderSrc% /MIR
echo end copy***************
goto :eof

:End









