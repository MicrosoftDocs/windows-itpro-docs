---
title: Language Pack Management CSP
description: Language Pack Management CSP allows a direct way to provision language packs remotely in Windows 10.
ms.reviewer: 
manager: dansimp
ms.author: v-nsatapathy
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 06/22/2021
---

# Language Pack Management CSP

The Language Pack Management CSP allows a direct way to provision language packs remotely in Windows 10 and Windows 10 X. MDMs like Intune can use management commands remotely to devices to configure language-related settings.

1. Enumerate installed languages and features with GET command on the "InstalledLanguages" node. Below are the samples:

    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN/Providers**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN/LanguageFeatures**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/ja-JP/Providers**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/ja-JP/LanguageFeatures**

   The nodes under **InstalledLanguages** are the language tags of the installed languages. The **providers** node under language tag is an integer representation of either language pack (features) or [LXPs](https://www.microsoft.com/store/collections/localexperiencepacks?cat0=devices&rtc=1).

    - **1**- Indicates the language pack installed is a System Language Pack (non-LXP)
    - **2**- Indicates that the LXP is installed.
    - **3**- Indicates that both are installed.

    The **LanguageFeatures** node is a bitmap representation of what Language Features are installed on a device:

    - Basic Typing = 0x1
    - Fonts = 0x2
    - Handwriting = 0x4
    - Speech = 0x8
    - TextToSpeech = 0x10
    - OCR = 0x20
    - LocaleData = 0x40
    - SupplementFonts = 0x80

2. Install language pack and features with the EXECUTE command on the **StartInstallation** node of the language.

    > [!NOTE]
    > If not previously set, installation will set the policy to block cleanup of unused language packs and features on the device to prevent unexpected deletion.

    - Admins can optionally set the language as the System Preferred UI Language immediately after installation by using the REPLACE command on the "CopyToDeviceInternationalSettings" node of the language. 0 (default) will take no action; 1 will set the following international settings to reflect the newly installed language:
        - System Preferred UI Language
        - System Locale
        - Default settings for new users, such as Input Method (keyboard), Locale, Speech Recognizer, User Preferred Language List
    - Admins can optionally configure whether they want to install all available language features during installation using the REPLACE command on the "EnableLanguageFeatureInstallations" node of the language. 0 will install only required features; 1 (default) will install all available features.

    Here are the sample commands to install French language with required features and copy to the devices international settings:

    1. **ADD ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/**
    2. **REPLACE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/CopyToDeviceInternationalSettings(1)**
    3. **REPLACE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/EnableLanguageFeatureInstallations (0)**
    4. **EXECUTE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/StartInstallation**

    The installation is an asynchronous operation. You can query the **Status** or **ErrorCode** nodes by using the following commands:

    **GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/Status**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/ErrorCode**

    Status: 0 – not started; 1 – in process; 2 – succeeded; 3 – failed; 4 - partial success (A partial success indicates features may have gotten installed but there was an error installing the language pack or vice versa). ErrorCode is an HRESULT that could help diagnosis if the installation failed.

3. Delete installed Language with the DELETE command on the installed language tag. The delete command is a fire and forget operation. The deletion will run in background. IT admin can query the installed language later and resend the command if needed. Below is a sample command to delete the zh-CN language.

   **DELETE./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN**

   > [!NOTE]
   > The deletion will ignore the policy of block cleanup of unused language packs.

4. Get/Set System Preferred UI Language with GET or REPLACE command on the "SystemPreferredUILanguages" Node

   **./Device/Vendor/MSFT/LanguagePackManagement/LanguageSettings/SystemPreferredUILanguages**
