---
title: Windows Store for Business overview (Windows 10)
description: With the new Windows Store for Business, organizations can make volume purchases of Windows apps.
ms.assetid: 9DA71F6B-654D-4121-9A40-D473CC654A1C
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: TrudyHa
---

# Windows Store for Business overview


**Applies to**

-   Windows 10
-   Windows 10 Mobile

With the new Windows Store for Business, organizations can make volume purchases of Windows apps. The Store for Business provides app purchases based on organizational identity, flexible distribution options, and the ability to reclaim or re-use licenses. Organizations can also use the Store for Business to create a private store for their employees that includes apps from the Store, as well private Line-of-Business (LOB) apps.

## Features


Organizations of any size can benefit from using the Store for Business provides:

-   **Scales to fit the size of your business** - For smaller businesses, with Azure AD accounts and Windows 10 devices, you can quickly have an end-to-end process for acquiring and distributing content using the Store for Business. For larger businesses, all the capabilities of the Store for Businessare available to you, or you can integrate the Store for Businesswith management tools, for greater control over access to apps and app updates. You can use existing work or school accounts.

-   **Bulk app acquisition** - Acquire apps in volume from the Store for Business.

-   **Private store** - Curate a private store for your business that’s easily available from any Windows 10 device.

-   **Flexible distribution options** - Flexible options for distributing content and apps to your employee devices:

    -   Distribute through Store for Business services. You can assign apps to individual employees, or make apps available to all employees in your private store.

    -   Use a management tool from Microsoft, or a 3rd-party tool for advanced distribution and management functions, or for managing images.

    -   Offline licensing model allows you to distribute apps without connecting to Store services, and for managing images.

-   **Line-of-business apps** - Privately add and distribute your internal line-of-business apps using any of the distribution options.

-   **App license management**: Admins can reclaim and reuse app licenses. Online and offline licenses allow you to customize how you decide to deploy apps.

-   **Up-to-date apps** - The Store for Business manages the update process for apps with online licenses. Apps are automatically updated so you are always current with the most recent software updates and product features. Store for Business apps also uninstall cleanly, without leaving behind extra files, for times when you need to switch apps for specific employees.

## Prerequisites


You'll need this software to work with the Store for Business.

### Required

-   IT Pros that are administering Store for Business need a browser compatible with Store for Business running on a PC or mobile device. Supported browsers include: Internet Explorer 10 or later, Microsoft Edge, or current versions of Chrome or Firefox.

-   Employees using apps from Store for Business need Windows 10, version 1511 running on a PC or mobile device.

Microsoft Azure Active Directory (AD) accounts for your employees:

-   Admins need Azure AD accounts to sign up for the Store for Business, and then to sign in, get apps, distribute apps, and manage app licenses.

-   Employees need Azure AD account when they access Store for Business content from Windows devices.

-   If you use a management tool to distribute and manage online-licensed apps, all employees will need an Azure AD account

-   For offline-licensed apps, Azure AD accounts are not required for employees.

