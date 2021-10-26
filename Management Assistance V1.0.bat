:boss
Title=Management Assistance By LB:-)
color 71
echo off
cd %USERPROFILE%\desktop
cls
goto main

:retry
cls
set password=**
echo -------------------------------
echo Please re-enter the credentials
echo -------------------------------
set /p username=Username:
if "%username%"=="logan" goto pass
goto retry

:main
cls
set username=**
echo ----------------------------
echo Please enter the credentials
echo ----------------------------
set /p username=Username:
if "%username%"=="logan" goto pass
if NOT "%username%"=="logan" goto retry
goto main

:pass
set /p password=Password:
if "%password%"=="becker" goto sub1
if NOT "%password%"=="becker" goto retry
goto pass

:sub1
cls
echo --------------------------     
echo File Management Assistance
echo --------------------------
echo 1. Hide Folder
echo 2. Unhide Folder
echo 3. Find hidden Folders
echo 4. Exit
echo --------------------------
set /p list=Option:
if "%list%"=="help()" goto HELP
if "%list%"=="1" goto HIDE_FOLDER
if "%list%"=="2" goto PROCESS_UNHIDE
if "%list%"=="3" goto FINDER
if "%list%"=="4" goto EXIT
goto sub1

:HELP
echo -----------------------
echo    Available Options
echo -----------------------
echo 1. Hide Folder
echo 2. Unhide Folder
echo 3. Find hidden Folders
echo 4. Exit
echo -----------------------
timeout /T -1
goto sub1

:HIDE_FOLDER
cls
echo You selected option 1 to "HIDE FOLDER".
echo For example if you want to hide C:\users\james\pictures\"private pics". 
echo This will hide "private pics" folder for you.
set /p location=Please Enter the location of the folder:
if EXIST %location% goto HIDING_FOLDER_OPT 
if NOT EXIST %location% echo the Folder does not exist.
goto HIDE_FOLDER

:HIDING_FOLDER_OPT
cd /d %location%
cd ..
echo The folder exists!
echo Do you want to hide it? 
set /p choice=Type Y or N:
if "%choice%"=="y" goto PROCESS_HIDE
if "%choice%"=="n" goto sub1
goto HIDING_FOLDER_OPT

:PROCESS_HIDE
cd /d %location%
echo -----------------------------
echo HIDING THE FOLDER PLEASE WAIT
echo -----------------------------
attrib +s +h +r +a %location% /S /D
attrib +s +h +r +a /S /D
echo ----------------------------
echo SUCCESSFULLY HIDE THE FOLDER
echo ----------------------------
goto PLACEHOLDER
timeout /T -1
goto sub1

:PROCESS_UNHIDE
echo ---------------------------------
echo          UNHIDE OPTIONS
echo ---------------------------------
echo 1. Desktop
echo 2. Documents
echo 3. Downloads
echo 4. Music
echo 5. Pictures
echo 6. Videos
echo 7. Search any Folder you want :)
echo 8. Return to Main Menu
echo ---------------------------------
set /p choice3=Select1-8:
if "%choice3%"=="1" goto des_un
if "%choice3%"=="2" goto doc_un
if "%choice3%"=="3" goto down_un
if "%choice3%"=="4" goto mus_un
if "%choice3%"=="5" goto pic_un
if "%choice3%"=="6" goto vid_un
if "%choice3%"=="7" goto diff_un
if "%choice3%"=="8" goto sub1
goto sub1

:des_un
echo ----------------------
echo PROCESSING PLEASE WAIT
echo ----------------------
cd /d %USERPROFILE%\desktop
dir /a:H /s >> desktop_hidden_files.txt
attrib -s -h -r -a -i /S /D
echo ----------------------------------------------------
echo FINISHED UNHIDING FILES IN THE DESKTOP FOLDER
echo "desktop_hidden_files.txt"
echo It contains the files that were hidden
echo Please delete it afterwards
echo ----------------------------------------------------
start desktop_hidden_files.txt
timeout /T -1
goto sub1

:doc_un
echo ----------------------
echo PROCESSING PLEASE WAIT
echo ----------------------
cd /d %USERPROFILE%\documents
dir /a:H /s >> documents_hidden_files.txt
attrib -s -h -r -a -i /S /D
echo -----------------------------------------------
echo FINISHED UNHIDING FILES IN THE DOCUMENTS FOLDER
echo "documents_hidden_files.txt"
echo It contains the files that were hidden
echo Please delete it afterwards
echo -----------------------------------------------
start documents_hidden_files.txt
timeout /T -1
goto sub1

:down_un
echo ----------------------
echo PROCESSING PLEASE WAIT
echo ----------------------
cd /d %USERPROFILE%\downloads
dir /a:H /s >> downloads_hidden_files.txt
attrib -s -h -r -a -i /S /D
echo -----------------------------------------------
echo FINISHED UNHIDING FILES IN THE DOWNLOADS FOLDER
echo "downloads_hidden_files.txt"
echo It contains the files that were hidden
echo Please delete it afterwards
echo -----------------------------------------------
start downloads_hidden_files.txt
timeout /T -1
goto sub1

