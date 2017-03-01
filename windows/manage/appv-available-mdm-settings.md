---
title: Available Mobile Data Management (MDM) settings for App-V (Windows 10)
description: A list of the available MDM settings for App-V on Windows 10.
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Available Mobile Data Management (MDM) settings for App-V

**Applies to**
-   Windows 10, version 1703

If you manage your policies using Intune, you'll want to use these MDM policy settings. You can see the full list of available policies, on the [Policy CSP]() page. <!--which versions of App-V are these supported on? Are they all the same? Are they all for 1703 (RS2)?-->

|Policy name|Supported versions|Details|
|-------------|-------------------|-----------------|--------|
|AllowAddressBarDropdown|Windows 10, Windows Insider Program|<ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Not allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type."</li><li>**1 (default).** Allowed. Address bar drop-down is enabled.</li></ul></li></ul>|