---
title: Microsoft Store for Business and Microsoft Store for Education overview (Windows 10)
description: With Microsoft Store for Business and Microsoft Store for Education, organizations and schools can make volume purchases of Windows apps.
ms.assetid: 9DA71F6B-654D-4121-9A40-D473CC654A1C
ms.prod: w10
ms.pagetype: store, mobile
ms.mktglfcycl: manage
ms.sitesec: library
author: TrudyHa
localizationpriority: high
---

# Microsoft Store for Business and Microsoft Store for Education overview

**Applies to**

-   Windows 10
-   Windows 10 Mobile

Designed for organizations, Microsoft Store for Business and Microsoft Store for Education gives IT decision makers and administrators in businesses or schools a flexible way to find, acquire, manage, and distribute free and paid apps in select markets to Windows 10 devices in volume. IT administrators can manage Windows Store apps and private line-of-business apps in one inventory, plus assign and re-use licenses as needed. You can choose the best distribution method for your organization: directly assign apps to individuals and teams, publish apps to private pages in Windows Store, or connect with management solutions for more options. 

## Features
Organizations of any size can benefit from using the Microsoft Store:

- **Scales to fit the size of your business** - For smaller businesses, with Azure AD accounts or Office 365 accounts and Windows 10 devices, you can quickly have an end-to-end process for acquiring and distributing content using the Store for Business. For larger businesses, all the capabilities of the Store for Business are available to you, or you can integrate the Store for Business with management tools, for greater control over access to apps and app updates. You can use existing work or school accounts.
- **Bulk app acquisition** - Acquire apps in volume from the Store for Business.
- **Centralized management** – Microsoft Store provides centralized management for inventory, billing, permissions, and order history. You can use Microsoft Store to view, manage and distribute items purchased from:
    - **Microsoft Store for Business** – Apps and subscriptions
    - **Microsoft Store for Education** – Apps and subscriptions
    - **Office 365** – Subscriptions
    - **Volume licensing** - Apps purchased with volume licensing
- **Private store** - Curate a private store for your business that’s easily available from any Windows 10 device. Your private store is available from Windows Store app, or with a browser on the Web. People in your organization can download apps from the private store on Windows 10 devices. 
- **Flexible distribution options** - Flexible options for distributing content and apps to your employee devices:
    - Distribute through Store for Business services. You can assign apps to individual employees, or make apps available to all employees in your private store.
    - Use a management tool from Microsoft, or a 3rd-party tool for advanced distribution and management functions, or for managing images.
    - Offline licensing model allows you to distribute apps without connecting to Store services, and for managing images.
- **Line-of-business apps** - Privately add and distribute your internal line-of-business apps using any of the distribution options.
- **App license management**: Admins can reclaim and reuse app licenses. Online and offline licenses allow you to customize how you decide to deploy apps.
- **Up-to-date apps** - Microsoft Store manages the update process for apps with online licenses. Apps are automatically updated so you are always current with the most recent software updates and product features. Store for Business apps also uninstall cleanly, without leaving behind extra files, for times when you need to switch apps for specific employees.
- **Office app launcher** Office apps while working with Store for Business. 
- **Find a partner** – Microsoft Store allows businesses to search and find a Microsoft Partner who can assist you with Microsoft solutions for your business. 


## Prerequisites

You'll need this software to work with the Store for Business.

### Required

- Admins working with Microsoft Store for Business and Education need a browser compatible with Store for Business running on a PC or mobile device. Supported browsers include: Internet Explorer 10 or later, or current versions of Microsoft Edge, Chrome or Firefox. JavaScript must be supported and enabled.

- Employees using apps from Store for Business need Windows 10, version 1511 running on a PC or mobile device.

Microsoft Azure Active Directory (AD) accounts for your employees:

- Admins need Azure AD accounts to sign up for the Store for Business, and then to sign in, get apps, distribute apps, and manage app licenses.
- Employees need Azure AD account when they access Store for Business content from Windows devices.
- If you use a management tool to distribute and manage online-licensed apps, all employees will need an Azure AD account
- For offline-licensed apps, Azure AD accounts are not required for employees.
- Admins can add or remove user accounts in the Office 365 admin center, even if you don’t have an Office 365 subscription. You can access the Office 365 admin portal directly from the Microsoft Store for Business and Education. 

