---
title: Windows Hello errors during PIN creation (Windows 10)
description: When you set up Windows Hello in Windows 10, you may get an error during the Create a work PIN step.
ms.assetid: DFEFE22C-4FEF-4FD9-BFC4-9B419C339502
ms.reviewer: 
keywords: PIN, error, create a work PIN
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: troubleshooting
ms.localizationpriority: medium
ms.date: 05/05/2018
---

# Windows Hello errors during PIN creation

**Applies to**
-   Windows 10

When you set up Windows Hello in Windows 10, you may get an error during the **Create a PIN** step. This topic lists some of the error codes with recommendations for mitigating the problem. If you get an error code that is not listed here, contact Microsoft Support.

## Where is the error code?

The following image shows an example of an error during **Create a PIN**.

![PIN error](images/pinerror.png)

## Error mitigations

When a user encounters an error when creating the work PIN, advise the user to try the following steps. Many errors can be mitigated by one of these steps.
1.  Try to create the PIN again. Some errors are transient and resolve themselves.
2.  Sign out, sign in, and try to create the PIN again.
3.  Reboot the device and then try to create the PIN again.
4.  Unjoin the device from Azure Active Directory (Azure AD), rejoin, and then try to create the PIN again. To unjoin a desktop PC, go to **Settings** &gt; **System** &gt; **About** and select **Disconnect from organization**. To unjoin a device running Windows 10 Mobile, you must [reset the device](https://go.microsoft.com/fwlink/p/?LinkId=715697).
5.  On mobile devices, if you are unable to setup a PIN after multiple attempts, reset your device and start over. For help on how to reset your phone go to [Reset my phone](https://go.microsoft.com/fwlink/p/?LinkId=715697).
If the error occurs again, check the error code against the following table to see if there is another mitigation for that error. When no mitigation is listed in the table, contact Microsoft Support for assistance.

| Hex        | Cause                                                              | Mitigation                                  |
| :--------- | :----------------------------------------------------------------- | :------------------------------------------ |
| 0x80090005 | NTE\_BAD\_DATA                                                     | Unjoin the device from Azure AD and rejoin. |
| 0x8009000F | The container or key already exists.                               | Unjoin the device from Azure AD and rejoin. |
| 0x80090011 | The container or key was not found.                                | Unjoin the device from Azure AD and rejoin. |
| 0x80090029 | TPM is not set up.                                                 | Sign on with an administrator account. Click **Start**, type "tpm.msc", and select **tpm.msc Microsoft Common Console Document**. In the **Actions** pane, select **Prepare the TPM**. |
| 0x8009002A | NTE\_NO\_MEMORY                                                    | Close programs which are taking up memory and try again. |
| 0x80090031 | NTE\_AUTHENTICATION\_IGNORED                                       | Reboot the device. If the error occurs again after rebooting, [reset the TPM](https://go.microsoft.com/fwlink/p/?LinkId=619969) or run [Clear-TPM](https://go.microsoft.com/fwlink/p/?LinkId=629650). |
| 0x80090035 | Policy requires TPM and the device does not have TPM.              | Change the Windows Hello for Business policy to not require a TPM. |
| 0x80090036 | User canceled an interactive dialog.                               | User will be asked to try again. |
| 0x801C0003 | User is not authorized to enroll.                                  | Check if the user has permission to perform the operation​. |
| 0x801C000E | Registration quota reached.                                        | Unjoin some other device that is currently joined using the same account or [increase the maximum number of devices per user](https://go.microsoft.com/fwlink/p/?LinkId=626933). |
| 0x801C000F | Operation successful, but the device requires a reboot.            | Reboot the device.               |
| 0x801C0010 | The AIK certificate is not valid or trusted.                       | Sign out and then sign in again. |
| 0x801C0011 | The attestation statement of the transport key is invalid.         | Sign out and then sign in again. |
| 0x801C0012 | Discovery request is not in a valid format.                        | Sign out and then sign in again. |
| 0x801C0015 | The device is required to be joined to an Active Directory domain. | ​Join the device to an Active Directory domain. |
| 0x801C0016 | The federation provider configuration is empty                     | Go to http://clientconfig.microsoftonline-p.net/FPURL.xml and verify that the file is not empty. |
| 0x801C0017 | ​The federation provider domain is empty                            | Go to http://clientconfig.microsoftonline-p.net/FPURL.xml and verify that the FPDOMAINNAME element is not empty. |
| 0x801C0018 | The federation provider client configuration URL is empty          | Go to http://clientconfig.microsoftonline-p.net/FPURL.xml and verify that the CLIENTCONFIG element contains a valid URL. |
| 0x801C03E9 | Server response message is invalid                                 | Sign out and then sign in again. |
| 0x801C03EA | Server failed to authorize user or device.                         | Check if the token is valid and user has permission to register Windows Hello for Business keys. |
| 0x801C03EB | Server response http status is not valid                           | Sign out and then sign in again. |
| 0x801C03EC | Unhandled exception from server.                                   | sign out and then sign in again. |
| 0x801C03ED | Multi-factor authentication is required for a 'ProvisionKey' operation, but was not performed. <br><br> -or- <br><br> Token was not found in the Authorization header. <br><br> -or- <br><br> Failed to read one or more objects. <br><br> -or- <br><br> The request sent to the server was invalid. | Sign out and then sign in again. If that doesn't resolve the issue, unjoin the device from Azure Active Directory (Azure AD) and rejoin.
| 0x801C03EE | Attestation failed.                                                | Sign out and then sign in again. |
| 0x801C03EF | The AIK certificate is no longer valid.                            | Sign out and then sign in again. |
| 0x801C03F2 | Windows Hello key registration failed.                             | ERROR\_BAD\_DIRECTORY\_REQUEST. Another object with the same value for property proxyAddresses already exists. To resolve the issue, refer to [Duplicate Attributes Prevent Dirsync](https://docs.microsoft.com/office365/troubleshoot/administration/duplicate-attributes-prevent-dirsync). Also, if no sync conflict exists, please verify that the "Mail/Email address" in AAD and the Primary SMTP address are the same in the proxy address.
| 0x801C044D | Authorization token does not contain device ID.                    | Unjoin the device from Azure AD and rejoin. |
|            | Unable to obtain user token.                                       | Sign out and then sign in again. Check network and credentials. |
| 0x801C044E | Failed to receive user credentials input.                          | Sign out and then sign in again. |


## Errors with unknown mitigation

For errors listed in this table, contact Microsoft Support for assistance.

| Hex         | Cause   |
|-------------|---------|
| 0X80072F0C  | Unknown |
| 0x80070057  | Invalid parameter or argument is passed. |
| 0x80090020  | NTE\_FAIL |
| 0x80090027  | Caller provided a wrong parameter. If third-party code receives this error, they must change their code. |
| 0x8009002D  | NTE\_INTERNAL\_ERROR |
| 0x801C0001  | ​ADRS server response is not in a valid format. |
| 0x801C0002  | Server failed to authenticate the user. |
| 0x801C0006  | Unhandled exception from server. |
| 0x801C000B  | Redirection is needed and redirected location is not a well known server. |
| 0x801C000C  | Discovery failed. |
| 0x801C0013  | Tenant ID is not found in the token. |
| 0x801C0014  | User SID is not found in the token. |
| 0x801C0019  | ​The federation provider client configuration is empty    |
| 0x801C001A  | The DRS endpoint in the federation provider client configuration is empty. |
| 0x801C001B  | ​The device certificate is not found. |
| 0x801C03F0  | ​There is no key registered for the user. |
| 0x801C03F1  | ​There is no UPN in the token. |
| ​0x801C044C  | There is no core window for the current thread. |
| 0x801c004D  | DSREG_NO_DEFAULT_ACCOUNT: NGC provisioning is unable to find the default WAM account to use to request AAD token for provisioning. Unable to enroll a device to use a PIN for login. |


## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
