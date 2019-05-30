---
title: Deploy Windows 10 in a school (Windows 10)
description: Learn how to integrate your school environment with Microsoft Office 365, Active Directory Domain Services (AD DS), and Microsoft Azure Active Directory (Azure AD). Deploy Windows 10 and apps to new devices or upgrade existing devices to Windows 10. Manage faculty, students, and devices by using Microsoft Intune and Group Policy.
keywords: configure, tools, device, school, deploy Windows 10
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: edu
ms.sitesec: library
ms.localizationpriority: medium
author: lizap
ms.author: elizapo
ms.date: 05/21/2019
---

# Deploy Windows 10 in a school


**Applies to**

- Windows 10

This guide shows you how to deploy the Windows 10 operating system in a school environment. You learn how to deploy Windows 10 in classrooms; integrate the school environment with Microsoft Office 365, Active Directory Domain Services (AD DS), and Microsoft Azure Active Directory (Azure AD); and deploy Windows 10 and your apps to new devices or upgrade existing devices to Windows 10. This guide also describes how to use Microsoft Intune and Group Policy to manage devices. Finally, the guide discusses common, ongoing maintenance tasks that you will perform after initial deployment as well as the automated tools and built-in features of the operating system.

## Prepare for school deployment

Proper preparation is essential for a successful school deployment. To avoid common mistakes, your first step is to plan a typical school configuration. Just as with building a house, you need a blueprint for what your school should look like when it’s finished. The second step in preparation is to learn how you will configure your school. Just as a builder needs to have the right tools to build a house, you need the right set of tools to deploy your school.

### Plan a typical school configuration

As part of preparing for your school deployment, you need to plan your configuration—the focus of this guide. Figure 1 illustrates a typical finished school configuration that you can use as a model (the blueprint in our builder analogy) for the finished state.

![fig 1](images/deploy-win-10-school-figure1.png)

*Figure 1. Typical school configuration for this guide*

Figure 2 shows the classroom configuration this guide uses.

![fig 2](images/deploy-win-10-school-figure2.png)

*Figure 2. Typical classroom configuration in a school*

This school configuration has the following characteristics:
- It contains one or more admin devices.
- It contains two or more classrooms.
- Each classroom contains one teacher device.
- The classrooms connect to each other through multiple subnets.
- All devices in each classroom connect to a single subnet.
- All devices have high-speed, persistent connections to each other and to the Internet.
- All teachers and students have access to Microsoft Store or Microsoft Store for Business.
- All devices receive software updates from Intune (or another device management system).
- You install a 64-bit version of Windows 10 on the admin device.
- You install the Windows Assessment and Deployment Kit (Windows ADK) on the admin device.
- You install the Windows Assessment and Deployment Kit (Windows ADK) on the admin device.
- You install the 64-bit version of the Microsoft Deployment Toolkit (MDT) 2013 Update 2 on the admin device.

  **Note**&nbsp;&nbsp;In this guide, all references to MDT refer to the 64-bit version of MDT 2013 Update 2.
