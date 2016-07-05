---
title: Create and deploy an enterprise data protection (EDP) policy using System Center Configuration Manager (Windows 10)
description: Configuration Manager (version 1606 or later) helps you create and deploy your enterprise data protection (EDP) policy, including letting you choose your protected apps, your EDP-protection level, and how to find enterprise data on the network.
ms.assetid: 85b99c20-1319-4aa3-8635-c1a87b244529
keywords: EDP, Enterprise Data Protection, SCCM, System Center Configuration Manager, Configuration Manager
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
---

# Create and deploy an enterprise data protection (EDP) policy using System Center Configuration Manager
**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview
-   System Center Configuration Manager (version 1605 Tech Preview or later)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

System Center Configuration Manager (version 1605 Tech Preview or later) helps you create and deploy your enterprise data protection (EDP) policy, including letting you choose your protected apps, your EDP-protection mode, and how to find enterprise data on the network.

**Important**<br>
If you previously created an EDP policy using System Center Configuration Manager version 1511 or 1602, you’ll need to recreate it using version 1605 Tech Preview or later. Editing an EDP policy created in version 1511 or 1602 is not supported in version 1605 Tech Preview. There is no migration path between EDP policies across these versions.

## Add an EDP policy
After you’ve installed and set up System Center Configuration Manager for your organization, you must create a configuration item for EDP, which in turn becomes your EDP policy.

**To create a configuration item for EDP**

1.  Open the System Center Configuration Manager console, click the **Assets and Compliance** node, expand the **Overview** node, expand the **Compliance Settings** node, and then expand the **Configuration Items** node.

    ![System Center Configuration Manager, Configuration Items screen](images/edp-sccm-addpolicy.png)

2.  Click the **Create Configuration Item** button.<p>
The **Create Configuration Item Wizard** starts.

    ![Create Configuration Item wizard, define the configuration item and choose the configuration type](images/edp-sccm-generalscreen.png)

3.  On the **General Information screen**, type a name (required) and an optional description for your policy into the **Name** and **Description** boxes.

4.  In the **Specify the type of configuration item you want to create** area, pick the option that represents whether you use System Center Configuration Manager for device management, and then click **Next**.

    -   **Settings for devices managed with the Configuration Manager client:** Windows 10

        -OR-

    -   **Settings for devices managed without the Configuration Manager client:** Windows 8.1 and Windows 10

5.  On the **Supported Platforms** screen, click the **Windows 10** box, and then click **Next**.

    ![Create Configuration Item wizard, choose the supported platforms for the policy](images/edp-sccm-supportedplat.png)

6.  On the **Device Settings** screen, click **Enterprise data protection**, and then click **Next**.

    ![Create Configuration Item wizard, choose the enterprise data protection settings](images/edp-sccm-devicesettings.png)

The **Configure enterprise data protection settings** page appears, where you'll configure your policy for your organization.

### Add app rules to your policy
During the policy-creation process in System Center Configuration Manager, you can choose the apps you want to give access to your enterprise data through EDP. Apps included in this list can protect data on behalf of the enterprise and are restricted from copying or moving enterprise data to unprotected apps.

The steps to add your app rules are based on the type of rule template being applied. You can add a store app (also known as a Universal Windows Platform (UWP) app), a signed desktop app (also known as a Classic Windows app), or an AppLocker policy file.

**Important**<br>
EDP-aware apps are expected to prevent enterprise data from going to unprotected network locations and to avoid encrypting personal data. On the other hand, EDP-unaware apps might not respect the corporate network boundary, and EDP-unaware apps will encrypt all files they create or modify. This means that they could encrypt personal data and cause data loss during the revocation process.

Care must be taken to get a support statement from the software provider that their app is safe with EDP before adding it to your **App rules** list. If you don’t get this statement, it’s possible that you could experience app compat issues due to an app losing the ability to access a necessary file after revocation.

#### Add a store app rule to your policy
For this example, we’re going to add Microsoft OneNote, a store app, to the **App Rules** list.

**To add a store app**

1.	From the **App rules** area, click **Add**.
    
    The **Add app rule** box appears.

    ![Create Configuration Item wizard, add a universal store app](images/edp-sccm-adduniversalapp.png)

2.	Add a friendly name for your app into the **Title** box. In this example, it’s *Microsoft OneNote*.

