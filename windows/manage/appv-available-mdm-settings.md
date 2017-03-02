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
-   Windows 10, Version 1703

If you manage your policies using Intune, you'll want to use these MDM policy settings. You can see the full list of available policies, on the [Policy CSP]() page. <!--which versions of App-V are these supported on? Are they all the same? Are they all for 1703 (RS2)?-->

|Policy name|Supported versions|Details|
|-------------|-------------------|-----------------|--------|
|Name|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/Name</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|Version|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/Version</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|Publisher|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/PUblisher</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|InstallLocation|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/InstallLocation</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|InstallDate|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/InstallDate</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|Users|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/Users</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|AppVPackageID|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/AppVPackageID</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|AppVVersionID|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/AppVVersionID</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|AppVPackageUri|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement/*enterprise_id*/*package_family_name*/*package_full_name*/AppVPackageUri</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|LastError|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/LastError</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|LastErrorDescription|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/LastErrorDescription</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** No errors returned during publish.</li><li>**1.** Unpublish groups failed during publish.</li><li>**2.** Publish no-group packages failed during publish.</li><li>**3.** Publish group packages failed during publish.</li><li>**4.** Unpublish packages failed during publish.</li><li>**5.** New policy write failed during publish.</li><li>**6.** Multiple non-fatal errors occurred during publish.</li></ul></li></ul>|
|SyncStatusDescription|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/SyncStatusDescription</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** App-V publishing is idle.</li><li>**1.** App-V connection groups publish in progress.</li><li>**2.** App-V packages (non-connection group) publish in progress.</li><li>**3.** App-V packages (connection group) publish in progress.</li><li>**4.** App-V packages unpublish in progress.</li></ul></li></ul>|
|SyncProgress|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/LastSync/SyncProgress</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>**0.** App-V Sync is idle.</li><li>**1.** App-V Sync is initializing.</li><li>**2.** App-V Sync is in progress.</li><li>**3.** App-V Sync is complete.</li><li>**4.** App-V Sync requires device reboot.</li></ul></li></ul>|
|PublishXML|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXML</li><li>**Data type.** Need info, not in DDF</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|
|Policy|Windows 10, Version 1703|<ul><li>**URI full path.** ./Vendor/MSFT/EnterpriseAppVManagement/AppVDynamicPolicy/_configurationid_/Policy</li><li>**Data type.** Need info, not in DDF</li><li>**Allowed values:**<ul><li>**0.** Need info, not in DDF</li><li>**1 (default).** Need info, not in DDF.</li></ul></li></ul>|