---
title: User Experience Virtualization Privacy Statement
description: User Experience Virtualization Privacy Statement
author: levinec
ms.assetid: c2919034-f2cf-48d6-b18e-4dd318252426
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# User Experience Virtualization Privacy Statement


Microsoft is committed to protecting your privacy, while delivering software that brings you the performance, power, and convenience you desire in your personal computing. This privacy statement explains many of the data collection and use practices of Microsoft User Experience Virtualization (“UE-V”). This is a preliminary disclosure that focuses on features that communicate with the Internet and is not intended to be an exhaustive list.

Microsoft User Experience Virtualization allows the separation of settings from an application or operating system. Those settings can then be transferred to a remote storage location, eliminating the constraints of local storage and giving users the ability to have their settings follow them to other computers.

## <a href="" id="bkmk-collectionanduseofyourinformation"></a>Collection and Use of Your Information


The information we collect from you will be used by Microsoft and its controlled subsidiaries and affiliates to enable the features you are using and provide the service(s) or carry out the transaction(s) you have requested or authorized. It may also be used to analyze and improve Microsoft products and services.

We may send certain mandatory service communications such as welcome letters, billing reminders, information on technical service issues, and security announcements. Some Microsoft services may send periodic member letters that are considered part of the service. We may occasionally request your feedback, invite you to participate in surveys, or send you promotional mailings to inform you of other products or services available from Microsoft and its affiliates.

In order to offer you a more consistent and personalized experience in your interactions with Microsoft, information collected through one Microsoft service may be combined with information obtained through other Microsoft services. We may also supplement the information we collect with information obtained from other companies. For example, we may use services from other companies that enable us to derive a general geographic area based on your IP address in order to customize certain services to your geographic area.

Except as described in this statement, personal information you provide will not be transferred to third parties without your consent. We occasionally hire other companies to provide limited services on our behalf, such as packaging, sending and delivering purchases and other mailings, answering customer questions about products or services, processing event registration, or performing statistical analysis of our services. We will only provide those companies the personal information they need to deliver the service, and they are prohibited from using that information for any other purpose.

Microsoft may access or disclose information about you, including the content of your communications, in order to: (a) comply with the law or respond to lawful requests or legal process; (b) protect the rights or property of Microsoft or our customers, including the enforcement of our agreements or policies governing your use of the services; or (c) act on a good faith belief that such access or disclosure is necessary to protect the personal safety of Microsoft employees, customers, or the public. We may also disclose personal information as part of a corporate transaction such as a merger or sale of assets.

Information that is collected by or sent to Microsoft by UE-V may be stored and processed in the United States or any other country in which Microsoft or its affiliates, subsidiaries, or service providers maintain facilities. Microsoft abides by the safe harbor framework as set forth by the U.S. Department of Commerce regarding the collection, use, and retention of data from the European Union, the European Economic Area, and Switzerland.

## Collection and Use of Information about Your Computer


When you use software with Internet-enabled features, information about your computer ("standard computer information") is sent to the Web sites you visit and online services you use. Microsoft uses standard computer information to provide you Internet-enabled services, to help improve our products and services, and for statistical analysis. Standard computer information typically includes information such as your IP address, operating system version, browser version, and regional and language settings. In some cases, standard computer information may also include hardware ID, which indicates the device manufacturer, device name, and version. If a particular feature or service sends information to Microsoft, standard computer information will be sent as well.

The privacy details for each UE-V feature, software or service listed in this privacy statement describe what additional information is collected and how it is used.

## Security of Your Information


Microsoft is committed to helping protect the security of your information. We use a variety of security technologies and procedures to help protect your information from unauthorized access, use, or disclosure. For example, we store the information you provide on computer systems with limited access, which are located in controlled facilities.

## Changes to This Privacy Statement


We will occasionally update this privacy statement to reflect changes in our products, services, and customer feedback. When we post changes, we will revise the "last updated" date at the top of this statement. If there are material changes to this statement or in how Microsoft will use your personal information, we will notify you either by posting a notice of such changes prior to implementing the change or by directly sending you a notification. We encourage you to periodically review this statement to be informed of how Microsoft is protecting your information.

## For More Information


Microsoft welcomes your comments regarding this privacy statement. If you have questions about this statement or believe that we have not adhered to it, please contact us [MSUEVPrivacy@microsoft.com](mailto:%20MSUEVPrivacy@microsoft.com).

## Specific features


The remainder of this document will address the following specific features:

### UE-V Generator

**What This Feature Does**:

The UE-V generator is used to create settings location templates. These templates allow users to roam the settings for their applications.

**Information Collected, Processed, or Transmitted**:

