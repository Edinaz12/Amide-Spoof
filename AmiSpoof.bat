@echo off
setlocal enabledelayedexpansion

:: Generate a random 12-digit number
set "randNum="
for /L %%A in (1,1,12) do (
    set /a r=!random! %% 10
    set "randNum=!randNum!!r!"
)

:: Create the final 15-digit number starting with 221
set "finalNum=221%randNum%"

:: Display the generated number
echo Generated Number: %finalNum%

:: Store the generated number in a variable
set "BSH_BS=%finalNum%"

:: Execute commands with the generated number
cd %~dp0
AMIDEWINx64.EXE /IVN "American Megatrends International, LLC."
AMIDEWINx64.EXE /IV "P4.20"
AMIDEWINx64.EXE /ID "07/04/2020"
AMIDEWINx64.EXE /BM "System Manufacturer"
AMIDEWINx64.EXE /SM "System Manufacturer"
AMIDEWINx64.EXE /SP "System Product Name"
AMIDEWINx64.EXE /BP "System Product Name"
AMIDEWINx64.EXE /BS "!BSH_BS!"
AMIDEWINx64.EXE /BSH 2 "!BSH_BS!"
AMIDEWINx64.EXE /BV "1.0"
AMIDEWINx64.EXE /SS "System Serial Number"
AMIDEWINx64.EXE /SU "AUTO"
AMIDEWINx64.EXE /SV "System Version"
AMIDEWINx64.EXE /SK "SKU"
AMIDEWINx64.EXE /SF "To be filled by O.E.M."
AMIDEWINx64.EXE /BT "Default string"
AMIDEWINx64.EXE /BLC "Default string"
AMIDEWINx64.EXE /BTH 2 "Default string"
AMIDEWINx64.EXE /BLCH 2 "Default string"
AMIDEWINx64.EXE /CM "Default string"
AMIDEWINx64.EXE /CV "Default string"
AMIDEWINx64.EXE /CS "Default string"
AMIDEWINx64.EXE /CA "Default string"
AMIDEWINx64.EXE /CSK "Default string"
AMIDEWINx64.EXE /CMH 3 "Default string"
AMIDEWINx64.EXE /CVH 3 "Default string"
AMIDEWINx64.EXE /CSH 3 "Default string"
AMIDEWINx64.EXE /CAH 3 "Default string"
AMIDEWINx64.EXE /CSKH 3 "Default string"
AMIDEWINx64.EXE /PSN "Default string"
AMIDEWINx64.EXE /PAT "Default string"
AMIDEWINx64.EXE /PPN "Default string"
AMIDEWINx64.EXE /OS 1 "Default string"
AMIDEWINx64.EXE /OS 2 "Default string"
AMIDEWINx64.EXE /OS 4 "Default string"
AMIDEWINx64.EXE /OS 5 "Default string"
AMIDEWINx64.EXE /OS 6 "Default string"
AMIDEWINx64.EXE /OS 7 "Default string"
AMIDEWINx64.EXE /OS 8 "Default string"
AMIDEWINx64.EXE /SCO 1 "Default string"
AMIDEWINx64.EXE /SCO 2 "Default string"
AMIDEWINx64.EXE /SCO 3 "Default string"
AMIDEWINx64.EXE /SCO 4 "Default string"

pause >nul
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1
exit
