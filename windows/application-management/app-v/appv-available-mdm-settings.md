---
title: Available Mobile Device Management (MDM) settings for App-V (Windows 10)
description: A list of the available MDM settings for App-V on Windows 10.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/15/2018
ms.topic: article
---
# Available Mobile Device Management (MDM) settings for App-V

With Windows 10, version 1703, you can configure, deploy, and manage your App-V apps with the following Mobile Device Management (MDM) settings. For the full list of available settings, see the [EnterpriseAppVManagement CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/enterpriseappvmanagement-csp) page.

|Policy name|Supported versions|URI full path|Data type|Values|
|---|---|---|---|---|
|Name|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/Name|String|Read-only data, provided by your App-V packages.|
|Version|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/Version|String|Read-only data, provided by your App-V packages.|
|Publisher|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/Publisher|String|Read-only data, provided by your App-V packages.|
|InstallLocation|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/InstallLocation|String|Read-only data, provided by your App-V packages.|
|InstallDate|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/InstallDate|String|Read-only data, provided by your App-V packages.|
|Users|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/Users|String|Read-only data, provided by your App-V packages.|
|AppVPackageID|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/AppVPackageID|String|Read-only data, provided by your App-V packages.|
|AppVVersionID|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/AppVVersionID|String|Read-only data, provided by your App-V packages.|
|AppVPackageUri|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPackageManagement/<enterprise_id>/ <package_family_name>/<package_full_name>/AppVPackageUri|String|Read-only data, provided by your App-V packages.|
|LastError|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/<br>AppVPublishing/LastSync/LastError|String|Read-only data, provided by your App-V packages.|
|LastErrorDescription|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPublishing/LastSync/LastErrorDescription|String|- **0**: No errors returned during publish.<br>- **1**: Unpublish groups failed during publish.<br>- **2**: Publish no-group packages failed during publish.<br>- **3**: Publish group packages failed during publish.<br>- **4**: Unpublish packages failed during publish.<br>- **5**: New policy write failed during publish.<br>- **6**: Multiple non-fatal errors occurred during publish.|
|SyncStatusDescription|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPublishing/LastSync/SyncStatusDescription|String|- **0**: App-V publishing is idle.<br>- **1**: App-V connection groups publish in progress.<br>- **2**: App-V packages (non-connection group) publish in progress.<br>- **3**: App-V packages (connection group) publish in progress.<br>- **4**: App-V packages unpublish in progress.|
|SyncProgress|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/ AppVPublishing/LastSync/SyncProgress|String|- **0**: App-V Sync is idle.<br>- **1**: App-V Sync is initializing.<br>- **2**: App-V Sync is in progress.<br>- **3**: App-V Sync is complete.<br>- **4**: App-V Sync requires device reboot.|
|PublishXML|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/<br>AppVPublishing/Sync/PublishXML|String|Custom value, entered by admin.|
|Policy|Windows 10, version 1703|./Vendor/MSFT/EnterpriseAppVManagement/<br>AppVDynamicPolicy/configurationid/Policy|String|Custom value, entered by admin.|
