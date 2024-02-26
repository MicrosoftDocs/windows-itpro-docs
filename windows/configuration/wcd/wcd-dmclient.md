---
title: DMClient
description: This section describes the DMClient setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.topic: reference
ms.date: 01/25/2024
---

# DMClient (Windows Configuration Designer reference)

Use to specify enterprise-specific mobile device management configuration setting.

## Applies to

| Setting   | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| UpdateManagementServiceAddress | ✅  | ✅ |  | ✅ |

For the **UpdateManagementServiceAddress** setting, enter a list of servers. The first server in the semi-colon delimited list is the server that will be used to instantiate MDM sessions.

## Related topics

- [DMClient configuration service provider (CSP)](/windows/client-management/mdm/dmclient-csp)
