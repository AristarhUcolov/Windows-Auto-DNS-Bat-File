# Windows Auto DNS Bat File

A simple Windows batch script to automatically configure DNS servers on your network adapter.

![Монтажная область 1](https://github.com/user-attachments/assets/fc751605-cdac-4c4c-95c0-c891284cd813)

**Author:** Aristarh Ucolov (Аристарх Уколов)

---

## 📋 Table of Contents

- [Features](#-features)
- [Requirements](#-requirements)
- [Installation](#-installation)
- [Usage](#-usage)
- [Configuration](#-configuration)
- [Troubleshooting](#-troubleshooting)
- [License](#-license)

---

## 🇷🇺 Русская версия

### ✨ Возможности

- Автоматическая настройка DNS серверов на Windows
- Использует Google DNS серверы (8.8.8.8 и 8.8.4.4)
- Простой в использовании батник
- Не требует установки дополнительного ПО

### 📦 Требования

- Windows 7 или выше
- Права администратора для выполнения скрипта

### 📥 Установка

1. Скачайте файл `auto-dns.bat` из репозитория
2. Сохраните его в удобное для вас место

### 🚀 Использование

1. **Откройте файл** `auto-dns.bat` в текстовом редакторе (например, Блокнот)
2. **Измените имя адаптера** в строке `set adapter_name="Ethernet"` на имя вашего сетевого адаптера:
   - Чтобы узнать имя адаптера, откройте командную строку и выполните: `netsh interface show interface`
   - Примеры имён: "Ethernet", "Wi-Fi", "Беспроводная сеть"
3. **Сохраните изменения**
4. **Запустите файл от имени администратора**:
   - Правой кнопкой мыши на `auto-dns.bat`
   - Выберите "Запуск от имени администратора"
5. Дождитесь сообщения "DNS серверы были успешно установлены"

### ⚙️ Настройка

#### Изменение DNS серверов

В файле `auto-dns.bat` вы можете изменить DNS серверы:

```batch
rem Основной DNS (по умолчанию Google DNS)
netsh interface ip set dns name=%adapter_name% source=static addr=8.8.8.8

rem Альтернативный DNS (по умолчанию Google DNS)
netsh interface ip add dns name=%adapter_name% addr=8.8.4.4 index=2
```

**Популярные публичные DNS серверы:**
- Google DNS: `8.8.8.8` и `8.8.4.4`
- Cloudflare DNS: `1.1.1.1` и `1.0.0.1`
- Yandex DNS: `77.88.8.8` и `77.88.8.1`

### 🔧 Решение проблем

**Проблема:** Скрипт не запускается или выдаёт ошибку доступа

**Решение:** Убедитесь, что вы запускаете файл от имени администратора

---

**Проблема:** DNS не изменяется

**Решение:** 
- Проверьте, правильно ли указано имя сетевого адаптера
- Выполните команду `netsh interface show interface` для просмотра доступных адаптеров
- Убедитесь, что имя адаптера в скрипте точно совпадает с именем в системе (включая регистр и пробелы)

---

## 🇬🇧 English Version

### ✨ Features

- Automatic DNS server configuration for Windows
- Uses Google DNS servers (8.8.8.8 and 8.8.4.4)
- Simple batch file solution
- No additional software installation required

### 📦 Requirements

- Windows 7 or higher
- Administrator privileges to run the script

### 📥 Installation

1. Download the `auto-dns.bat` file from the repository
2. Save it to a convenient location

### 🚀 Usage

1. **Open the file** `auto-dns.bat` in a text editor (e.g., Notepad)
2. **Change the adapter name** in the line `set adapter_name="Ethernet"` to match your network adapter name:
   - To find your adapter name, open Command Prompt and run: `netsh interface show interface`
   - Example names: "Ethernet", "Wi-Fi", "Wireless Network Connection"
3. **Save the changes**
4. **Run the file as Administrator**:
   - Right-click on `auto-dns.bat`
   - Select "Run as administrator"
5. Wait for the message "DNS servers have been successfully set"

### ⚙️ Configuration

#### Changing DNS Servers

In the `auto-dns.bat` file, you can change the DNS servers:

```batch
rem Primary DNS (default: Google DNS)
netsh interface ip set dns name=%adapter_name% source=static addr=8.8.8.8

rem Alternate DNS (default: Google DNS)
netsh interface ip add dns name=%adapter_name% addr=8.8.4.4 index=2
```

**Popular Public DNS Servers:**
- Google DNS: `8.8.8.8` and `8.8.4.4`
- Cloudflare DNS: `1.1.1.1` and `1.0.0.1`
- OpenDNS: `208.67.222.222` and `208.67.220.220`

### 🔧 Troubleshooting

**Issue:** Script doesn't run or shows access denied error

**Solution:** Make sure you are running the file as Administrator

---

**Issue:** DNS doesn't change

**Solution:**
- Verify that the network adapter name is correct
- Run `netsh interface show interface` to view available adapters
- Ensure the adapter name in the script exactly matches the system name (including case and spaces)

---

## 📄 License

This project is open source and available for personal and commercial use.

---

**Made with ❤️ by Aristarh Ucolov**
