---
title: Create a WIP policy in Intune
description: Learn how to use the Microsoft Intune admin center to create and deploy your Windows Information Protection (WIP) policy to protect data on your network.
author: aczechowski
ms.author: aaroncz
manager: aaroncz
ms.reviewer: rafals
ms.topic: how-to
ms.date: 07/15/2022
---

# Create a Windows Information Protection policy in Microsoft Intune

[!INCLUDE [Deprecate Windows Information Protection](includes/wip-deprecation.md)]
<!-- 6010051 -->

_Applies to:_

- Windows 10
- Windows 11

Microsoft Intune has an easy way to create and deploy a Windows Information Protection (WIP) policy. You can choose which apps to protect, the level of protection, and how to find enterprise data on the network. The devices can be fully managed by Mobile Device Management (MDM), or managed by Mobile Application Management (MAM), where Intune manages only the apps on a user's personal device.

## Differences between MDM and MAM for WIP

You can create an app protection policy in Intune either with device enrollment for MDM or without device enrollment for MAM. The process to create either policy is similar, but there are important differences: 

- MAM has more **Access** settings for Windows Hello for Business.
- MAM can [selectively wipe company data](/intune/apps-selective-wipe) from a user's personal device.
- MAM requires an [Microsoft Entra ID P1 or P2 license](/azure/active-directory/fundamentals/active-directory-whatis#what-are-the-azure-ad-licenses).
- A Microsoft Entra ID P1 or P2 license is also required for WIP auto-recovery, where a device can re-enroll and regain access to protected data. WIP auto-recovery depends on Microsoft Entra registration to back up the encryption keys, which requires device auto-enrollment with MDM.
- MAM supports only one user per device.  
- MAM can only manage [enlightened apps](enlightened-microsoft-apps-and-wip.md).
- Only MDM can use [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp) policies.
- If the same user and device are targeted for both MDM and MAM, the MDM policy will be applied to devices joined to Microsoft Entra ID. For personal devices that are workplace-joined (that is, added by using **Settings** > **Email & accounts** > **Add a work or school account**), the MAM-only policy will be preferred but it's possible to upgrade the device management to MDM in **Settings**. Windows Home edition only supports WIP for MAM-only; upgrading to MDM policy on Home edition will revoke WIP-protected data access. 


## Prerequisites

Before you can create a WIP policy using Intune, you need to configure an MDM or MAM provider in Microsoft Entra ID. MAM requires an [Microsoft Entra ID P1 or P2 license](/azure/active-directory/fundamentals/active-directory-whatis#what-are-the-azure-ad-licenses). A Microsoft Entra ID P1 or P2 license is also required for WIP auto-recovery, where a device can re-enroll and regain access to protected data. WIP auto-recovery relies on Microsoft Entra registration to back up the encryption keys, which requires device auto-enrollment with MDM. 

## Configure the MDM or MAM provider

1. Sign in to the Azure portal.

2. Select **Microsoft Entra ID** > **Mobility (MDM and MAM)** > **Microsoft Intune**.

3. Select **Restore Default URLs** or enter the settings for MDM or MAM user scope and select **Save**:

   ![Configure MDM or MAM provider.](images/mobility-provider.png)

## Create a WIP policy

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Open Microsoft Intune and select **Apps** > **App protection policies** > **Create policy**.

   ![Open Client apps.](images/create-app-protection-policy.png)

3. In the **App policy** screen, select **Add a policy**, and then fill out the fields:

   - **Name.** Type a name (required) for your new policy.

   - **Description.** Type an optional description.

   - **Platform.** Choose **Windows 10**.

   - **Enrollment state.** Choose **Without enrollment** for MAM or **With enrollment** for MDM.

   ![Add a mobile app policy.](images/add-a-mobile-app-policy.png)

4. Select **Protected apps** and then select **Add apps**.

   ![Add protected apps.](images/add-protected-apps.png)

   You can add these types of apps:

   - [Recommended apps](#add-recommended-apps)
   - [Store apps](#add-store-apps)
   - [Desktop apps](#add-desktop-apps)

>[!NOTE]
>An application might return access denied errors after removing it from the list of protected apps. Rather than remove it from the list, uninstall and reinstall the application or exempt it from WIP policy.    
    
### Add recommended apps 

Select **Recommended apps** and select each app you want to access your enterprise data or select them all, and select **OK**.

![Microsoft Intune management console: Recommended apps.](images/recommended-apps.png)    

### Add Store apps 

Select **Store apps**, type the app product name and publisher, and select **OK**. For example, to add the Power BI Mobile App from the Store, type the following: 

- **Name**: Microsoft Power BI
- **Publisher**: `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`
- **Product Name**: `Microsoft.MicrosoftPowerBIForWindows`

![Add Store app.](images/add-a-protected-store-app.png)

To add multiple Store apps, select the ellipsis `…`.

If you don't know the Store app publisher or product name, you can find them by following these steps.

1. Go to the [Microsoft Store for Business](https://go.microsoft.com/fwlink/p/?LinkID=722910) website, and find your app. For example, *Power BI Mobile App*.

2. Copy the ID value from the app URL. For example, the Power BI Mobile App ID URL is `https://www.microsoft.com/store/p/microsoft-power-bi/9nblgggzlxn1`, and you'd copy the ID value, `9nblgggzlxn1`.

3. In a browser, run the Store for Business portal web API, to return a JavaScript Object Notation (JSON) file that includes the publisher and product name values. For example, run `https://bspmts.mp.microsoft.com/v1/public/catalog/Retail/Products/9nblgggzlxn1/applockerdata`, where `9nblgggzlxn1` is replaced with your ID value.
    
    The API runs and opens a text editor with the app details.

    ```json
	{
		"packageIdentityName": "Microsoft.MicrosoftPowerBIForWindows",
		"publisherCertificateName": "CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
	}
    ```

4.  Copy the `publisherCertificateName` value into the **Publisher** box and copy the `packageIdentityName` value into the **Name** box of Intune.

    >[!Important]
    >The JSON file might also return a `windowsPhoneLegacyId` value for both the **Publisher Name** and **Product Name** boxes. This means that you have an app that's using a XAP package and that you must set the **Product Name** as `windowsPhoneLegacyId`, and set the **Publisher Name** as `CN=` followed by the `windowsPhoneLegacyId`.
	>
	> For example:
	>
	> ```json
	> {
	>     "windowsPhoneLegacyId": "ca05b3ab-f157-450c-8c49-a1f127f5e71d",
	> }

<!-- 01.06.2022 mandia: Commenting out, as these events are specific to Windows Phone.

> [!NOTE]
> Your PC and phone must be on the same wireless network.

1. On the Windows Phone, go to **Settings**, choose **Update & security**, and then choose **For developers**.

2. In the **For developers** screen, turn on **Developer mode**, turn on **Device Discovery**, and then turn on **Device Portal**.

3. Copy the URL in the **Device Portal** area into your device's browser, and then accept the SSL certificate.

4. In the **Device discovery** area, press **Pair**, and then enter the PIN into the website from the previous step.

6. On the **Apps** tab of the website, you can see details for the running apps, including the publisher and product names.

7. Start the app for which you're looking for the publisher and product name values.

8. Copy the `publisherCertificateName` value and paste it into the **Publisher Name** box and the `packageIdentityName` value into the **Product Name** box of Intune.

    >[!Important]
    >The JSON file might also return a `windowsPhoneLegacyId` value for both the **Publisher Name** and **Product Name** boxes. This means that you have an app that's using a XAP package and that you must set the **Product Name** as `windowsPhoneLegacyId`, and set the **Publisher Name** as `CN=` followed by the `windowsPhoneLegacyId`.
	>
	> For example:
	>
	> ```json
	> {
	>     "windowsPhoneLegacyId": "ca05b3ab-f157-450c-8c49-a1f127f5e71d",
	> }

-->

### Add Desktop apps

To add **Desktop apps**, complete the following fields, based on what results you want returned.

|Field|Manages|
|--- |--- |
|All fields marked as `*`|All files signed by any publisher. (Not recommended and may not work)|
|Publisher only|If you only fill out this field, you'll get all files signed by the named publisher. This might be useful if your company is the publisher and signer of internal line-of-business apps.|
|Publisher and Name only|If you only fill out these fields, you'll get all files for the specified product, signed by the named publisher.|
|Publisher, Name, and File only|If you only fill out these fields, you'll get any version of the named file or package for the specified product, signed by the named publisher.|
|Publisher, Name, File, and Min version only|If you only fill out these fields, you'll get the specified version or newer releases of the named file or package for the specified product, signed by the named publisher. This option is recommended for enlightened apps that weren't previously enlightened.|
|Publisher, Name, File, and Max version only|If you only fill out these fields, you'll get the specified version or older releases of the named file or package for the specified product, signed by the named publisher.|
|All fields completed|If you fill out all fields, you'll get the specified version of the named file or package for the specified product, signed by the named publisher.|

To add another Desktop app, select the ellipsis `…`. After you've entered the info into the fields, select **OK**.

![Microsoft Intune management console: Adding Desktop app info.](images/wip-azure-add-desktop-apps.png)
 
If you're unsure about what to include for the publisher, you can run this PowerShell command:

```powershell
Get-AppLockerFileInformation -Path "<path_of_the_exe>"
```

Where `"<path_of_the_exe>"` goes to the location of the app on the device. For example:

```powershell
Get-AppLockerFileInformation -Path "C:\Program Files\Windows NT\Accessories\wordpad.exe"
```

In this example, you'd get the following info:

```console
Path                   Publisher
----                   ---------
%PROGRAMFILES%\WINDOWS NT\ACCESSORIES\WORDPAD.EXE O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US
```

Where `O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US` is the **Publisher** name and `WORDPAD.EXE` is the **File** name.

Regarding to how to get the Product Name for the Apps you wish to Add, contact the Windows Support Team to request the guidelines

### Import a list of apps 

This section covers two examples of using an AppLocker XML file to the **Protected apps** list. You'll use this option if you want to add multiple apps at the same time. 

- [Create a Packaged App rule for Store apps](#create-a-packaged-app-rule-for-store-apps)
- [Create an Executable rule for unsigned apps](#create-an-executable-rule-for-unsigned-apps)

For more info about AppLocker, see the [AppLocker](../../application-security/application-control/windows-defender-application-control/applocker/applocker-overview.md) content.

#### Create a Packaged App rule for Store apps

1. Open the Local Security Policy snap-in (SecPol.msc).
    
2. Expand **Application Control Policies**, expand **AppLocker**, and then select **Packaged App Rules**.

    ![Local security snap-in, showing the Packaged app Rules.](images/wip-applocker-secpol-1.png)

3. Right-click in the right side, and then select **Create New Rule**.

    The **Create Packaged app Rules** wizard appears.

4.  On the **Before You Begin** page, select **Next**.

    ![Screenshot of the Before You Begin tab.](images/wip-applocker-secpol-wizard-1.png)

5.  On the **Permissions** page, make sure the **Action** is set to **Allow** and the **User or group** is set to **Everyone**, and then select **Next**.

    ![Screenshot of the Permissions tab with "Allow" and "Everyone" selected](images/wip-applocker-secpol-wizard-2.png)

6. On the **Publisher** page, choose **Select** from the **Use an installed packaged app as a reference** area.

    ![Screenshot of the "Use an installed package app as a reference" radio button selected and the Select button highlighted](images/wip-applocker-secpol-wizard-3.png)

7.  In the **Select applications** box, pick the app that you want to use as the reference for your rule, and then select **OK**. For this example, we're using Microsoft Dynamics 365.

    ![Screenshot of the Select applications list.](images/wip-applocker-secpol-wizard-4.png)

8.  On the updated **Publisher** page, select **Create**.

    ![Screenshot of the Publisher tab.](images/wip-applocker-secpol-wizard-5.png)

9.  Select **No** in the dialog box that appears, asking if you want to create the default rules. Don't create default rules for your WIP policy.

    ![Screenshot of AppLocker warning.](images/wip-applocker-default-rule-warning.png)

9.  Review the Local Security Policy snap-in to make sure your rule is correct.

    ![Local security snap-in, showing the new rule.](images/wip-applocker-secpol-create.png)

10. On the left, right-click on **AppLocker**, and then select **Export policy**.

    The **Export policy** box opens, letting you export and save your new policy as XML.

    ![Local security snap-in, showing the Export Policy option.](images/wip-applocker-secpol-export.png)

11. In the **Export policy** box, browse to where the policy should be stored, give the policy a name, and then select **Save**.

    The policy is saved and you'll see a message that says one rule was exported from the policy.

    **Example XML file**<br>
    This is the XML file that AppLocker creates for Microsoft Dynamics 365.

    ```xml
    <?xml version="1.0"?>
    <AppLockerPolicy Version="1">
        <RuleCollection EnforcementMode="NotConfigured" Type="Appx">
            <FilePublisherRule Action="Allow" UserOrGroupSid="S-1-1-0" Description="" Name="Microsoft.MicrosoftDynamicsCRMforWindows10, version 3.2.0.0 and above, from Microsoft Corporation" Id="3da34ed9-aec6-4239-88ba-0afdce252ab4">
                <Conditions>
                    <FilePublisherCondition BinaryName="*" ProductName="Microsoft.MicrosoftDynamicsCRMforWindows10" PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US">
                        <BinaryVersionRange HighSection="*" LowSection="3.2.0.0"/>
                    </FilePublisherCondition>
                </Conditions>
            </FilePublisherRule>
        </RuleCollection>
        <RuleCollection EnforcementMode="NotConfigured" Type="Dll"/>
        <RuleCollection EnforcementMode="NotConfigured" Type="Exe"/>
        <RuleCollection EnforcementMode="NotConfigured" Type="Msi"/>
        <RuleCollection EnforcementMode="NotConfigured" Type="Script"/>
    </AppLockerPolicy>
    ```

12. After you've created your XML file, you need to import it by using Microsoft Intune.

## Create an Executable rule for unsigned apps

The executable rule helps to create an AppLocker rule to sign any unsigned apps. It enables adding the file path or the app publisher contained in the file's digital signature needed for the WIP policy to be applied. 

1. Open the Local Security Policy snap-in (SecPol.msc).
    
2. In the left pane, select **Application Control Policies** > **AppLocker** > **Executable Rules**.

3. Right-click **Executable Rules** > **Create New Rule**.

   ![Local security snap-in, showing the Executable Rules.](images/create-new-path-rule.png)

4. On the **Before You Begin** page, select **Next**.

5. On the **Permissions** page, make sure the **Action** is set to **Allow** and the **User or group** is set to **Everyone**, and then select **Next**.

6. On the **Conditions** page, select **Path** and then select **Next**.

    ![Screenshot with Path conditions selected in the Create Executable Rules wizard.](images/path-condition.png)

7. Select **Browse Folders...** and select the path for the unsigned apps. For this example, we're using "C:\Program Files".

    ![Screenshot of the Path field of the Create Executable Rules wizard.](images/select-path.png)

8. On the **Exceptions** page, add any exceptions and then select **Next**.

9. On the **Name** page, type a name and description for the rule and then select **Create**.

10. In the left pane, right-click **AppLocker** > **Export policy**.

11. In the **Export policy** box, browse to where the policy should be stored, give the policy a name, and then select **Save**.

    The policy is saved and you'll see a message that says one rule was exported from the policy.

12. After you've created your XML file, you need to import it by using Microsoft Intune.


**To import a list of protected apps using Microsoft Intune**

1. In **Protected apps**, select **Import apps**.

    ![Import protected apps.](images/import-protected-apps.png)
    
    Then import your file.
    
    ![Microsoft Intune, Importing your AppLocker policy file using Intune.](images/wip-azure-import-apps.png)

2. Browse to your exported AppLocker policy file, and then select **Open**.

    The file imports and the apps are added to your **Protected apps** list.

### Exempt apps from a WIP policy
If your app is incompatible with WIP, but still needs to be used with enterprise data, then you can exempt the app from the WIP restrictions. This means that your apps won't include auto-encryption or tagging and won't honor your network restrictions. It also means that your exempted apps might leak.

1. In **Client apps - App protection policies**, select **Exempt apps**.
    
    ![Exempt apps.](images/exempt-apps.png)

2. In **Exempt apps**, select **Add apps**.

    When you exempt apps, they're allowed to bypass the WIP restrictions and access your corporate data. 
    
3. Fill out the rest of the app info, based on the type of app you're adding:

    - [Add Recommended apps](#add-recommended-apps)

    - [Add Store apps](#add-store-apps)

    - [Add Desktop apps](#add-desktop-apps)

    - [Import apps](#import-a-list-of-apps)

4.  Select **OK**.

## Manage the WIP protection mode for your enterprise data
After you've added the apps you want to protect with WIP, you'll need to apply a management and protection mode.

We recommend that you start with **Silent** or **Allow Overrides** while verifying with a small group that you have the right apps on your protected apps list. After you're done, you can change to your final enforcement policy, **Block**.

1. From **App protection policy**, select the name of your policy, and then select **Required settings**.

    ![Microsoft Intune, Required settings shows Windows Information Protection mode.](images/wip-azure-required-settings-protection-mode.png)

    |Mode |Description |
    |-----|------------|
    |Block |WIP looks for inappropriate data sharing practices and stops the employee from completing the action. This can include sharing info across non-enterprise-protected apps in addition to sharing enterprise data between other people and devices outside of your enterprise.|
    |Allow Overrides |WIP looks for inappropriate data sharing, warning employees if they do something deemed potentially unsafe. However, this management mode lets the employee override the policy and share the data, logging the action to your audit log. For info about how to collect your audit log files, see [How to collect Windows Information Protection (WIP) audit event logs](collect-wip-audit-event-logs.md).|
    |Silent |WIP runs silently, logging inappropriate data sharing, without blocking anything that would have been prompted for employee interaction while in Allow Override mode. Unallowed actions, like apps inappropriately trying to access a network resource or WIP-protected data, are still stopped.|
    |Off |WIP is turned off and doesn't help to protect or audit your data.<br><br>After you turn off WIP, an attempt is made to decrypt any WIP-tagged files on the locally attached drives. Your previous decryption and policy info isn't automatically reapplied if you turn WIP protection back on. For more information, see [How to disable Windows Information Protection](how-to-disable-wip.md).|

2. Select **Save**.

## Define your enterprise-managed corporate identity
Corporate identity, typically expressed as your primary Internet domain (for example, contoso.com), helps to identify and tag your corporate data from apps you've marked as protected by WIP. For example, emails using contoso.com are identified as being corporate and are restricted by your Windows Information Protection policies.

Starting with Windows 10, version 1703, Intune automatically determines your corporate identity and adds it to the **Corporate identity** field.

**To change your corporate identity**

1. From **App policy**, select the name of your policy, and then select **Required settings**.

2. If the auto-defined identity isn't correct, you can change the info in the **Corporate identity** field. 

   ![Microsoft Intune, Set your corporate identity for your organization.](images/wip-azure-required-settings-corp-identity.png)

3. To add domains, such your email domain names, select **Configure Advanced settings** > **Add network boundary** and select **Protected domains**.

   ![Add protected domains.](images/add-protected-domains.png)

## Choose where apps can access enterprise data
After you've added a protection mode to your apps, you'll need to decide where those apps can access enterprise data on your network. Every WIP policy should include your enterprise network locations. 

There are no default locations included with WIP, you must add each of your network locations. This area applies to any network endpoint device that gets an IP address in your enterprise's range and is also bound to one of your enterprise domains, including SMB shares. Local file system locations should just maintain encryption (for example, on local NTFS, FAT, ExFAT).

To define the network boundaries, select **App policy** > the name of your policy > **Advanced settings** > **Add network boundary**.

![Microsoft Intune, Set where your apps can access enterprise data on your network.](images/wip-azure-advanced-settings-network.png)

Select the type of network boundary to add from the **Boundary type** box. Type a name for your boundary into the **Name** box, add your values to the **Value** box, based on the options covered in the following subsections, and then select **OK**.

### Cloud resources

Specify the cloud resources to be treated as corporate and protected by WIP. 
For each cloud resource, you may also optionally specify a proxy server from your Internal proxy servers list to route traffic for this cloud resource.
All traffic routed through your Internal proxy servers is considered enterprise.

Separate multiple resources with the "|" delimiter. 
For example: 

```console
URL <,proxy>|URL <,proxy>
```

Personal applications can access a cloud resource that has a blank space or an invalid character, such as a trailing dot in the URL.

To add a subdomain for a cloud resource, use a period (.) instead of an asterisk (*). For example, to add all subdomains within Office.com, use ".office.com" (without the quotation marks).

In some cases, such as when an app connects directly to a cloud resource through an IP address, Windows can't tell whether it's attempting to connect to an enterprise cloud resource or to a personal site. 
In this case, Windows blocks the connection by default. 
To stop Windows from automatically blocking these connections, you can add the `/*AppCompat*/` string to the setting. 
For example: 

```console
URL <,proxy>|URL <,proxy>|/*AppCompat*/
```

When you use this string, we recommend that you also turn on [Microsoft Entra Conditional Access](/azure/active-directory/active-directory-conditional-access), using the **Domain joined or marked as compliant** option, which blocks apps from accessing any enterprise cloud resources that are protected by conditional access.

Value format with proxy:

```console
contoso.sharepoint.com,contoso.internalproxy1.com|contoso.visualstudio.com,contoso.internalproxy2.com
```

Value format without proxy:

```console
contoso.sharepoint.com|contoso.visualstudio.com|contoso.onedrive.com,
```

### Protected domains

Specify the domains used for identities in your environment. 
All traffic to the fully qualified domains appearing in this list will be protected.
Separate multiple domains with the "|" delimiter.

```console
exchange.contoso.com|contoso.com|region.contoso.com
```

### Network domains

Specify the DNS suffixes used in your environment. 
All traffic to the fully qualified domains appearing in this list will be protected.
Separate multiple resources with the "," delimiter.

```console
corp.contoso.com,region.contoso.com
```

### Proxy servers

Specify the proxy servers your devices will go through to reach your cloud resources. 
Using this server type indicates that the cloud resources you're connecting to are enterprise resources.

This list shouldn't include any servers listed in your Internal proxy servers list. 
Proxy servers must be used only for non-WIP-protected (non-enterprise) traffic.
Separate multiple resources with the ";" delimiter.

```console
proxy.contoso.com:80;proxy2.contoso.com:443
```

### Internal proxy servers

Specify the internal proxy servers your devices will go through to reach your cloud resources. Using this server type indicates that the cloud resources you're connecting to are enterprise resources.

This list shouldn't include any servers listed in your Proxy servers list.
Internal proxy servers must be used only for WIP-protected (enterprise) traffic.
Separate multiple resources with the ";" delimiter.

```console
contoso.internalproxy1.com;contoso.internalproxy2.com
```

### IPv4 ranges

Specify the addresses for a valid IPv4 value range within your intranet. 
These addresses, used with your Network domain names, define your corporate network boundaries.
Classless Inter-Domain Routing (CIDR) notation isn't supported.

Separate multiple ranges with the "," delimiter. 

**Starting IPv4 Address:** 3.4.0.1<br/>
**Ending IPv4 Address:** 3.4.255.254<br/>
**Custom URI:** 3.4.0.1-3.4.255.254,<br/>
10.0.0.1-10.255.255.254

### IPv6 ranges

Starting with Windows 10, version 1703, this field is optional.

Specify the addresses for a valid IPv6 value range within your intranet. 
These addresses, used with your network domain names, define your corporate network boundaries.
Classless Inter-Domain Routing (CIDR) notation isn't supported.

Separate multiple ranges with the "," delimiter.

**Starting IPv6 Address:** `2a01:110::`</br>
**Ending IPv6 Address:** `2a01:110:7fff:ffff:ffff:ffff:ffff:ffff`<br>
**Custom URI:** `2a01:110:7fff:ffff:ffff:ffff:ffff:ffff,'<br>'fd00::-fdff:ffff:ffff:ffff:ffff:ffff:ffff:ffff`

### Neutral resources

Specify your authentication redirection endpoints for your company.
These locations are considered enterprise or personal, based on the context of the connection before the redirection.
Separate multiple resources with the "," delimiter.

```console
sts.contoso.com,sts.contoso2.com
```

Decide if you want Windows to look for more network settings:

- **Enterprise Proxy Servers list is authoritative (do not auto-detect).** Turn on if you want Windows to treat the proxy servers you specified in the network boundary definition as the complete list of proxy servers available on your network. If you turn this off, Windows will search for more proxy servers in your immediate network.

- **Enterprise IP Ranges list is authoritative (do not auto-detect).** Turn on if you want Windows to treat the IP ranges you specified in the network boundary definition as the complete list of IP ranges available on your network. If you turn this off, Windows will search for more IP ranges on any domain-joined devices connected to your network.

![Microsoft Intune, Choose if you want Windows to search for more proxy servers or IP ranges in your enterprise.](images/wip-azure-advanced-settings-network-autodetect.png)

## Upload your Data Recovery Agent (DRA) certificate
After you create and deploy your WIP policy to your employees, Windows begins to encrypt your corporate data on the employees' local device drive. If somehow the employees' local encryption keys get lost or revoked, the encrypted data can become unrecoverable. To help avoid this possibility, the Data Recovery Agent (DRA) certificate lets Windows use an included public key to encrypt the local data while you maintain the private key that can unencrypt the data.

>[!Important]
>Using a DRA certificate isn't mandatory. However, we strongly recommend it. For more info about how to find and export your data recovery certificate, see [Data Recovery and Encrypting File System (EFS)](/previous-versions/tn-archive/cc512680(v=technet.10)). For more info about creating and verifying your EFS DRA certificate, see [Create and verify an Encrypting File System (EFS) Data Recovery Agent (DRA) certificate](/windows/threat-protection/windows-information-protection/create-and-verify-an-efs-dra-certificate).

**To upload your DRA certificate**
1. From **App policy**, select the name of your policy, and then select **Advanced settings** from the menu that appears.

    **Advanced settings** shows.

2.  In the **Upload a Data Recovery Agent (DRA) certificate to allow recovery of encrypted data** box, select **Browse** to add a data recovery certificate for your policy.

    ![Microsoft Intune, Upload your Data Recovery Agent (DRA) certificate.](images/wip-azure-advanced-settings-efsdra.png)

## Choose your optional WIP-related settings
After you've decided where your protected apps can access enterprise data on your network, you can choose optional settings.

![Advanced optional settings.](images/wip-azure-advanced-settings-optional.png)
   
**Revoke encryption keys on unenroll.** Determines whether to revoke a user's local encryption keys from a device when it's unenrolled from Windows Information Protection. If the encryption keys are revoked, a user no longer has access to encrypted corporate data. The options are:
    
- **On, or not configured (recommended).** Revokes local encryption keys from a device during unenrollment.
        
- **Off.** Stop local encryption keys from being revoked from a device during unenrollment. For example, if you're migrating between Mobile Device Management (MDM) solutions.
        
**Show the enterprise data protection icon.** Determines whether the Windows Information Protection icon overlay appears on corporate files in the Save As and File Explorer views. The options are:
    
- **On.** Allows the Windows Information Protection icon overlay to appear on corporate files in the Save As and File Explorer views. Also, for unenlightened but protected apps, the icon overlay also appears on the app tile and with Managed text on the app name in the **Start** menu.
        
- **Off, or not configured (recommended).** Stops the Windows Information Protection icon overlay from appearing on corporate files or unenlightened, but protected apps. Not configured is the default option. 
        
**Use Azure RMS for WIP.** Determines whether WIP uses [Microsoft Azure Rights Management](/azure/information-protection/what-is-azure-rms) to apply EFS encryption to files that are copied from Windows 10 to USB or other removable drives so they can be securely shared with employees. In other words, WIP uses Azure Rights Management "machinery" to apply EFS encryption to files when they're copied to removable drives. You must already have Azure Rights Management set up. The EFS file encryption key is protected by the RMS template's license. Only users with permission to that template can read it from the removable drive. WIP can also integrate with Azure RMS by using the **AllowAzureRMSForEDP** and the **RMSTemplateIDForEDP** MDM settings in the [EnterpriseDataProtection CSP](/windows/client-management/mdm/enterprisedataprotection-csp). 
    
- **On.** Protects files that are copied to a removable drive. You can enter a TemplateID GUID to specify who can access the Azure Rights Management protected files, and for how long. The RMS template is only applied to the files on removable media, and is only used for access control—it doesn't actually apply Azure Information Protection to the files. 
        
  If you don't specify an [RMS template](/information-protection/deploy-use/configure-custom-templates), it's a regular EFS file using a default RMS template that all users can access.
        
- **Off, or not configured.** Stops WIP from encrypting Azure Rights Management files that are copied to a removable drive.

  > [!NOTE]
  > Regardless of this setting, all files in OneDrive for Business will be encrypted, including moved Known Folders.

**Allow Windows Search Indexer to search encrypted files.** Determines whether to allow the Windows Search Indexer to index items that are encrypted, such as WIP protected files.
    
- **On.** Starts Windows Search Indexer to index encrypted files.
    
- **Off, or not configured.** Stops Windows Search Indexer from indexing encrypted files.

## Encrypted file extensions

You can restrict which files are protected by WIP when they're downloaded from an SMB share within your enterprise network locations. If this setting is configured, only files with the extensions in the list will be encrypted. If this setting is not specified, the existing auto-encryption behavior is applied. 

![WIP encrypted file extensions.](images/wip-encrypted-file-extensions.png)

## Related articles

- [How to collect Windows Information Protection (WIP) audit event logs](collect-wip-audit-event-logs.md)
 
- [General guidance and best practices for Windows Information Protection (WIP)](guidance-and-best-practices-wip.md)

- [What is Azure Rights Management?](/information-protection/understand-explore/what-is-azure-rms)

- [Create a Windows Information Protection (WIP) protection policy using Microsoft Intune](overview-create-wip-policy.md)

- [Intune MAM Without Enrollment](/archive/blogs/configmgrdogs/intune-mam-without-enrollment)

- [Azure RMS Documentation Update for May 2016](https://blogs.technet.microsoft.com/enterprisemobility/2016/05/31/azure-rms-documentation-update-for-may-2016/)