For more information on Azure AD, see [About Office 365 and Azure Active Directory](https://go.microsoft.com/fwlink/p/?LinkId=708612), and [Intro to Azure: identity and access](https://go.microsoft.com/fwlink/p/?LinkId=708611).

### Optional

While not required, you can use a management tool to distribute and manage apps. Using a management tool allows you to distribute content, scope app availability, and control when app updates are installed. This might make sense for larger organizations that already use a management tool. A couple of things to note about management tools:

- Need to integrate with Windows 10 management framework and Azure AD.

- Need to sync with the Store for Business inventory to distribute apps.

## How does the Store for Business work?

## Sign up!

The first step for getting your organization started with the Store for Business is signing up. Sign up  using an existing account (the same one you use for Office 365, Dynamics 365, Intune, Azure, etc.) or we’ll quickly create an account for you. You must be a Global Administrator for your organization.

For more information, see [Sign up for the Store for Business](sign-up-windows-store-for-business.md).

## Set up

After your admin signs up for the Store for Business, they can assign roles to other employees in your company. The admin needs Azure AD User Admin permissions to assign Microsoft Store for Business and Education roles. These are the roles and their permissions.

| Permission | Account settings | Acquire apps | Distribute apps | Device Guard signing |
| ---------- | ---------------- | ------------ | --------------- | -------------------- |
| Admin | X | X | X |  |
| Purchaser |  | X | X |  |
| Device Guard signer |  |  |  | X |
| Basic purchaser |  | X | X |  |

> [!NOTE]
> Currently, the Basic purchaser role is only available for schools using Microsoft Store for Education. For more information, see 
 
In some cases, admins will need to add Azure Active Directory (AD) accounts for their employees. For more information, see [Manage user accounts and groups](manage-users-and-groups-windows-store-for-business.md).

Also, if your organization plans to use a management tool, you’ll need to configure your management tool to sync with the Store for Business.

## Get apps and content

Once signed in to the Microsoft Store, you can browse and search for all products in the Store for Business catalog. Some apps are free, and some apps charge a price. We're continuing to add more paid apps to the Store for Business. Check back if you don't see the app that you're looking for. Currently, you can pay for apps with a credit card, and some items can be paid for with an invoice. We'll be adding more payment options over time. 

**App types** -- These app types are supported in the Microsoft Store for Business:

- Universal Windows Platform apps
- Universal Windows apps, by device: Phone, Surface Hub, IOT devices, HoloLens

Apps purchased from the Store for Business only work on Windows 10 devices.

Line-of-business (LOB) apps are also supported via the Business store. You can invite IT developers or ISVs to be LOB publishers for your organization. This allows them to submit apps via the developer center that are only available to your organization. These apps can be distributed using the distribution methods discussed in this topic. For more information, see [Working with Line-of-Business apps](working-with-line-of-business-apps.md).

**App licensing model**

The Business store supports two options to license apps: online and offline. **Online** licensing is the default licensing model and is similar to the Windows Store. Online licensed apps require users and devices to connect to the Store for Business service to acquire an app and its license. **Offline** licensing is a new licensing option for Windows 10. With offline licenses, organizations can cache apps and their licenses to deploy within their network. ISVs or devs can opt-in their apps for offline licensing when they submit them to the developer center.

For more information, see [Apps in the Store for Business](apps-in-windows-store-for-business.md#licensing-model).

## Distribute apps and content

App distribution is handled through two channels, either through the Store for Business, or using a management tool. You can use either or both distribution methods in your organization.

**Using the Store for Business** – Distribution options for the Store for Business:

- Email link – After purchasing an app, admins can send employees a link in an email message. Employees can click the link to install the app.
- Curate private store for all employees – A private store can include content you’ve purchased from the Store, and your line-of-business apps that you’ve submitted to the Store for Business. Apps in your private store are available to all of your employees. They can browse the private store and install apps when needed.
- To use the options above users must be signed in with an Azure AD account on a Windows 10 device. Licenses are assigned as individuals install apps. 

**Using a management tool** – For larger organizations that might want a greater level of control over how apps are distributed and managed, a management tools provides other distribution options:

- Scoped content distribution – Ability to scope content distribution to specific groups of employees.
- Install apps for employees – Employees are not responsible for installing apps. Management tool installs apps for employees.

Management tools can synchronize content that has been acquired in the Store for Business. If an offline application has been purchased this will also include the app package, license and metadata for the app (like, icons, count, or localized product descriptions). Using the metadata, management tools can enable portals or apps as a destination for employees to acquire apps.

For more information, see [Distribute apps to your employees from the Store for Business](distribute-apps-to-your-employees-windows-store-for-business.md).

## Manage Store for Business settings and content

Once you are signed up with the Business store and have purchased apps, Admins can manage Store for Business settings and inventory.

**Manage Microsoft Store for Business settings**
- Assign and change roles for employees or groups
- Device Guard signing
- Register a management server to deploy and install content
- Manage relationships with LOB publishers
- Manage offline licenses
- Update the name of your private store

**Manage inventory**
- Assign app licenses to employees
- Reclaim and reassign app licenses
- Manage app updates for all apps, or customize updates for each app. Online apps will automatically update from the Store. Offline apps can be updated using a management server.
- Download apps for offline installs

For more information, see [Manage settings in the Store for Business](manage-settings-windows-store-for-business.md) and [Manage apps](manage-apps-windows-store-for-business-overview.md).

## Supported markets

Microsoft Store for Business and Education is currently available in these markets.

<!--- <table>
   <tr>
        <th align="center" colspan="4">Support for free and paid apps</th>
   </tr>
   <tr align="left">
     <td>
        <ul>
            <li>Algeria</li>
            <li>Angola</li>
            <li>Argentina</li>
            <li>Australia</li>
            <li>Austria</li>
            <li>Bahamas</li>
            <li>Bahrain</li>
            <li>Bangladesh</li>
            <li>Barbados</li>
            <li>Belgium</li>
            <li>Belize</li>
            <li>Bermuda</li>
            <li>Bhutan</li>
            <li>Bolivia</li>
            <li>Botswana</li>
            <li>Brunei Darussalam</li>
            <li>Bulgaria</li>
            <li>Cambodia</li>
            <li>Cameroon</li>
            <li>Canada</li>
            <li>Republic of Cabo Verde</li>
            <li>Cayman Islands</li>
            <li>Chile</li>
            <li>Colombia</li>
            <li>Costa Rica</li>
            <li>C&ocirc;te D'ivoire</li>
            <li>Croatia</li>
            <li>Cur&ccedil;ao</li>
            <li>Cyprus</li>
        </ul>
    </td>
     <td>
        <ul>
            <li>Czech Republic</li>
            <li>Denmark</li>
            <li>Dominican Republic</li>
            <li>Ecuador</li>
            <li>Egypt</li>
            <li>El Salvador</li>
            <li>Estonia</li>
            <li>Faroe Islands</li>
            <li>Fiji</li>
            <li>Finland</li>
            <li>France</li>
            <li>Germany</li>
            <li>Ghana</li>
            <li>Greece</li>
            <li>Guadeloupe</li>
            <li>Guatemala</li>
            <li>Honduras</li>
            <li>Hong Kong SAR</li>
            <li>Hungary</li>
            <li>Iceland</li>
            <li>Indonesia</li>
            <li>Iraq</li>
            <li>Ireland</li>
            <li>Israel</li>
            <li>Italy</li>
            <li>Jamaica</li>
            <li>Japan</li>
            <li>Jordan</li>
            <li>Kenya</li> 
        </ul>
    </td>
    <td>
        <ul>
            <li>Kuwait</li>
            <li>Latvia</li>
            <li>Lebanon</li>
            <li>Libya</li>
            <li>Liechtenstein</li>
            <li>Lithuania</li>
            <li>Luxembourg</li>
            <li>Malaysia</li>
            <li>Malta</li>
            <li>Mauritius</li>
            <li>Mexico</li>
            <li>Mongolia</li>
            <li>Montenegro</li>
            <li>Morocco</li>
            <li>Mozambique</li>
            <li>Namibia</li>
            <li>Netherlands</li>
            <li>New Zealand</li>
            <li>Nicaragua</li>
            <li>Nigeria</li>
            <li>Norway</li>
            <li>Oman</li>
            <li>Pakistan</li>
            <li>Palestinian Authority</li>
            <li>Panama</li>
            <li>Paraguay</li>
            <li>Peru</li>
            <li>Philippines</li>
            <li>Poland</li>          
        </ul>
    </td>
    <td>
        <ul>
            <li>Portugal</li>
            <li>Puerto Rico</li>
            <li>Qatar</li>
            <li>Romania</li>
            <li>Rwanda</li>
            <li>Saint Kitts and Nevis</li>
            <li>Saudi Arabia</li>
            <li>Senegal</li>
            <li>Serbia</li>
            <li>Singapore</li>
            <li>Slovakia</li>
            <li>Slovenia</li>
            <li>South Africa</li>
            <li>Spain</li>
            <li>Sweden</li>
            <li>Switzerland</li>
            <li>Tanzania</li>
            <li>Thailand</li>
            <li>Trinidad and Tobago</li>
            <li>Tunisia</li>
            <li>Turkey</li>
            <li>Uganda</li>
            <li>United Arab Emirates</li>
            <li>United Kingdom</li>
            <li>United States</li>           
        </ul>
    </td>
    <td>
        <ul>
            <li>Uruguay</li>
            <li>Viet Nam</li>
            <li>Virgin Islands, U.S.</li>
            <li>Zambia</li>
            <li>Zimbabwe<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>           
        </ul>
    </td>
   </tr>
</table>

<table>
   <tr>
        <th align="center">Support for free apps only</th>
   </tr>
   <tr align="left">
     <td>
        <ul>
            <li>Russia</li>
        </ul>
    </td>
   </tr>
</table>

<table>
   <tr>
        <th align="center">Support for free apps and Minecraft: Education Edition</th>
   </tr>
   <tr align="left">
     <td>
        <ul>
            <li>Albania</li>
            <li>Armenia</li>
            <li>Azerbaijan</li>
            <li>Belarus</li>
            <li>Bosnia</li>
            <li>Brazil</li>
            <li>Georgia</li>
            <li>India</li>
            <li>Kazakhstan</li>
            <li>Korea</li>
            <li>Kyrgyzstan</li>
            <li>Moldova</li>
            <li>Taiwan</li>
            <li>Tajikistan</li>
            <li>Turkmenistan</li>
            <li>Ukraine</li>
            <li>Uzbekistan</li>
        </ul>
    </td>
   </tr>
</table> -->
### Support for free and paid apps
<table>
   <tr>
        <th align="center" colspan="4">Support for free and paid apps</th>
   </tr>
   <tr align="left">
     <td>
        <ul>
            <li>Algeria</li>
            <li>Angola</li>
            <li>Argentina</li>
            <li>Australia</li>
            <li>Austria</li>
            <li>Bahamas</li>
            <li>Bahrain</li>
            <li>Bangladesh</li>
            <li>Barbados</li>
            <li>Belgium</li>
            <li>Belize</li>
            <li>Bermuda</li>
            <li>Bolivia</li>
            <li>Botswana</li>
            <li>Brunei Darussalam</li>
            <li>Bulgaria</li>
            <li>Cameroon</li>
            <li>Canada</li>
            <li>Republic of Cabo Verde</li>
            <li>Cayman Islands</li>
            <li>Chile</li>
            <li>Colombia</li>
            <li>Costa Rica</li>
            <li>C&ocirc;te D'ivoire</li>
            <li>Croatia</li>
            <li>Cur&ccedil;ao</li>
            <li>Cyprus</li>
            <li>Czech Republic</li>
            <li>Denmark</li>
        </ul>
    </td>
     <td>
        <ul>
            <li>Dominican Republic</li>
            <li>Ecuador</li>
            <li>Egypt</li>
            <li>El Salvador</li>
            <li>Estonia</li>
            <li>Faroe Islands</li>
            <li>Fiji</li>
            <li>Finland</li>
            <li>France</li>
            <li>Germany</li>
            <li>Ghana</li>
            <li>Greece</li>
            <li>Guatemala</li>
            <li>Honduras</li>
            <li>Hong Kong SAR</li>
            <li>Hungary</li>
            <li>Iceland</li>
            <li>Indonesia</li>
            <li>Iraq</li>
            <li>Ireland</li>
            <li>Israel</li>
            <li>Italy</li>
            <li>Jamaica</li>
            <li>Japan</li>
            <li>Jordan</li>
            <li>Kenya</li>
            <li>Kuwait</li>
            <li>Latvia</li>
            <li>Lebanon</li>
        </ul>
    </td>
    <td>
        <ul>
            <li>Libya</li>
            <li>Liechtenstein</li>
            <li>Lithuania</li>
            <li>Luxembourg</li>
            <li>Malaysia</li>
            <li>Malta</li>
            <li>Mauritius</li>
            <li>Mexico</li>
            <li>Mongolia</li>
            <li>Montenegro</li>
            <li>Morocco</li>
            <li>Namibia</li>
            <li>Netherlands</li>
            <li>New Zealand</li>
            <li>Nicaragua</li>
            <li>Nigeria</li>
            <li>Norway</li>
            <li>Oman</li>
            <li>Pakistan</li>
            <li>Palestinian Authority</li>
            <li>Panama</li>
            <li>Paraguay</li>
            <li>Peru</li>
            <li>Philippines</li>
            <li>Poland</li>
            <li>Portugal</li>
            <li>Puerto Rico</li>
            <li>Qatar</li>
            <li>Romania</li>          
        </ul>
    </td>
    <td>
        <ul>
            <li>Rwanda</li>
            <li>Saint Kitts and Nevis</li>
            <li>Saudi Arabia</li>
            <li>Senegal</li>
            <li>Serbia</li>
            <li>Singapore</li>
            <li>Slovakia</li>
            <li>Slovenia</li>
            <li>South Africa</li>
            <li>Spain</li>
            <li>Sweden</li>
            <li>Switzerland</li>
            <li>Tanzania</li>
            <li>Thailand</li>
            <li>Trinidad and Tobago</li>
            <li>Tunisia</li>
            <li>Turkey</li>
            <li>Uganda</li>
            <li>United Arab Emirates</li>
            <li>United Kingdom</li>
            <li>United States</li>
            <li>Uruguay</li>
            <li>Vietnam</li>
            <li>Virgin Islands, U.S.</li>
            <li>Zambia</li>
            <li>Zimbabwe<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>           
        </ul>
    </td>
   </tr>
</table>

### Support for free apps
Customers in these markets can use Microsoft Store for Business and Education to acquire free apps:
- India
- Russia 

### Support for free apps and Minecraft: Education Edition
Customers in these markets can use Microsoft Store for Business and Education to acquire free apps and Minecraft: Education Edition:  
- Albania
- Bosnia
- Brazil
- Georgia
- Korea
- Taiwan
- Ukraine 

This table summarize what customers can purchase, depending on which Microsoft Store they are using. 

| Store | Free apps | Minecraft: Education Edition |
| ----- | --------- | ---------------------------- |
| Microsoft Store for Business | supported | not supported |
| Microsoft Store for Education | supported | supported; invoice payment required |

> [!NOTE]
> **Microsoft Store for Education customers with support for free apps and Minecraft: Education Edition**
- Admins can acquire free apps from **Microsoft Store for Education**.
- Admins need to use an invoice to purchase **Minecraft: Education Edition**. For more information, see [Invoice payment option](https://docs.microsoft.com/education/windows/school-get-minecraft#invoices). 
- Teachers, or people with the Basic Purachaser role, can acquire free apps, but not **Minecraft: Education Edition**. 

## Privacy notice

Microsoft Store for Business services get names and email addresses of people in your organization from Azure Active Directory. This information is needed for these admin functions:
- Granting and managing permissions
- Managing app licenses 
- Distributing apps to people (names appear in a list that admins can select from)
 
Microsoft Store for Business and Education does not save names, or email addresses.

Your use of Microsoft Store for Business and Education is also governed by the [Microsoft Store for Business and Education Services Agreement](https://businessstore.microsoft.com/servicesagreement). 

Information sent to Microsoft Store for Business and Education is subject to the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement/).

## <a href="" id="isv-wsfb"></a>ISVs and the Store for Business

Developers in your organization, or ISVs can create content specific to your organization. In the Store for Business, we call these line-of-business (LOB) apps, and the devs that create them are LOB publishers. The process looks like this:
- Admin invites devs to be LOB publishers for your organization. These devs can be internal devs, or external ISVs.
- LOB publishers accept the invitation, develop apps, and submits the app to the Windows Dev Center. LOB publishers use Enterprise associations when submitting the app to make the app exclusive to your organization.
- Admin adds the app to Store for Business inventory.

Once the app is in inventory, admins can choose how to distribute the app. ISVs creating apps through the dev center can make their apps available in the Store for Business. ISVs can opt-in their apps to make them available for offline licensing. Apps purchased in the Store for Business will work only on Windows 10.

For more information on line-of-business apps, see [Working with Line-of-Business apps](working-with-line-of-business-apps.md).
