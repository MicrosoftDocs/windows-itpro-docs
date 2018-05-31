---
title: Applying hotfixes on MBAM 2.5 SP1
description: Applying hotfixes on MBAM 2.5 SP1
author: ppriya-msft
ms.assetid: 
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 5/30/2018
---

# Applying hotfixes on MBAM 2.5 SP1
This topic describes the process for applying the hotfixes for Microsoft BitLocker Administration and Monitoring (MBAM) Server 2.5 SP1

### Before you begin, download the latest hotfix of Microsoft BitLocker Administration and Monitoring (MBAM) Server 2.5 SP1
[Desktop Optimization Pack](https://www.microsoft.com/en-us/download/details.aspx?id=56126)

#### Steps to update the MBAM Server for existing MBAM environment 
1. Remove MBAM server feature(do this by opening the MBAM Server Configuration Tool, then select Remove Features).
2. Remove MDOP MBAM from Control Panel | Programs and Features.
3. Install MBAM 2.5 SP1 RTM server components.
4. Install lastest MBAM 2.5 SP1 hotfix rollup.
5. Configure MBAM features using MBAM Server Configurator.

#### Steps to install the new MBAM 2.5 SP1 server hotfix
refer to the document for new server installation.
https://docs.microsoft.com/en-us/microsoft-desktop-optimization-pack/mbam-v25/deploying-the-mbam-25-server-infrastructure