:mus_un
echo ----------------------
echo PROCESSING PLEASE WAIT
echo ----------------------
cd /d %USERPROFILE%\music
dir /a:H /s >> music_hidden_files.txt
attrib -s -h -r -a -i /S /D
echo -------------------------------------------
echo FINISHED UNHIDING FILES IN THE MUSIC FOLDER
echo "music_hidden_files.txt"
echo It contains the files that were hidden
echo Please delete it afterwards
echo -------------------------------------------
music_hidden_files.txt
timeout /T -1
goto sub1

:pic_un
echo ----------------------
echo PROCESSING PLEASE WAIT
echo ----------------------
cd /d %USERPROFILE%\pictures
dir /a:H /s >> pictures_hidden_files.txt
attrib -s -h -r -a -i /S /D
echo ----------------------------------------------
echo FINISHED UNHIDING FILES IN THE PICTURES FOLDER
echo "pictures_hidden_files.txt"
echo It contains the files that were hidden
echo Please delete it afterwards
echo ----------------------------------------------
start pictures_hidden_files.txt
timeout /T -1
goto sub1

:vid_un
echo PROCESSING PLEASE WAIT
cd /d %USERPROFILE%\videos
dir /a:H /s >> videos_hidden_files.txt
attrib -s -h -r -a -i /S /D
echo ---------------------------------------------------
echo FINISHED UNHIDING FILES IN THE VIDEO FOLDER
echo "videos_hidden_files.txt"
echo It contains the files that were hidden
echo Please delete it afterwards
echo ---------------------------------------------------
start videos_hidden_files.txt
timeout /T -1
goto sub1

:diff_un
echo For example unhide "files 1" on the desktop by typing C:\users\logan\desktop\"files 1"
set /p choices=Enter the location of hidden folder:
if EXIST %choices% goto A 
if NOT EXIST %choices% goto PROCESS_UNHIDE
goto sub1

:A
cd /d %choices%
echo -------------------------------           
echo UNHIDING THE FOLDER PLEASE WAIT
echo -------------------------------
attrib -s -h -r -a -i %choices% /S /D
attrib -s -h -r -a -i /S /D
echo -----------------------------------
echo SUCCESSFULLY UNHIDE THE FOLDER
echo This is the location------%choices%
echo -----------------------------------
timeout /T -1
goto sub1

:FINDER
cls
echo ----------------------------------  
echo FIND HIDDEN CONTENT ON YOUR LAPTOP
echo ----------------------------------
echo 1. Desktop
echo 2. Documents
echo 3. Downloads
echo 4. Music
echo 5. Pictures
echo 6. Videos
echo 7. Search any Folder you want :)
echo 8. Return to Main Menu
echo ----------------------------------
set /p choice4=Select1-8:
if "%choice4%"=="1" goto des
if "%choice4%"=="2" goto doc
if "%choice4%"=="3" goto down
if "%choice4%"=="4" goto mus
if "%choice4%"=="5" goto pic
if "%choice4%"=="6" goto vid
if "%choice4%"=="7" goto all
if "%choice4%"=="8" goto sub1
goto FINDER

:des 
cd /d %USERPROFILE%\desktop
echo [*] Processing
timeout 2 >nul
echo [*] Processing.
timeout 2 >nul
echo [*] Processing..
timeout 2 >nul
dir /a:H /s
echo ------------------
echo FINISHED SEARCHING
echo ------------------
timeout /T -1
goto FINDER

:doc
cd /d %USERPROFILE%\documents
echo [*] Processing
timeout 2 >nul
echo [*] Processing.
timeout 2 >nul
echo [*] Processing..
timeout 2 >nul
dir /a:H /s
echo ------------------
echo FINISHED SEARCHING
echo ------------------
timeout /T -1
goto FINDER

:down
cd /d %USERPROFILE%\downloads
echo [*] Processing
timeout 2 >nul
echo [*] Processing.
timeout 2 >nul
echo [*] Processing..
timeout 2 >nul
dir /a:H /s
echo ------------------
echo FINISHED SEARCHING
echo ------------------
timeout /T -1
goto FINDER

:mus
cd /d %USERPROFILE%\music
echo [*] Processing
timeout 2 >nul
echo [*] Processing.
timeout 2 >nul
echo [*] Processing..
timeout 2 >nul
dir /a:H /s
echo ------------------
echo FINISHED SEARCHING
echo ------------------
timeout /T -1
goto FINDER

:pic
cd /d %USERPROFILE%\pictures
echo [*] Processing
timeout 2 >nul
echo [*] Processing.
timeout 2 >nul
echo [*] Processing..
timeout 2 >nul
dir /a:H /s
echo ------------------
echo FINISHED SEARCHING
echo ------------------
timeout /T -1
goto FINDER

:vid
cd /d %USERPROFILE%\videos
echo [*] Processing
timeout 2 >nul
echo [*] Processing.
timeout 2 >nul
echo [*] Processing..
timeout 2 >nul
dir /a:H /s
echo ------------------
echo FINISHED SEARCHING
echo ------------------
timeout /T -1
goto FINDER

:all
set /p loco=Please Enter a folder location to search for hidden files:
cd /d %loco%
dir /a:H /s
echo ------------------
echo FINISHED SEARCHING
echo ------------------
timeout /T -1
goto FINDER

:EXIT
exit
exit
