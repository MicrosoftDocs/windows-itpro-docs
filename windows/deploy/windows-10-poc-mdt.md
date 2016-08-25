---
title: Placeholder (Windows 10)
description: Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit

**Applies to**

-   Windows 10

**Important**: This guide leverages the proof of concept (PoC) environment configured using procedrues in [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md). Please complete all steps in the prerequisite guide before attempting the procedures in this guide.

The PoC environment is a virtual network running on Hyper-V with three virtual machines:
- **DC1**: A contoso.com domain controller, DNS server, and DHCP server.
- **SRV1**: A dual-homed contoso.com domain member server, DNS server, and default gateway providing NAT service for the PoC network.
- **PC1**: A contoso.com member computer running Windows 7, Windows 8, or Windows 8.1 that has been cloned from a physical computer on your corporate network for testing purposes.

## In this guide

Yadda yadda

## Install the Microsoft Deployment Toolkit (MDT)

1. Temporarily disable IE Enhanced Security Configuration for Administrators by typing the following commands at an elevated Windows PowerShell prompt on SRV1:
    ```
    $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 0
    Stop-Process -Name Explorer
    ```
2. Download and install the 64-bit version of [Microsoft Deployment Toolkit (MDT) 2013 Update 2](https://www.microsoft.com/en-us/download/details.aspx?id=50407) on SRV1.

## Related Topics

 

 





