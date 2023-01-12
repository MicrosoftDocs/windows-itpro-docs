---
title: Event ID 300 - Windows Hello successfully created (Windows)
description: This event is created when a Windows Hello for Business is successfully created and registered with Azure Active Directory (Azure AD).
ms.date: 07/27/2017
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
ms.topic: article
---

# Event ID 300 - Windows Hello successfully created

This event is created when Windows Hello for Business is successfully created and registered with Azure Active Directory (Azure AD). Applications or services can trigger actions on this event. For example, a certificate provisioning service can listen to this event and trigger a certificate request.

## Event details

| **Product:** |                                                                                                                                            Windows 10 or Windows 11 operating system                                                                                                                                            |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Log:**     | Event Viewer > Applications and Service Logs\Microsoft\Windows\User Device Registration\Admin |
|   **ID:**    |                                                                                                                                                        300                                                                                                                                                        |
| **Source:**  |                                                                                                                                    Microsoft Azure Device Registration Service                                                                                                                                    |
| **Version:** |                                                                                                                                                        10    or 11                                                                                                                                                     |
| **Message:** | The NGC key was successfully registered. Key ID: {4476694e-8e3b-4ef8-8487-be21f95e6f07}. UPN:test@contoso.com. Attestation: ATT\_SOFT. Client request ID: . Server request ID: db2da6bd-3d70-4b9b-b26b-444f669902da.</br>Server response: {"kid":"4476694e-8e3b-4ef8-8487-be21f95e6f07","upn":"test@contoso.com"} |
 
## Resolve

This is a normal condition. No further action is required.

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](/troubleshoot/windows-client/user-profiles-and-logon/windows-hello-errors-during-pin-creation-in-windows-10)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
