@echo off
:: Yêu c?u quy?n admin
:: N?u không ch?y v?i quy?n admin thì s? t? nâng quy?n
:: (nh? dòng này mà không c?n click chu?t ph?i)

:: Ki?m tra quy?n admin
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Yeu cau quyen quan tri... Dang khoi dong lai voi quyen admin.
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Ch?y PowerShell v?i l?nh c?n thi?t
powershell -NoExit -Command ^
  "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; irm https://get.activated.win | iex"
