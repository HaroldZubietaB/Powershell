@echo off

rem copy files
robocopy \\source_IP\D$\MSSQL\TLogs\ D:\SQL\BACKUPS\            *.trn  /XO /NP
robocopy \\source_IP\T$\admin\dbbackups\ D:\SQL\BACKUPS\        *.bak  /XO /NP

rem cleanup old files
FORFILES /P T:\SQL\BACKUPS\ /S /M *.bak /D -8 /C "cmd /c del /Q @path"
FORFILES /P T:\SQL\BACKUPS\ /S /M *.trn /D -4 /C "cmd /c del /Q @path"

:Quit