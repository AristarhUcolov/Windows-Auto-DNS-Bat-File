@echo off
setlocal

rem Имя сетевого адаптера (замените на имя вашего адаптера)
set adapter_name="Ethernet"

rem Установить основной DNS
netsh interface ip set dns name=%adapter_name% source=static addr=8.8.8.8

rem Установить альтернативный DNS
netsh interface ip add dns name=%adapter_name% addr=8.8.4.4 index=2

echo DNS серверы были успешно установлены.
pause
