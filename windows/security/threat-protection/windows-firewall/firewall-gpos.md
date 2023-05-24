---
title: Firewall GPOs 
description: In this example, a Group Policy Object is linked to the domain container because the domain controllers aren't part of the isolated domain.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Firewall GPOs


All the devices on Woodgrove Bank's network that run Windows are part of the isolated domain, except domain controllers. To configure firewall rules, the GPO described in this section is linked to the domain container in the Active Directory OU hierarchy, and then filtered by using security group filters and WMI filters.

The GPO created for the example Woodgrove Bank scenario includes [GPO\_DOMISO\_Firewall](gpo-domiso-firewall.md).