3.	Click **Allow** from the **Enterprise data protection mode** drop-down list.

    Allow turns on EDP, helping to protect that app’s corporate data through the enforcement of EDP restrictions. If you want to exempt an app, you can follow the steps in the [Exempt apps from EDP restrictions](#exempt-apps-from-edp) section.

4.	Pick **Store App** from the **Rule template** drop-down list.

    The box changes to show the store app rule options.

5.	Type the name of the app and the name of its publisher, and then click **OK**. For this UWP app example, the **Publisher** is `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US` and the **Product name** is `Microsoft.Office.OneNote`.

If you don't know the publisher or product name, you can find them for both desktop devices and Windows 10 Mobile phones by following these steps.

**To find the Publisher and Product Name values for Store apps without installing them**

1.	Go to the [Windows Store for Business](http://go.microsoft.com/fwlink/p/?LinkID=722910) website, and find your app. For example, Microsoft OneNote.

    **Note**<br>
    If your app is already installed on desktop devices, you can use the AppLocker local security policy MMC snap-in to gather the info for adding the app to the protected apps list. For info about how to do this, see the steps in the [Add an AppLocker policy file](#add-an-applocker-policy-file) section.

2.	Copy the ID value from the app URL. For example, Microsoft OneNote's ID URL is https://www.microsoft.com/store/apps/onenote/9wzdncrfhvjl, and you'd copy the ID value, `9wzdncrfhvjl`.

3.	In a browser, run the Store for Business portal web API, to return a JavaScript Object Notation (JSON) file that includes the publisher and product name values. For example, run https://bspmts.mp.microsoft.com/v1/public/catalog/Retail/Products/9wzdncrfhvjl/applockerdata, where `9wzdncrfhvjl` is replaced with your ID value.

    The API runs and opens a text editor with the app details.

    ``` json
        {
        "packageIdentityName": "Microsoft.Office.OneNote",
        "publisherCertificateName": "CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"
        }
    ```

4.  Copy the `publisherCertificateName` value and paste them into the **Publisher Name** box, copy the `packageIdentityName` value into the **Product Name** box of Intune.

    **Important**<br>
    The JSON file might also return a `windowsPhoneLegacyId` value for both the **Publisher Name** and **Product Name** boxes. This means that you have an app that’s using a XAP package and that you must set the **Product Name** as `windowsPhoneLegacyId`, and set the **Publisher Name** as “CN=” followed by the `windowsPhoneLegacyId`.
    
    For example:
       ```json
        {
            "windowsPhoneLegacyId": "ca05b3ab-f157-450c-8c49-a1f127f5e71d",
        }
        ```

**To find the Publisher and Product Name values for apps installed on Windows 10 mobile phones**
1.	If you need to add mobile apps that aren't distributed through the Store for Business, you must use the **Windows Device Portal** feature.

    **Note**<br>
    Your PC and phone must be on the same wireless network.

2.	On the Windows Phone, go to **Settings**, choose **Update & security**, and then choose **For developers**.

3.	On the **For developers** screen, turn on **Developer mode**, turn on **Device Discovery**, and then turn on **Device Portal**.

4.	Copy the URL in the **Device Portal** area into your device's browser, and then accept the SSL certificate.

5.	In the **Device discovery** area, press **Pair**, and then enter the PIN into the website from the previous step.

6.	On the **Apps** tab of the website, you can see details for the running apps, including the publisher and product names.

7.	Start the app for which you're looking for the publisher and product name values.

8.	Copy the `publisherCertificateName` value and paste it into the **Publisher Name** box and the `packageIdentityName` value into the **Product Name** box of Intune.

    **Important**<br>
    The JSON file might also return a `windowsPhoneLegacyId` value for both the **Publisher Name** and **Product Name** boxes. This means that you have an app that’s using a XAP package and that you must set the **Product Name** as `windowsPhoneLegacyId`, and set the **Publisher Name** as “CN=” followed by the `windowsPhoneLegacyId`.
    
    For example:
       ```json
        {
            "windowsPhoneLegacyId": "ca05b3ab-f157-450c-8c49-a1f127f5e71d",
        }
        ```

#### Add a desktop app rule to your policy
For this example, we’re going to add Internet Explorer, a desktop app, to the **App Rules** list.

**To add a desktop app to your policy**
1.	From the **App rules** area, click **Add**.
    
    The **Add app rule** box appears.

    ![Create Configuration Item wizard, add a classic desktop app](images/edp-sccm-adddesktopapp.png)

2.	Add a friendly name for your app into the **Title** box. In this example, it’s *Internet Explorer*.

3.	Click **Allow** from the **Enterprise data protection mode** drop-down list.

    Allow turns on EDP, helping to protect that app’s corporate data through the enforcement of EDP restrictions. If you want to exempt an app, you can follow the steps in the [Exempt apps from EDP restrictions](#exempt-apps-from-edp) section.

4.	Pick **Desktop App** from the **Rule template** drop-down list.

    The box changes to show the desktop app rule options.

5.	Pick the options you want to include for the app rule (see table), and then click **OK**.

    <table>
        <tr>
            <th>Option</th>
            <th>Manages</th>
        </tr>
        <tr>
            <td>All fields left as “*”</td>
            <td>All files signed by any publisher. (Not recommended.)</td>
        </tr>
        <tr>
            <td><strong>Publisher</strong> selected</td>
            <td>All files signed by the named publisher.<p>This might be useful if your company is the publisher and signer of internal line-of-business apps.</td>
        </tr>
        <tr>
            <td><strong>Publisher</strong> and <strong>Product Name</strong> selected</td>
            <td>All files for the specified product, signed by the named publisher.</td>
        </tr>
        <tr>
            <td><strong>Publisher</strong>, <strong>Product Name</strong>, and <strong>Binary name</strong> selected</td>
            <td>Any version of the named file or package for the specified product, signed by the named publisher.</td>
        </tr>
        <tr>
            <td><strong>Publisher</strong>, <strong>Product Name</strong>, <strong>Binary name</strong>, and <strong>File Version, and above</strong>, selected</td>
            <td>Specified version or newer releases of the named file or package for the specified product, signed by the named publisher.<p>This option is recommended for enlightened apps that weren't previously enlightened.</td>
        </tr>
        <tr>
            <td><strong>Publisher</strong>, <strong>Product Name</strong>, <strong>Binary name</strong>, and <strong>File Version, And below</strong> selected</td>
            <td>Specified version or older releases of the named file or package for the specified product, signed by the named publisher.</td>
        </tr>
        <tr>
            <td><strong>Publisher</strong>, <strong>Product Name</strong>, <strong>Binary name</strong>, and <strong>File Version, Exactly</strong> selected</td>
            <td>Specified version of the named file or package for the specified product, signed by the named publisher.</td>
        </tr>
    </table>

If you’re unsure about what to include for the publisher, you can run this PowerShell command:

```ps1
Get-AppLockerFileInformation -Path "<path of the exe>"
```
Where `"<path of the exe>"` goes to the location of the app on the device. For example, `Get-AppLockerFileInformation -Path "C:\Program Files\Internet Explorer\iexplore.exe"`.

In this example, you'd get the following info:

``` json
Path                   Publisher
----                   ---------
%PROGRAMFILES%\INTERNET EXPLORER\IEXPLORE.EXE O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US\INTERNET EXPLOR...
```
Where the text, `O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US` is the publisher name to enter in the **Publisher Name** box.

#### Add an AppLocker policy file
For this example, we’re going to add an AppLocker XML file to the **App Rules** list. You’ll use this option if you want to add multiple apps at the same time. For more info about AppLocker, see the [AppLocker](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/applocker-overview) content.

**To create an app rule and xml file using the AppLocker tool**
1.	Open the Local Security Policy snap-in (SecPol.msc)..
    
2.	In the left pane, expand **Application Control Policies**, expand **AppLocker**, and then click **Packaged App Rules**.

    ![Local security snap-in, showing the Packaged app Rules](images/intune-local-security-snapin.png)

3.	Right-click in the right-hand pane, and then click **Create New Rule**.

    The **Create Packaged app Rules** wizard appears.

4. On the **Before You Begin** page, click **Next**.

    ![Create Packaged app Rules wizard, showing the Before You Begin page](images/intune-applocker-before-begin.png)

5. On the **Permissions** page, make sure the **Action** is set to **Allow** and the **User or group** is set to **Everyone**, and then click **Next**.

    ![Create Packaged app Rules wizard, showing the Before You Begin page](images/intune-applocker-permissions.png)

7.	On the **Publisher** page, click **Select** from the **Use an installed packaged app as a reference** area.

    ![Create Packaged app Rules wizard, showing the Publisher](images/intune-applocker-publisher.png)

8. In the **Select applications** box, pick the app that you want to use as the reference for your rule, and then click **OK**. For this example, we’re using Microsoft Photos.

    ![Create Packaged app Rules wizard, showing the Publisher](images/intune-applocker-select-apps.png)

9. On the updated **Publisher** page, click **Create**.


















































## Manage the EDP-protection level for your enterprise data
After you've added the apps you want to protect with EDP, you'll need to apply an app management mode.

We recommend that you start with **Silent** or **Override** while verifying with a small group that you have the right apps on your **Protected Apps** list. After you're done, you can change to your final enforcement policy, either **Override** or **Block**.

|Mode |Description |
|-----|------------|
|Block |EDP looks for inappropriate data sharing practices and stops the employee from completing the action. This can include sharing info across non-enterprise-protected apps in addition to sharing enterprise data between other people and devices outside of your enterprise. |
|Override |EDP looks for inappropriate data sharing, warning employees if they do something deemed potentially unsafe. However, this management mode lets the employee override the policy and share the data, logging the action to your audit log, accessible through the [Reporting CSP](http://go.microsoft.com/fwlink/p/?LinkID=746459). |
|Silent |EDP runs silently, logging inappropriate data sharing, without blocking anything. |
|Off (not recommended) |EDP is turned off and doesn't help to protect or audit your data.
<p>After you turn off EDP, an attempt is made to decrypt any closed EDP-tagged files on the locally attached drives. |

![Create Configuration Item wizard, choose your EDP-protection level](images/edp-sccm-appmgmt.png)

## Define your enterprise-managed identity domains
Specify your company’s enterprise identity, expressed as your primary internet domain. For example, if your company is Contoso, its enterprise identity might be contoso.com. The first listed domain (in this example, contoso.com) is the primary enterprise identity string used to tag files protected by any app on the **Protected App** list.

You can also specify all the domains owned by your enterprise that are used for user accounts, separating them with the "|" character. For example, if Contoso also has some employees with email addresses or user accounts on the fabrikam.com domain, you would use contoso.com|fabrikam.com.

This list of managed identity domains, along with the primary domain, make up the identity of your managing enterprise. User identities (user@domain) that end in any of the domains on this list, are considered managed.

![Create Configuration Item wizard, Add the primary Internet domain for your enterprise identity](images/sccm-primary-domain.png)

**To add your primary domain**

-   Type the name of your primary domain into the **Primary domain** field. For example, *contoso.com*.<p>
If you have multiple domains, you must separate them with the "|" character. For example, contoso.com|fabrikam.com.

## Choose where apps can access enterprise data
After you've added a management level to your protected apps, you'll need to decide where those apps can access enterprise data on your network. There are 6 options, including your network domain, cloud domain, proxy server, internal proxy server, IPv4 range, and IPv6 range.

**To specify where your protected apps can find and send enterprise data on the network**

1.  Add additional network locations your apps can access by clicking **Add**, and then choosing your location type, including:
    <table>
        <tr>
            <th>Network location type</th>
            <th>Format</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>Enterprise Cloud Domain</td>
            <td>contoso.sharepoint.com,proxy1.contoso.com|<br>office.com|proxy2.contoso.com</td>
            <td>Specify the cloud resources traffic to restrict to your protected apps.<p>For each cloud resource, you may also specify an internal proxy server that routes your traffic from your **Enterprise Internal Proxy Server** policy. If you have multiple resources, you must use the &#x7C; delimiter. Include the "|" delimiter just before the "|" if you don’t use proxies. For example: [URL,Proxy]|[URL,Proxy].</td>     
        </tr>
        <tr>
            <td>Enterprise Network Domain</td>
            <td>domain1.contoso.com,domain2.contoso.com</td>
            <td>Specify the DNS suffix used in your environment. All traffic to the fully-qualified domains using this DNS suffix will be protected. If you have multiple resources, you must use the "," delimiter.<p>This setting works with the IP Ranges settings to detect whether a network endpoint is enterprise or personal on private networks.</td>                
        </tr>
        <tr>
            <td>Enterprise Proxy Server</td>
            <td>domain1.contoso.com:80;domain2.contoso.com:137</td>
            <td>Specify the proxy server and the port traffic is routed through. If you have multiple resources, you must use the ";" delimiter.<p>This setting is required if you use a proxy in your network. If you don't have a proxy server, you might find that enterprise resources are unavailable when a client is behind a proxy, such as when using certain Wi-Fi hotspots at hotels and restaurants.</td>                
        </tr>
        <tr>
            <td>Enterprise Internal Proxy Server</td>
            <td>proxy1.contoso.com;proxy2.contoso.com</td>
            <td>Specify the proxy servers your cloud resources will go through. If you have multiple resources, you must use the ";" delimiter.</td>                
        </tr>
        <tr>
            <td>Enterprise IPv4 Range</td>
            <td>**Starting IPv4 Address:** 3.4.0.1<br>**Ending IPv4 Address:** 3.4.255.254<br>**Custom URI:** 3.4.0.1-3.4.255.254,10.0.0.1-10.255.255.254</td>
            <td>Specify the addresses for a valid IPv4 value range within your intranet.<p>If you are adding a single range, you can enter the starting and ending addresses into your management system’s UI. If you want to add multiple addresses, we suggest creating a Custom URI, using the "-" delimiter between start and end of a range, and the "," delimiter to separate ranges.</td>
        </tr>
        <tr>
            <td>Enterprise IPv6 Range</td>
            <td>**Starting IPv6 Address:** 2a01:110::<br>**Ending IPv6 Address:** 2a01:110:7fff:ffff:ffff:ffff:ffff:ffff<br>**Custom URI:** 2a01:110::-2a01:110:7fff:ffff:ffff:ffff:ffff:ffff,fd00::-fdff:ffff:ffff:ffff:ffff:ffff:ffff:ffff</td>
            <td>Specify the addresses for a valid IPv6 value range within your intranet.<p>If you are adding a single range, you can enter the starting and ending addresses into your management system’s UI. If you want to add multiple addresses, we suggest creating a Custom URI, using the "-" delimiter between start and end of a range, and the "," delimiter to separate ranges.</td>
        </tr>                
    </table>

    ![Create Configuration Item wizard, specify the network locations that can be accessed by the protected apps](images/edp-sccm-network-domain.png)

2.  Add as many locations as you need, and then click **OK**.<p>
The **Add or Edit Enterprise Network Locations box** closes.

3.  In the **Use a data recovery certificate in case of data loss** box, click **Browse** to add a data recovery certificate for your policy.<p>
Adding a data recovery certificate helps you to access locally-protected files on the device. For example, if an employee leaves the company and the IT department has to access EDP-protected data from a Windows 10 company computer. This can also help recover data in case an employee's device is accidentally revoked. For more info about how to find and export your data recovery certificate, see the[Data Recovery and Encrypting File System (EFS)](http://go.microsoft.com/fwlink/p/?LinkId=761462) topic.

## Choose your optional EDP-related settings
After you've decided where your protected apps can access enterprise data on your network, you’ll be asked to decide if you want to add any optional EDP settings.

**To add your optional settings**
-   Choose to set any or all of the optional EDP-related settings:

    -   **Block the user from decrypting data that was created or edited by the apps configured above.** Clicking **No**, or leaving the setting blank, lets your employees right-click to decrypt their protected app data, along with the option to decrypt data in the **Save As** box and the **Save As** file picker . Clicking **Yes** removes the **Decrypt** option and saves all data for protected apps as enterprise-encrypted.

    -   **Protect app content when the device is in a locked state for the apps configured above.** Clicking **Yes** lets EDP help to secure protected app content when a mobile device is locked. We recommend turning this option on to help prevent data leaks from things such as email text that appears on the **Lock** screen of a Windows 10 Mobile phone.

        ![Create Configuration Item wizard, choose additional optional settings for enterprise data protection](images/edp-sccm-optsettings.png)

## Review your configuration choices in the Summary screen
After you've finished configuring your policy, you can review all of your info on the **Summary** screen.

**To view the Summary screen**
-   Click the **Summary** button to review your policy choices, and then click **Next** to finish and to save your policy.<p>
A progress bar appears, showing you progress for your policy. After it's done, click **Close** to return to the **Configuration Items** page.

    ![Create Configuration Item wizard, review the Summary screen before creating the policy](images/edp-sccm-summaryscreen.png)

## Deploy the EDP policy
After you’ve created your EDP policy, you'll need to deploy it to your organization's devices. For info about your deployment options, see these topics:
- [Operations and Maintenance for Compliance Settings in Configuration Manager](http://go.microsoft.com/fwlink/p/?LinkId=708224)
- [How to Create Configuration Baselines for Compliance Settings in Configuration Manager]( http://go.microsoft.com/fwlink/p/?LinkId=708225)
- [How to Deploy Configuration Baselines in Configuration Manager]( http://go.microsoft.com/fwlink/p/?LinkId=708226)

## Related topics
- [System Center Configuration Manager and Endpoint Protection (Version 1606)](http://go.microsoft.com/fwlink/p/?LinkId=717372)
- [TechNet documentation for Configuration Manager](http://go.microsoft.com/fwlink/p/?LinkId=691623)
- [Manage mobile devices with Configuration Manager and Microsoft Intune](http://go.microsoft.com/fwlink/p/?LinkId=691624)

 

 





