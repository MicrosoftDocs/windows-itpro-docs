---
title: Placeholder (Windows 10)
description: Deploy Windows 10 in a test lab using System Center Configuration Manager 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Deploy Windows 10 in a test lab using System Center Configuration Manager

**Applies to**

-   Windows 10

**Important**: This guide leverages the proof of concept (PoC) environment configured using procedures in [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md). Please complete all steps in the prerequisite guide before attempting the procedures in this guide.

If you have already completed [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md), you can skip some steps of this guide, such as installation of MDT.

The PoC environment is a virtual network running on Hyper-V with three virtual machines:
- **DC1**: A contoso.com domain controller, DNS server, and DHCP server.
- **SRV1**: A dual-homed contoso.com domain member server, DNS server, and default gateway providing NAT service for the PoC network.
- **PC1**: A contoso.com member computer running Windows 7, Windows 8, or Windows 8.1 that has been cloned from a physical computer on your corporate network for testing purposes.

This guide leverages the Hyper-V server role to perform procedures. If you do not complete all steps in a single session, consider using [checkpoints](https://technet.microsoft.com/library/dn818483.aspx) and [saved states](https://technet.microsoft.com/library/ee247418.aspx) to pause, resume, or restart your work.

## In this guide

## Related Topics

 

 





