---
title: Deploy Windows 10 in a school 
description: Learn how to integrate your school environment with Microsoft Office 365, Active Directory Domain Services (AD DS), and Microsoft Azure Active Directory (Azure AD). Deploy Windows 10 and apps to new devices or upgrade existing devices to Windows 10. Manage faculty, students, and devices by using Microsoft Intune and Group Policy.
ms.topic: how-to
ms.date: 08/10/2022
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Deploy Windows 10 in a school

This guide shows you how to deploy the Windows 10 operating system in a school environment. You learn how to deploy Windows 10 in classrooms; integrate the school environment with Microsoft Office 365, Active Directory Domain Services (AD DS), and Microsoft Azure Active Directory (Azure AD); and deploy Windows 10 and your apps to new devices or upgrade existing devices to Windows 10. This guide also describes how to use Microsoft Intune and Group Policy to manage devices. Finally, the guide discusses common, ongoing maintenance tasks that you'll perform after initial deployment and the automated tools and built-in features of the operating system.

## Prepare for school deployment

Proper preparation is essential for a successful school deployment. To avoid common mistakes, your first step is to plan a typical school configuration. As with building a house, you need a blueprint for what your school should look like when it’s finished. The second step in preparation is to learn how you'll configure your school. Just as a builder needs to have the right tools to build a house, you need the right set of tools to deploy your school.

### Plan a typical school configuration

As part of preparing for your school deployment, you need to plan your configuration—the focus of this guide. Figure 1 illustrates a typical finished school configuration that you can use as a model (the blueprint in our builder analogy) for the finished state.

:::image type="content" source="images/deploy-win-10-school-figure1.png" alt-text="A finished school configuration for a Windows client deployment.":::

*Figure 1. Typical school configuration for this guide*

Figure 2 shows the classroom configuration this guide uses.

:::image type="content" source="images/deploy-win-10-school-figure2.png" alt-text="See the classroom configuration used in this Windows client deployment guide.":::

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

  > [!NOTE]
  > In this guide, all references to MDT refer to the 64-bit version of MDT 2013 Update 2.

- The devices use Azure AD in Office 365 Education for identity management.
- If you've on-premises AD DS, you can [integrate Azure AD with on-premises AD DS](/azure/active-directory/hybrid/whatis-hybrid-identity).
- Use [Intune](/mem/intune/), [Set up Basic Mobility and Security](/microsoft-365/admin/basic-mobility-security/set-up), or Group Policy in AD DS to manage devices.
- Each device supports a one-student-per-device or multiple-students-per-device scenario.
- The devices can be a mixture of different make, model, and processor architecture (32 bit or 64 bit) or be identical.
- To start a Windows 10 deployment, use a USB flash drive, DVD-ROM or CD-ROM, or Pre-Boot Execution Environment Boot (PXE Boot).
- The devices can be a mixture of different Windows 10 editions, such as Windows 10 Home, Windows 10 Pro, and Windows 10 Education.

Office 365 Education allows:

- Students and faculty to use Microsoft Office to create and edit Microsoft Word, OneNote, PowerPoint, and Excel documents in a browser.
- Teachers to use the [OneNote Class Notebook app](https://www.onenote.com/classnotebook) to share content and collaborate with students.
- Faculty to use the [OneNote Staff Notebooks app](https://www.onenote.com/staffnotebookedu) to collaborate with other teachers, administration, and faculty.
- Teachers to employ Sway to create interactive educational digital storytelling.
- Students and faculty to use email and calendars, with mailboxes up to 50 GB per user.
- Faculty to use advanced email features like email archiving and legal hold capabilities.
- Faculty to help prevent unauthorized users from accessing documents and email by using Azure Rights Management.
- Faculty to use advanced compliance tools on the unified eDiscovery pages in the Microsoft Purview compliance portal.
- Faculty to host online classes, parent–teacher conferences, and other collaboration in Skype for Business or Skype.
- Students and faculty to access up to 1 TB of personal cloud storage that users inside and outside the educational institution can share through OneDrive for Business.
- Teachers to provide collaboration in the classroom through Microsoft SharePoint Online team sites.
- Students and faculty to use Office 365 Video to manage videos.
- Students and faculty to use Yammer to collaborate through private social networking.
- Students and faculty to access classroom resources from anywhere on any device (including iOS and Android devices).

For more information about Office 365 Education features and a FAQ, go to [Office 365 Education](https://www.microsoft.com/microsoft-365/academic/compare-office-365-education-plans).

## How to configure a school

Now that you've the plan (blueprint) for your classroom, you’re ready to learn about the tools you'll use to deploy it. There are many tools you could use to accomplish the task, but this guide focuses on using those tools that require the least infrastructure and technical knowledge.

The primary tool you'll use to deploy Windows 10 in your school is MDT, which uses Windows ADK components to make deployment easier. You could just use the Windows ADK to perform your deployment, but MDT simplifies the process by providing an intuitive, wizard-driven user interface (UI).

You can use MDT as a stand-alone tool or integrate it with Microsoft Configuration Manager. As a stand-alone tool, MDT performs Lite Touch Installation (LTI) deployments—deployments that require minimal infrastructure and allow you to control the level of automation. When integrated with Configuration Manager, MDT performs Zero Touch Installation (ZTI) deployments, which require more infrastructure (such as Configuration Manager) but result in fully automated deployments.

MDT includes the Deployment Workbench—a console from which you can manage the deployment of Windows 10 and your apps. You configure the deployment process in the Deployment Workbench, including the management of operating systems, device drivers, apps, and migration of user settings on existing devices. 

LTI performs deployment from a *deployment share*—a network-shared folder on the device where you installed MDT. You can perform over-the-network deployments from the deployment share or perform deployments from a local copy of the deployment share on a USB drive or DVD. You'll learn more about MDT in the [Prepare the admin device](#prepare-the-admin-device) section.

The focus of MDT is deployment, so you also need tools that help you manage your Windows 10 devices and apps. You can manage Windows 10 devices and apps with [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), [Configuration Manager](/mem/configmgr/core/understand/introduction), the Compliance Management feature in Office 365, or Group Policy in AD DS. You can use any combination of these tools based on your school requirements.

The configuration process requires the following devices:

- **Admin device.** This is the device you use for your day-to-day job functions. It’s also the one you use to create and manage the Windows 10 and app deployment process. You install the Windows ADK and MDT on this device.
- **Faculty devices.** These are the devices that the teachers and other faculty use for their day-to-day job functions. You use the admin device to deploy (or upgrade) Windows 10 and apps to these devices.
- **Student devices.** The students will use these devices. You'll use the admin device deploy (or upgrade) Windows 10 and apps to them.

The high-level process for deploying and configuring devices within individual classrooms and the school as a whole is as follows and illustrated in Figure 3:

1. Prepare the admin device for use, which includes installing the Windows ADK and MDT.
2. On the admin device, create and configure the Office 365 Education subscription that you'll use for each classroom in the school.
3. On the admin device, configure integration between on-premises AD DS and Azure AD (if you've an on premises AD DS configuration).
4. On the admin device, create and configure a Microsoft Store for Business portal.
5. On the admin device, prepare for management of the Windows 10 devices after deployment.
6. On the student and faculty devices, deploy Windows 10 to new or existing devices, or upgrade eligible devices to Windows 10.
7. On the admin device, manage the Windows 10 devices and apps, the Office 365 subscription, and the AD DS and Azure AD integration.

:::image type="content" source="images/deploy-win-10-school-figure3.png" alt-text="See the high level process of configuring Windows client devices in a classroom and the school":::

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

For more information about installing the Windows ADK, see [Step 2-2: Install the Windows ADK](/mem/configmgr/mdt/lite-touch-installation-guide#InstallWindowsADK).

### Install MDT

Next, install MDT. MDT uses the Windows ADK to help you manage and perform Windows 10 and app deployment and is a free tool available directly from Microsoft.

You can use MDT to deploy 32-bit or 64-bit versions of Windows 10. Install the 64-bit version of MDT to support deployment of 32-bit and 64-bit operating systems.

> [!NOTE]
> If you install the 32-bit version of MDT, you can install only 32-bit versions of Windows 10. Ensure that you download and install the 64-bit version of MDT so that you can install 64-bit and 32-bit versions of the operating system.

For more information about installing MDT on the admin device, see [Installing a New Instance of MDT](/mem/configmgr/mdt/use-the-mdt#InstallingaNewInstanceofMDT).

Now, you’re ready to create the MDT deployment share and populate it with the operating system, apps, and device drivers you want to deploy to your devices.

### Create a deployment share

MDT includes the Deployment Workbench, a graphical user interface that you can use to manage MDT deployment shares. A deployment share is a shared folder that contains all the MDT deployment content. The LTI Deployment Wizard accesses the deployment content over the network or from a local copy of the deployment share (known as MDT deployment media).

For more information about how to create a deployment share, see [Step 3-1: Create an MDT Deployment Share](/mem/configmgr/mdt/lite-touch-installation-guide#step-3-configure-mdt-to-create-the-reference-computer).

### Summary

In this section, you installed the Windows ADK and MDT on the admin device. You also created the MDT deployment share that you'll configure and use later in the LTI deployment process.

## Create and configure Office 365

Office 365 is one of the core components of your classroom environment. You create and manage student identities in Office 365, and students and teachers use the suite as their email, contacts, and calendar system. Teachers and students use Office 365 collaboration features such as SharePoint, OneNote, and OneDrive for Business.

As a first step in deploying your classroom, create an Office 365 Education subscription, and then configure Office 365 for the classroom. For more information about Office 365 Education deployment, see [School deployment of Office 365 Education](https://www.microsoft.com/education/products/office).

### Select the appropriate Office 365 Education license plan

Complete the following steps to select the appropriate Office 365 Education license plan for your school:

- Determine the number of faculty members and students who will use the classroom. Office 365 Education licensing plans are available specifically for faculty and students. You must assign faculty and students the correct licensing plan.

- Determine the faculty members and students who need to install Office applications on devices (if any). Faculty and students can use Office applications online (standard plans) or run them locally (Microsoft 365 Apps for enterprise plans). Table 1 lists the advantages and disadvantages of standard and Microsoft 365 Apps for enterprise plans.

*Table 1. Comparison of standard and Microsoft 365 Apps for enterprise plans*

---
| Plan | Advantages | Disadvantages |
| --- | --- | --- |
| Standard | - Less expensive than Microsoft 365 Apps for enterprise <br/>- Can be run from any device <br/>- No installation necessary | - Must have an Internet connection to use it<br/>- Doesn't support all the features found in Microsoft 365 Apps for enterprise |
| Office ProPlus | - Only requires an Internet connection every 30 days (for activation)<br/>- Supports full set of Office features | - Requires installation <br/>- Can be installed on only five devices per user (there's no limit to the number of devices on which you can run Office apps online) |

---

The best user experience is to run Microsoft 365 Apps for enterprise or use native Office apps on mobile devices. If neither of these options is available, use Office applications online. In addition, all Office 365 plans provide a better user experience by storing documents in OneDrive for Business, which is included in all Office 365 plans. OneDrive for Business keeps content in sync among devices and helps ensure that users always have access to their documents on any device.

- Determine whether students or faculty need Azure Rights Management.

  You can use Azure Rights Management to protect classroom information against unauthorized access. Azure Rights Management protects your information inside or outside the classroom through encryption, identity, and authorization policies, securing your files and email. You can retain control of the information, even when it’s shared with people outside the classroom or your educational institution. Azure Rights Management is free to use with all Office 365 Education license plans. For more information, see [Azure Rights Management](/information-protection/).

- Record the Office 365 Education license plans needed for the classroom in Table 2.

*Table 2. Office 365 Education license plans needed for the classroom*

---
| Quantity | Plan |
| --- | --- |
| | Office 365 Education for students |
| | Office 365 Education for faculty |
| | Azure Rights Management for students |
| | Azure Rights Management for faculty |

---

You'll use the Office 365 Education license plan information you record in Table 2 in the [Create user accounts in Office 365](#create-user-accounts-in-office-365) section of this guide.

### Create a new Office 365 Education subscription

To create a new Office 365 Education subscription for use in the classroom, use your educational institution’s email account. There are no costs to you or to students for signing up for Office 365 Education subscriptions.

> [!NOTE]
> If you already have an Office 365 Education subscription, you can use that subscription and continue to the next section, [Add domains and subdomains](#add-domains-and-subdomains).

#### To create a new Office 365 subscription

1. In Microsoft Edge or Internet Explorer, type `https://portal.office.com/start?sku=faculty` in the address bar.

    If you've already used your current sign-in account to create a new Office 365 subscription, you'll be prompted to sign in. If you want to create a new Office 365 subscription, start an In-Private Window. Your options:

    - In Microsoft Edge, select Ctrl+Shift+N. Or, select **More actions** > **New InPrivate window**.
    - In Internet Explorer,  select Ctrl+Shift+P. Or, select **Settings** > **Safety** > **InPrivate Browsing**.

2. On the **Get started** page, type your school email address in the **Enter your school email address** box, and then click **Sign up**. You'll receive an email in your school email account.
3. Click the hyperlink in the email in your school email account.
4. On the **One last thing** page, complete your user information, and then click **Start**. The wizard creates your new Office 365 Education subscription, and you're automatically signed in as the administrative user you specified when you created the subscription.

### Add domains and subdomains

Now that you've created your new Office 365 Education subscription, add the domains and subdomains that your institution uses. For example, if your institution has `contoso.edu` as the primary domain name but you've subdomains for students or faculty (such as students.contoso.edu and faculty.contoso.edu), then you need to add the subdomains.

#### To add more domains and subdomains

1. In the admin center, in the list view, click **DOMAINS**.
2. In the details pane, above the list of domains, on the menu bar, click **Add domain**.
3. In the Add a New Domain in Office 365 Wizard, on the **Verify domain wizard** page, click **Let’s get started**.
4. On the **Verify domain** wizard page, in the **Enter a domain you already own** box, type your domain name, and then click **Next**.
5. Sign in to your domain name management provider (for example, Network Solutions or GoDaddy), and then complete the steps for your provider.
6. Repeat these steps for each domain and subdomain you want faculty and students to use for your institution.

### Configure automatic tenant join

To make it easier for faculty and students to join your Office 365 Education subscription (or *tenant*), allow them to automatically sign up to your tenant (*automatic tenant join*). In automatic tenant join, when a faculty member or student signs up for Office 365, Office 365 automatically adds (joins) the user to your Office 365 tenant.

> [!NOTE]
> By default, automatic tenant join is enabled in Office 365 Education, except for certain areas in Europe, the Middle East, and Africa. These countries require opt-in steps to add new users to existing Office 365 tenants. Check your country requirements to determine the automatic tenant join default configuration. Also, if you use Azure AD Connect, then automatic tenant join is disabled.

Office 365 uses the domain portion of the user’s email address to know which Office 365 tenant to join. For example, if a faculty member or student provides an email address of user@contoso.edu, then Office 365 automatically performs one of the following tasks:

- If an Office 365 tenant with that domain name (contoso.edu) exists, Office 365 automatically adds the user to that tenant.
- If an Office 365 tenant with that domain name (contoso.edu) doesn't exists, Office 365 automatically creates a new Office 365 tenant with that domain name and adds the user to it.

You'll always want faculty and students to join the Office 365 tenant that you created. Ensure that you perform the steps in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) and [Add domains and subdomains](#add-domains-and-subdomains) sections before allowing other faculty and students to join Office 365.

> [!NOTE]
> You can't  merge multiple tenants, so any faculty or students who create their own tenant will need to abandon their existing tenant and join yours.

All new Office 365 Education subscriptions have automatic tenant join enabled by default, but you can enable or disable automatic tenant join by using the Windows PowerShell commands in Table 3. For more information about how to run these commands, see [How can I prevent students from joining my existing Office 365 tenant](/microsoft-365/education/deploy/office-365-education-self-sign-up#how-can-i-prevent-students-from-joining-my-existing-office-365-tenant).

*Table 3. Windows PowerShell commands to enable or disable Automatic Tenant Join*

---
| Action  |                Windows PowerShell command                 |
|---------|-----------------------------------------------------------|
| Enable  | `Set-MsolCompanySettings -AllowEmailVerifiedUsers $true`  |
| Disable | `Set-MsolCompanySettings -AllowEmailVerifiedUsers $false` |

---

> [!NOTE]
> If your institution has AD DS, then disable automatic tenant join. Instead, use Azure AD integration with AD DS to add users to your Office 365 tenant.

### Disable automatic licensing

To reduce your administrative effort, automatically assign Office 365 Education or Office 365 Education Plus licenses to faculty and students when they sign up (automatic licensing). Automatic licensing also enables Office 365 Education or Office 365 Education Plus features that don't require administrative approval.

> [!NOTE]
> By default, automatic licensing is enabled in Office 365 Education. If you want to use automatic licensing, then skip this section and go to the next section.

Although all new Office 365 Education subscriptions have automatic licensing enabled by default, you can enable or disable it for your Office 365 tenant by using the Windows PowerShell commands in Table 4. For more information about how to run these commands, see [How can I prevent students from joining my existing Office 365 tenant](/microsoft-365/education/deploy/office-365-education-self-sign-up#how-can-i-prevent-students-from-joining-my-existing-office-365-tenant).

*Table 4. Windows PowerShell commands to enable or disable automatic licensing*

---
| Action  |                Windows PowerShell command                 |
|---------|-----------------------------------------------------------|
| Enable  | `Set-MsolCompanySettings -AllowAdHocSubscriptions $true`  |
| Disable | `Set-MsolCompanySettings -AllowAdHocSubscriptions $false` |

---

### Enable Azure AD Premium

When you create your Office 365 subscription, you create an Office 365 tenant that includes an Azure AD directory. Azure AD is the centralized repository for all your student and faculty accounts in Office 365, Intune, and other Azure AD–integrated apps. Azure AD has different editions, which may include Office 365 Education. For more information, see [Introduction to Azure Active Directory Tenants](/microsoft-365/education/deploy/intro-azure-active-directory).

Educational institutions can obtain Azure AD Basic edition licenses at no cost. After you obtain your licenses, activate your Azure AD access by completing the steps in [Step 3: Activate your Azure Active Directory access](/azure/active-directory/fundamentals/active-directory-get-started-premium#step-3-activate-your-azure-active-directory-access).

The Azure AD Premium features that aren't in Azure AD Basic include:

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

You can sign up for Azure AD Premium, and then assign licenses to users. In this section, you sign up for Azure AD Premium. You'll assign Azure AD Premium licenses to users later in the deployment process.

For more information, see:

- [Azure Active Directory licenses](/azure/active-directory/fundamentals/active-directory-whatis)
- [Sign up for Azure Active Directory Premium](/azure/active-directory/fundamentals/active-directory-get-started-premium)

### Summary
You provision and initially configure Office 365 Education as part of the initial configuration. With the subscription in place, automatic tenant join configured, automatic licensing established, and Azure AD Premium enabled (if necessary), you’re ready to select the method you'll use to create user accounts in Office 365.

## Select an Office 365 user account–creation method


Now that you've an Office 365 subscription, you need to determine how you'll create your Office 365 user accounts. Use the following methods to create Office 365 user accounts:

- **Method 1:** Automatically synchronize your on-premises AD DS domain with Azure AD. Select this method if you've an on-premises AD DS domain.
- **Method 2:** Bulk-import the user accounts from a .csv file (based on information from other sources) into Azure AD. Select this method if you don’t have an on-premises AD DS domain.

### Method 1: Automatic synchronization between AD DS and Azure AD

In this method, you've an on-premises AD DS domain. As shown in Figure 4, the Azure AD Connector tool automatically synchronizes AD DS with Azure AD. When you add or change any user accounts in AD DS, the Azure AD Connector tool automatically updates Azure AD.

> [!NOTE]
> Azure AD Connect also supports synchronization from any Lightweight Directory Access Protocol version 3 (LDAPv3)–compliant directory by using the information provided in [LDAP synchronization with Azure Active Directory](/azure/active-directory/fundamentals/sync-ldap).

:::image type="content" source="images/deploy-win-10-school-figure4.png" alt-text="See the automatic synchronization between Active Directory Directory Services and Azure AD.":::

*Figure 4. Automatic synchronization between AD DS and Azure AD*

For more information about how to perform this step, see the [Integrate on-premises AD DS with Azure AD](#integrate-on-premises-ad-ds-with-azure-ad) section in this guide.

### Method 2: Bulk import into Azure AD from a .csv file

In this method, you've no on-premises AD DS domain. As shown in Figure 5, you manually prepare a `.csv` file with the student information from your source, and then manually import the information directly into Azure AD. The `.csv` file must be in the format that Office 365 specifies.

:::image type="content" source="images/deploy-win-10-school-figure5.png" alt-text="Create a csv file with student information, and import the csv file into Azure AD.":::

*Figure 5. Bulk import into Azure AD from other sources*

To implement this method, perform the following steps:

1. Export the student information from the source. Ultimately, you want to format the student information in the format the bulk-import feature requires.
2. Bulk-import the student information into Azure AD. For more information about how to perform this step, see the [Bulk-import user accounts into Office 365](#bulk-import-user-accounts-into-office-365) section.

### Summary

In this section, you selected the method for creating user accounts in your Office 365 subscription. Ultimately, these user accounts are in Azure AD (which is the identity management system for Office 365). Now, you’re ready to create your Office 365 accounts.

## Integrate on-premises AD DS with Azure AD

You can integrate your on-premises AD DS domain with Azure AD to provide identity management for your Office 365 tenant. With this integration, you can synchronize the users, security groups, and distribution lists in your AD DS domain with Azure AD with the Azure AD Connect tool. Users will be able to sign in to Office 365 automatically by using their email account and the same password they use to sign in to AD DS.

> [!NOTE]
> If your institution doesn't have an on-premises AD DS domain, you can skip this section.

### Select synchronization model

Before you deploy AD DS and Azure AD synchronization, you need to determine where you want to deploy the server that runs Azure AD Connect.

You can deploy the Azure AD Connect tool by using one of the following methods:

- **On premises**: As shown in Figure 6, Azure AD Connect runs on premises, which have the advantage of not requiring a virtual private network (VPN) connection to Azure. It does, however, require a virtual machine (VM) or physical server.

  :::image type="content" source="images/deploy-win-10-school-figure6.png" alt-text="Azure AD Connect runs on-premises and uses a virtual machine.":::

  *Figure 6. Azure AD Connect on premises*

- **In Azure**: As shown in Figure 7, Azure AD Connect runs on a VM in Azure AD which has the advantages of being faster to provision (than a physical, on-premises server), offers better site availability, and helps reduce the number of on-premises servers. The disadvantage is that you need to deploy a VPN gateway on premises.

  :::image type="content" source="images/deploy-win-10-school-figure7.png" alt-text="Azure AD Connect runs on a VM in Azure AD, and uses a VPN gateway on-premises.":::

  *Figure 7. Azure AD Connect in Azure*

This guide describes how to run Azure AD Connect on premises. For information about running Azure AD Connect in Azure, see [Deploy Office 365 Directory Synchronization (DirSync) in Microsoft Azure](/microsoft-365/enterprise/deploy-microsoft-365-directory-synchronization-dirsync-in-microsoft-azure).

### Deploy Azure AD Connect on premises

In this synchronization model (illustrated in Figure 6), you run Azure AD Connect on premises on a physical device or VM. Azure AD Connect synchronizes AD DS user and group accounts with Azure AD. Azure AD Connect includes a wizard that helps you configure Azure AD Connect for your AD DS domain and Office 365 subscription. First, you install Azure AD Connect; then, you run the wizard to configure it for your institution.

#### To deploy AD DS and Azure AD synchronization

1. Configure your environment to meet the prerequisites for installing Azure AD Connect by performing the steps in [Prerequisites for Azure AD Connect](/azure/active-directory/hybrid/how-to-connect-install-prerequisites).
2. On the VM or physical device that will run Azure AD Connect, sign in with a domain administrator account.
3. Install Azure AD Connect by performing the steps in [Install Azure AD Connect](/azure/active-directory/hybrid/how-to-connect-install-select-installation).
4. Configure Azure AD Connect features based on your institution’s requirements. For more information, see [Azure AD Connect sync: Understand and customize synchronization](/azure/active-directory/hybrid/how-to-connect-sync-whatis).

Now that you've used on premises Azure AD Connect to deploy AD DS and Azure AD synchronization, you’re ready to verify that Azure AD Connect is synchronizing AD DS user and group accounts with Azure AD.

### Verify synchronization

Azure AD Connect should start synchronization immediately. Depending on the number of users in your AD DS domain, the synchronization process can take some time. To monitor the process, view the number of AD DS users and groups the tool has synchronized with Azure AD in the Office 365 admin console.

#### To verify AD DS and Azure AD synchronization

1. In your web browser, go to [https://portal.office.com](https://portal.office.com).
2. Using the administrative account that you created in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) section, sign in to Office 365.
3. In the list view, expand **USERS**, and then click **Active Users**.
4. In the details pane, view the list of users. The list of users should mirror the users in AD DS.
5. In the list view, click **GROUPS**.
6. In the details pane, view the list of security groups. The list of users should mirror the security groups in AD DS.
7. In the details pane, double-click one of the security groups.
8. The list of security group members should mirror the group membership for the corresponding security group in AD DS.
9. Close the browser.

Now that you've verified Azure AD Connect synchronization, you’re ready to assign user licenses for Azure AD Premium.

### Summary

In this section, you selected your synchronization model, deployed Azure AD Connect, and verified that Azure AD is synchronizing properly.

## Bulk-import user and group accounts into AD DS

You can bulk-import user and group accounts into your on-premises AD DS domain. Bulk-importing accounts helps reduce the time and effort needed to create users compared to creating the accounts manually in the Office 365 Admin portal. First, you select the appropriate method for bulk-importing user accounts into AD DS. Next, you create the .csv file that contains the user accounts. Finally, you use the selected method to import the .csv file into AD DS.

> [!NOTE]
> If your institution doesn’t have an on-premises AD DS domain, you can skip this section.

### Select the bulk import method

Several methods are available to bulk-import user accounts into AD DS domains. Table 5 lists the methods that the Windows Server operating system supports natively. In addition, you can use partner solutions to bulk-import user and group accounts into AD DS.

*Table 5. AD DS bulk-import account methods*

---
|  Method |  Description and reason to select this method  |
|---|---|
| **Ldifde.exe** | This command-line tool allows you to import and export objects (such as user accounts) from AD DS. Select this method if you aren’t comfortable with Microsoft Visual Basic Scripting Edition (VBScript), Windows PowerShell, or other scripting languages. For more information about using Ldifde.exe, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://social.technet.microsoft.com/wiki/contents/articles/116.active-directory-step-by-step-guide-bulk-import-and-export.aspx), [LDIFDE—Export/Import data from Active Directory—LDIFDE commands](https://support.microsoft.com/kb/555636), [Import or Export Directory Objects Using Ldifde](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc816781(v=ws.10)), and [LDIFDE](/previous-versions/orphan-topics/ws.10/cc755456(v=ws.10)). |
| **VBScript** | This scripting language uses the Active Directory Services Interfaces (ADSI) Component Object Model interface to manage AD DS objects, including user and group objects. Select this method if you’re comfortable with VBScript. For more information about using VBScript and ADSI, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://social.technet.microsoft.com/wiki/contents/articles/116.active-directory-step-by-step-guide-bulk-import-and-export.aspx). |
| **Windows PowerShell** |  This scripting language natively supports cmdlets to manage AD DS objects, including user and group objects. Select this method if you’re comfortable with Windows PowerShell scripting. For more information about using Windows PowerShell, see [Import Bulk Users to Active Directory](/archive/blogs/technet/bettertogether/import-bulk-users-to-active-directory) and [PowerShell: Bulk create AD Users from CSV file](https://social.technet.microsoft.com/wiki/contents/articles/24541.powershell-bulk-create-ad-users-from-csv-file.aspx).  |

---

### Create a source file that contains the user and group accounts

After you've selected your user and group account bulk import method, you’re ready to create the source file that contains the user and group account. You’ll use the source file as the input to the import process. The source file format depends on the method you selected. Table 6 lists the source file format for the bulk import methods.

*Table 6. Source file format for each bulk import method*

---
| Method |  Source file format   |
|---|---|
| **Ldifde.exe** | Ldifde.exe requires a specific format for the source file. Use Ldifde.exe to export existing user and group accounts so that you can see the format. For examples of the format that Ldifde.exe requires, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://social.technet.microsoft.com/wiki/contents/articles/116.active-directory-step-by-step-guide-bulk-import-and-export.aspx), [LDIFDE—Export/Import data from Active Directory—LDIFDE commands](https://support.microsoft.com/kb/555636), [Import or Export Directory Objects Using Ldifde](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc816781(v=ws.10)), and [LDIFDE](/previous-versions/orphan-topics/ws.10/cc755456(v=ws.10)). |
| **VBScript**  |  VBScript can use any .csv file format to create a source file for the bulk-import process. To create the .csv file, use software such as Excel. For examples of how to format your source file in comma-separated values (CSV) format, see [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://social.technet.microsoft.com/wiki/contents/articles/116.active-directory-step-by-step-guide-bulk-import-and-export.aspx) |
| **Windows PowerShell** | Windows PowerShell can use any .csv file format you want to create as a source file for the bulk-import process. To create the .csv file, use software such as Excel. For examples of how to format your source file in CSV format, see [Import Bulk Users to Active Directory](/archive/blogs/technet/bettertogether/import-bulk-users-to-active-directory) and [PowerShell: Bulk create AD Users from CSV file](https://social.technet.microsoft.com/wiki/contents/articles/24541.powershell-bulk-create-ad-users-from-csv-file.aspx). |

---

### Import the user accounts into AD DS

With the bulk-import source file finished, you’re ready to import the user and group accounts into AD DS. The steps for importing the file are slightly different for each method.

> [!NOTE]
> Bulk-import your group accounts first, and then import your user accounts. Importing in this order allows you to specify group membership when you import your user accounts. 

For more information about how to import user accounts into AD DS by using:

- Ldifde.exe: See [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://social.technet.microsoft.com/wiki/contents/articles/116.active-directory-step-by-step-guide-bulk-import-and-export.aspx), [LDIFDE—Export/Import data from Active Directory—LDIFDE commands](https://support.microsoft.com/kb/555636), [Import or Export Directory Objects Using Ldifde](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc816781(v=ws.10)), and [LDIFDE](/previous-versions/orphan-topics/ws.10/cc755456(v=ws.10)).
- VBScript: See [Step-by-Step Guide to Bulk Import and Export to Active Directory](https://social.technet.microsoft.com/wiki/contents/articles/116.active-directory-step-by-step-guide-bulk-import-and-export.aspx).
- Windows PowerShell: See [Import Bulk Users to Active Directory](/archive/blogs/technet/bettertogether/import-bulk-users-to-active-directory) and [PowerShell: Bulk create AD Users from CSV file](https://social.technet.microsoft.com/wiki/contents/articles/24541.powershell-bulk-create-ad-users-from-csv-file.aspx).

### Summary

In this section, you selected the bulk-import method, created the source file that contains the user and group accounts, and imported the user and group accounts in to AD DS. If you've Azure AD Connect, it automatically synchronizes the new AD DS user and group accounts to Azure AD. Now, you’re ready to assign user licenses for Azure AD Premium in the [Assign user licenses for Azure AD Premium](#assign-user-licenses-for-azure-ad-premium) section later in this guide.

## Bulk-import user accounts into Office 365

You can bulk-import user and group accounts directly into Office 365, reducing the time and effort required to create users. First, you bulk-import the user accounts into Office 365. Then, you create the security groups for your institution. Finally, you create the email distribution groups your institution requires.

### Create user accounts in Office 365

Now that you've created your new Office 365 Education subscription, you need to create user accounts. You can add user accounts for the teachers, other faculty, and students who will use the classroom.

You can use the Microsoft 365 admin center to add individual Office 365 accounts manually—a reasonable process when you’re adding only a few users. If you've many users, however, you can automate the process by creating a list of those users, and then use that list to create user accounts (that is, bulk-add users).

The bulk-add process assigns the same Office 365 Education license plan to all users on the list. Therefore, you must create a separate list for each license plan you recorded in Table 2. Depending on the number of faculty members who need to use the classroom, you may want to add the faculty Office 365 accounts manually; however, use the bulk-add process to add student accounts.

For more information about how to bulk-add users to Office 365, see [Add several users at the same time to Office 365](/microsoft-365/enterprise/add-several-users-at-the-same-time).

> [!NOTE]
> If you encountered errors during bulk add, resolve them before you continue the bulk-add process. You can view the log file to see which users caused the errors, and then modify the .csv file to correct the problems. Click **Back** to retry the verification process.

The email accounts are assigned temporary passwords upon creation. Communicate these temporary passwords to your users before they can sign in to Office 365.

### Create Office 365 security groups

Assign SharePoint Online resource permissions to Office 365 security groups, not individual user accounts. For example, create one security group for faculty members and another for students. Then, you can assign unique SharePoint Online resource permissions to faculty members and a different set of permissions to students. Add or remove users from the security groups to grant or revoke access to SharePoint Online resources.

> [!NOTE]
> If your institution has AD DS, don’t create security accounts in Office 365. Instead, create the security groups in AD DS, and then use Azure AD integration to synchronize the security groups with your Office 365 tenant.

For information about creating security groups, see [Create a group in the Microsoft 365 admin center](/microsoft-365/admin/create-groups/create-groups).

You can add and remove users from security groups at any time.

> [!NOTE]
> Office 365 evaluates group membership when users sign in. If you change group membership for a user, that user may need to sign out, and then sign in again for the change to take effect.

### Create email distribution groups

Microsoft Exchange Online uses an email distribution group as a single email recipient for multiple users. For example, you could create an email distribution group that contains all students. Then, you could send a message to the email distribution group instead of individually addressing the message to each student.

You can create email distribution groups based on job role (such as teachers, administration, or students) or specific interests (such as robotics, drama club, or soccer team). You can create any number of distribution groups, and users can be members of more than one group.

> [!NOTE]
> Office 365 can take some time to complete the Exchange Online creation process. You'll have to wait until Office 365 completes the Exchange Online creation process before you can perform the following steps. 

For information about how to create security groups, see [Create a group in the Microsoft 365 admin center](/microsoft-365/admin/create-groups/create-groups).

### Summary

Now, you've bulk-imported the user accounts into Office 365. First, you selected the bulk-import method. Next, you created the Office 365 security groups in Office 365. Finally, you created the Office 365 email distribution groups. Now, you’re ready to assign user licenses for Azure AD Premium.

## Assign user licenses for Azure AD Premium

Azure AD is available in Free, Basic, and Premium editions. Azure AD Free, which is included in Office 365 Education, has fewer features than Azure AD Basic, which in turn has fewer features than Azure AD Premium. Educational institutions can obtain Azure AD Basic licenses at no cost and Azure AD Premium licenses at a reduced cost.

You can assign Azure AD Premium licenses to the users who need the features this edition offers. For example, you may want the users who have access to confidential student information to use MFA. In this example, you could assign Azure AD Premium only to those users.

For more information about:

- Azure AD editions, see [Azure Active Directory editions](/azure/active-directory/fundamentals/active-directory-whatis).
- How to assign user licenses for Azure AD Premium, see [How to assign EMS/Azure AD Premium licenses to user accounts](https://channel9.msdn.com/Series/Azure-Active-Directory-Videos-Demos/How-to-assign-Azure-AD-Premium-Licenses-to-user-accounts).

## Create and configure a Microsoft Store for Business portal

Microsoft Store for Business allows you to create your own private portal to manage Microsoft Store apps in your institution. With Microsoft Store for Business, you can do the following:

- Find and acquire Microsoft Store apps.
- Manage apps, app licenses, and updates.
- Distribute apps to your users. 

For more information, see [Microsoft Store for Business overview](/microsoft-store/microsoft-store-for-business-overview).

The following section shows you how to create a Microsoft Store for Business portal and configure it for your school.

### Create and configure your Microsoft Store for Business portal

To create and configure your Microsoft Store for Business portal, use the administrative account for your Office 365 subscription to sign in to Microsoft Store for Business. Microsoft Store for Business automatically creates a portal for your institution and uses your account as its administrator.

#### To create and configure a Microsoft Store for Business portal

1. In Microsoft Edge or Internet Explorer, go to [https://microsoft.com/business-store](https://microsoft.com/business-store).
2. On the **Microsoft Store for Business** page, click **Sign in with an organizational account**.

    If your institution has AD DS, then don’t create security accounts in Office 365. Instead, create the security groups in AD DS, and then use Azure AD integration to synchronize the security groups with your Office 365 tenant.

1. On the Microsoft Store for Business sign-in page, use the administrative account for the Office 365 subscription you created in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) section to sign in.
2. On the **Microsoft Store for Business Services Agreement** page, review the agreement, select the **I accept this agreement and certify that I have the authority to bind my organization to its terms** check box, and then click **Accept**
3. In the **Welcome to the Microsoft Store for Business** dialog box, click **OK**.

After you create the Microsoft Store for Business portal, configure it by using the commands in the settings menu listed in Table 7. Depending on your institution, you may (or may not) need to change these settings to further customize your portal. 

*Table 7. Menu selections to configure Microsoft Store for Business settings*

---
| Menu selection | What you can do in this menu |
|---|---|
| Account information  | Displays information about your Microsoft Store for Business account (no settings can be changed). You make changes to this information in Office 365 or the Azure portal. For more information, see [Update Microsoft Store for Business account settings](/microsoft-store/update-microsoft-store-for-business-account-settings).|
| Device Guard signing |  Allows you to upload and sign Device Guard catalog and policy files. For more information about Device Guard, see [Device Guard deployment guide](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide).  |
|    LOB publishers    |  Allows you to add line-of-business (LOB) publishers that can then publish apps to your private store. LOB publishers are internal developers or software vendors that are working with your institution. For more information, see [Working with line-of-business apps](/microsoft-store/working-with-line-of-business-apps).             |
|   Management tools   |  Allows you to add tools that you can use to distribute (deploy) apps in your private store. For more information, see [Distribute apps with a management tool](/microsoft-store/distribute-apps-with-management-tool).                                                                    |
|  Offline licensing   |  Allows you to show (or not show) offline licensed apps to people shopping in your private store. For more information, see [Licensing model: online and offline licenses](/microsoft-store/apps-in-microsoft-store-for-business#licensing-model).  |
|     Permissions      | Allows you to grant other users in your organization the ability to buy, manage, and administer your Microsoft Store for Business portal. You can also remove permissions you've previously granted. For more information, see [Roles and permissions in Microsoft Store for Business](/microsoft-store/roles-and-permissions-microsoft-store-for-business). |
|    Private store     | Allows you to change the organization name used in your Microsoft Store for Business portal. When you create your portal, the private store uses the organization name that you used to create your Office 365 subscription. For more information, see [Distribute apps using your private store](/microsoft-store/distribute-apps-from-your-private-store). |

---

### Find, acquire, and distribute apps in the portal

Now that you've created your Microsoft Store for Business portal, you’re ready to find, acquire, and distribute apps that you'll add to your portal. You do this task by using the Inventory page in Microsoft Store for Business.

> [!NOTE]
> Your educational institution can now use a credit card to pay for apps in Microsoft Store for Business.

You can deploy apps to individual users or make apps available to users through your private store. Deploying apps to individual users restricts the app to those specified users. Making apps available through your private store allows all your users.

For more information about how to find, acquire, and distribute apps in the portal, see [App inventory management for Microsoft Store for Business](/microsoft-store/app-inventory-management-microsoft-store-for-business).

### Summary

At the end of this section, you should have a properly configured Microsoft Store for Business portal. You've also found and acquired your apps from Microsoft Store. Finally, you should have deployed all your Microsoft Store apps to your users. Now, you’re ready to deploy Microsoft Store apps to your users.

## Plan for deployment

You'll use the LTI deployment process in MDT to deploy Windows 10 to devices or to upgrade devices to Windows 10. Prior to preparing for deployment, you must make some deployment planning decisions, including selecting the operating systems you'll use, the approach you'll use to create your Windows 10 images, and the method you'll use to initiate the LTI deployment process.

### Select the operating systems

Later in the process, you'll import the versions of Windows 10 you want to deploy. You can deploy the operating system to new devices, refresh existing devices, or upgrade existing devices. If:

- New devices or refreshing existing devices, you'll complete replace the existing operating system on a device with Windows 10.
- Upgrading existing devices, you'll upgrade the existing operating system (the Windows 8.1 or Windows 7 operating system) to Windows 10.

Depending on your school’s requirements, you may need any combination of the following Windows 10 editions:

- **Windows 10 Home**. Use this operating system to upgrade existing eligible institution-owned and personal devices that are running Windows 8.1 Home or Windows 7 Home to Windows 10 Home.
- **Windows 10 Pro**. Use this operating system to:
  - Upgrade existing eligible institution-owned and personal devices running Windows 8.1 Pro or Windows 7 Professional to Windows 10 Pro.
  - Deploy new instances of Windows 10 Pro to devices so that new devices have a known configuration.
- **Windows 10 Education**. Use this operating system to:
  - Upgrade institution-owned devices to Windows 10 Education.
  - Deploy new instances of Windows 10 Education so that new devices have a known configuration.
- **Windows 10 Pro Education**. Use this operating system to upgrade existing eligible institution-owned devices running Windows 10 Pro Education, version 1903 or later, to Windows 10 Education using [subscription activation](/windows/deployment/windows-10-subscription-activation).

> [!NOTE]
> Although you can use Windows 10 Home on institution-owned devices, Microsoft recommends that you use Windows 10 Pro or Windows 10 Education, instead. Windows 10 Pro and Windows 10 Education provide support for MDM, policy-based management, and Microsoft Store for Business. These features aren't available in Windows 10 Home.

One other consideration is the mix of processor architectures you'll support. If you can, support only 64-bit versions of Windows 10. If you've devices that can run only 32-bit versions of Windows 10, you'll need to import both 64-bit and 32-bit versions of the Windows 10 editions listed above.

> [!NOTE]
> On devices that have minimal system resources (such as devices with only 2 GB of memory or 32 GB of storage), use 32-bit versions of Windows 10 because 64-bit versions of Windows 10 place more stress on device system resources.

Finally, as a best practice, minimize the number of operating systems that you deploy and manage. If possible, standardize institution-owned devices on one Windows 10 edition (such as a 64-bit version of Windows 10 Education or Windows 10 Pro). You can't  standardize personal devices on a specific operating system version or processor architecture.

### Select an image approach

A key operating system image decision is whether to use a “thin” or “thick” image. *Thin images* contain only the operating system, and MDT installs the necessary device drivers and apps after the operating system has been installed. *Thick images* contain the operating system, “core” apps (such as Office), and device drivers. With thick images, MDT installs any device drivers and apps not included in the thick image after the operating system has been installed.

The advantage to a thin image is that the final deployment configuration is dynamic, and you can easily change the configuration without having to capture another image. The disadvantage of a thin image is that it takes longer to complete the deployment.

The advantage of a thick image is that the deployment takes less time than it would for a thin image. The disadvantage of a thick image is that you need to capture a new image each time you want to make a change to the operating system, apps, or other software in the image.

### Select a method to initiate deployment

The MDT deployment process is highly automated, requiring minimal information to deploy or upgrade Windows 10, but you must manually initiate the MDT deployment process. To do so, use the method listed in Table 8 that best meets the needs of your institution.

*Table 8. Methods to initiate MDT deployment*

---
| Method | Description and reason to select this method |
| --- | --- |
| **Windows Deployment Services** | This method:<br/><br/>- Uses diskless booting to initiate MDT deployment<br/>- Works only with devices that support PXE boot. <br/>- Deploys Windows 10 over the network, which consumes more network bandwidth than deployment from local media. <br/>-Deploys images more slowly than when using local media. <br/>- Requires that you deploy a Windows Deployment Services server. <br/><br/> Select this method when you want to deploy Windows over-the-network and perform diskless booting. The advantage of this method is that the diskless media are generic and typically don’t require updates after you create them (the Deployment Wizard accesses the centrally located deployment share over the network). The disadvantage of this method is that over-the-network deployments are slower than deployments from local media, and you must deploy a Windows Deployment Services server. |
| **Bootable media** | This method:<br/><br/>- Initiates MDT deployment by booting from local media, including from USB drives, DVD-ROM, or CD-ROM.<br/>- Deploys Windows 10 over the network, which consumes more network bandwidth than deployment from local media. <br/>- Deploys images more slowly than when using local media. <br/>- Requires no extra infrastructure.<br/><br/>Select this method when you want to deploy Windows over-the-network and are willing to boot the target device from local media. The advantage of this method is that the media are generic and typically don’t require updates after you create them (the Deployment Wizard accesses the centrally located deployment share over the network). The disadvantage of this method is that over-the-network deployments are slower than deployment from local media. |
| **MDT deployment media** | This method:<br/><br/>- Initiates MDT deployment by booting from a local USB hard disk.<br/>- Deploys Windows 10 from local media, which consumes less network bandwidth than over-the-network methods.<br/>- Deploys images more quickly than network-based methods do.<br/>- Requires a USB hard disk because of the deployment share’s storage requirements (up to 100 GB).<br/><br/>Select this method when you want to perform local deployments and are willing to boot the target device from a local USB hard disk. The advantage of this method is that local deployments are faster than over-the-network deployments. The disadvantage of this method is that each time you change the deployment share, you must regenerate the MDT deployment media and update the USB hard disk. |

---

### Summary

At the end of this section, you should know the Windows 10 editions and processor architecture that you want to deploy (and will import later in the process). You also determined whether you want to use thin or thick images. Finally, you selected the method for initiating your LTI deployment. Now, you can prepare for Windows 10 deployment.

## Prepare for deployment

To deploy Windows 10 to devices, using the LTI deployment method in MDT. In this section, you prepare your MDT environment and Windows Deployment Services for Windows 10 deployment.

### Configure the MDT deployment share

The first step in preparation for Windows 10 deployment is to configure—that is, *populate*—the MDT deployment share. Table 9 lists the MDT deployment share configuration tasks that you must perform. Perform the tasks in the order represented in Table 9.

*Table 9. Tasks to configure the MDT deployment share*

---
| Task | Description |
| --- | --- |
| **1. Import operating systems** | Import the operating systems that you selected in the [Select operating systems](#select-the-operating-systems) section into the deployment share. For more information about how to import operating systems, see [Import an Operating System into the Deployment Workbench](/mem/configmgr/mdt/use-the-mdt#ImportanOperatingSystemintotheDeploymentWorkbench). |
| **2. Import device drives** | Device drivers allow Windows 10 to know a device’s hardware resources and connected hardware accessories. Without the proper device drivers, certain features may be unavailable. For example, without the proper audio driver, a device can't  play sounds; without the proper camera driver, the device can't  take photos or use video chat.<br/><br/> Import device drivers for each device in your institution. For more information about how to import device drivers, see [Import Device Drivers into the Deployment Workbench](/mem/configmgr/mdt/use-the-mdt#ImportDeviceDriversintotheDeploymentWorkbench). |
| **3. Create MDT applications for Microsoft Store apps** | Create an MDT application for each Microsoft Store app you want to deploy. You can deploy Microsoft Store apps by using <em>sideloading</em>, which allows you to use the <strong>Add-AppxPackage</strong> Windows PowerShell cmdlet to deploy the .appx files associated with the app (called <em>provisioned apps</em>). Use this method to deploy up to 24 apps to Windows 10.<br/><br/>Prior to sideloading the .appx files, obtain the Microsoft Store .appx files that you'll use to deploy (sideload) the apps in your provisioning package. For apps in Microsoft Store, you'll need to obtain the .appx files from the app software vendor directly. If you're unable to obtain the .appx files from the app software vendor, then you or the students will need to install the apps on the student devices directly from Microsoft Store or Microsoft Store for Business.<br/><br/>If you've Intune, you can deploy Microsoft Store apps after you deploy Windows 10, as described in the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section. This method provides granular deployment of Microsoft Store apps, and you can use it for ongoing management of Microsoft Store apps. This method is the preferred one for deploying and managing Microsoft Store apps.<br/><br/>In addition, you must prepare your environment for sideloading (deploying) Microsoft Store apps. For more information about how to:<br/><br/>- Prepare your environment for sideloading, see [Sideload LOB apps in Windows 10](/windows/application-management/sideload-apps-in-windows-10).<br/>- Create an MDT application, see [Create a New Application in the Deployment Workbench](/mem/configmgr/mdt/use-the-mdt#CreateaNewApplicationintheDeploymentWorkbench). |
| **4. Create MDT applications for Windows desktop apps** | You need to create an MDT application for each Windows desktop app you want to deploy. You can obtain the Windows desktop apps from any source, but ensure that you've sufficient licenses for them.<br/><br/>To help reduce the effort needed to deploy Microsoft Office 2016 desktop apps, use the Office Deployment Tool, as described in [Deploy Click-to-Run for Office 365 products by using the Office Deployment Tool](/deployoffice/deploy-microsoft-365-apps-local-source?f=255&MSPPError=-2147217396).<br/><br/>If you've Intune, you can deploy Windows desktop apps after you deploy Windows 10, as described in the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section. This method provides granular deployment of Windows desktop apps, and you can use it for ongoing management of the apps. This method is the preferred one for deploying and managing Windows desktop apps.<br/><br/> You can also deploy Windows desktop apps after you deploy Windows 10, as described in the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section.<br/><br/>For more information about how to create an MDT application for Windows desktop apps, see [Create a New Application in the Deployment Workbench](/mem/configmgr/mdt/use-the-mdt#CreateaNewApplicationintheDeploymentWorkbench). | 
| **5. Create task sequences.** | You must create a separate task sequence for each Windows 10 edition, processor architecture, operating system upgrade process, and new operating system deployment process. Minimally, create a task sequence for each Windows 10 operating system you imported in Step 1—for example, (1) if you want to deploy Windows 10 Education to new devices or refresh existing devices with a new deployment of Windows 10 Education; (2) if you want to upgrade existing devices running Windows 8.1 or Windows 7 to Windows 10 Education; or (3) if you want to run deployments and upgrades for both 32 bit and 64-bit versions of Windows 10. To do so, you must create task sequences that will:<br/><br/>- Deploy Windows 10 Education 64-bit to devices.<br/>- Deploy Windows 10 Education 32-bit to devices.<br/>- Upgrade existing devices to Windows 10 Education 64-bit.<br/>- Upgrade existing devices to Windows 10 Education 32-bit.<br/><br/>Again, you'll create the task sequences based on the operating systems that you imported in Step 1. For more information about how to create a task sequence, see [Create a New Task Sequence in the Deployment Workbench](/mem/configmgr/mdt/use-the-mdt#CreateaNewTaskSequenceintheDeploymentWorkbench). |
| **6. Update the deployment share.** | Updating a deployment share generates the MDT boot images you use to initiate the Windows 10 deployment process. You can configure the process to create 32 bit and 64-bit versions of the .iso and .wim files you can use to create bootable media or in Windows Deployment Services.<br/><br/> For more information about how to update a deployment share, see [Update a Deployment Share in the Deployment Workbench](/mem/configmgr/mdt/use-the-mdt#UpdateaDeploymentShareintheDeploymentWorkbench).|

---

### Configure Windows Deployment Services for MDT

You can use Windows Deployment Services with MDT to automatically initiate boot images on target computers. These boot images can be Windows PE images (which you generated in Step 6 in Table 9) or custom images that can deploy operating systems directly to the target computers.

#### To configure Windows Deployment Services for MDT

1. Set up and configure Windows Deployment Services.

    Windows Deployment Services is a server role available in all Windows Server editions. You can enable the Windows Deployment Services server role on a new server or on any server running Windows Server in your institution. For more information about how to perform this step, see the following resources:

    - [Windows Deployment Services overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831764(v=ws.11))
    - The Windows Deployment Services Help file, included in Windows Deployment Services
    - [Windows Deployment Services Getting Started Guide for Windows Server 2012](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj648426(v=ws.11))

2. Add LTI boot images (Windows PE images) to Windows Deployment Services.

    The LTI boot images (.wim files) that you'll add to Windows Deployment Services are in the MDT deployment share. Locate the .wim files in the Boot subfolder in the deployment share. For more information about how to perform this step, see [Add LTI Boot Images to Windows Deployment Services](/mem/configmgr/mdt/use-the-mdt#AddLTIBootImagestoWindowsDeploymentServices).

### Summary

Now, Windows Deployment Services is ready to initiate the LTI deployment process in MDT. You've set up and configured Windows Deployment Services and added the LTI boot images, which you generated in the previous section, to Windows Deployment Services. Now, you’re ready to prepare to manage the devices in your institution.

## Prepare for device management

Before you deploy Windows 10 in your institution, you must prepare for device management. You'll deploy Windows 10 in a configuration that complies with your requirements, but you want to help ensure that your deployments remain compliant.

### Select the management method

If you've only one device to configure, manually configuring that one device is tedious but possible. When you've multiple classrooms of devices to configure, however, manually configuring each device becomes overwhelming. In addition, manually keeping an identical configuration on each device is difficult as the number of devices in the school increases.

For a school, there are many ways to manage devices. Table 10 lists the methods that this guide describes and recommends. Use the information in Table 10 to determine which combination of management methods is right for your institution.

*Table 10. School management methods*

---
| Method | Description |
| --- | --- |
| **Group Policy** | Group Policy is an integral part of AD DS and allows you to specify configuration settings for Windows 10 and previous versions of Windows. Select this method when you: <br/><br/>- Want to manage institution-owned devices that are domain joined (personally owned devices are typically not domain joined).<br/>- Want more granular control of device and user settings.<br/>- Have an existing AD DS infrastructure.<br/>- Typically manage on-premises devices.<br/>- Can manage a required setting only by using Group Policy.<br/><br/>The advantages of this method include:<br/><br/>- No cost beyond the AD DS infrastructure.<br/>- A larger number of settings.<br/><br/>The disadvantages of this method are:<br/><br/>- Can only manage domain-joined (institution-owned devices).<br/>- Requires an AD DS infrastructure (if the institution doesn't have AD DS already).<br/>- Typically manages on-premises devices (unless devices connect by using a VPN or DirectAccess). | 
| **Intune** | Intune is a cloud-based management system that allows you to specify configuration settings for Windows 10 and other operating systems, such as iOS/iPadOS, macOS, and Android. Intune is a subscription-based cloud service that integrates with Microsoft 365 and Azure AD.<br/><br/>Select this method when you:<br/><br/>- Want to manage institution-owned and personal devices (doesn't require that the device be domain joined).<br/>- Don’t require the level of granular control over device and user settings (compared to Group Policy).<br/>- Don’t have an existing AD DS infrastructure.<br/>- Need to manage devices regardless of where they are (on or off premises).<br/>- Can manage a required setting only by using Intune.<br/><br/>The advantages of this method are:<br/><br/>- You can manage institution-owned and personal devices.<br/>- It doesn’t require that devices be domain joined.<br/>- It doesn’t require any on-premises infrastructure.<br/>- It can manage devices regardless of their location (on or off premises).<br/><br/>The disadvantages of this method are:<br/><br/>- Carries an extra cost for subscription.<br/>- Doesn’t have a granular level control over device and user settings (compared to Group Policy). | 

---

### Select Microsoft-recommended settings

Microsoft has several recommended settings for educational institutions. Table 11 lists them, provides a brief description of why you need to configure them, and recommends methods for configuring the settings. Review the settings in Table 11 and evaluate their relevancy to your institution. Use the information to help you determine whether you need to configure the setting and which method you'll use to do so. At the end, you'll have a list of settings that you want to apply to the Windows 10 devices and know which management method you'll use to configure the settings.

*Table 11. Recommended settings for educational institutions*

---
| Recommendation | Description |
| --- | --- |
| **Use of Microsoft accounts** | You want faculty and students to use only Azure AD accounts for institution-owned devices. For these devices, don't use Microsoft accounts or associate a Microsoft account with the Azure AD accounts.<br/><br/>Personal devices typically use Microsoft accounts. Faculty and students can associate their Microsoft account with their Azure AD account on these devices.<br/><br/>**Group Policy**: Configure the [Accounts: Block Microsoft accounts](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj966262(v=ws.11)?amp;MSPPError=-2147217396&f=255) Group Policy setting to use the Users can’t add Microsoft accounts setting option.<br/><br/>**Intune**: Enable or disable Microsoft accounts by using the **Allow Microsoft account**, **Allow adding non-Microsoft accounts manually**, and **Allow settings synchronization for Microsoft accounts** policy settings under the **Accounts and Synchronization** section of a **Windows 10 General Configuration** policy. |
| **Restrict local administrator accounts on the devices** | Ensure that only authorized users are local administrators on institution-owned devices. Typically, you don’t want students to be administrators on instruction-owned devices. Explicitly specify the users who will be local administrators on a group of devices.<br/><br/>**Group Policy**: Create a **Local Group** Group Policy preference to limit the local administrators group membership. Select the **Delete all member users** and **Delete all member groups** check boxes to remove any existing members. For more information about how to configure Local Group preferences, see [Configure a Local Group Item](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc732525(v=ws.11)).<br/><br/>**Intune**: Not available |
| **Manage the built-in administrator account created during device deployment** | When you use MDT to deploy Windows 10, the MDT deployment process automatically creates a local Administrator account with the password you specified. As a security best practice, rename the built-in Administrator account and optionally disable it.<br/><br/>**Group Policy**: Rename the built-in Administrator account by using the **Accounts: Rename administrator account** Group Policy setting. For more information about how to rename the built-in Administrator account, see [To rename the Administrator account using the Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-essentials-sbs/cc747484(v=ws.10)). You'll specify the new name for the Administrator account. You can disable the built-in Administrator account by using the **Accounts: Administrator account status** Group Policy setting. For more information about how to disable the built-in Administrator account, see [Accounts: Administrator account status](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj852165(v=ws.11)).<br/><br/>**Intune**: Not available. |
| **Control Microsoft Store access** | You can control access to Microsoft Store and whether existing Microsoft Store apps receive updates. You can only disable the Microsoft Store app in Windows 10 Education and Windows 10 Enterprise.<br/><br/>**Group Policy**: You can disable the Microsoft Store app by using the **Turn off the Store Application** Group Policy setting. You can prevent Microsoft Store apps from receiving updates by using the **Turn off Automatic Download and Install of updates** Group Policy setting. For more information about configuring these settings, see [Can I use Group Policy to control the Microsoft Store in my enterprise environment?](/previous-versions/windows/it-pro/windows-8.1-and-8/hh832040(v=ws.11)#BKMK_UseGP).<br/><br/>**Intune**: You can enable or disable the camera by using the **Allow application store** policy setting in the **Apps** section of a **Windows 10 General Configuration** policy. |
| **Use of Remote Desktop connections to devices** | Remote Desktop connections could allow unauthorized access to the device. Depending on your institution’s policies, you may want to disable Remote Desktop connections on your devices.<br/><br/>**Group Policy**: You can enable or disable Remote Desktop connections to devices by using the **Allow Users to connect remotely using Remote Desktop setting** in Computer Configuration\Policies\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections.<br/><br/>**Intune**: Not available. |
| **Use of camera** | A device’s camera can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the camera on your devices.<br/><br/>**Group Policy**: Not available.<br/><br/>**Intune**: You can enable or disable the camera by using the **Allow camera** policy setting in the **Hardware** section of a **Windows 10 General Configuration** policy. |
| **Use of audio recording** | Audio recording (by using the Sound Recorder app) can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the Sound Recorder app on your devices.<br/><br/>**Group Policy**: You can disable the Sound Recorder app by using the **Do not allow Sound Recorder to run** Group Policy setting. You can disable other audio recording apps by using AppLocker policies. Create AppLocker policies by using the information in [Editing an AppLocker Policy](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee791894(v=ws.10)) and [Create Your AppLocker Policies](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ee791899(v=ws.11))<br/><br/>**Intune**: You can enable or disable the camera by using the **Allow voice recording** policy setting in the **Features** section of a **Windows 10 General Configuration** policy. |
| **Use of screen capture** | Screen captures can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the ability to perform screen captures on your devices.<br/><br/>**Group Policy**: Not available.<br/><br/>**Intune**: You can enable or disable the camera by using the **Allow screen capture** policy setting in the **System** section of a **Windows 10 General Configuration** policy. |
| **Use of location services** | Providing a device’s location can be a source of disclosure or privacy issues in an education environment. Depending on your institution’s policies, you may want to disable the location service on your devices.<br/><br/>**Group Policy**: You can enable or disable location services by using the **Turn off location** Group Policy setting in User Configuration\Windows Components\Location and Sensors.<br/><br/>**Intune**: You can enable or disable the camera by using the **Allow geolocation** policy setting in the **Hardware** section of a **Windows 10 General Configuration** policy. |
| **Changing wallpaper** | Displaying a custom wallpaper can be a source of disclosure or privacy issues in an education environment (if the wallpaper displays information about the user or the device). Depending on your institution’s policies, you may want to prevent users from changing the wallpaper on your devices.<br/><br/>**Group Policy**: You can configure the wallpaper by using the **Desktop WallPaper** setting in User Configuration\Administrative Templates\Desktop\Desktop.<br/><br/>**Intune**: Not available. |

---

### Configure settings by using Group Policy

Now, you’re ready to configure settings by using Group Policy. The steps in this section assume that you've an AD DS infrastructure. You'll configure the Group Policy settings you select in the [Select Microsoft-recommended settings](#select-microsoft-recommended-settings) section.

For more information about Group Policy, see [Group Policy Planning and Deployment Guide](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754948(v=ws.10)).

#### To configure Group Policy settings

1. Create a Group Policy object (GPO) that will contain the Group Policy settings by completing the steps in [Create a new Group Policy object](/previous-versions/windows/it-pro/windows-server-2003/cc738830(v=ws.10)).
2. Configure the settings in the GPO by completing the steps in [Edit a Group Policy object](/previous-versions/windows/it-pro/windows-server-2003/cc739902(v=ws.10)).
3. Link the GPO to the appropriate AD DS site, domain, or organizational unit by completing the steps in [Link a Group Policy object to a site, domain, or organizational unit](/previous-versions/windows/it-pro/windows-server-2003/cc738954(v=ws.10)).

### Configure settings by using Intune

Now, you’re ready to configure settings using Intune. The steps in this section assume that you've an Office 365 subscription. You'll configure the Intune settings that you selected in the [Select Microsoft-recommended settings](#select-microsoft-recommended-settings) section.

For more information about Intune, see [Documentation for Microsoft Intune](/mem/intune/).

#### To configure Intune settings

1. Check your Intune licensing. If you've a Microsoft 365 subscription, you may already have Intune. For more information, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses).
2. Enroll devices in Microsoft Intune. For more information on your enrollment options, see [Intune enrollment methods for Windows devices](/mem/intune/enrollment/windows-enrollment-methods). 
3. Configure the [compliance settings](/mem/intune/protect/device-compliance-get-started) and [configuration settings](/mem/intune/configuration/device-profiles) that meet your school system's needs.
4. Use the reporting features in Intune to monitor devices. For more information, see [Intune reports](/mem/intune/fundamentals/reports).

### Deploy apps by using Intune

You can use Intune to deploy apps to Android, iOS/iPadOS, macOS, and Windows devices. You can manage app security and features on organization-owned devices and personal devices.

For more information about how to configure Intune to manage your apps, see:

- [What is Microsoft Intune app management?](/mem/intune/apps/app-management)
- [App protection policies overview](/mem/intune/apps/app-protection-policy)

### Summary

In this section, you prepared your institution for device management. You determined whether you want to use Group Policy or Intune to manage your devices. You identified the configuration settings that you want to use to manage your users and devices. Finally, you configured the Group Policy and Intune settings in Group Policy and Intune, respectively.

## Deploy Windows 10 to devices

You’re ready to deploy Windows 10 to faculty and student devices. You must complete the steps in this section for each student device in the classrooms and for any new student devices you add in the future. You can also perform these actions for any device that’s eligible for a Windows 10 upgrade. This section discusses deploying Windows 10 to new devices, refreshing Windows 10 on existing devices, and upgrading existing devices that are running eligible versions of Windows 8.1 or Windows to Windows 10. 

### Prepare for deployment

Prior to deployment of Windows 10, ensure that you complete the tasks listed in Table 12. Most of these tasks are already complete, but use this step to make sure.

*Table 12. Deployment preparation checklist*

---
| Tasks |
|-------|
| The target devices have sufficient system resources to run Windows 10. |
| Identify the necessary devices drivers, and import them to the MDT deployment share. |
| Create an MDT application for each Microsoft Store and Windows desktop app. |
| Notify the students and faculty about the deployment. |

---

### Perform the deployment

Use the Deployment Wizard to deploy Windows 10. The LTI deployment process is almost fully automated: You provide only minimal information to the Deployment Wizard at the beginning of the process. After the wizard collects the necessary information, the remainder of the process is fully automated. 

> [!NOTE]
> To fully automate the LTI deployment process, complete the steps in the “Fully Automated LTI Deployment Scenario” section in the [Microsoft Deployment Toolkit Samples Guide](/mem/configmgr/mdt/samples-guide).

In most instances, deployments occur without incident. Only in rare occasions do deployments experience problems.

#### To deploy Windows 10

1. **Initiate the LTI deployment process**. Initiate the LTI deployment process booting over the network (PXE boot) or from local media. You selected the method for initiating the LTI deployment process in the [Select a method to initiate deployment](#select-a-method-to-initiate-deployment) section earlier in this guide.
2. **Complete the Deployment Wizard**. For more information about how to complete the Deployment Wizard, see the “Running the Deployment Wizard” topic in [Using the Microsoft Deployment Toolkit](/mem/configmgr/mdt/use-the-mdt#Running%20the%20Deployment%20Wizard).

### Set up printers

After you've deployed Windows 10, the devices are almost ready for use. First, you must set up the printers that each classroom will use. Typically, you connect the printers to the same network as the devices in the same classroom. If you don’t have printers in your classrooms, skip this section and proceed to the [Verify deployment](#verify-deployment) section.

> [!NOTE]
> If you’re performing an upgrade instead of a new deployment, the printers remain configured as they were in the previous version of Windows. As a result, you can skip this section and proceed to the [Verify deployment](#verify-deployment) section.

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

As a final quality control step, verify the device configuration to ensure that all apps run. Microsoft recommends that you perform all the tasks that the user would perform. Specifically, verify the following requirements:

- The device can connect to the Internet and view the appropriate web content in Microsoft Edge.
- Windows Update is active and current with software updates.
- Windows Defender is active and current with malware Security intelligence.
- Windows Defender SmartScreen is active.
- All Microsoft Store apps are properly installed and updated.
- All Windows desktop apps are properly installed and updated.
- Printers are properly configured.

When you've verified that the first device is properly configured, you can move to the next device and perform the same steps.

### Summary

You prepared the devices for deployment by verifying that they have adequate system resources and that the resources in the devices have corresponding Windows 10 device drivers. You performed device deployment over the network or by using local MDT media. Next, you configured the appropriate printers on the devices. Finally, you verified that the devices are properly configured and ready for use.

## Maintain Windows devices and Office 365

After the initial deployment, you'll need to perform certain tasks to maintain the Windows 10 devices and your Office 365 Education subscription. You should perform these tasks on the following schedule:

- **Monthly.** These tasks help ensure that the devices are current with software updates and properly protected against viruses and malware.
- **New semester or academic year.** Perform these tasks prior to the start of a new curriculum—for example, at the start of a new academic year or semester. These tasks help ensure that the classroom environments are ready for the next group of students.
- **As required (ad hoc).** Perform these tasks as necessary in a classroom. For example, a new version of an app may be available, or a student may inadvertently corrupt a device so that you must restore it to the default configuration.

Table 13 lists the school and individual classroom maintenance tasks, the resources for performing the tasks, and the schedule (or frequency) on which you should perform the tasks.

*Table 13. School and individual classroom maintenance tasks, with resources and the schedule for performing them*

---
| Task and resources | Monthly | New semester or academic year | As required |
| --- |  --- |  --- |  --- | 
| Verify that Windows Update is active and current with operating system and software updates.<br/><br/>For more information about completing this task, see:<br/><br/>- Intune: See [Keep Windows PCs up to date with software updates in Microsoft Intune](https://www.microsoft.com/en-us/insidetrack/keeping-windows-10-devices-up-to-date-with-microsoft-intune-and-windows-update-for-business)<br/>- Group Policy: See [Windows Update for Business](/windows/deployment/update/waas-manage-updates-wufb)<br/>- Windows Server Update Services (WSUS): See [Deploy Windows Server Update Services](/windows-server/administration/windows-server-update-services/deploy/deploy-windows-server-update-services)<br/>- Neither Intune, Group Policy, or WSUS: See [Update Windows](https://support.microsoft.com/windows/update-windows-3c5ae7fc-9fb6-9af1-1984-b5e0412c556a). | ✔️ | ✔️ | ✔️ |
| Verify that Windows Defender is active and current with malware Security intelligence.<br/><br/>For more information, see [Enforce compliance for Microsoft Defender for Endpoint with Conditional Access in Intune](/mem/intune/protect/advanced-threat-protection) and [Enable and configure Microsoft Defender Antivirus always-on protection in Group Policy](/microsoft-365/security/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus)). | ✔️ | ✔️ | ✔️ |
| Verify that Windows Defender has run a scan in the past week and that no viruses or malware were found.<br/><br/>For more information about completing this task, see [Protect my PC from viruses](https://support.microsoft.com/windows/protect-my-pc-from-viruses-b2025ed1-02d5-1e87-ba5f-71999008e026). | ✔️ | ✔️ | ✔️ |
| Verify that you're using the appropriate Windows 10 servicing options for updates and upgrades (such as selecting whether you want to use Current Branch or Current Branch for Business).<br/><br/> For more information about Windows 10 servicing options for updates and upgrades, see [Windows 10 servicing options for updates and upgrades](/windows/deployment/update/). |  | ✔️ | ✔️ |
| Refresh the operating system and apps on devices.<br/><br/>For more information about completing this task, see the [Deploy Windows 10 to devices](#deploy-windows-10-to-devices) section. |  | ✔️ | ✔️ |
| Install any new Windows desktop apps or update any Windows desktop apps that are used in the curriculum.<br/><br/>For more information, see the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section. |  | ✔️ | ✔️ |
| Install new or update existing Microsoft Store apps that are used in the curriculum.<br/><br/>Microsoft Store apps are automatically updated from Microsoft Store. The menu bar in the Microsoft Store app shows whether any Microsoft Store app updates are available for download.<br/><br/>You can also deploy Microsoft Store apps directly to devices by using Intune. For more information, see the [Deploy apps by using Intune](#deploy-apps-by-using-intune) section. |  | ✔️ | ✔️ |
| Remove unnecessary user accounts (and corresponding licenses) from Office 365.<br/><br/>For more information, see:<br/><br/>- Remove unnecessary user accounts, see [Delete a user from your organization](/microsoft-365/admin/add-users/delete-a-user).<br/>- Unassign licenses, see [Add users and assign licenses at the same time](/microsoft-365/admin/add-users/add-users). |  | ✔️ | ✔️ |
| Add new accounts (and corresponding licenses) to Office 365.<br/><br/>For more information, see [Add users and assign licenses at the same time](/microsoft-365/admin/add-users/add-users) and [Assign licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users). |  | ✔️ | ✔️ |
| Create or modify security groups and manage group membership in Office 365.<br/><br/>For more information, see:<br/><br/>- [Create a group in the Microsoft 365 admin center](/microsoft-365/admin/create-groups/create-groups)<br/>- [Add or remove members from Microsoft 365 groups using the admin center](/microsoft-365/admin/create-groups/add-or-remove-members-from-groups) |  | ✔️ | ✔️ |
| Create or modify Exchange Online or Microsoft Exchange Server distribution lists in Office 365.<br/><br/>For more information, see [Create and manage distribution list groups in Exchange Online](/exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups) and [Create, edit, or delete a security group in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) |  | ✔️ | ✔️ |
| Install new student devices<br/><br/>Follow the same steps in the [Deploy Windows 10 to devices](#deploy-windows-10-to-devices) section. |  |  | ✔️ |

---

### Summary

Now, you've identified the tasks you need to perform monthly, at the end of an academic year or semester, and as required. Your school configuration should match the typical school configuration that you saw in the [Plan a typical school configuration](#plan-a-typical-school-configuration) section. By running these maintenance tasks, you help ensure that your school stays secure and is configured as you specified. 

## Related resources

- [Try it out: Windows 10 deployment (for educational institutions)](../index.yml)
- [Try it out: Windows 10 in the classroom](../index.yml)
- [Chromebook migration guide](/education/windows/chromebook-migration-guide)