For more information on Azure AD, see [About Office 365 and Azure Active Directory](http://go.microsoft.com/fwlink/p/?LinkId=708612), and [Intro to Azure: identity and access](http://go.microsoft.com/fwlink/p/?LinkId=708611).

### Optional

While not required, you can use a management tool to distribute and manage apps. Using a management tool allows you to distribute content, scope app availability, and control when app updates are installed. This might make sense for larger organizations that already use a management tool. A couple of things to note about management tools:

-   Need to integrate with Windows 10 management framework and Azure AD.

-   Need to sync with the Store for Business inventory to distribute apps.

## How does the Store for Business work?


### Sign up!

The first step for getting your organization started with the Store for Business is signing up. To sign up for the Business store, you need an Azure AD account and you must be a Global Administrator for your organization.

For more information, see [Sign up for the Store for Business](../manage/sign-up-windows-store-for-business.md).

### Set up

After your admin signs up for the Store for Business, they can assign roles to other employees in your company. The admin needs Azure AD User Admin permissions to assign WSFB roles. These are the roles and their permissions.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Permission</th>
<th align="left">Account settings</th>
<th align="left">Acquire apps</th>
<th align="left">Distribute apps</th>
<th align="left">Device Guard signing</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Admin</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"><p>Purchaser</p></td>
<td align="left"></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"><p>Device Guard signer</p></td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
<td align="left"><p>X</p></td>
</tr>
</tbody>
</table>

 

In some cases, admins will need to add Azure Active Directory (AD) accounts for their employees. For more information, see [Manage user accounts and groups](../manage/manage-users-and-groups-windows-store-for-business.md).

Also, if your organization plans to use a management tool, you’ll need to configure your management tool to sync with the Store for Business.

### Get apps and content

Once signed in to the Store for Business, you can browse and search for all products in the Store for Business catalog. Some apps are free, and some apps charge a price. We're continuing to add more paid apps to the Store for Business. Check back if you don't see the app that you're looking for. Currently, you can pay for apps with a credit card. We'll be adding more payment options over time. 

**App types** -- These app types are supported in the Store for Business:

-   Universal Windows Platform apps

-   Universal Windows apps, by device: Phone, Surface Hub, IOT devices , HoloLens

Apps purchased from the Store for Business only work on Windows 10 devices.

Line-of-business (LOB) apps are also supported via the Business store. You can invite IT developers or ISVs to be LOB publishers for your organization. This allows them to submit apps via the developer center that are only available to your organization. These apps can be distributed using the distribution methods discussed in this topic. For more information, see Working with Line-of-Business apps.

**App licensing model**

The Business store supports two options to license apps: online and offline. **Online** licensing is the default licensing model and is similar to the Windows Store. Online licensed apps require users and devices to connect to the Store for Business service to acquire an app and its license. **Offline** licensing is a new licensing option for Windows 10. With offline licenses, organizations can cache apps and their licenses to deploy within their network. ISVs or devs can opt-in their apps for offline licensing when they submit them to the developer center.

For more information, see [Apps in the Store for Business](../manage/apps-in-windows-store-for-business.md#licensing-model).

### Distribute apps and content

App distribution is handled through two channels, either through the Store for Business, or using a management tool. You can use either or both distribution methods in your organization.

**Using the Store for Business** – Distribution options for the Store for Business:

-   Email link – After purchasing an app, admins can send employees a link in an email message. Employees can click the link to install the app.

-   Curate private store for all employees – A private store can include content you’ve purchased from the Store, and your line-of-business apps that you’ve submitted to the Store for Business. Apps in your private store are available to all of your employees. They can browse the private store and install apps when needed.

-   To use the options above users must be signed in with an Azure AD account on a Windows 10 device.

**Using a management tool** – For larger organizations that might want a greater level of control over how apps are distributed and managed, a management tools provides other distribution options:

-   Scoped content distribution – Ability to scope content distribution to specific groups of employees.

-   Install apps for employees – Employees are not responsible for installing apps. Management tool installs apps for employees.

Management tools can synchronize content that has been acquired in the Store for Business. If an offline application has been purchased this will also include the app package, license and metadata for the app (like, icons, count, or localized product descriptions). Using the metadata, management tools can enable portals or apps as a destination for employees to acquire apps.

For more information, see [Distribute apps to your employees from the Store for Business](../manage/distribute-apps-to-your-employees-windows-store-for-business.md).

### Manage Store for Business settings and content

Once you are signed up with the Business store and have purchased apps, Admins can manage Store for Business settings and inventory.

**Manage Store for Business settings**

-   Assign and change roles for employees or groups

-   Device Guard signing

-   Register a management server to deploy and install content

-   Manage relationships with LOB publishers

-   Manage offline licenses

-   Update the name of your private store

**Manage inventory**

-   Assign app licenses to employees

-   Reclaim and reassign app licenses

-   Manage app updates for all apps, or customize updates for each app. Online apps will automatically update from the Store. Offline apps can be updated using a management server.

-   Download apps for offline installs

For more information, see [Manage settings in the Store for Business](../manage/manage-settings-windows-store-for-business.md) and [Manage apps](../manage/manage-apps-windows-store-for-business-overview.md).

## Supported markets


Store for Business is currently available in these markets.

|Country or locale|Paid apps|Free apps|
|-----------------|---------|---------|
|Argentina|X|X|
|Australia|X|X|
|Austria|X|X|
|Belgium (Dutch, French)|X|X|
|Brazil| |X|
|Canada (English, French)|X|X|
|Chile|X|X|
|Columbia|X|X|
|Croatia|X|X|
|Czech Republic|X|X|
|Denmark|X|X|
|Finland|X|X|
|France|X|X|
|Germany|X|X|
|Greece|X|X|
|Hong Kong SAR|X|X|
|Hungary|X|X|
|India| |X|
|Indonesia|X|X|
|Ireland|X|X|
|Italy|X|X|
|Japan|X|X|
|Malaysia|X|X|
|Mexico|X|X|
|Netherlands|X|X|
|New Zealand|X|X|
|Norway|X|X|
|Philippines|X|X|
|Poland|X|X|
|Portugal|X|X|
|Romania|X|X|
|Russia| |X|
|Singapore|X|X|
|Slovakia|X|X|
|South Africa|X|X|
|Spain|X|X|
|Sweden|X|X|
|Switzerland (French, German)|X|X|
|Taiwan| |X|
|Thailand|X|X|
|Turkey|X|X|
|Ukraine| |X|
|United Kingdom|X|X|
|United States|X|X|
|Vietnam|X|X|
  
## <a href="" id="isv-wsfb"></a>ISVs and the Store for Business


Developers in your organization, or ISVs can create content specific to your organization. In the Store for Business, we call these app line-of-business (LOB) apps, and the devs that create them are LOB publishers. The process looks like this:

-   Admin invites devs to be LOB publishers for your organization. These devs can be internal devs, or external ISVs.

-   LOB publishers accept the invitation, develop apps, and submits the app to the Windows Dev Center. LOB publishers use Enterprise associations when submitting the app to make the app exclusive to your organization.

-   Admin adds the app to Store for Business inventory.

Once the app is in inventory, admins can choose how to distribute the app. ISVs creating apps through the dev center can make their apps available in the Store for Business. ISVs can opt-in their apps to make them available for offline licensing. Apps purchased in the Store for Business will work only on Windows 10.

For more information on line-of-business apps, see [Working with Line-of-Business apps](../manage/working-with-line-of-business-apps.md).

 

 





