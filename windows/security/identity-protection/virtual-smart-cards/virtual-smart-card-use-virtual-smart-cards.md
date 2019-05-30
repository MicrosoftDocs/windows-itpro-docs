---
title: Use Virtual Smart Cards (Windows 10)
description: This topic for the IT professional describes requirements for virtual smart cards and provides information about how to use and manage them.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 10/13/2017
---

# Use Virtual Smart Cards

Applies To: Windows 10, Windows Server 2016

This topic for the IT professional describes requirements for virtual smart cards, how to use virtual smart cards, and tools that are available to help you create and manage them.

## Requirements, restrictions, and limitations

| Area        | Requirements and details  |
|-------------|---------------------------|
| Supported operating systems  | Windows Server 2016 <br>Windows Server 2012 R2 <br>Windows Server 2012 <br>Windows 10 <br>Windows 8.1 <br>Windows 8  |
| Supported Trusted Platform Module (TPM)                        | Any TPM that adheres to the TPM main specifications for version 1.2 or version 2.0 (as set by the Trusted Computing Group) is supported for use as a virtual smart card. For more information, see the [TPM Main Specification](http://www.trustedcomputinggroup.org/resources/tpm_main_specification).      |
| Supported virtual smart cards per computer                     | Ten smart cards can be connected to a computer or device at one time. This includes physical and virtual smart cards combined. <br><br>**Note**<br>You can create more than one virtual smart card; however, after creating more than four virtual smart cards, you may start to notice performance degradation. Because all smart cards appear as if they are always inserted, if more than one person shares a computer or device, each person can see all the virtual smart cards that are created on that computer or device. If the user knows the PIN values for all the virtual smart cards, the user will also be able to use them.<br> |
| Supported number of certificates on a virtual smart card       | A single TPM virtual smart card can contain 30 distinct certificates with the corresponding private keys. Users can continue to renew certificates on the card until the total number of certificates on a card exceeds 90. The reason that the total number of certificates is different from the total number of private keys is that sometimes the renewal can be done with the same private key—in which case a new private key is not generated.       |
| PIN, PIN Unlock Key (PUK), and Administrative key requirements | The PIN and the PUK must be a minimum of eight characters that can include numerals, alphabetic characters, and special characters.<br>The Administrative key must be entered as 48 hexadecimal characters. It is a 3-key triple DES with ISO/IEC 9797 padding method 2 in CBC chaining mode.                 |

## Using Tpmvscmgr.exe

To create and delete TPM virtual smart cards for end users, the Tpmvscmgr command-line tool is included as a command-line tool with the operating system. You can use the **Create** and **Delete** parameters to manage virtual smart cards on local or remote computers. For information about using this tool, see [Tpmvscmgr](virtual-smart-card-tpmvscmgr.md).

## Create and delete virtual smart cards programmatically

Virtual smart cards can also be created and deleted by using APIs. For more information, see the following classes and interfaces:

-   [TpmVirtualSmartCardManager](https://msdn.microsoft.com/library/windows/desktop/hh707171(v=vs.85).aspx)

-   [RemoteTpmVirtualSmartCardManager](https://msdn.microsoft.com/library/windows/desktop/hh707166(v=vs.85).aspx)

-   [ITpmVirtualSmartCardManager](https://msdn.microsoft.com/library/windows/desktop/hh707160(v=vs.85).aspx)

-   [ITPMVirtualSmartCardManagerStatusCallBack](https://msdn.microsoft.com/library/windows/desktop/hh707161(v=vs.85).aspx)

You can use APIs that were introduced in the Windows.Device.SmartCards namespace in Windows Server 2012 R2 and Windows 8.1 to build Microsoft Store apps to manage the full lifecycle of virtual smart cards. For information about how to build an app to do this, see [Strong Authentication: Building Apps That Leverage Virtual Smart Cards in Enterprise, BYOD, and Consumer Environments | Build 2013 | Channel 9](http://channel9.msdn.com/events/build/2013/2-041).

The following table describes the features that can be developed in a Microsoft Store app:

| Feature                                      | Physical Smart Card | Virtual Smart Card |
|----------------------------------------------|---------------------|--------------------|
| Query and monitor smart card readers              | Yes                      | Yes                     |
| List available smart cards in a reader, and retrieve the card name and card ID                 | Yes           | Yes        |
| Verify if the administrative key of a card is correct      | Yes                      | Yes                     |
| Provision (or reformat) a card with a given card ID        | Yes                      | Yes                     |
| Change the PIN by entering the old PIN and specifying a new PIN      | Yes                      | Yes                     |
| Change the administrative key, reset the PIN, or unblock the smart card by using a challenge/response method | Yes     | Yes      |
| Create a virtual smart card                       | Not applicable           | Yes                     |
| Delete a virtual smart card                       | Not applicable           | Yes                     |
| Set PIN policies                                  | No                       | Yes                     |

For more information about these Windows APIs, see:

-   [Windows.Devices.SmartCards namespace (Windows)](https://msdn.microsoft.com/library/windows/apps/windows.devices.smartcards.aspx)

-   [Windows.Security.Cryptography.Certificates namespace (Windows)](https://msdn.microsoft.com/library/windows/apps/windows.security.cryptography.certificates.aspx)

## Distinguishing TPM-based virtual smart cards from physical smart cards

To help users visually distinguish a Trusted Platform Module (TPM)-based virtual smart card from physical smart cards, the virtual smart card has a different icon. The following icon is displayed during sign in, and on other screens that require the user to enter the PIN for a virtual smart card.

![Icon for a virtual smart card](images/vsc-virtual-smart-card-icon.png)

A TPM-based virtual smart card is labeled **Security Device** in the user interface.

## Changing the PIN

The PIN for virtual smart card can be changed by pressing Ctrl+Alt+Del, and then selecting the TPM virtual smart card under **Sign in options**.

## Resolving issues

### TPM not provisioned

For a TPM-based virtual smart card to function properly, a provisioned TPM must be available on the computer. If the TPM is disabled in the BIOS, or it is not provisioned with full ownership and the storage root key, the TPM virtual smart card creation will fail.

If the TPM is initialized after creating a virtual smart card, the card will no longer function, and it will need to be re-created.

If the TPM ownership was established on a Windows Vista installation, the TPM will not be ready to use virtual smart cards. The system administrator needs to clear and initialize the TPM for it to be suitable for creating TPM virtual smart cards.

If the operating system is reinstalled, prior TPM virtual smart cards are no longer available and need to be re-created. If the operating system is upgraded, prior TPM virtual smart cards will be available to use in the upgraded operating system.

### TPM in lockout state

Sometimes, due to frequent incorrect PIN attempts from a user, the TPM may enter the lockout state. To resume using the TPM virtual smart card, it is necessary to reset the lockout on the TPM by using the owner’s password or to wait for the lockout to expire. Unblocking the user PIN does not reset the lockout in the TPM. When the TPM is in lockout, the TPM virtual smart card appears as if it is blocked. When the TPM enters the lockout state because the user entered an incorrect PIN too many times, it may be necessary to reset the user PIN by using the virtual smart card management tools, such as Tpmvscmgr command-line tool.

## See also

For information about authentication, confidentiality, and data integrity use cases, see [Virtual Smart Card Overview](virtual-smart-card-overview.md).
