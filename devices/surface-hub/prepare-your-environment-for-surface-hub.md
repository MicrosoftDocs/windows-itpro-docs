---
title: Prepare your environment for Microsoft Surface Hub
description: This section contains an overview of the steps required to prepare your environment so that you can use all of the features of Microsoft Surface Hub.
ms.assetid: 336A206C-5893-413E-A270-61BFF3DF7DA9
keywords: ["prepare environment", "features of Surface Hub", "create and test device account", "check network availability"]
author: TrudyHa
---

# Prepare your environment for Microsoft Surface Hub


This section contains an overview of the steps required to prepare your environment so that you can use all of the features of Microsoft Surface Hub. See [Intro to Surface Hub](intro-to-surface-hub.md) for a description of how the device and its features interact with your IT environment.

## Create and test a device account


A "device account" is an account that Surface Hub uses in order to access features from Exchange, like email and calendar, and to enable Skype for Business. See [Create and test a device account](prepare-your-environment-for-surface-hub-create-and-test-a-device-account.md) for details.

## Check network availability


In order to function properly, the Surface Hub must have access to a wired or wireless network that meets these requirements:

-   Access to your Active Directory or Azure Active Directory (Azure AD) instance, as well as your Microsoft Exchange and Skype for Business servers
-   Can receive an IP address using DHCP
-   Open ports:
    -   HTTPS: 443
    -   HTTP: 8080

A wired connection is preferred.

## Certificates


Your Surface Hub may require certificates for ActiveSync, Skype for Business, network usage, or other authentication. To install certificates, you can either create a provisioning package (in order to install at first run, or after first run in Settings), or deploy them through a mobile device management (MDM) solution (after first run only).

To install certificates using provisioning packages, see [Create provisioning packages](prepare-your-environment-for-surface-hub-create-provisioning-packages-for-certificates.md). To install them using MDM, see the documentation for your MDM solution.

## Create provisioning packages


Currently, Surface Hub can use provisioning packages only to install certificates and to install Universal Windows Platform (UWP) apps. See [Create provisioning packages](prepare-your-environment-for-surface-hub-create-provisioning-packages-for-certificates.md) for details.

Customers will use provisioning packages to authenticate (for example, to Exchange or Skype for Business), or to sideload apps that don't come from the Windows Store or Windows Store for Business.

## Know the Exchange server for your device account


You should know which Exchange server the device account will use for email and calendar services. The device will attempt to discover this automatically during first run, but if auto-discovery doesn't work, you may need to enter the server info manually.

### Admin group management

Every Surface Hub can be configured individually by opening the Settings app on the device. To prevent people who are not administrators from changing settings, the Settings app requires local administrator credentials to open the app and change settings. See [Admin group management](prepare-your-environment-for-surface-hub-admin-group-management.md) for details on how admin groups are set up and managed.

## Skype for Business


Certificates may be required in order to have the Surface Hub use Skype for Business.

## <a href="" id="prepare-checklist"></a>Checklist for preparation


In order to ensure that your environment is ready for the Surface Hub, verify the items in the following list.

1.  The device account has been created.

    Test this by running:

    -   Surface Hub device account validation PowerShell scripts
    -   Lync Windows app from the Windows Store (if Lync runs successfully, then Skype for Business will most likely run).

2.  Ensure that there is a working network/Internet connection for the device to connect to:

    -   It must be able to receive an IP address using DHCP (Surface Hub cannot be configured with a static IP address)
    -   It must have these ports open:

        -   HTTPS: 443
        -   HTTP: 8080

        If your network runs through a proxy, you'll need the proxy address or script information as well.

3.  In order to improve your experience, we collect data. To collect data, we need these sites whitelisted:
    -   Telemetry client endpoint: https://vortex.data.microsoft.com/
    -   Telemetry settings endpoint: https://settings.data.microsoft.com/

4.  Choose the local admin method you want to set up during first run (see [Set up admins for this device](set-up-your-surface-hub--configure--first-run-program.md#setup-admins)). Also, decide whether you'll be using MDM (see [Manage settings with an MDM provider](manage-surface-hub-remotely-managing-settings.md)).
5.  You've created provisioning packages, as needed. See [Create provisioning packages](prepare-your-environment-for-surface-hub-create-provisioning-packages-for-certificates.md).
6.  Have all necessary information available from the [Setup worksheet](prepare-your-environment-for-surface-hub-setup-worksheet.md).

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Create and test a device account](prepare-your-environment-for-surface-hub-create-and-test-a-device-account.md)</p></td>
<td align="left"><p>This topic introduces how to create and test the device account that Surface Hub uses to communicate with and Skype.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Create provisioning packages](prepare-your-environment-for-surface-hub-create-provisioning-packages-for-certificates.md)</p></td>
<td align="left"><p>For Windows 10, settings that use the registry or a content services platform (CSP) can be configured using provisioning packages. You can also add certificates during first run using provisioning.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Admin group management](prepare-your-environment-for-surface-hub-admin-group-management.md)</p></td>
<td align="left"><p>Every Surface Hub can be configured individually by opening the Settings app on the device. However, to prevent people who are not administrators from changing the settings, the Settings app requires administrator credentials to open the app and change settings.</p>
<p>The Settings app requires local administrator credentials to open the app.</p></td>
</tr>
</tbody>
</table>

 

 

 





