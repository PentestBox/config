:: Init Script for cmd.exe
:: Sets some nice defaults
:: Created as part of PentestBox project

:: Find root dir
@if not defined pentestbox_ROOT (
    for /f %%i in ("%ConEmuDir%\..\..") do @set pentestbox_ROOT=%%~fi
)

:: Change the prompt style
@prompt $E[1;32;40m$P$S{git}$S$_$E[1;30;40m{lamb}$S$E[0m

:: Pick right version of clink
@if "%PROCESSOR_ARCHITECTURE%"=="x86" (
    set architecture=86
) else (
    set architecture=64
)

:: Run clink
@"%pentestbox_ROOT%\vendor\clink\clink_x%architecture%.exe" inject --quiet --profile "%pentestbox_ROOT%\config"

:: Prepare for msysgit

:: I do not even know, copypasted from their .bat
@set PLINK_PROTOCOL=ssh
@if not defined TERM set TERM=cygwin

:: Enhance Path
@set git_install_root=%pentestbox_ROOT%\vendor\msysgit
@set PATH=%pentestbox_ROOT%\bin;%git_install_root%\bin;%git_install_root%\mingw\bin;%git_install_root%\cmd;%git_install_root%\share\vim\vim74;%pentestbox_ROOT%;%PATH%;%pentestbox_ROOT%\bin\androidsecurity\adt\eclipse;%pentestbox_ROOT%\bin\androidsecurity\adt\sdk\platform-tools;%pentestbox_ROOT%\vendor\drozer;%pentestbox_ROOT%\bin\androidsecurity\dex2jar;%pentestbox_ROOT%\bin\androidsecurity\Introspy-Analyzer;%pentestbox_ROOT%\bin\androidsecurity\androguard;%pentestbox_ROOT%\bin\androidsecurity\adt\eclipse\jre\bin;%pentestbox_ROOT%\bin\androidsecurity\adt\eclipse\jre\lib;%pentestbox_ROOT%\vendor\drozer\Scripts;%pentestbox_ROOT%\vendor\drozer\Lib\site-packages;%pentestbox_ROOT%\vendor\drozer\Lib;%pentestbox_ROOT%\bin\Ruby193\bin;%pentestbox_ROOT%\bin\Ruby193\devkit\bin;%pentestbox_ROOT%\bin\Perl\c\bin;%pentestbox_ROOT%\bin\ReverseEngineering\radare2;%pentestbox_ROOT%\bin\Perl;%pentestbox_ROOT%\bin\password_attacks\Cryptohaze-Windows
:: Add aliases
@doskey /macrofile="%pentestbox_ROOT%\config\aliases"

:: Set home path
@if not defined HOME set HOME=%USERPROFILE%

@if defined pentestbox_START (
    @cd /d "%pentestbox_START%"
) else (
    @if "%CD%\" == "%pentestbox_ROOT%" (
        @cd /d "%HOME%"
    )
)
