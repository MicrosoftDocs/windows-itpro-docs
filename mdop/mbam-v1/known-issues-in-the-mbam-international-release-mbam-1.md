---
title: Known Issues in the MBAM International Release
description: Known Issues in the MBAM International Release
author: dansimp
ms.assetid: bbf888dc-93c1-4323-b43c-0ded098e9b93
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Known Issues in the MBAM International Release


This section contains known issues for Microsoft BitLocker Administration and Monitoring (MBAM) International Release.

## Known Issues in the MBAM International Release


### The Installation Process Does Not Specify Update

Upon updating the Microsoft BitLocker Administration and Monitoring server or servers, the Setup program does not state that an update is being installed.

**Workaround**: None.

### Certificates Used for the Administration and Monitoring Server Role

If you are using a certificate for authentication between MBAM servers, after updating the MBAM Administration and Monitoring server you must ensure that the certificate is valid and not revoked or expired.

**Workaround**: None.

### MBAM Svclog File Filling Disk Space

If you have followed Knowledge Base article 2668170, [http://support.microsoft.com/kb/2668170](https://go.microsoft.com/fwlink/?LinkID=247277), you might have to repeat the KB steps after you install this update.

**Workaround**: None.

## Related topics


[Deploying the MBAM 1.0 Language Release Update](deploying-the-mbam-10-language-release-update.md)

 

 