When creating a settings location template the UE-V generator uses a Lightweight Directory Access Protocol (LDAP) query to get username and email address of the current logged in user. This information is stored in the template as the template author name and template author email. None of this information is sent to Microsoft.

If you plan to share settings location templates with anyone outside your organization you should review all the settings locations and ensure the settings location template do not contain any personal or company information. You can view the contents by opening the settings location template files using any XML viewer. The following are ways you can view and remove any personal or company information from the settings location template files before sharing with anyone outside your company:

-   **Template Author Name** – Specify a general, non-identifying name for the template author name or exclude this data from the template.

-   **Template Author Email** – Specify a general, non-identifying template author email or exclude this data from the template.

**Use of Information**:

The template author name and template author email can be used to identify the author of settings location template. If you share the template, the author name and email is viewable to all who use the template. No information is sent to Microsoft.

**Choice/Control**: 

To remove the template author name or template author email, start the UE-V generator application. Select **Edit a Settings Location Template**. Select the settings location template to edit from the recently used templates or Browse to the settings template file. Select **Next** to continue. On the Properties page, remove the data from the Template author name or Template author email text fields. Save the settings location template.

## <a href="" id="bkmk-ceip"></a>Customer Experience Improvement Program


**What This Feature Does:**

The Customer Experience Improvement Program (“CEIP”) collects basic information about your hardware configuration and how you use our software and services in order to identify trends and usage patterns. CEIP also collects the type and number of errors you encounter, software and hardware performance, and the speed of services. We will not collect your name, address, or other contact information.

**Information Collected, Processed, or Transmitted:**

For more information about the information collected, processed, or transmitted by CEIP, see the CEIP privacy statement at <https://go.microsoft.com/fwlink/?LinkID=248701>.

**Use of Information:**

We use this information to improve the quality, reliability, and performance of Microsoft software and services.

**Choice/Control:**

You are offered the opportunity to participate in CEIP during setup of the UE-V Agent. If you choose to participate and later change your mind, you can turn off CEIP at any time by:Re-running the UE-V agent setup and opting out of CEIP or by setting the following registry key either manually or via Group Policy:

``` syntax
Key = HKEY_LOCAL_MACHINE\Software\Microsoft\UEV\Agent
RegEntry name = CustomerExperienceImprovementProgram
Entry type REG_DWORD (Hexadecimal):
0 is off
1 is on
```

## <a href="" id="bkmk-microsofterrorreporting"></a>Microsoft Error Reporting


**What This Feature Does:**

Microsoft Error Reporting provides a service that allows you to report problems you may be having with UE-V or other enabled applications to Microsoft and to receive information that may help you avoid or solve such problems.

**Information Collected, Processed, or Transmitted:**

For information about the information collected, processed, or transmitted by Microsoft Error Reporting, see the Microsoft Error Reporting privacy statement at <https://go.microsoft.com/fwlink/?LinkId=248702>.

**Use of Information:**

We use the error reporting data to solve customer problems and improve our software and services.

**Choice/Control:**

If you choose the recommended settings during Windows setup, you turn on automatic checking for solutions, which will send basic error reports and look for solutions to the problems reported. If you use automatic checking, you are not typically prompted to send basic information about errors to Microsoft. If a more detailed error report is required, you will be prompted to review it. You can change this setting at any time by going to Action Center in Control Panel.

**Important Information:**

Enterprise customers can use Group Policy to configure how Microsoft Error Reporting behaves on their computers. Configuration options include the ability to turn off Microsoft Error Reporting. If you are an administrator and wish to configure Group Policy for Microsoft Error Reporting, technical details are available at <https://go.microsoft.com/fwlink/?LinkId=262264>.

UE-V will not modify the Microsoft Error Reporting preference and will honor the system setting in the Control Panel and/or the setting enforced via Group Policy.

## <a href="" id="bkmk-microsoftupdate"></a>Microsoft Update


**What This Feature Does:**

Microsoft Update is a service that provides Windows updates as well as updates for other Microsoft software.

**Information Collected, Processed, or Transmitted:**

For details about what information is collected and how it is used, see the Update Services Privacy Statement at <https://go.microsoft.com/fwlink/?LinkId=248704>

**Use of Information:**

-   For details about what information is collected and how it is used, see the Update Services Privacy Statement at <https://go.microsoft.com/fwlink/?LinkId=248704>.

-   Choice/Control:

    For details about controlling this feature, see the Update Services Privacy Statement at <https://go.microsoft.com/fwlink/?LinkId=248704>.

## Related topics


[Security and Privacy for UE-V 1.0](security-and-privacy-for-ue-v-10.md)

 

 





