---
title: Enroll Microsoft Defender ATP for macOS devices into Jamf Pro 
description: Enroll Microsoft Defender ATP for macOS devices into Jamf Pro 
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamfpro, macos, catalina, mojave, high sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Enroll Microsoft Defender ATP for macOS devices into Jamf Pro 

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac](microsoft-defender-atp-mac.md)

## Enroll macOS devices

There are multiple methods of getting enrolled to JamF.

This article will guide you on two methods:

- [Method 1:  Enrollment Invitations](#enrollment-method-1-enrollment-invitations)
- [Method 2:  Prestage Enrollments](#enrollment-method-2-prestage-enrollments)

For a complete list, see [About Computer Enrollment](https://docs.jamf.com/9.9/casper-suite/administrator-guide/About_Computer_Enrollment.html).


## Enrollment Method 1: Enrollment Invitations

1. In the Jamf Pro dashboard, navigate to **Enrollment invitations**.

    ![Image of configuration settings](images/a347307458d6a9bbfa88df7dbe15398f.png)

2. Select **+ New**.

    ![A close up of a logo Description automatically generated](images/b6c7ad56d50f497c38fc14c1e315456c.png)

3. In **Specify Recipients for the Invitation** > under **Email Addresses** enter the e-mail address(es) of the recipients.

    ![Image of configuration settings](images/718b9d609f9f77c8b13ba88c4c0abe5d.png)

    ![Image of configuration settings](images/ae3597247b6bc7c5347cf56ab1e820c0.png)

    For example: janedoe@contoso.com

    ![Image of configuration settings](images/4922c0fcdde4c7f73242b13bf5e35c19.png)

4. Configure the message for the invitation.

    ![Image of configuration settings](images/ce580aec080512d44a37ff8e82e5c2ac.png)

    ![Image of configuration settings](images/5856b765a6ce677caacb130ca36b1a62.png)

    ![Image of configuration settings](images/3ced5383a6be788486d89d407d042f28.png)

    ![Image of configuration settings](images/54be9c6ed5b24cebe628dc3cd9ca4089.png)

## Enrollment Method 2: Prestage Enrollments

1. In the Jamf Pro dashboard, navigate to **Prestage enrollments**.

    ![Image of configuration settings](images/6fd0cb2bbb0e60a623829c91fd0826ab.png)

2. Follow the instructions in [Computer PreStage Enrollments](https://docs.jamf.com/9.9/casper-suite/administrator-guide/Computer_PreStage_Enrollments.html).

## Enroll macOS device

1. Select **Continue** and install the CA certificate from a **System Preferences** window.

    ![Image of Jamf Pro enrollment](images/jamfpro-ca-certificate.png)

2. Once CA certificate is installed, return to the browser window and select **Continue** and install the MDM profile. 

    ![Image of Jamf Pro enrollment](images/jamfpro-install-mdm-profile.png)

3. Select **Allow** to downloads from JAMF.

    ![Image of Jamf Pro enrollment](images/jamfpro-download.png)

4. Select **Continue** to proceed with the MDM Profile installation. 

    ![Image of Jamf Pro enrollment](images/jamfpro-install-mdm.png)

5. Select **Continue** to install the MDM Profile.

    ![Image of Jamf Pro enrollment](images/jamfpro-mdm-unverified.png)

6. Select **Continue**  to complete the configuration. 

    ![Image of Jamf Pro enrollment](images/jamfpro-mdm-profile.png)