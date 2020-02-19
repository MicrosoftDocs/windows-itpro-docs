---
title: Configure cellular settings for tablets and PCs (Windows 10)
description: Enterprises can provision cellular settings for tablets and PC with built-in cellular modems or plug-in USB modem dongles.
ms.assetid: 287706E5-063F-4AB5-902C-A0DF6D0730BC
ms.reviewer: 
manager: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/13/2018
---

# Configure cellular settings for tablets and PCs


**Applies to**

- Windows 10

>**Looking for consumer information?** See [Cellular settings in Windows 10](https://support.microsoft.com/help/10739/windows-10-cellular-settings)

Enterprises can configure cellular settings for tablets and PC that have built-in cellular modems or plug-in USB modem dongles and apply the settings in a [provisioning package](provisioning-packages/provisioning-packages.md). After the devices are configured, users are automatically connected using the access point name (APN) defined by the enterprise without needing to manually connect.

For users who work in different locations, you can configure one APN to connect when the users are at work and a different APN when the users are traveling.


## Prerequisites

- Windows 10, version 1703, desktop editions (Home, Pro, Enterprise, Education)

- Tablet or PC with built-in cellular modem or plug-in USB modem dongle

- [Windows Configuration Designer](provisioning-packages/provisioning-install-icd.md)

- APN (the address that your PC uses to connect to the Internet when using the cellular data connection)

    >[!NOTE]
    >You can get the APN from your mobile operator.
    
## How to configure cellular settings in a provisioning package

1. In Windows Configuration Designer, [start a new project](provisioning-packages/provisioning-create-package.md) using the **Advanced provisioning** option.

2. Enter a name for your project, and then click **Next**.

3. Select **All Windows desktop editions**, click **Next**, and then click **Finish**.

4. Go to **Runtime settings > Connections > EnterpriseAPN**.

5. Enter a name for the connection, and then click **Add**.

    ![Example of APN connection name](images/apn-add.png)
    
6. The connection appears in the **Available customizations** pane. Select it to view the settings that you can configure for the connection.

    ![settings for new connection](images/apn-add-details.png)
    
7. The following table describes the settings available for the connection.

    | Setting | Description |
    | --- | --- |
    | AlwaysOn | By default, the Connection Manager will automatically attempt to connect to the APN when a connection is available. You can disable this setting. |
    | APNName | Enter the name of the APN. |
    | AuthType | You can select **None** (the default), or specify **Auto**, **PAP**, **CHAP**, or **MSCHAPv2** authentication. If you select PAP, CHAP, or MSCHAPv2 authentication, you must also enter a user name and password.  |
    | ClassId | This is a GUID that defines the APN class to the modem. This is only required when **IsAttachAPN** is **true** and the attach APN is not only used as the Internet APN. |
    | Enabled | By default, the connection is enabled. You can change this setting. |
    | IccId | This is the Integrated Circuit Card ID (ICCID) associated with the cellular connection profile.  |
    | IPType | By default, the connection can use IPv4 and IPv6 concurrently. You can change this setting to only IPv4, only IPv6, or IPv6 with IPv4 provided by 46xlat. |
    | IsAttachAPN | Specify whether this APN should be requested as part of an LTE Attach. |
    | Password | If you select PAP, CHAP, or MSCHAPv2 authentication, enter a password that corresponds to the user name. |
    | Roaming | Select the behavior that you want when the device is roaming. The options are:</br></br>-Disallowed</br>-Allowed (default)</br>-DomesticRoaming</br>-Use OnlyForDomesticRoaming</br>-UseOnlyForNonDomesticRoaming</br>-UseOnlyForRoaming   |
    | UserName | If you select PAP, CHAP, or MSCHAPv2 authentication, enter a user name.  |
    
8. After you configure the connection settings, [build the provisioning package](provisioning-packages/provisioning-create-package.md#build-package).

9. [Apply the package to devices.](provisioning-packages/provisioning-apply-package.md)


## Confirm the settings

After you apply the provisioning package, you can confirm that the settings have been applied.

1. On the configured device, open a command prompt as an administrator.

2. Run the following command:

    ```
    netsh mbn show profiles
    ```

3. The command will list the mobile broadband profiles. Using the "Name" for the listed mobile broadband profile, run:

    ```
    netsh mbn show profiles name="name"
    ```

    This command will list details for that profile, including Access Point Name.


Alternatively, you can also use the command:

```
netsh mbn show interface
```

From the results of that command, get the name of the cellular/mobile broadband interface and run:

```
netsh mbn show connection interface="name"
```

The result of that command will show details for the cellular interface, including Access Point Name.


