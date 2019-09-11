---
title: Troubleshooting AGPM Upgrades
description: Troubleshooting AGPM Upgrades
author: dansimp
ms.assetid: 1abbf0c1-fd32-46a8-a3ba-c005f066523d
ms.reviewer: 
manager: dansimp
ms.author: jedodson
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Troubleshooting AGPM Upgrades

This section lists common issues that you may encounter when you upgrade your Advanced Group Policy Management (AGPM) server to a newer version (e.g. AGPM 4.0 to AGPM 4.3). To diagnose issues not listed here, it may be helpful to view the [Troubleshooting AGPM](troubleshooting-agpm-agpm40.md) or for an AGPM Administrator (Full Control) to use logging and tracing. For more information, see [Configure Logging and Tracing](configure-logging-and-tracing-agpm40.md).

## What problems are you having?

-   [Failed to generate a HTML GPO difference report (Error code 80004003)](#bkmk-error-80004003)

### <a href="" id="bkmk-error-80004003"></a>Failed to generate a HTML GPO difference report (Error code 80004003)

-   **Cause**: You have installed the AGPM upgrade package with an incorrect account.

-   **Solution**: You will need to be an AGPM administrator in order to fix this issue.
    
    -   Ensure you know the username & password of your **AGPM service account**.

    -   Log onto your AGPM server interactively as your AGPM service account.
        
        -   This is critically important, as the install will fail if you use a different account.

    -   Shutdown the AGPM service.
    
    -   Install the required hotfix.
    
    -   Connect to AGPM using an AGPM client to test that your difference reports are now functioning.