- The devices use Azure AD in Office 365 Education for identity management.
- If you have on-premises AD DS, you can [integrate Azure AD with on-premises AD DS](https://azure.microsoft.com/documentation/articles/active-directory-aadconnect/).</li>
- Use [Intune](https://technet.microsoft.com/library/jj676587.aspx), [compliance settings in Office 365](https://support.office.com/en-us/article/Manage-mobile-devices-in-Office-365-dd892318-bc44-4eb1-af00-9db5430be3cd?ui=en-US&rs=en-US&ad=US), or [Group Policy](https://technet.microsoft.com/library/cc725828%28v=ws.10%29.aspx?f=255&MSPPError=-2147217396) in AD DS to manage devices.
- Each device supports a one-student-per-device or multiple-students-per-device scenario.
- The devices can be a mixture of different make, model, and processor architecture (32 bit or 64 bit) or be identical.
- To initiate Windows 10 deployment, use a USB flash drive, DVD-ROM or CD-ROM, or Pre-Boot Execution Environment Boot (PXE Boot).
- The devices can be a mixture of different Windows 10 editions, such as Windows 10 Home, Windows 10 Pro, and Windows 10 Education.

Office 365 Education allows:

- Students and faculty to use Microsoft Office Online to create and edit Microsoft Word, OneNote, PowerPoint, and Excel documents in a browser.
- Teachers to use the [OneNote Class Notebook app](https://www.onenote.com/classnotebook) to share content and collaborate with students.
- Faculty to use the [OneNote Staff Notebooks app](https://www.onenote.com/staffnotebookedu) to collaborate with other teachers, administration, and faculty.
- Teachers to employ Sway to create interactive educational digital storytelling.
- Students and faculty to use email and calendars, with mailboxes up to 50 GB per user.
- Faculty to use advanced email features like email archiving and legal hold capabilities.
- Faculty to help prevent unauthorized users from accessing documents and email by using Azure Rights Management.
- Faculty to use advanced compliance tools on the unified eDiscovery pages in the Office 365 Compliance Center.
- Faculty to host online classes, parent–teacher conferences, and other collaboration in Skype for Business or Skype.
- Students and faculty to access up to 1 TB of personal cloud storage that users inside and outside the educational institution can share through OneDrive for Business.
- Teachers to provide collaboration in the classroom through Microsoft SharePoint Online team sites.
- Students and faculty to use Office 365 Video to manage videos.
- Students and faculty to use Yammer to collaborate through private social networking.
- Students and faculty to access classroom resources from anywhere on any device (including Windows 10 Mobile, iOS, and Android devices).

For more information about Office 365 Education features and a FAQ, go to [Office 365 Education](https://products.office.com/en-us/academic).

## How to configure a school

Now that you have the plan (blueprint) for your classroom, you’re ready to learn about the tools you will use to deploy it. There are many tools you could use to accomplish the task, but this guide focuses on using those tools that require the least infrastructure and technical knowledge.

The primary tool you will use to deploy Windows 10 in your school is MDT, which uses Windows ADK components to make deployment easier. You could just use the Windows ADK to perform your deployment, but MDT simplifies the process by providing an intuitive, wizard-driven user interface (UI).

You can use MDT as a stand-alone tool or integrate it with Microsoft System Center Configuration Manager. As a stand-alone tool, MDT performs Lite Touch Installation (LTI) deployments—deployments that require minimal infrastructure and allow you to control the level of automation. When integrated with System Center Configuration Manager, MDT performs Zero Touch Installation (ZTI) deployments, which require more infrastructure (such as System Center Configuration Manager) but result in fully automated deployments.

MDT includes the Deployment Workbench—a console from which you can manage the deployment of Windows 10 and your apps. You configure the deployment process in the Deployment Workbench, including the management of operating systems, device drivers, apps and migration of user settings on existing devices. 

LTI performs deployment from a *deployment share*—a network-shared folder on the device where you installed MDT. You can perform over-the-network deployments from the deployment share or perform deployments from a local copy of the deployment share on a USB drive or DVD. You will learn more about MDT in the [Prepare the admin device](#prepare-the-admin-device) section.

The focus of MDT is deployment, so you also need tools that help you manage your Windows 10 devices and apps. You can manage Windows 10 devices and apps with Intune, the Compliance Management feature in Office 365, or Group Policy in AD DS. You can use any combination of these tools based on your school requirements.

The configuration process requires the following devices:

- **Admin device.** This is the device you use for your day-to-day job functions. It’s also the one you use to create and manage the Windows 10 and app deployment process. You install the Windows ADK and MDT on this device.
- **Faculty devices.** These are the devices that the teachers and other faculty use for their day-to-day job functions. You use the admin device to deploy (or upgrade) Windows 10 and apps to these devices.
- **Student devices.** The students will use these devices. You will use the admin device deploy (or upgrade) Windows 10 and apps to them.

The high-level process for deploying and configuring devices within individual classrooms and the school as a whole is as follows and illustrated in Figure 3:

1. Prepare the admin device for use, which includes installing the Windows ADK and MDT.
2. On the admin device, create and configure the Office 365 Education subscription that you will use for each classroom in the school.
3. On the admin device, configure integration between on-premises AD DS and Azure AD (if you have an on premises AD DS configuration).
4. On the admin device, create and configure a Microsoft Store for Business portal.
5. On the admin device, prepare for management of the Windows 10 devices after deployment.
6. On the student and faculty devices, deploy Windows 10 to new or existing devices, or upgrade eligible devices to Windows 10.
7. On the admin device, manage the Windows 10 devices and apps, the Office 365 subscription, and the AD DS and Azure AD integration.

![fig 3](images/deploy-win-10-school-figure3.png)

*Figure 3. How school configuration works*

Each of the steps illustrated in Figure 3 directly correspond to the remaining high-level sections in this guide.

### Summary

In this section, you looked at the final configuration of your individual classrooms and the school as a whole upon completion of this guide. You also learned the high-level steps you need to perform to deploy the faculty and student devices in your school.

## Prepare the admin device

Now, you’re ready to prepare the admin device for use in the school. This process includes installing the Windows ADK, installing the MDT, and creating the MDT deployment share.

### Install the Windows ADK

The first step in preparing the admin device is to install the Windows ADK. The Windows ADK contains the deployment tools that MDT uses, including the Windows Preinstallation Environment (Windows PE), the Windows User State Migration Tool (USMT), and Deployment Image Servicing and Management.

When you install the Windows ADK on the admin device, select the following features:

- Deployment tools
- Windows Preinstallation Environment (Windows PE)
- User State Migration Tool (USMT)

For more information about installing the Windows ADK, see [Step 2-2: Install the Windows ADK](https://technet.microsoft.com/library/dn781086.aspx?f=255&MSPPError=-2147217396#InstallWindowsADK).

### Install MDT

Next, install MDT. MDT uses the Windows ADK to help you manage and perform Windows 10 and app deployment and is a free tool available directly from Microsoft.

You can use MDT to deploy 32-bit or 64-bit versions of Windows 10. Install the 64-bit version of MDT to support deployment of 32-bit and 64-bit operating systems.

**Note**&nbsp;&nbsp;If you install the 32-bit version of MDT, you can install only 32-bit versions of Windows 10. Ensure that you download and install the 64-bit version of MDT so that you can install 64-bit and 32 bit versions of the operating system.

For more information about installing MDT on the admin device, see [Installing a New Instance of MDT](https://technet.microsoft.com/library/dn759415.aspx#InstallingaNewInstanceofMDT).

Now, you’re ready to create the MDT deployment share and populate it with the operating system, apps, and device drivers you want to deploy to your devices.

### Create a deployment share

MDT includes the Deployment Workbench, a graphical user interface that you can use to manage MDT deployment shares. A deployment share is a shared folder that contains all the MDT deployment content. The LTI Deployment Wizard accesses the deployment content over the network or from a local copy of the deployment share (known as MDT deployment media).

For more information about how to create a deployment share, see [Step 3-1: Create an MDT Deployment Share](https://technet.microsoft.com/library/dn781086.aspx?f=255&MSPPError=-2147217396#CreateMDTDeployShare).

### Summary

In this section, you installed the Windows ADK and MDT on the admin device. You also created the MDT deployment share that you will configure and use later in the LTI deployment process.

## Create and configure Office 365

Office 365 is one of the core components of your classroom environment. You create and manage student identities in Office 365, and students and teachers use the suite as their email, contacts, and calendar system. Teachers and students use Office 365 collaboration features such as SharePoint, OneNote, and OneDrive for Business.

As a first step in deploying your classroom, create an Office 365 Education subscription, and then configure Office 365 for the classroom. For more information about Office 365 Education deployment, see [School deployment of Office 365 Education](https://www.microsoft.com/en-us/education/products/office-365-deployment-resources/default.aspx).

### Select the appropriate Office 365 Education license plan

Complete the following steps to select the appropriate Office 365 Education license plan for your school:

<ol>
<li>Determine the number of faculty members and students who will use the classroom.<br/>Office 365 Education licensing plans are available specifically for faculty and students. You must assign faculty and students the correct licensing plan.
</li>
<li>Determine the faculty members and students who need to install Office applications on devices (if any). Faculty and students can use Office applications online (standard plans) or run them locally (Office 365 ProPlus plans). Table 1 lists the advantages and disadvantages of standard and Office 365 ProPlus plans.</li>
<br/>
*Table 1. Comparison of standard and Microsoft Office 365 ProPlus plans*
<br/>
<table>
<colgroup>
<col width="15%" />
<col width="" />
<col width="" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Plan</th>
<th align="left">Advantages</th>
<th align="left">Disadvantages</th>
</tr>
</thead>
<tbody>
<tr><td>Standard</td><td><ul><li>Less expensive than Office 365 ProPlus</li><li>Can be run from any device</li><li>No installation necessary</li></ul></td><td><ul><li>Must have an Internet connection to use it</li><li>Does not support all the features found in Office 365 ProPlus</li></ul></td></tr>
<tr><td>Office ProPlus</td><td><ul><li>Only requires an Internet connection every 30 days (for activation)</li><li>Supports full set of Office features</li></ul></td><td><ul><li>Requires installation</li><li>Can be installed on only five devices per user (there is no limit to the number of devices on which you can run Office apps online)</li></ul></td></tr>

</tbody>
</table>
<br/>
The best user experience is to run Office 365 ProPlus or use native Office apps on mobile devices. If neither of these options is available, use Office applications online. In addition, all Office 365 plans provide a better user experience by storing documents in OneDrive for Business, which is included in all Office 365 plans. OneDrive for Business keeps content in sync among devices and helps ensure that users always have access to their documents on any device.
<br/>
<li>Determine whether students or faculty need Azure Rights Management.<br/>You can use Azure Rights Management to protect classroom information against unauthorized access. Azure Rights Management protects your information inside or outside the classroom through encryption, identity, and authorization policies, securing your files and email. You can retain control of the information, even when it’s shared with people outside the classroom or your educational institution. Azure Rights Management is free to use with all Office 365 Education license plans. For more information, see [Azure Rights Management](https://technet.microsoft.com/library/jj585024.aspx).</li>
<li>Record the Office 365 Education license plans needed for the classroom in Table 2.<br/><br/>

*Table 2. Office 365 Education license plans needed for the classroom*
<br/>
<table>
<colgroup>
<col width="15%" />
<col width="" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Quantity</th>
<th align="left">Plan</th>
</tr>
</thead>
<tbody>
<tr><td></td><td>Office 365 Education for students</td></tr>
<tr><td></td><td>Office 365 Education for faculty</td></tr>
<tr><td></td><td>Azure Rights Management for students</td></tr>
<tr><td></td><td>Azure Rights Management for faculty</td></tr>
</tbody>
</table>
<br/>
You will use the Office 365 Education license plan information you record in Table 2 in the [Create user accounts in Office 365](#create-user-accounts-in-office-365) section of this guide.</li></ol>

### Create a new Office 365 Education subscription

To create a new Office 365 Education subscription for use in the classroom, use your educational institution’s email account. There are no costs to you or to students for signing up for Office 365 Education subscriptions.

**Note**&nbsp;&nbsp;If you already have an Office 365 Education subscription, you can use that subscription and continue to the next section, [Add domains and subdomains](#add-domains-and-subdomains).

#### To create a new Office 365 subscription

1. In Microsoft Edge or Internet Explorer, type `https://portal.office.com/start?sku=faculty` in the address bar.
   
   **Note**&nbsp;&nbsp;If you have already used your current sign-in account to create a new Office 365 subscription, you will be prompted to sign in. If you want to create a new Office 365 subscription, start an In-Private Window in one of the following:
  - Microsoft Edge by opening the Microsoft Edge app, either pressing Ctrl+Shift+P or clicking or tapping **More actions**, and then clicking or tapping **New InPrivate window**.
  - Internet Explorer 11 by opening Internet Explorer 11, either pressing Ctrl+Shift+P or clicking or tapping **Settings**, clicking or tapping **Safety**, and then clicking or tapping **InPrivate Browsing**.
  
2. On the **Get started** page, type your school email address in the **Enter your school email address** box, and then click **Sign up**. You will receive an email in your school email account.
3. Click the hyperlink in the email in your school email account.
4. On the **One last thing** page, complete your user information, and then click **Start**. The wizard creates your new Office 365 Education subscription, and you are automatically signed in as the administrative user you specified when you created the subscription.

### Add domains and subdomains

Now that you have created your new Office 365 Education subscription, add the domains and subdomains that your institution uses. For example, if your institution has contoso.edu as the primary domain name but you have subdomains for students or faculty (such as students.contoso.edu and faculty.contoso.edu), then you need to add the subdomains.

#### To add additional domains and subdomains

1. In the Office 365 admin center, in the list view, click **DOMAINS**.
2. In the details pane, above the list of domains, on the menu bar, click **Add domain**.
3. In the Add a New Domain in Office 365 Wizard, on the **Verify domain wizard** page, click **Let’s get started**.
4. On the **Verify domain** wizard page, in the **Enter a domain you already own** box, type your domain name, and then click **Next**.
5. Sign in to your domain name management provider (for example, Network Solutions or GoDaddy), and then complete the steps for your provider.
6. Repeat these steps for each domain and subdomain you want faculty and students to use for your institution.

### Configure automatic tenant join

To make it easier for faculty and students to join your Office 365 Education subscription (or *tenant*), allow them to automatically sign up to your tenant (*automatic tenant join*). In automatic tenant join, when a faculty member or student signs up for Office 365, Office 365 automatically adds (joins) the user to your Office 365 tenant.

**Note**&nbsp;&nbsp;By default, automatic tenant join is enabled in Office 365 Education, with the exception of certain areas in Europe, the Middle East, and Africa. These countries require opt-in steps to add new users to existing Office 365 tenants. Check your country requirements to determine the automatic tenant join default configuration. Also, if you use Azure AD Connect, then automatic tenant join is disabled.

Office 365 uses the domain portion of the user’s email address to know which Office 365 tenant to join. For example, if a faculty member or student provides an email address of user@contoso.edu, then Office 365 automatically performs one of the following tasks:

- If an Office 365 tenant with that domain name (contoso.edu) exists, Office 365 automatically adds the user to that tenant.
- If an Office 365 tenant with that domain name (contoso.edu) does not exists, Office 365 automatically creates a new Office 365 tenant with that domain name and adds the user to it.

You will always want faculty and students to join the Office 365 tenant that you created. Ensure that you perform the steps in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) and [Add domains and subdomains](#add-domains-and-subdomains) sections before allowing other faculty and students to join Office 365.

**Note**&nbsp;&nbsp;You cannot merge multiple tenants, so any faculty or students who create their own tenant will need to abandon their existing tenant and join yours.

All new Office 365 Education subscriptions have automatic tenant join enabled by default, but you can enable or disable automatic tenant join by using the Windows PowerShell commands in Table 3. For more information about how to run these commands, see [How can I prevent students from joining my existing Office 365 tenant](https://support.office.com/en-us/article/Office-365-Education-Self-Sign-up-Technical-FAQ-7fb1b2f9-94c2-4cbb-b01e-a6eca34261d6?ui=en-US&rs=en-US&ad=US#BKMK_PreventJoins).

*Table 3. Windows PowerShell commands to enable or disable Automatic Tenant Join*


| Action | Windows PowerShell command |
|------- |----------------------------|
| Enable |`Set-MsolCompanySettings -AllowEmailVerifiedUsers $true`|
| Disable |`Set-MsolCompanySettings -AllowEmailVerifiedUsers $false`|
<p>
**Note**&nbsp;&nbsp;If your institution has AD DS, then disable automatic tenant join. Instead, use Azure AD integration with AD DS to add users to your Office 365 tenant.

### Disable automatic licensing

To reduce your administrative effort, automatically assign Office 365 Education or Office 365 Education Plus licenses to faculty and students when they sign up (automatic licensing). Automatic licensing also enables Office 365 Education or Office 365 Education Plus features that do not require administrative approval.

**Note**&nbsp;&nbsp;By default, automatic licensing is enabled in Office 365 Education. If you want to use automatic licensing, then skip this section and go to the next section.

Although all new Office 365 Education subscriptions have automatic licensing enabled by default, you can enable or disable it for your Office 365 tenant by using the Windows PowerShell commands in Table 4. For more information about how to run these commands, see [How can I prevent students from joining my existing Office 365 tenant](https://support.office.com/en-us/article/Office-365-Education-Self-Sign-up-Technical-FAQ-7fb1b2f9-94c2-4cbb-b01e-a6eca34261d6?ui=en-US&rs=en-US&ad=US#BKMK_PreventJoins).

*Table 4. Windows PowerShell commands to enable or disable automatic licensing*

| Action | Windows PowerShell command|
| -------| --------------------------|
| Enable |`Set-MsolCompanySettings -AllowAdHocSubscriptions $true`|
|Disable | `Set-MsolCompanySettings -AllowAdHocSubscriptions $false`|
<p>
### Enable Azure AD Premium

When you create your Office 365 subscription, you create an Office 365 tenant that includes an Azure AD directory. Azure AD is the centralized repository for all your student and faculty accounts in Office 365, Intune, and other Azure AD–integrated apps. Azure AD is available in Free, Basic, and Premium editions. Azure AD Free, which is included in Office 365 Education, has fewer features than Azure AD Basic, which in turn has fewer features than Azure AD Premium.

Educational institutions can obtain Azure AD Basic edition licenses at no cost. After you obtain your licenses, activate your Azure AD access by completing the steps in [Step 3: Activate your Azure Active Directory access](https://azure.microsoft.com/documentation/articles/active-directory-get-started-premium/#step-3-activate-your-azure-active-directory-access).

The Azure AD Premium features that are not in Azure AD Basic include:

- Allow designated users to manage group membership
- Dynamic group membership based on user metadata
- Multifactor authentication (MFA)
- Identify cloud apps that your users run
- Automatic enrollment in a mobile device management (MDM) system (such as Intune)
- Self-service recovery of BitLocker
- Add local administrator accounts to Windows 10 devices
- Azure AD Connect health monitoring
- Extended reporting capabilities

You can assign Azure AD Premium licenses to the users who need these features. For example, you may want the users who have access to confidential student information to use MFA. In this example, you could assign Azure AD Premium to only those users.

You can sign up for Azure AD Premium, and then assign licenses to users. In this section, you sign up for Azure AD Premium. You will assign Azure AD Premium licenses to users later in the deployment process.

For more information about:

- Azure AD editions and the features in each, see [Azure Active Directory editions](https://azure.microsoft.com/documentation/articles/active-directory-editions/).
- How to enable Azure AD premium, see [Associate an Azure AD directory with a new Azure subscription](https://msdn.microsoft.com/library/azure/jj573650.aspx#create_tenant3).

### Summary
You provision and initially configure Office 365 Education as part of the initial configuration. With the subscription in place, automatic tenant join configured, automatic licensing established, and Azure AD Premium enabled (if required), you’re ready to select the method you will use to create user accounts in Office 365.

## Select an Office 365 user account–creation method


Now that you have an Office 365 subscription, you need to determine how you will create your Office 365 user accounts. Use the following methods to create Office 365 user accounts:

- **Method 1:** Automatically synchronize your on-premises AD DS domain with Azure AD. Select this method if you have an on-premises AD DS domain.
- **Method 2:** Bulk-import the user accounts from a .csv file (based on information from other sources) into Azure AD. Select this method if you don’t have an on-premises AD DS domain.

### Method 1: Automatic synchronization between AD DS and Azure AD

In this method, you have an on-premises AD DS domain. As shown in Figure 4, the Azure AD Connector tool automatically synchronizes AD DS with Azure AD. When you add or change any user accounts in AD DS, the Azure AD Connector tool automatically updates Azure AD.

**Note**&nbsp;&nbsp;Azure AD Connect also supports synchronization from any Lightweight Directory Access Protocol version 3 (LDAPv3)–compliant directory by using the information provided in [Generic LDAP Connector for FIM 2010 R2 Technical Reference](https://technet.microsoft.com/library/dn510997.aspx?f=255&MSPPError=-2147217396).

![fig 4](images/deploy-win-10-school-figure4.png)

*Figure 4. Automatic synchronization between AD DS and Azure AD*

For more information about how to perform this step, see the [Integrate on-premises AD DS with Azure AD](#integrate-on-premises-ad-ds-with-azure-ad) section in this guide.

### Method 2: Bulk import into Azure AD from a .csv file

In this method, you have no on-premises AD DS domain. As shown in Figure 5, you manually prepare a .csv file with the student information from your source, and then manually import the information directly into Azure AD. The .csv file must be in the format that Office 365 specifies.

![fig 5](images/deploy-win-10-school-figure5.png)

*Figure 5. Bulk import into Azure AD from other sources*

To implement this method, perform the following steps:

1. Export the student information from the source. Ultimately, you want to format the student information in the format the bulk-import feature requires.
2. Bulk-import the student information into Azure AD. For more information about how to perform this step, see the [Bulk-import user accounts into Office 365](#bulk-import-user-accounts-into-office-365) section.

### Summary

In this section, you selected the method for creating user accounts in your Office 365 subscription. Ultimately, these user accounts are in Azure AD (which is the identity management system for Office 365). Now, you’re ready to create your Office 365 accounts.

## Integrate on-premises AD DS with Azure AD

You can integrate your on-premises AD DS domain with Azure AD to provide identity management for your Office 365 tenant. With this integration, you can synchronize the users, security groups, and distribution lists in your AD DS domain with Azure AD with the Azure AD Connect tool. Users will be able to sign in to Office 365 automatically by using their email account and the same password they use to sign in to AD DS.

**Note**&nbsp;&nbsp;If your institution does not have an on-premises AD DS domain, you can skip this section.

### Select synchronization model

Before you deploy AD DS and Azure AD synchronization, you need to determine where you want to deploy the server that runs Azure AD Connect.

You can deploy the Azure AD Connect tool by using one of the following methods:

- **On premises.** As shown in Figure 6, Azure AD Connect runs on premises, which has the advantage of not requiring a virtual private network (VPN) connection to Azure. It does, however, require a virtual machine (VM) or physical server.

 ![fig 6](images/deploy-win-10-school-figure6.png)

 *Figure 6. Azure AD Connect on premises*

- **In Azure**. As shown in Figure 7, Azure AD Connect runs on a VM in Azure AD, which has the advantages of being faster to provision (than a physical, on-premises server), offers better site availability, and helps reduce the number of on-premises servers. The disadvantage is that you need to deploy a VPN gateway on premises.

 ![fig 7](images/deploy-win-10-school-figure7.png)

 *Figure 7. Azure AD Connect in Azure*

This guide describes how to run Azure AD Connect on premises. For information about running Azure AD Connect in Azure, see [Deploy Office 365 Directory Synchronization (DirSync) in Microsoft Azure](https://technet.microsoft.com/library/dn635310.aspx).

### Deploy Azure AD Connect on premises

In this synchronization model (illustrated in Figure 6), you run Azure AD Connect on premises on a physical device or VM. Azure AD Connect synchronizes AD DS user and group accounts with Azure AD. Azure AD Connect includes a wizard that helps you configure Azure AD Connect for your AD DS domain and Office 365 subscription. First, you install Azure AD Connect; then, you run the wizard to configure it for your institution.

#### To deploy AD DS and Azure AD synchronization

1. Configure your environment to meet the prerequisites for installing Azure AD Connect by performing the steps in [Prerequisites for Azure AD Connect](https://azure.microsoft.com/documentation/articles/active-directory-aadconnect-prerequisites/).
2. On the VM or physical device that will run Azure AD Connect, sign in with a domain administrator account.
3. Install Azure AD Connect by performing the steps in [Install Azure AD Connect](https://azure.microsoft.com/documentation/articles/active-directory-aadconnect/#install-azure-ad-connect).
4. Configure Azure AD Connect features based on your institution’s requirements by performing the steps in [Configure features](https://azure.microsoft.com/documentation/articles/active-directory-aadconnect/#configure-sync-features).

Now that you have used on premises Azure AD Connect to deploy AD DS and Azure AD synchronization, you’re ready to verify that Azure AD Connect is synchronizing AD DS user and group accounts with Azure AD.

### Verify synchronization

Azure AD Connect should start synchronization immediately. Depending on the number of users in your AD DS domain, the synchronization process can take some time. To monitor the process, view the number of AD DS users and groups the tool has synchronized with Azure AD in the Office 365 admin console.

#### To verify AD DS and Azure AD synchronization

1. Open https://portal.office.com in your web browser.
2. Using the administrative account that you created in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) section, sign in to Office 365.
3. In the list view, expand **USERS**, and then click **Active Users**.
4. In the details pane, view the list of users. The list of users should mirror the users in AD DS.
5. In the list view, click **GROUPS**.
6. In the details pane, view the list of security groups. The list of users should mirror the security groups in AD DS.
7. In the details pane, double-click one of the security groups.
8. The list of security group members should mirror the group membership for the corresponding security group in AD DS.
9. Close the browser.

Now that you have verified Azure AD Connect synchronization, you’re ready to assign user licenses for Azure AD Premium.

### Summary

In this section, you selected your synchronization model, deployed Azure AD Connect, and verified that Azure AD is synchronizing properly.

## Bulk-import user and group accounts into AD DS

You can bulk-import user and group accounts into your on-premises AD DS domain. Bulk-importing accounts helps reduce the time and effort needed to create users compared to creating the accounts manually in the Office 365 Admin portal. First, you select the appropriate method for bulk-importing user accounts into AD DS. Next, you create the .csv file that contains the user accounts. Finally, you use the selected method to import the .csv file into AD DS.

**Note**&nbsp;&nbsp;If your institution doesn’t have an on-premises AD DS domain, you can skip this section.

### Select the bulk import method

Several methods are available to bulk-import user accounts into AD DS domains. Table 5 lists the methods that the Windows Server operating system supports natively. In addition, you can use partner solutions to bulk-import user and group accounts into AD DS.

*Table 5. AD DS bulk-import account methods*

|Method | Description and reason to select this method |
|-------| ---------------------------------------------|
|Ldifde.exe |This command-line tool allows you to import and export objects (such as user accounts) from AD DS. Select this method if you aren’t comfortable with Microsoft Visual Basic Scripting Edition (VBScript), Windows PowerShell, or other scripting languages. For more information about using Ldifde.exe, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://technet.microsoft.com/library/bb727091.aspx), [LDIFDE—Export/Import data from Active Directory—LDIFDE commands](https://support.microsoft.com/kb/555636), [Import or Export Directory Objects Using Ldifde](https://technet.microsoft.com/library/cc816781.aspx), and [LDIFDE](https://technet.microsoft.com/library/cc755456.aspx).|
|VBScript | This scripting language uses the Active Directory Services Interfaces (ADSI) Component Object Model interface to manage AD DS objects, including user and group objects. Select this method if you’re comfortable with VBScript. For more information about using VBScript and ADSI, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://technet.microsoft.com/library/bb727091.aspx) and [ADSI Scriptomatic](https://technet.microsoft.com/scriptcenter/dd939958.aspx).|
|Windows PowerShell| This scripting language natively supports cmdlets to manage AD DS objects, including user and group objects. Select this method if you’re comfortable with Window PowerShell scripting. For more information about using Windows PowerShell, see [Import Bulk Users to Active Directory](https://blogs.technet.microsoft.com/bettertogether/2011/01/09/import-bulk-users-to-active-directory/) and [PowerShell: Bulk create AD Users from CSV file](https://social.technet.microsoft.com/wiki/contents/articles/24541.powershell-bulk-create-ad-users-from-csv-file.aspx).|
<p>
### Create a source file that contains the user and group accounts

After you have selected your user and group account bulk import method, you’re ready to create the source file that contains the user and group account. You’ll use the source file as the input to the import process. The source file format depends on the method you selected. Table 6 lists the source file format for the bulk import methods.

*Table 6. Source file format for each bulk import method*

| Method | Source file format |
|--------| -------------------|
|Ldifde.exe|Ldifde.exe requires a specific format for the source file. Use Ldifde.exe to export existing user and group accounts so that you can see the format. For examples of the format that Ldifde.exe requires, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://technet.microsoft.com/library/bb727091.aspx), [LDIFDE—Export/Import data from Active Directory—LDIFDE commands](https://support.microsoft.com/kb/555636), [Import or Export Directory Objects Using Ldifde](https://technet.microsoft.com/library/cc816781.aspx), and [LDIFDE](https://technet.microsoft.com/library/cc755456.aspx).|
|VBScript | VBScript can use any .csv file format to create a source file for the bulk-import process. To create the .csv file, use software such as Excel. For examples of how to format your source file in comma-separated values (CSV) format, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://technet.microsoft.com/library/bb727091.aspx).|
| Windows PowerShell| Windows PowerShell can use any .csv file format you want to create as a source file for the bulk-import process. To create the .csv file, use software such as Excel. For examples of how to format your source file in CSV format, see [Import Bulk Users to Active Directory](https://blogs.technet.microsoft.com/bettertogether/2011/01/09/import-bulk-users-to-active-directory/) and [PowerShell: Bulk create AD Users from CSV file](https://social.technet.microsoft.com/wiki/contents/articles/24541.powershell-bulk-create-ad-users-from-csv-file.aspx).|
<p>
### Import the user accounts into AD DS

With the bulk-import source file finished, you’re ready to import the user and group accounts into AD DS. The steps for importing the file are slightly different for each method.

**Note**&nbsp;&nbsp;Bulk-import your group accounts first, and then import your user accounts. Importing in this order allows you to specify group membership when you import your user accounts. 

For more information about how to import user accounts into AD DS by using:

- Ldifde.exe, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://technet.microsoft.com/library/bb727091.aspx), [LDIFDE—Export/Import data from Active Directory—LDIFDE commands](https://support.microsoft.com/kb/555636), [Import or Export Directory Objects Using Ldifde](https://technet.microsoft.com/library/cc816781.aspx), and [LDIFDE](https://technet.microsoft.com/library/cc755456.aspx).
- VBScript, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://technet.microsoft.com/library/bb727091.aspx).
- Windows PowerShell, see [Import Bulk Users to Active Directory](https://blogs.technet.microsoft.com/bettertogether/2011/01/09/import-bulk-users-to-active-directory/) and [PowerShell: Bulk create AD Users from CSV file](https://social.technet.microsoft.com/wiki/contents/articles/24541.powershell-bulk-create-ad-users-from-csv-file.aspx).

### Summary

In this section, you selected the bulk-import method, created the source file that contains the user and group accounts, and imported the user and group accounts in to AD DS. If you have Azure AD Connect, it automatically synchronizes the new AD DS user and group accounts to Azure AD. Now, you’re ready to assign user licenses for Azure AD Premium in the [Assign user licenses for Azure AD Premium](#assign-user-licenses-for-azure-ad-premium) section later in this guide.

## Bulk-import user accounts into Office 365

You can bulk-import user and group accounts directly into Office 365, reducing the time and effort required to create users. First, you bulk-import the user accounts into Office 365. Then, you create the security groups for your institution. Finally, you create the email distribution groups your institution requires.

### Create user accounts in Office 365

Now that you have created your new Office 365 Education subscription, you need to create user accounts. You can add user accounts for the teachers, other faculty, and students who will use the classroom.

You can use the Office 365 admin center to add individual Office 365 accounts manually—a reasonable process when you’re adding only a few users. If you have many users, however, you can automate the process by creating a list of those users, and then use that list to create user accounts (that is, bulk-add users).

The bulk-add process assigns the same Office 365 Education license plan to all users on the list. Therefore, you must create a separate list for each license plan you recorded in Table 2. Depending on the number of faculty members who need to use the classroom, you may want to add the faculty Office 365 accounts manually; however, use the bulk-add process to add student accounts.

For more information about how to bulk-add users to Office 365, see [Add several users at the same time to Office 365](https://support.office.com/en-us/article/Add-several-users-at-the-same-time-to-Office-365-Admin-Help-1f5767ed-e717-4f24-969c-6ea9d412ca88?ui=en-US&rs=en-US&ad=US).

**Note**&nbsp;&nbsp;If you encountered errors during bulk add, resolve them before you continue the bulk-add process. You can view the log file to see which users caused the errors, and then modify the .csv file to correct the problems. Click **Back** to retry the verification process.

The email accounts are assigned temporary passwords upon creation. You must communicate these temporary passwords to your users before they can sign in to Office 365.

### Create Office 365 security groups

Assign SharePoint Online resource permissions to Office 365 security groups, not individual user accounts. For example, create one security group for faculty members and another for students. Then, you can assign unique SharePoint Online resource permissions to faculty members and a different set of permissions to students. Add or remove users from the security groups to grant or revoke access to SharePoint Online resources.

**Note**&nbsp;&nbsp;If your institution has AD DS, don’t create security accounts in Office 365. Instead, create the security groups in AD DS, and then use Azure AD integration to synchronize the security groups with your Office 365 tenant.

For information about creating security groups, see [Create and manage Office 365 groups in Admin Center Preview](https://support.office.com/en-us/article/Create-and-manage-Office-365-groups-in-Admin-Center-Preview-93df5bd4-74c4-45e8-9625-56db92865a6e?ui=en-US&rs=en-US&ad=US).

You can add and remove users from security groups at any time.

**Note**&nbsp;&nbsp;Office 365 evaluates group membership when users sign in. If you change group membership for a user, that user may need to sign out, and then sign in again for the change to take effect.

### Create email distribution groups

Microsoft Exchange Online uses an email distribution group as a single email recipient for multiple users. For example, you could create an email distribution group that contains all students. Then, you could send a message to the email distribution group instead of individually addressing the message to each student.

You can create email distribution groups based on job role (such as teachers, administration, or students) or specific interests (such as robotics, drama club, or soccer team). You can create any number of distribution groups, and users can be members of more than one group.

**Note**&nbsp;&nbsp;Office 365 can take some time to complete the Exchange Online creation process. You will have to wait until Office 365 completes the Exchange Online creation process before you can perform the following steps. 

For information about how to create security groups, see [Create and manage Office 365 groups in Admin Center Preview](https://support.office.com/en-us/article/Create-and-manage-Office-365-groups-in-Admin-Center-Preview-93df5bd4-74c4-45e8-9625-56db92865a6e?ui=en-US&rs=en-US&ad=US).

### Summary

Now, you have bulk-imported the user accounts into Office 365. First, you selected the bulk-import method. Next, you created the Office 365 security groups in Office 365. Finally, you created the Office 365 email distribution groups. Now, you’re ready to assign user licenses for Azure AD Premium.

## Assign user licenses for Azure AD Premium

Azure AD is available in Free, Basic, and Premium editions. Azure AD Free, which is included in Office 365 Education, has fewer features than Azure AD Basic, which in turn has fewer features than Azure AD Premium. Educational institutions can obtain Azure AD Basic licenses at no cost and Azure AD Premium licenses at a reduced cost.

You can assign Azure AD Premium licenses to the users who need the features this edition offers. For example, you may want the users who have access to confidential student information to use MFA. In this example, you could assign Azure AD Premium only to those users.

For more information about:

- Azure AD editions, see [Azure Active Directory editions](https://azure.microsoft.com/documentation/articles/active-directory-editions/).
- How to assign user licenses for Azure AD Premium, see [How to assign EMS/Azure AD Premium licenses to user accounts](https://channel9.msdn.com/Series/Azure-Active-Directory-Videos-Demos/How-to-assign-Azure-AD-Premium-Licenses-to-user-accounts).

## Create and configure a Microsoft Store for Business portal

Microsoft Store for Business allows you to create your own private portal to manage Microsoft Store apps in your institution. With Microsoft Store for Business, you can do the following:

- Find and acquire Microsoft Store apps.
- Manage apps, app licenses, and updates.
- Distribute apps to your users. 

For more information about Microsoft Store for Business, see [Microsoft Store for Business overview](https://technet.microsoft.com/itpro/windows/whats-new/windows-store-for-business-overview).

The following section shows you how to create a Microsoft Store for Business portal and configure it for your school.

### Create and configure your Microsoft Store for Business portal

To create and configure your Microsoft Store for Business portal, simply use the administrative account for your Office 365 subscription to sign in to Microsoft Store for Business. Microsoft Store for Business automatically creates a portal for your institution and uses your account as its administrator.

#### To create and configure a Microsoft Store for Business portal

1. In Microsoft Edge or Internet Explorer, type `https://microsoft.com/business-store` in the address bar.
2. On the **Microsoft Store for Business** page, click **Sign in with an organizational account**.<p>**Note**&nbsp;&nbsp;If your institution has AD DS, then don’t create security accounts in Office 365. Instead, create the security groups in AD DS, and then use Azure AD integration to synchronize the security groups with your Office 365 tenant.
3. On the Microsoft Store for Business sign-in page, use the administrative account for the Office 365 subscription you created in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) section to sign in.
4. On the **Microsoft Store for Business Services Agreement** page, review the agreement, select the **I accept this agreement and certify that I have the authority to bind my organization to its terms** check box, and then click **Accept**
5. In the **Welcome to the Microsoft Store for Business** dialog box, click **OK**.

After you create the Microsoft Store for Business portal, configure it by using the commands in the settings menu listed in Table 7. Depending on your institution, you may (or may not) need to change these settings to further customize your portal. 

*Table 7. Menu selections to configure Microsoft Store for Business settings*

| Menu selection        | What you can do in this menu |
|---------------| -------------------|
|Account information|Displays information about your Microsoft Store for Business account (no settings can be changed). You make changes to this information in Office 365 or the Azure Portal. For more information, see [Update Microsoft Store for Business account settings](https://technet.microsoft.com/itpro/windows/manage/update-windows-store-for-business-account-settings).|
|Device Guard signing|Allows you to upload and sign Device Guard catalog and policy files. For more information about Device Guard, see [Device Guard deployment guide](https://technet.microsoft.com/itpro/windows/keep-secure/device-guard-deployment-guide).|
|LOB publishers| Allows you to add line-of-business (LOB) publishers that can then publish apps to your private store. LOB publishers are usually internal developers or software vendors that are working with your institution. For more information, see [Working with line-of-business apps](https://technet.microsoft.com/itpro/windows/manage/working-with-line-of-business-apps).|
|Management tools| Allows you to add tools that you can use to distribute (deploy) apps in your private store. For more information, see [Distribute apps with a management tool](https://technet.microsoft.com/itpro/windows/manage/distribute-apps-with-management-tool).|
|Offline licensing|Allows you to show (or not show) offline licensed apps to people shopping in your private store. For more information, see [Licensing model: online and offline licenses](https://technet.microsoft.com/itpro/windows/manage/apps-in-windows-store-for-business#licensing-model).|
|Permissions|Allows you to grant other users in your organization the ability to buy, manage, and administer your Microsoft Store for Business portal. You can also remove permissions you have previously granted. For more information, see [Roles and permissions in Microsoft Store for Business](https://technet.microsoft.com/itpro/windows/manage/roles-and-permissions-windows-store-for-business).|
|Private store|Allows you to change the organization name used in your Microsoft Store for Business portal. When you create your portal, the private store uses the organization name that you used to create your Office 365 subscription. For more information, see [Distribute apps using your private store](https://technet.microsoft.com/itpro/windows/manage/distribute-apps-from-your-private-store).|
<p>
### Find, acquire, and distribute apps in the portal

Now that you have created your Microsoft Store for Business portal, you’re ready to find, acquire, and distribute apps that you will add to your portal. You do this by using the Inventory page in Microsoft Store for Business.

**Note**&nbsp;&nbsp;Your educational institution can now use a credit card to pay for apps in Microsoft Store for Business.

You can deploy apps to individual users or make apps available to users through your private store. Deploying apps to individual users restricts the app to those specified users. Making apps available through your private store allows all your users.

For more information about how to find, acquire, and distribute apps in the portal, see [App inventory management for Microsoft Store for Business](https://technet.microsoft.com/itpro/windows/manage/app-inventory-managemement-windows-store-for-business).

### Summary

At the end of this section, you should have a properly configured Microsoft Store for Business portal. You have also found and acquired your apps from Microsoft Store. Finally, you should have deployed all your Microsoft Store apps to your users. Now, you’re ready to deploy Microsoft Store apps to your users.

## Plan for deployment

You will use the LTI deployment process in MDT to deploy Windows 10 to devices or to upgrade devices to Windows 10. Prior to preparing for deployment, you must make some deployment planning decisions, including selecting the operating systems you will use, the approach you will use to create your Windows 10 images, and the method you will use to initiate the LTI deployment process.

### Select the operating systems

Later in the process, you will import the versions of Windows 10 you want to deploy. You can deploy the operating system to new devices, refresh existing devices, or upgrade existing devices. In the case of:

- New devices or refreshing existing devices, you will complete replace the existing operating system on a device with Windows 10.
- Upgrading existing devices, you will upgrade the existing operating system (the Windows 8.1 or Windows 7 operating system) to Windows 10.

Depending on your school’s requirements, you may need any combination of the following Windows 10 editions:

- **Windows 10 Home**. Use this operating system to upgrade existing eligible institution-owned and personal devices that are running Windows 8.1 Home or Windows 7 Home to Windows 10 Home.
- **Windows 10 Pro**. Use this operating system to:
 - Upgrade existing eligible institution-owned and personal devices running Windows 8.1 Pro or Windows 7 Professional to Windows 10 Pro.
 - Deploy new instances of Windows 10 Pro to devices so that new devices have a known configuration.
- **Windows 10 Education**. Use this operating system to:
 - Upgrade institution-owned devices to Windows 10 Education.
 - Deploy new instances of Windows 10 Education so that new devices have a known configuration.
- **Windows 10 Pro Education**. Use this operating system to upgrade existing eligible institution-owned devices running Windows 10 Pro Education, version 1903 or later, to Windows 10 Education using [subscription activation](https://docs.microsoft.com/windows/deployment/windows-10-subscription-activation).

**Note**&nbsp;&nbsp;Although you can use Windows 10 Home on institution-owned devices, Microsoft recommends that you use Windows 10 Pro or Windows 10 Education, instead. Windows 10 Pro and Windows 10 Education provide support for MDM, policy-based management, and Microsoft Store for Business. These features are not available in Windows 10 Home.

One other consideration is the mix of processor architectures you will support. If you can, support only 64-bit versions of Windows 10. If you have devices that can run only 32 bit versions of Windows 10, you will need to import both 64-bit and 32-bit versions of the Windows 10 editions listed above.

**Note**&nbsp;&nbsp;On devices that have minimal system resources (such as devices with only 2 GB of memory or 32 GB of storage), use 32-bit versions of Windows 10 because 64-bit versions of Windows 10 place more stress on device system resources.

Finally, as a best practice, minimize the number of operating systems that you deploy and manage. If possible, standardize institution-owned devices on one Windows 10 edition (such as a 64-bit version of Windows 10 Education or Windows 10 Pro). Of course, you cannot standardize personal devices on a specific operating system version or processor architecture.

### Select an image approach

A key operating system image decision is whether to use a “thin” or “thick” image. *Thin images* contain only the operating system, and MDT installs the necessary device drivers and apps after the operating system has been installed. *Thick images* contain the operating system, “core” apps (such as Office), and device drivers. With thick images, MDT installs any device drivers and apps not included in the thick image after the operating system has been installed.

The advantage to a thin image is that the final deployment configuration is dynamic, and you can easily change the configuration without having to capture another image. The disadvantage of a thin image is that it takes longer to complete the deployment.

The advantage of a thick image is that the deployment takes less time than it would for a thin image. The disadvantage of a thick image is that you need to capture a new image each time you want to make a change to the operating system, apps, or other software in the image.

### Select a method to initiate deployment

The MDT deployment process is highly automated, requiring minimal information to deploy or upgrade Windows 10, but you must manually initiate the MDT deployment process. To do so, use the method listed in Table 8 that best meets the needs of your institution.

*Table 8. Methods to initiate MDT deployment*

<table>
<colgroup>
<col width="15%" />
<col width="" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Description and reason to select this method</th>
</tr>
</thead>
<tbody>

<tr>
<td valign="top">Windows Deployment Services</td>
<td>This method:<br/><br/>
<ul>
<li>Uses diskless booting to initiate MDT deployment.</li>
<li>Works only with devices that support PXE boot.</li>
<li>Deploys Windows 10 over the network, which consumes more network bandwidth than deployment from local media.</li>
<li>Deploys images more slowly than when using local media.</li>
<li>Requires that you deploy a Windows Deployment Services server.</li>
</ul>

Select this method when you want to deploy Windows over-the-network and perform diskless booting. The advantage of this method is that the diskless media are generic and typically don’t require updates after you create them (the Deployment Wizard accesses the centrally located deployment share over the network). The disadvantage of this method is that over-the-network deployments are slower than deployments from local media, and you must deploy a Windows Deployment Services server.</td>
</tr>

<tr>
<td valign="top">Bootable media</td>
<td>This method:<br/><br/>
<ul>
<li>Initiates MDT deployment by booting from local media, including from USB drives, DVD-ROM, or CD-ROM.</li>
<li>Deploys Windows 10 over the network, which consumes more network bandwidth than deployment from local media.</li>
<li>Deploys images more slowly than when using local media.</li>
<li>Requires no additional infrastructure.</li>
</ul>
 
Select this method when you want to deploy Windows over-the-network and are willing to boot the target device from local media. The advantage of this method is that the media are generic and typically don’t require updates after you create them (the Deployment Wizard accesses the centrally located deployment share over the network). The disadvantage of this method is that over-the-network deployments are slower than deployment from local media.</td>
</tr>

<tr>
<td valign="top">MDT deployment media</td>
<td>This method:<br/><br/>
<ul>
<li>Initiates MDT deployment by booting from a local USB hard disk.</li>
<li>Deploys Windows 10 from local media, which consumes less network bandwidth than over-the-network methods.</li>
<li>Deploys images more quickly than network-based methods do.</li>
<li>Requires a USB hard disk because of the deployment share’s storage requirements (up to 100 GB).</li>
</ul>

Select this method when you want to perform local deployments and are willing to boot the target device from a local USB hard disk. The advantage of this method is that local deployments are faster than over-the-network deployments. The disadvantage of this method is that each time you change the deployment share, you must regenerate the MDT deployment media and update the USB hard disk.</td>
</tr>
</tbody>
</table>

### Summary

At the end of this section, you should know the Windows 10 editions and processor architecture that you want to deploy (and will import later in the process). You also determined whether you want to use thin or thick images. Finally, you selected the method for initiating your LTI deployment. Now, you can prepare for Windows 10 deployment.

## Prepare for deployment

To deploy Windows 10 to devices, using the LTI deployment method in MDT. In this section, you prepare your MDT environment and Windows Deployment Services for Windows 10 deployment.

### Configure the MDT deployment share

The first step in preparation for Windows 10 deployment is to configure—that is, *populate*—the MDT deployment share. Table 9 lists the MDT deployment share configuration tasks that you must perform. Perform the tasks in the order represented in Table 9.

*Table 9. Tasks to configure the MDT deployment share*

<table>
<colgroup>
<col width="" />
<col width="" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td valign="top">1. Import operating systems</td>
<td>Import the operating systems that you selected in the [Select operating systems](#select-the-operating-systems) section into the deployment share. For more information about how to import operating systems, see [Import an Operating System into the Deployment Workbench](https://technet.microsoft.com/library/dn759415.aspx#ImportanOperatingSystemintotheDeploymentWorkbench).</td>
</tr>

<tr>
<td valign="top">2. Import device drives</td>
<td>Device drivers allow Windows 10 to know a device’s hardware resources and connected hardware accessories. Without the proper device drivers, certain features may be unavailable. For example, without the proper audio driver, a device cannot play sounds; without the proper camera driver, the device cannot take photos or use video chat.<br/><br/>

Import device drivers for each device in your institution. For more information about how to import device drivers, see [Import Device Drivers into the Deployment Workbench](https://technet.microsoft.com/library/dn759415.aspx#ImportDeviceDriversintotheDeploymentWorkbench).

</td>
</tr>

<tr>
<td valign="top">3. Create MDT applications for Microsoft Store apps</td>
<td>Create an MDT application for each Microsoft Store app you want to deploy. You can deploy Microsoft Store apps by using *sideloading*, which allows you to use the **Add-AppxPackage** Windows PowerShell cmdlet to deploy the .appx files associated with the app (called *provisioned apps*). Use this method to deploy up to 24 apps to Windows 10.<br/><br/>

Prior to sideloading the .appx files, obtain the Microsoft Store .appx files that you will use to deploy (sideload) the apps in your provisioning package. For apps in Microsoft Store, you will need to obtain the .appx files from the app software vendor directly. If you are unable to obtain the .appx files from the app software vendor, then you or the students will need to install the apps on the student devices directly from Microsoft Store or Microsoft Store for Business.<br/><br/>

If you have Intune, you can deploy Microsoft Store apps after you deploy Windows 10, as described in the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section. This method provides granular deployment of Microsoft Store apps, and you can use it for ongoing management of Microsoft Store apps. This is the preferred method of deploying and managing Microsoft Store apps.<br/><br/>

In addition, you must prepare your environment for sideloading (deploying) Microsoft Store apps. For more information about how to:<br/><br/>
<ul>
<li>Prepare your environment for sideloading, see [Sideload LOB apps in Windows 10](https://technet.microsoft.com/itpro/windows/deploy/sideload-apps-in-windows-10).</li>
<li>Create an MDT application, see [Create a New Application in the Deployment Workbench](https://technet.microsoft.com/library/dn759415.aspx#CreateaNewApplicationintheDeploymentWorkbench).</li>
</ul>


</td>
</tr>

<tr>
<td valign="top">4. Create MDT applications for Windows desktop apps
</td>
<td>You need to create an MDT application for each Windows desktop app you want to deploy. You can obtain the Windows desktop apps from any source, but ensure that you have sufficient licenses for them.<br/><br/>

To help reduce the effort needed to deploy Microsoft Office 2016 desktop apps, use the Office Deployment Tool, as described in [Deploy Click-to-Run for Office 365 products by using the Office Deployment Tool](https://technet.microsoft.com/library/jj219423.aspx?f=255&MSPPError=-2147217396).<br/><br/>

If you have Intune, you can deploy Windows desktop apps after you deploy Windows 10, as described in the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section. This method provides granular deployment of Windows desktop apps, and you can use it for ongoing management of the apps. This is the preferred method for deploying and managing Windows desktop apps.<br/><br/>

**Note**&nbsp;&nbsp;You can also deploy Windows desktop apps after you deploy Windows 10, as described in the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section.<br/><br/>

For more information about how to create an MDT application for Window desktop apps, see [Create a New Application in the Deployment Workbench](https://technet.microsoft.com/library/dn759415.aspx#CreateaNewApplicationintheDeploymentWorkbench).

</td>
</tr>

<tr>
<td valign="top">5.  Create task sequences.
</td>
<td>You must create a separate task sequences for each Windows 10 edition, processor architecture, operating system upgrade process, and new operating system deployment process. Minimally, create a task sequence for each Windows 10 operating system you imported in Step 1—for example, (1) if you want to deploy Windows 10 Education to new devices or refresh existing devices with a new deployment of Windows 10 Education; (2) if you want to upgrade existing devices running Windows 8.1 or Windows 7 to Windows 10 Education; or (3) if you want to run deployments and upgrades for both 32 bit and 64 bit versions of Windows 10. To do so, you must create task sequences that will:
<br/><br/>
<ul><li>Deploy Windows 10 Education 64-bit to devices.</li>
<li>Deploy Windows 10 Education 32-bit to devices.</li>
<li>Upgrade existing devices to Windows 10 Education 64-bit.</li>
<li>Upgrade existing devices to Windows 10 Education 32-bit.</li>
</ul>

Again, you will create the task sequences based on the operating systems that you imported in Step 1. For more information about how to create a task sequence, see [Create a New Task Sequence in the Deployment Workbench](https://technet.microsoft.com/library/dn759415.aspx#CreateaNewTaskSequenceintheDeploymentWorkbench).

</td>
</tr>

<tr>
<td valign="top">6.  Update the deployment share.
</td>
<td>Updating a deployment share generates the MDT boot images you use to initiate the Windows 10 deployment process. You can configure the process to create 32 bit and 64 bit versions of the .iso and .wim files you can use to create bootable media or in Windows Deployment Services.<br/><br/>

For more information about how to update a deployment share, see [Update a Deployment Share in the Deployment Workbench](https://technet.microsoft.com/library/dn759415.aspx#UpdateaDeploymentShareintheDeploymentWorkbench).</td>
</tr>
</tbody>
</table>

### Configure Window Deployment Services for MDT

You can use Windows Deployment Services in conjunction with MDT to automatically initiate boot images on target computers. These boot images can be Windows PE images (which you generated in Step 6 in Table 9) or custom images that can deploy operating systems directly to the target computers.

#### To configure Windows Deployment Services for MDT

1. Set up and configure Windows Deployment Services.<p>Windows Deployment Services is a server role available in all Windows Server editions. You can enable the Windows Deployment Services server role on a new server or on any server running Windows Server in your institution. For more information about how to perform this step, see the following resources:

  - [Windows Deployment Services overview](https://technet.microsoft.com/library/hh831764.aspx)
  - The Windows Deployment Services Help file, included in Windows Deployment Services
  - [Windows Deployment Services Getting Started Guide for Windows Server 2012](https://technet.microsoft.com/library/jj648426.aspx)

2. Add LTI boot images (Windows PE images) to Windows Deployment Services.<p>The LTI boot images (.wim files) that you will add to Windows Deployment Services are in the MDT deployment share. Locate the .wim files in the Boot subfolder in the deployment share. For more information about how to perform this step, see [Add LTI Boot Images to Windows Deployment Services](https://technet.microsoft.com/library/dn759415.aspx#AddLTIBootImagestoWindowsDeploymentServices).

### Summary

Now, Windows Deployment Services is ready to initiate the LTI deployment process in MDT. You have set up and configured Windows Deployment Services and added the LTI boot images, which you generated in the previous section, to Windows Deployment Services. Now, you’re ready to prepare to manage the devices in your institution.

## Prepare for device management

Before you deploy Windows 10 in your institution, you must prepare for device management. You will deploy Windows 10 in a configuration that complies with your requirements, but you want to help ensure that your deployments remain compliant.

### Select the management method

If you have only one device to configure, manually configuring that one device is tedious but possible. When you have multiple classrooms of devices to configure, however, manually configuring each device becomes overwhelming. In addition, manually keeping an identical configuration on each device is virtually impossible as the number of devices in the school increases.

For a school, there are many ways to manage devices. Table 10 lists the methods that this guide describes and recommends. Use the information in Table 10 to determine which combination of management methods is right for your institution.

*Table 10. School management methods*

<table>
<colgroup>
<col width="" />
<col width="" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>

<tr>
<td valign="top">Group Policy</td>
<td>
Group Policy is an integral part of AD DS and allows you to specify configuration settings for Windows 10 and previous versions of Windows. Select this method when you:
<ul>
<li>Want to manage institution-owned devices that are domain joined (personally owned devices are typically not domain joined).</li>
<li>Want more granular control of device and user settings.</li>
<li>Have an existing AD DS infrastructure.</li>
<li>Typically manage on-premises devices.</li>
<li>Can manage a required setting only by using Group Policy.</li>
</ul>

The advantages of this method include:
<ul>
<li>No cost beyond the AD DS infrastructure.</li>
<li>A larger number of settings (compared to Intune).</li>
</ul>
The disadvantages of this method are:
<ul>
<li>Can only manage domain-joined (institution-owned devices).</li>
<li>Requires an AD DS infrastructure (if the institution does not have AD DS already).</li>
<li>Typically manages on-premises devices (unless devices connect by using a VPN or DirectAccess).</li>
</ul>
</td>
</tr>

<tr>
<td valign="top">Intune</td>
<td>Intune is a cloud-based management system that allows you to specify configuration settings for Windows 10, previous versions of Windows, and other operating systems (such as iOS or Android). Intune is a subscription-based cloud service that integrates with Office 365 and Azure AD.
Select this method when you:
<ul>
<li>Want to manage institution-owned and personal devices (does not require that the device be domain joined).</li>
<li>Don’t require the level of granular control over device and user settings (compared to Group Policy).</li>
<li>Don’t have an existing AD DS infrastructure.</li>
<li>Need to manage devices regardless of where they are (on or off premises).</li>
<li>Can manage a required setting only by using Intune.</li>
</ul>

The advantages of this method are:
<ul>
<li>You can manage institution-owned and personal devices.</li>
<li>It doesn’t require that devices be domain joined.</li>
<li>It doesn’t require any on-premises infrastructure.</li>
<li>It can manage devices regardless of their location (on or off premises).</li>

</ul>
The disadvantages of this method are:
<ul>
<li>Carries an additional cost for subscription.</li>
<li>Doesn’t have a granular level control over device and user settings (compared to Group Policy).</li>
</ul>

</td>
</tr>

</tbody>
</table><p>

### Select Microsoft-recommended settings

Microsoft has several recommended settings for educational institutions. Table 11 lists them, provides a brief description of why you need to configure them, and recommends methods for configuring the settings. Review the settings in Table 11 and evaluate their relevancy to your institution. Use the information to help you determine whether you need to configure the setting and which method you will use to do so. At the end, you will have a list of settings that you want to apply to the Windows 10 devices and know which management method you will use to configure the settings.

*Table 11. Recommended settings for educational institutions*

<table>
<colgroup>
<col width="" />
<col width="" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Recommendation</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>


<tr>
<td valign="top">Use of Microsoft accounts</td>
<td>You want faculty and students to use only Azure AD accounts for institution-owned devices. For these devices, do not use Microsoft accounts or associate a Microsoft account with the Azure AD accounts.<br/><br/>
**Note**&nbsp;&nbsp;Personal devices typically use Microsoft accounts. Faculty and students can associate their Microsoft account with their Azure AD account on these devices.<br/><br/>
**Group Policy.** Configure the [Accounts: Block Microsoft accounts](https://technet.microsoft.com/library/jj966262.aspx?f=255&MSPPError=-2147217396) Group Policy setting to use the Users can’t add Microsoft accounts setting option.<br/><br/>
**Intune.** Enable or disable the camera by using the **Allow Microsoft account**, **Allow adding non-Microsoft accounts manually**, and **Allow settings synchronization for Microsoft accounts** policy settings under the **Accounts and Synchronization** section of a **Windows 10 General Configuration** policy.
</td>
</tr>

<tr>
<td valign="top">Restrict local administrator accounts on the devices</td>
<td>Ensure that only authorized users are local administrators on institution-owned devices. Typically, you don’t want students to be administrators on instruction-owned devices. Explicitly specify the users who will be local administrators on a group of devices.<br/><br/>
**Group Policy**. Create a **Local Group** Group Policy preference to limit the local administrators group membership. Select the **Delete all member users** and **Delete all member groups** check boxes to remove any existing members. For more information about how to configure Local Group preferences, see [Configure a Local Group Item](https://technet.microsoft.com/library/cc732525.aspx).<br/><br/>
**Intune**. Not available.
</td>
</tr>

<tr>
<td valign="top">Restrict the local administrator accounts on the devices</td>
<td>Ensure that only authorized users are local administrators on institution-owned devices. Typically, you don’t want students to be administrators on instruction-owned devices. Explicitly specify the users who will be local administrators on a group of devices.<br/><br/>
**Group Policy**. Create a **Local Group** Group Policy preference to limit the local administrators group membership. Select the **Delete all member users** and **Delete all member groups** check boxes to remove any existing members. For more information about how to configure Local Group preferences, see [Configure a Local Group Item](https://technet.microsoft.com/library/cc732525.aspx).<br/><br/>
**Intune**. Not available.
</td>
</tr>

<tr>
<td valign="top">Manage the built-in administrator account created during device deployment</td>
<td>When you use MDT to deploy Windows 10, the MDT deployment process automatically creates a local Administrator account with the password you specified. As a security best practice, rename the built-in Administrator account and optionally disable it.<br/><br/>
**Group Policy**. Rename the built-in Administrator account by using the **Accounts: Rename administrator account** Group Policy setting. For more information about how to rename the built-in Administrator account, see [To rename the Administrator account using the Group Policy Management Console](https://technet.microsoft.com/library/cc747484.aspx). You will specify the new name for the Administrator account. You can disable the built-in Administrator account by using the **Accounts: Administrator account status** Group Policy setting. For more information about how to disable the built-in Administrator account, see [Accounts: Administrator account status](https://technet.microsoft.com/library/jj852165.aspx).<br/><br/>
**Intune**. Not available.
</td>
</tr>

<tr>
<td valign="top">Control Microsoft Store access</td>
<td>You can control access to Microsoft Store and whether existing Microsoft Store apps receive updates. You can only disable the Microsoft Store app in Windows 10 Education and Windows 10 Enterprise.<br/><br/>
**Group Policy**. You can disable the Microsoft Store app by using the **Turn off the Store Application** Group Policy setting. You can prevent Microsoft Store apps from receiving updates by using the **Turn off Automatic Download and Install of updates** Group Policy setting. For more information about configuring these settings, see [Can I use Group Policy to control the Microsoft Store in my enterprise environment?](https://technet.microsoft.com/library/hh832040.aspx#BKMK_UseGP).<br/><br/>
**Intune**. You can enable or disable the camera by using the **Allow application store** policy setting in the **Apps** section of a **Windows 10 General Configuration** policy.
</td>
</tr>

<tr>
<td valign="top">Use of Remote Desktop connections to devices</td>
<td>Remote Desktop connections could allow unauthorized access to the device. Depending on your institution’s policies, you may want to disable Remote Desktop connections on your devices.<br/><br/>
**Group Policy**. You can enable or disable Remote Desktop connections to devices by using the **Allow Users to connect remotely using Remote Desktop setting** in Computer Configuration\Policies\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections.<br/><br/>
**Intune**. Not available.
</td>
</tr>

<tr>
<td valign="top">Use of camera</td>
<td>A device’s camera can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the camera on your devices.<br/><br/>
**Group Policy**. Not available.<br/><br/>
**Intune**. You can enable or disable the camera by using the **Allow camera** policy setting in the **Hardware** section of a **Windows 10 General Configuration** policy.
</td>
</tr>

<tr>
<td valign="top">Use of audio recording</td>
<td>Audio recording (by using the Sound Recorder app) can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the Sound Recorder app on your devices.<br/><br/>
**Group Policy**. You can disable the Sound Recorder app by using the **Do not allow Sound Recorder to run** Group Policy setting. You can disable other audio recording apps by using AppLocker policies. Create AppLocker policies by using the information in [Editing an AppLocker Policy](https://technet.microsoft.com/library/ee791894(v=ws.10).aspx) and [Create Your AppLocker Policies](https://technet.microsoft.com/library/ee791899.aspx).<br/><br/>
**Intune**. You can enable or disable the camera by using the **Allow voice recording** policy setting in the **Features** section of a **Windows 10 General Configuration** policy.
</td>
</tr>

<tr>
<td valign="top">Use of screen capture</td>
<td>Screen captures can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the ability to perform screen captures on your devices.<br/><br/>
**Group Policy**. Not available.<br/><br/>
**Intune**. You can enable or disable the camera by using the **Allow screen capture** policy setting in the **System** section of a **Windows 10 General Configuration** policy.
</td>
</tr>

<tr>
<td valign="top">Use of location services</td>
<td>Providing a device’s location can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the location service on your devices.<br/><br/>
**Group Policy**. You can enable or disable location services by using the **Turn off location** Group Policy setting in User Configuration\Windows Components\Location and Sensors.<br/><br/>
**Intune**. You can enable or disable the camera by using the **Allow geolocation** policy setting in the **Hardware** section of a **Windows 10 General Configuration** policy.
</td>
</tr>

<tr>
<td valign="top">Changing wallpaper</td>
<td>Displaying a custom wallpaper can be a source of disclosure or privacy issues in an education environment (if the wallpaper displays information about the user or the device). Depending on your institution’s policies, you may want to prevent users from changing the wallpaper on your devices.<br/><br/>
**Group Policy**. You can configure the wallpaper by using the **Desktop WallPaper** setting in User Configuration\Administrative Templates\Desktop\Desktop.<br/><br/>
**Intune**. Not available.
</td>
</tr>

</tbody>
</table><p>

### Configure settings by using Group Policy

Now, you’re ready to configure settings by using Group Policy. The steps in this section assume that you have an AD DS infrastructure. You will configure the Group Policy settings you select in the [Select Microsoft-recommended settings](#select-microsoft-recommended-settings) section.

For more information about Group Policy, see [Group Policy Planning and Deployment Guide](https://technet.microsoft.com/library/cc754948.aspx).

#### To configure Group Policy settings

1. Create a Group Policy object (GPO) that will contain the Group Policy settings by completing the steps in [Create a new Group Policy object](https://technet.microsoft.com/library/cc738830.aspx).
2. Configure the settings in the GPO by completing the steps in [Edit a Group Policy object](https://technet.microsoft.com/library/cc739902.aspx).
3. Link the GPO to the appropriate AD DS site, domain, or organizational unit by completing the steps in [Link a Group Policy object to a site, domain, or organizational unit](https://technet.microsoft.com/library/cc738954(v=ws.10).aspx).

### Configure settings by using Intune

Now, you’re ready to configure settings by using Intune. The steps in this section assume that you have an Office 365 subscription. You will configure the Intune settings that you selected in the [Select Microsoft-recommended settings](#select-microsoft-recommended-settings) section.

For more information about Intune, see [Documentation for Microsoft Intune](https://docs.microsoft.com/intune/).

#### To configure Intune settings

1. Add Intune to your Office 365 subscription by completing the steps in [Get started with a paid subscription to Microsoft Intune](https://docs.microsoft.com/intune/get-started/start-with-a-paid-subscription-to-microsoft-intune).
2. Enroll devices with Intune by completing the steps in [Get ready to enroll devices in Microsoft Intune](https://technet.microsoft.com/library/dn646962.aspx).
3. Configure the settings in Intune Windows 10 policies by completing the steps in [Manage settings and features on your devices with Microsoft Intune policies](https://technet.microsoft.com/library/dn646984.aspx).
4. Manage Windows 10 devices by completing the steps in [Manage Windows PCs with Microsoft Intune](https://technet.microsoft.com/library/dn646959.aspx). 

### Deploy apps by using Intune

You can use Intune to deploy Microsoft Store and Windows desktop apps. Intune provides improved control over which users receive specific apps. In addition, Intune allows you deploy apps to companion devices (such as Windows 10 Mobile, iOS, or Android devices) Finally, Intune helps you manage app security and features, such as mobile application management policies that let you manage apps on devices that are not enrolled in Intune or are managed by another solution.

For more information about how to configure Intune to manage your apps, see [Deploy and configure apps with Microsoft Intune](https://docs.microsoft.com/intune/).

### Summary

In this section, you prepared your institution for device management. You determined whether you want to use Group Policy or Intune to manage your devices. You identified the configuration settings that you want to use to manage your users and devices. Finally, you configured the Group Policy and Intune settings in Group Policy and Intune, respectively.

## Deploy Windows 10 to devices

You’re ready to deploy Windows 10 to faculty and student devices. You must complete the steps in this section for each student device in the classrooms as well as for any new student devices you add in the future. You can also perform these actions for any device that’s eligible for a Windows 10 upgrade. This section discusses deploying Windows 10 to new devices, refreshing Windows 10 on existing devices, and upgrading existing devices that are running eligible versions of Windows 8.1 or Windows to Windows 10. 

### Prepare for deployment

Prior to deployment of Windows 10, ensure that you complete the tasks listed in Table 12. Most of these tasks are already complete, but use this step to make sure.

*Table 12. Deployment preparation checklist*

|Task |      |
| ---| --- |
|   |The target devices have sufficient system resources to run Windows 10. |
|   | Identify the necessary devices drivers, and import them to the MDT deployment share.|
|   | Create an MDT application for each Microsoft Store and Windows desktop app.|
|   | Notify the students and faculty about the deployment.|
<p>
### Perform the deployment

Use the Deployment Wizard to deploy Windows 10. The LTI deployment process is almost fully automated: You provide only minimal information to the Deployment Wizard at the beginning of the process. After the wizard collects the necessary information, the remainder of the process is fully automated. 

**Note**&nbsp;&nbsp;To fully automate the LTI deployment process, complete the steps in the “Fully Automated LTI Deployment Scenario” section in the [Microsoft Deployment Toolkit Samples Guide](https://technet.microsoft.com/library/dn781089.aspx).

In most instances, deployments occur without incident. Only in rare occasions do deployments experience problems.

#### To deploy Windows 10

1. **Initiate the LTI deployment process**. Initiate the LTI deployment process booting over the network (PXE boot) or from local media. You selected the method for initiating the LTI deployment process in the [Select a method to initiate deployment](#select-a-method-to-initiate-deployment) section earlier in this guide.
2. **Complete the Deployment Wizard**. For more information about how to complete the Deployment Wizard, see the “Running the Deployment Wizard” topic in [Using the Microsoft Deployment Toolkit](https://technet.microsoft.com/library/dn759415.aspx#Running%20the%20Deployment%20Wizard).

### Set up printers

After you have deployed Windows 10, the devices are almost ready for use. First, you must set up the printers that each classroom will use. Typically, you connect the printers to the same network as the devices in the same classroom. If you don’t have printers in your classrooms, skip this section and proceed to the [Verify deployment](#verify-deployment) section.

**Note**&nbsp;&nbsp;If you’re performing an upgrade instead of a new deployment, the printers remain configured as they were in the previous version of Windows. As a result, you can skip this section and proceed to the [Verify deployment](#verify-deployment) section.

#### To set up printers

1. Review the printer manufacturer’s instructions for installing the printer drivers.
2. On the admin device, download the printer drivers.
3. Copy the printer drivers to a USB drive.
4. On a device, use the same account you used to set up Windows 10 in the [Perform the deployment](#perform-the-deployment) section to sign in to the device.
5. Insert the USB drive in the device.
6. Follow the printer manufacturer’s instructions to install the printer drivers from the USB drive.
7. Verify that the printer drivers were installed correctly by printing a test page.
8. Complete steps 1–8 for each printer.

### Verify deployment

As a final quality control step, verify the device configuration to ensure that all apps run. Microsoft recommends that you perform all the tasks that the user would perform. Specifically, verify the following:

- The device can connect to the Internet and view the appropriate web content in Microsoft Edge.
- Windows Update is active and current with software updates.
- Windows Defender is active and current with malware Security intelligence.
- The SmartScreen Filter is active.
- All Microsoft Store apps are properly installed and updated.
- All Windows desktop apps are properly installed and updated.
- Printers are properly configured.

When you have verified that the first device is properly configured, you can move to the next device and perform the same steps.

### Summary

You prepared the devices for deployment by verifying that they have adequate system resources and that the resources in the devices have corresponding Windows 10 device drivers. You performed device deployment over the network or by using local MDT media. Next, you configured the appropriate printers on the devices. Finally, you verified that the devices are properly configured and ready for use.

## Maintain Windows devices and Office 365

After the initial deployment, you will need to perform certain tasks to maintain the Windows 10 devices and your Office 365 Education subscription. You should perform these tasks on the following schedule:

- **Monthly.** These tasks help ensure that the devices are current with software updates and properly protected against viruses and malware.
- **New semester or academic year.** Perform these tasks prior to the start of a new curriculum—for example, at the start of a new academic year or semester. These tasks help ensure that the classroom environments are ready for the next group of students.
- **As required (ad hoc).** Perform these tasks as necessary in a classroom. For example, a new version of an app may be available, or a student may inadvertently corrupt a device so that you must restore it to the default configuration.

Table 13 lists the school and individual classroom maintenance tasks, the resources for performing the tasks, and the schedule (or frequency) on which you should perform the tasks.

*Table 13. School and individual classroom maintenance tasks, with resources and the schedule for performing them*

<table>
<colgroup>
<col width="40" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task and resources</th>
<th align="left">Monthly</th>
<th align="left">New semester or academic year</th>
<th align="left">As required</th>
</tr>
</thead>
<tbody>


<tr>
<td>Verify that Windows Update is active and current with operating system and software updates.<br/><br/>
For more information about completing this task when you have:
<ul>
<li>Intune, see [Keep Windows PCs up to date with software updates in Microsoft Intune](https://docs.microsoft.com/intune/deploy-use/keep-windows-pcs-up-to-date-with-software-updates-in-microsoft-intune).</li>
<li>Group Policy, see [Windows Update for Business](https://technet.microsoft.com/itpro/windows/plan/windows-update-for-business).</li>
<li>Windows Server Update Services (WSUS), see [Windows Server Update Services](https://msdn.microsoft.com/library/bb332157.aspx?f=255&MSPPError=-2147217396).</li>
<li>Neither Intune, Group Policy, or WSUS, see [Update Windows 10](https://windows.microsoft.com/en-id/windows-10/update-windows-10)</li>
</ul>
</td>
<td>X</td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Verify that Windows Defender is active and current with malware Security intelligence.<br/><br/>
For more information about completing this task, see [Turn Windows Defender on or off](https://windows.microsoft.com/en-us/windows-10/how-to-protect-your-windows-10-pc#v1h=tab01) and [Updating Windows Defender](https://windows.microsoft.com/en-us/windows-10/how-to-protect-your-windows-10-pc#v1h=tab03). </td>
<td>X</td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Verify that Windows Defender has run a scan in the past week and that no viruses or malware were found.<br/><br/>
For more information about completing this task, see [How do I find and remove a virus?](https://windows.microsoft.com/en-US/windows-8/how-find-remove-virus)
</td>
<td>X</td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Verify that you are using the appropriate Windows 10 servicing options for updates and upgrades (such as selecting whether you want to use Current Branch or Current Branch for Business).<br/><br/> 
For more information about Windows 10 servicing options for updates and upgrades, see [Windows 10 servicing options for updates and upgrades](https://technet.microsoft.com/itpro/windows/manage/introduction-to-windows-10-servicing).</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Refresh the operating system and apps on devices.<br/><br/>
For more information about completing this task, see the [Deploy Windows 10 to devices](#deploy-windows-10-to-devices) section.

</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Install any new Windows desktop apps or update any Windows desktop apps that are used in the curriculum.<br/><br/>
For more information, see the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section.

</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Install new or update existing Microsoft Store apps that are used in the curriculum.<br/><br/>
Microsoft Store apps are automatically updated from Microsoft Store. The menu bar in the Microsoft Store app shows whether any Microsoft Store app updates are available for download.<br/><br/>
You can also deploy Microsoft Store apps directly to devices by using Intune. For more information, see the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section.

</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Remove unnecessary user accounts (and corresponding licenses) from Office 365.<br/><br/>
For more information about how to:
<ul>
<li>Remove unnecessary user accounts, see [Delete or restore users](https://support.office.com/en-us/article/Delete-or-restore-users-d5155593-3bac-4d8d-9d8b-f4513a81479e?ui=en-US&rs=en-US&ad=US).</li>
<li>Unassign licenses, see [Assign or unassign licenses for Office 365 for business](https://support.office.com/en-us/article/Assign-or-unassign-licenses-for-Office-365-for-business-997596b5-4173-4627-b915-36abac6786dc?ui=en-US&rs=en-US&ad=US).</li>
</ul>

</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Add new accounts (and corresponding licenses) to Office 365.<br/><br/>
For more information about how to:
<ul>
<li>Add user accounts, see [Add users to Office 365 for business](https://support.office.com/en-us/article/Add-users-to-Office-365-for-business-435ccec3-09dd-4587-9ebd-2f3cad6bc2bc) and [Add users individually or in bulk to Office 365](https://www.youtube.com/watch?v=zDs3VltTJps).</li>
<li>Assign licenses, see [Assign or unassign licenses for Office 365 for business](https://support.office.com/en-us/article/Assign-or-unassign-licenses-for-Office-365-for-business-997596b5-4173-4627-b915-36abac6786dc?ui=en-US&rs=en-US&ad=US).</li>
</ul>
</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Create or modify security groups and manage group membership in Office 365.<br/><br/>
For more information about how to:
<ul>
<li>Create or modify security groups, see [View, create, and delete Groups in the Office 365 admin center](https://support.office.com/en-us/article/View-create-and-delete-groups-in-the-Office-365-admin-center-a6360120-2fc4-46af-b105-6a04dc5461c7).</li>
<li>Manage group membership, see [Manage Group membership in the Office 365 admin center](https://support.office.com/en-us/article/Manage-Group-membership-in-the-Office-365-admin-center-e186d224-a324-4afa-8300-0e4fc0c3000a).</li>
</ul>

</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Create or modify Exchange Online or Microsoft Exchange Server distribution lists in Office 365.<br/><br/>
For more information about how to create or modify Exchange Online or Exchange Server distribution lists in Office 365, see [Manage Distribution Groups](https://technet.microsoft.com/library/bb124513.aspx) and [Groups in Exchange Online and SharePoint Online](https://support.office.com/en-us/article/Create-edit-or-delete-a-security-group-55C96B32-E086-4C9E-948B-A018B44510CB#__groups_in_exchange).

</td>
<td></td>
<td>X</td>
<td>X</td>
</tr>

<tr>
<td>Install new student devices<br/><br/>
Follow the same steps described in the [Deploy Windows 10 to devices](#deploy-windows-10-to-devices) section.

</td>
<td></td>
<td></td>
<td>X</td>
</tr>

</tbody>
</table>
<p>
### Summary

Now, you have identified the tasks you need to perform monthly, at the end of an academic year or semester, and as required. Your school configuration should match the typical school configuration that you saw in the [Plan a typical school configuration](#plan-a-typical-school-configuration) section. By performing these maintenance tasks you help ensure that your school stays secure and is configured as you specified. 

##Related resources
<ul>
<li>[Try it out: Windows 10 deployment (for educational institutions)](https://go.microsoft.com/fwlink/p/?LinkId=623254)</li>
<li>[Try it out: Windows 10 in the classroom](https://go.microsoft.com/fwlink/p/?LinkId=623255)</li>
<li>[Chromebook migration guide](https://go.microsoft.com/fwlink/p/?LinkId=623249)</li>
</ul>

