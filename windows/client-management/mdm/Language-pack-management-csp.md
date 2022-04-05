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

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The Language Pack Management CSP allows a direct way to provision languages remotely in Windows. MDMs like Intune can use management commands remotely to devices to configure language-related settings for System and new users.

1. Enumerate installed languages and features with GET command on the "InstalledLanguages" node. Below are the samples:

    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN/Providers**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN/LanguageFeatures**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/ja-JP/Providers**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/ja-JP/LanguageFeatures**

   The nodes under **InstalledLanguages** are the language tags of the installed languages. The **providers** node under language tag is an integer representation of either [language pack](/windows-hardware/manufacture/desktop/available-language-packs-for-windows?view=windows-11&preserve-view=true) or [LXPs](https://www.microsoft.com/store/collections/localexperiencepacks?cat0=devices&rtc=1).

    - **1**- Indicates that only the Language Pack cab is installed.
    - **2**- Indicates that only the LXP is installed.
    - **3**- Indicates that both are installed.

    The **LanguageFeatures** node is a bitmap representation of what [Language Features](/windows-hardware/manufacture/desktop/features-on-demand-language-fod?view=windows-11&preserve-view=true) are installed for a language on a device:

    - Basic Typing = 0x1
    - Fonts = 0x2
    - Handwriting = 0x4
    - Speech = 0x8
    - TextToSpeech = 0x10
    - OCR = 0x20
    - LocaleData = 0x40
    - SupplementFonts = 0x80

2. Install language pack and features with the EXECUTE command on the **StartInstallation** node of the language. The language installation will try to install the best matched language packs and features for the provided language.

    > [!NOTE]
    > If not previously set, installation will set the policy to block cleanup of unused language packs and features on the device to prevent unexpected deletion.

    - Admins can optionally copy the language to the device’s international settings immediately after installation by using the REPLACE command on the "CopyToDeviceInternationalSettings" node of the language. false (default)- will take no action; true- will set the following international settings to reflect the newly installed language:
        - System Preferred UI Language
        - System Locale
        - Default settings for new users
             - Input Method (keyboard)
             - Locale
             - Speech Recognizer
             - User Preferred Language List
    - Admins can optionally configure whether they want to install all available language features during installation using the REPLACE command on the "EnableLanguageFeatureInstallations" node of the language. false- will install only required features; true (default)- will install all available features.

    Here are the sample commands to install French language with required features and copy to the device's international settings:

    1. **ADD ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/**
    2. **REPLACE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/CopyToDeviceInternationalSettings (true)**
    3. **REPLACE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/EnableLanguageFeatureInstallations (false)**
    4. **EXECUTE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/StartInstallation**

    The installation is an asynchronous operation. You can query the **Status** or **ErrorCode** nodes by using the following commands:

    **GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/Status**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/ErrorCode**

    Status: 0 – not started; 1 – in progress; 2 – succeeded; 3 – failed; 4 - partial success (A partial success indicates not all the provisioning operations succeeded, for example, there was an error installing the language pack or features).

    ErrorCode: An HRESULT that could help diagnosis if the installation failed or partially failed.

3. Delete installed Language with the DELETE command on the installed language tag. The delete command is a fire and forget operation. The deletion will run in background. IT admin can query the installed language later and resend the command if needed. Below is a sample command to delete the zh-CN language.

   **DELETE./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN**

   > [!NOTE]
   > The deletion will ignore the policy of block cleanup of unused language packs.

4. Get/Set System Preferred UI Language with GET or REPLACE command on the "SystemPreferredUILanguages" Node

   **./Device/Vendor/MSFT/LanguagePackManagement/LanguageSettings/SystemPreferredUILanguages**

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)