---
title: Manage user experiences in Windows 10 (Windows 10)
description: Windows 10 provides organizations with various options to manage auser experiences to provide a consistent and predictable experience for employees. 
keywords: ["device management"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: devices
author: jdeckerMS
---

# Manage user experiences in Windows 10, version 1607


**Applies to**

-   Windows 10

> <span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. ]</span>

Windows 10 is available in several editions, providing choice and convenience to organizations based on their requirements.  Windows 10 Enterprise, available through Volume Licensing, is for organizations that require deep and granular manageability, control, and security capabilities.  Windows 10 Pro was designed for organizations who do not require or need the level of functionality in the enterprise edition, but still would like to purchase Windows 10 through volume licensing in bulk. For organizations that do not want to buy in bulk or do not have dedicated IT staff, we will offer [Windows 10 Enterprise E3 as a subscription](https://blogs.windows.com/windowsexperience/2016/07/12/announcing-new-subscription-options-for-windows-10-and-surface-for-businesses/) in the Cloud Solution Provider (CSP) partner network. Additionally, the same enterprise capabilities that come with Windows 10 Pro and Windows 10 Enterprise are available to schools and universities through Windows 10 Education.

Windows 10 provides organizations with various options to manage an employee’s user experience so they can ensure a consistent and predictable experience for employees. Based on specific business requirements, IT pros can use Group Policy or mobile device management (MDM) to:

- Provide a default user experience based on their organizational standards
- Configure a device for a specific, controlled scenario such as a kiosk that displays a single application or shared PC which would automatically reset when the person signs off
- Restrict access to services such as Cortana or the Windows Store 

With Windows 10, version 1607, organizations will be able to limit Windows Spotlight features, such as Start menu app suggestions and tips on the lock screen, to only show content related to Microsoft, and to block non-Microsoft content. In Windows 10 Enterprise and Education, administrators also have the capability to disable these features completely through Group Policy or MDM solutions. (Windows Spotlight is off by default in Windows 10 Education). 

The following table describes the user experience features that are manageable in Windows 10, version 1607: 

| Feature | Windows 10 Pro | Windows 10 Education | Windows 10 Enterprise |
| --- | --- | --- | --- |
| **Windows Spotlight on the lock screen** </br> Photo on the lock screen with hot spots showing Microsoft messages | - On by default (commercial content only if the device is joined to Active Directory or Azure Active Directory) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Cannot disable | - Off by default</br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Can disable | - On by default (commercial content only) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Can disable |
| **Facts, tips, and more on lock screen**</br>Hot spot only on top of a user-chosen picture|- On by default (commercial content only if the device is joined to Active Directory or Azure Active Directory) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Cannot disable | - Off by default</br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Can disable | - On by default (commercial content only) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Can disable |
| **Start menu app suggestions**</br>Suggestions for apps to download in the Start menu| - On by default (commercial content only if the device is joined to Active Directory or Azure Active Directory) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Cannot disable | - Off by default</br>- Can manage | - On by default (commercial content only) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Can disable |
| **Additional apps on Start**</br>Pre-installed apps or links to apps in the Start menu, such as Wunderlist or a link to install Skype | - On by default (commercial content only if the device is joined to Active Directory or Azure Active Directory) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Cannot disable | - Off by default</br>- Can manage | - On by default (commercial content only) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Can disable |
| **Microsoft account notifications**</br>Toasts that notify you of anything related to your Microsoft account, such as credit cards expiring, as well as family safety | - On by default (commercial content only if the device is joined to Active Directory or Azure Active Directory) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Cannot disable | - Off by default</br>- Can manage | - On by default </br>- Can manage |
| **Windows tips**</br>Tips that pop up to help navigate Windows | - On by default (commercial content only if the device is joined to Active Directory or Azure Active Directory) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Cannot disable | - Off by default</br>- Can manage | - On by default (commercial content only) </br>- Can restrict to Microsoft content only</br>- Can allow non-Microsoft content</br>- Can disable |
| **Windows Store** | - On by default </br>- Cannot disable| - On by default</br>- Can manage | - On by default</br>- Can manage  |
| **Cortana** | - On by default </br>- Can manage, except for the **Don't search the web or display web results** settings| - Off by default</br>- Cannot enable | - On by default</br>- Can manage  |
| **Start menu layout** | - Cannot manage | - Can manage   | - Can manage   |
| **Taskbar layout** | - Cannot manage  | - Can manage   | - Can manage  |




## Related topics

- [Manage Windows 10 Start layout](windows-10-start-layout-options-and-policies.md)
- [Cortana integration in your business or enterprise](manage-cortana-in-enterprise.md)
- [Windows spotlight on the lock screen](../whats-new/windows-spotlight.md)


 

 





