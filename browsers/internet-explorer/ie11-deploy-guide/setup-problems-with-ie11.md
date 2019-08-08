---
ms.localizationpriority: medium
ms.mktglfcycl: support
ms.pagetype: appcompat
description: Reviewing log files to learn more about potential setup problems with Internet Explorer 11.
author: lomayor
ms.prod: ie11
ms.assetid: 2cd79988-17d1-4317-bee9-b3ae2dd110a0
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Setup problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Setup problems with Internet Explorer 11
Installing Internet Explorer creates the following log files, which are stored in the Windows installation folder (typically, the C:\\Windows folder):

-   `IE11_main.log`

-   `IE11_NR_Setup.log`

-   `IE11_uninst.log`

-  `cbs*.log`

-   `WU_ IE11_LangPacks.log`

These log files continuously record the entire process from the moment the IE setup program starts running until the last .cab file is downloaded, including error codes. The possible error codes are:

|Error code |Description                                                         |
|-----------|-------------------------------------------|
|0 |Success |
|1460 |Timeout |
|3010 |Success, reboot required |
|40001 |USER_ERROR_CANNOT_OPEN_LOG_FILE |
|40003 |USER_ERROR_CANNOT_INITIALIZE_APPLICATION |
|40004 |USER_ERROR_OLD_OS_VERSION |
|40005 |USER_ERROR_WRONG_PLATFORM |
|40006 |USER_ERROR_BAD_SPVERSION |
|40007 |USER_ERROR_MISSING_REQUIRED_PREREQUISITE |
|40008 |USER_ERROR_IE_GREATERVERSION_INSTALLED |
|40010 |USER_ERROR_BAD_LANGUAGE |
|40012 |USER_ERROR_CRYPTO_VALIDATION_FAILED |
|40013 |USER_ERROR_ALREADY_INSTALLED |
|40015 |USER_ERROR_WRONG_OS |
|40016 |USER_ERROR_EXTRACTION_FAILED |
|40019 |USER_ERROR_WINDOWS_PRERELEASE_NOT_SUPPORTED |
|40021 |USER_ERROR_UNSUPPORTED_VIDEO_HARDWARE |
|40022 |USER_ERROR_UNSUPPORTED_VIDEO_DRIVER |
|40023 |USER_ERROR_PREREQUISITE_INSTALL_FAILED |
|40024 |USER_ERROR_NEUTRAL_CAB_DOWNLOAD_FAILED |
|40025 |USER_ERROR_NEUTRAL_CAB_INSTALL_FAILED |
|41001 |USER_ERROR_UNKNOWN |
|50005 |USER_SUCCESS_USER_CANCELLED |

 

 

 



