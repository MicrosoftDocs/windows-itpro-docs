---
title: GPO\_DOMISO\_IsolatedDomain\_Servers 
description: Author this GPO by using the Windows Defender Firewall with Advanced Security interface in the Group Policy editing tools.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
---

# GPO\_DOMISO\_IsolatedDomain\_Servers


This GPO is authored by using the Windows Defender Firewall interface in the Group Policy editing tools. The User Configuration section of the GPO is disabled. It's intended to only apply to server devices that are running at least Windows Server 2008.

Because so many of the settings and rules for this GPO are common to those settings and rules in the GPO for at least Windows Vista, you can save time by exporting the Windows Defender Firewall piece of the GPO for at least Windows Vista, and importing it to the GPO for at least Windows Server 2008. After the import, change only the items specified here:

-   This GPO applies all its settings to all profiles: Domain, Private, and Public. Because a server isn't expected to be mobile and changing networks, configuring the GPO in this way prevents a network failure or the addition of a new network adapter from unintentionally switching the device to the Public profile with a different set of rules (the example of a server running Windows Server 2008).

    >**Important:**  Windows Vista and Windows Server 2008 support only one network location profile at a time. The profile for the least secure network type is applied to the device. If you attach a network adapter to a device that is not physically connected to a network, the public network location type is associated with the network adapter and applied to the device.

**Next:** [Boundary Zone GPOs](boundary-zone-gpos.md)
