---
title: Windows Insider Program for Business
description: Overview of the Windows Insider Program for Business
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jaimeo
ms.localizationpriority: high
ms.author: jaimeo
ms.date: 02/27/2018
---

# Windows Insider Program for Business


**Applies to**

- Windows 10

> **Looking for information about Windows 10 for personal or home use?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)



## Getting started with Windows Insider Program for Business

To get started with the Windows Insider Program for Business, follow these steps:

1. [Register your organization's Azure AD account](#individual-registration) to the Windows Insider Program for Business.
2. [Register your organization's Azure AD domain](#organizational-registration) to the Windows Insider Program for Business.</br>**Note:** Registering user has to be a Global Administrator in the Azure AD domain.
3. [Set policies](#manage-windows-insider-preview-builds) to enable Windows Insider Preview builds and select flight rings.

>[!IMPORTANT]
>To receive Windows Insider Preview builds, set the **Allow Telemetry** setting in Group Policy to 2 or higher.
>
>In **Group Policy**, this setting is in **Computer Configuration/Administrative Templates/Windows Components/Data Collection and Preview Builds - Allow Telemetry**. In **MDM**, the setting is in [**System/AllowTelemetry**](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry). 


## Register to the Windows Insider Program for Business

The first step to installing a Windows 10 Insider Preview build is to register as a Windows Insider. You and your users have two registration options. 

### Register using your work account (recommended) 
Registering with your work account in Azure Active Directory (AAD) is required to submit feedback on behalf of your organization and manage Insider Preview builds on other devices in your domain.   

>[!NOTE]
>Requires Windows 10 Version 1703 or later. Confirm by going to Settings>System>About. If you do not have an AAD account, [find out how to get an Azure Active Directory tenant](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-howto-tenant).

### Register your personal account
Use the same account that you use for other Microsoft services. If you don’t have a Microsoft account, it is easy to get one. [Get a Microsoft account](https://account.microsoft.com/account).

## Install Windows Insider Preview Builds
You can install Windows 10 Insider Preview builds directly on individual devices, manage installation across multiple devices in an organization, or install on a virtual machine. 

### Install on an individual device

1.	Open  [Windows Insider Program settings](ms-settings:windowsinsider) (On your Windows 10 device, go to Start > Settings > Update & security > Windows Insider Program). Note: To see this setting, you need to have administrator rights to your device.
2.	Link your Microsoft or work account that you used to register as a Windows Insider. 
3.	Follow the prompts. 

[![Settings UI showing Windows Insider Program item selected in lower left](images/WIP4Biz_Prompts.png)](images/WIP4Biz_Prompts.png)

### Install across multiple devices

Administrators can install and manage Insider Preview builds centrally across multiple devices within their domain. Here’s how: 

1.	**Register your domain with the Windows Insider Program**
Rather than have each user register individually for Insider Preview builds, administrators can simply [register their domain](https://insider.windows.com/en-us/for-business-organization-admin/) and control settings centrally.</br>**Note:** The signed-in user needs to be a **Global Administrator** of the Azure AD domain in order to be able to register the domain.

To register a domain, you must be registered in the Windows Insider Program with your work account in Azure Active Directory and you must be assigned a **Global Administrator** role on that Azure AD domain. Also requires Windows 10 Version 1703 or later. 

**Register your domain**. 

>[!Note]
>- Currently, the Windows Insider Program for Business supports [Azure Active Directory (Azure AD)](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-whatis)--but not on-premises Active Directory--as a corporate authentication method. 
>- If your company has a paid subscription to Office 365, Microsoft Dynamics CRM Online, Enterprise Mobility Suite, or other Microsoft services – you have a free subscription to Microsoft Azure Active Directory. This subscription can be used to create users for enrollment in the Windows Insider Program for Business.
>- If you do not have an AAD account, install Insider Preview builds on individual devices with a registered Microsoft account.    

2. **Apply Policies**
Once you have registered your enterprise domain, you can control how and when devices receive Windows Insider Preview builds on their devices. See: [How to manage Windows 10 Insider Preview builds across your organization](https://docs.microsoft.com/en-us/windows/deployment/update/waas-windows-insider-for-business).

### Install on a virtual machine. 
This option enables you to run Insider Preview builds without changing the Windows 10 production build already running on a device.
  
For guidance on setting up virtual machines on your device, see [Introduction to Hyper-V on Windows 10](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/).
 
To download the latest Insider Preview build to run on your virtual machine, see
[Windows Insider Preview downloads](https://www.microsoft.com/en-us/software-download/windowsinsiderpreviewadvanced) 

## Manage Windows Insider Preview builds

Starting with Windows 10, version 1709, administrators can control how and when devices receive Windows Insider Preview builds.

The **Manage preview builds** setting gives enables or prevents preview build installation on a device. You can also decide to stop preview builds once the release is public.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/Windows Update for Business** - *Manage preview builds*
* MDM: **Update/ManagePreviewBuilds**

>[!NOTE]
>**MDM Values for ManagePreviewBuilds**:
>* 0 - Disable preview builds
>* 1 - Disable preview builds once next release is public
>* 2 - Enable preview builds
>* 3 - Preview builds are left to user selection *(default)*

The **Branch Readiness Level** settings allows you to choose between preview [flight rings](#flight-rings), and defer or pause the delivery of updates.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/ Windows Update for Business** - *Select when Preview Builds and Feature Updates are received*
* MDM: [**Update/BranchReadinessLevel**](/windows/client-management/mdm/policy-csp-update#update-branchreadinesslevel)

![Group Policy dialog showing the "Select when Preview Builds and Feature updates are received" configuration panel](images/waas-wipfb-policy1.png)

### Individual enrollment

If you want to manage Windows Insider preview builds prior to Windows 10, version 1709, or wish to enroll a single device, follow these steps:

1. Enroll your device by going to **Start > Settings > Update & security > Windows Insider Program** and selecting **Get Started**. Sign-in using the account you used to register for the Windows Insider Program.
2. Read the privacy statement and then click **Next**, **Confirm**,
3. Schedule a restart. You are now ready to install your first preview build.
4. To install the first preview, open **Start** > **Settings** > **Update & security** > **Windows Insider Program** and select your Windows Insider level. The device receives the most recent Windows Insider build for the Windows Insider level you select. 

>[!NOTE]
>To enroll your device, you’ll require administration rights on the device, which must be running Windows 10, Version 1703 or later. If you are already registered in the Windows Insider Program using your Microsoft account, you’ll need to [switch enrollment to the organizational account](#how-to-switch-between-your-msa-and-your-corporate-aad-account).

>[!TIP]
>Administrators have the option to use [Device Health](/windows/deployment/update/device-health-monitor) in Windows Analytics to monitor devices running Windows 10 Insider Preview builds.

## Flight rings

Flight rings are used to evaluate the quality of our software as it is released to progressively larger audiences. We will flight a Feature Update, application, etc. to the first ring if it passes all required automated testing in the lab. The flight will continue to be evaluated against a set of criteria to ensure it is ready to progress to the next ring.

These are the available flight rings:

### Release Preview

Best for Insiders who prefer to get early access to updates for the Semi-Annual Channel, Microsoft applications, and drivers, with minimal risk to their devices, and still want to provide feedback to make Windows devices great.

Insiders on this level receive builds of Windows just before Microsoft releases them to the Semi-Annual Channel. Although these builds aren’t final, they are the most complete and stable builds available to Windows Insider Program participants. This level provides the best testing platform for organizations that conduct early application compatibility testing on Windows Insider devices.

The Release Preview Ring will only be visible when your Windows build version is the same as the Semi-Annual Channel.

To move from a Preview build to the Semi-Annual Channel, use the [Media Creation Tool](http://go.microsoft.com/fwlink/?LinkId=691209) (for device) or [Windows Device Recovery Tool](http://go.microsoft.com/fwlink/p/?LinkId=522381) (for Mobile) to reinstall Windows.  

### Slow

The Slow Windows Insider level is for users who prefer to see new builds of Windows with minimal risk to their devices but still want to provide feedback to Microsoft about their experience with the new build.

* Builds are sent to the Slow Ring after feedback has been received from Windows Insiders within the Fast Ring and analyzed by our Engineering teams.  
* These builds will include updates to fix key issues that would prevent many Windows Insiders from being able to use the build on a daily basis.  
* These builds still might have issues that would be addressed in a future flight.

### Fast

Best for Windows Insiders who prefer being the first to get access to builds and feature updates--with some risk to their devices--in order to identify issues, and provide suggestions and ideas to make Windows software and devices great.

* Windows Insiders with devices in the Fast Ring should be prepared for more issues that might block key activities that are important to you or might require significant workarounds. 
* Because we are also validating a build on a smaller set of devices before going to Fast, there is also a chance that some features might work on some devices but might fail in other device configurations. 
* Windows Insiders should be ready to reinstall Windows using the [Media Creation Tool](http://go.microsoft.com/fwlink/?LinkId=691209) or [Windows Device Recovery Tool](http://go.microsoft.com/fwlink/p/?LinkId=522381) when you are significantly blocked.
* Remember to report any issue to us through the Windows Insider Feedback Hub or the Windows Insider community forum.

>[!NOTE]
>Once your device is updated to Windows 10 and you select your desired flight ring, the process known as "Compatibility check" will need to run in the background. There is no manual way to force this process to run. This process allows for the discovery of your OS type (32-bit, 64-bit), build edition (Home, Pro, Enterprise), country and language settings, and other required information. Once this process is complete, your device will be auto-targeted for the next available flight for your selected ring. For the first build on any given device, this might take up to 24 hours to complete.

### How to switch between flight rings

During your time in the Windows Insider Program, you might want to change between flight rings for any number of reasons. Starting with Windows 10, version 1709, use the **Branch Readiness Level** to switch between flight rings.
 
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/ Windows Update for Business** - *Select when Preview Builds and Feature Updates are received*
* MDM: [**Update/BranchReadinessLevel**](/windows/client-management/mdm/policy-csp-update#update-branchreadinesslevel)

To switch flights prior to Windows 10, version 1709, follow these steps:

1. Go to **Settings > Updates & Security >  Windows Insider Program**
2. Under **Choose your level**, select between the following rings -
  * [Windows Insider Fast](#fast)
  * [Windows Insider Slow](#slow)
  * [Release Preview](#release-preview)


## How to switch between your MSA and your Corporate AAD account

If you were using your Microsoft Account (MSA) to enroll to the Windows Insider Program, switch to your organizational account by going to **Settings > Updates & Security >  Windows Insider Program**, and under **Windows Insider account** select **Change**.

![Change Windows Insider account](images/waas-wipfb-change-user.png)

>[!NOTE]
>If you would like to use your corporate account, your device must be connected to your corporate account in AAD for the account to appear in the account list.

## Sharing Feedback Via the Feedback Hub
As you know a key benefit to being a Windows Insider is Feedback. It’s definitely a benefit to us, and we hope it’s a benefit to you. Feedback is vital for making changes and improvements in Windows 10. Receiving quality and actionable feedback is key in achieving these goals.

Use the [**Feedback Hub App**](feedback-hub://?referrer=wipForBizDocs&tabid=2) to submit your feedback to Microsoft.  

When providing feedback, consider the following: 
* Check for existing feedback on the topic you are preparing to log. Another user might have already shared the same feedback. If they have, “upvote” the existing feedback to help prevent duplicate submissions. Adding additional comments to existing feedback can help others by providing clarity to existing information or additional scenarios to review.
* Provide as much information to us as possible: include reproduction steps, screenshots, any detail you think would help us experience the issue as you have, so that we can work on a fix and get it into a new build as soon as possible.

>[!TIP]
>You can then track feedback provided by all users in your organization through the Feedback Hub. Simply filter by **My Organization**. 
>
>If you're signed in to the Feedback Hub App using your personal Microsoft Account (MSA), you can switch to your work account, by clicking on your account, signing out, and signing back in.

>[!NOTE]
>If you signed into the Feedback Hub previously with your MSA, your feedback and badges will not be transferred to your Azure AD sign-in. However, you can switch back to your MSA account in the Feedback Hub to access feedback you’ve submitted and badges you’ve earned.

### User consent requirement

Feedback Hub needs the user’s consent to access their AAD account profile data (we read their name, organizational tenant ID, and user ID). When they sign in for the first time with the AAD account, they will see a popup asking for their permission, like this:

![Feedback Hub consent to AAD pop-up](images/waas-wipfb-aad-consent.png)

Once agreed, everything will work fine, and that user won't be prompted for permission again.

#### Something went wrong

The option for users to give consent for apps to access their profile data is controlled through Azure Active Directory. This means the AAD administrators have the ability to allow or block users from giving consent.

In case the administrators blocked this option, when the user signs in with the AAD account, they will see the following error message:

![Feedback Hub consent error message](images/waas-wipfb-aad-error.png)

This blocks the user from signing in, which means they won't be able to use the Feedback Hub app with their AAD credentials.

**To fix this issue**, an administrator of the AAD directory will need to enable user consent for apps to access their data.

To do this through the **classic Azure portal**:
1. Go to https://manage.windowsazure.com/ .
2. Switch to the **Active Directory** dashboard.  
   ![Azure classic portal dashboard button](images/waas-wipfb-aad-classicaad.png)
3. Select the appropriate directory and go to the **Configure** tab.
4. Under the **integrated applications** section, enable **Users might give applications permissions to access their data**.  
   ![Azure classic portal enable consent](images/waas-wipfb-aad-classicenable.png)

To do this through the **new Azure portal**:
1. Go to https://portal.azure.com/ .
2. Switch to the **Active Directory** dashboard.  
   ![Azure new portal dashboard button](images/waas-wipfb-aad-newaad.png)
3. Switch to the appropriate directory.  
   ![Azure new portal switch directory button](images/waas-wipfb-aad-newdirectorybutton.png)
4. Under the **Manage** section, select **User settings**.  
   ![Azure new portal user settings](images/waas-wipfb-aad-newusersettings.png)
5. In the **Enterprise applications** section, enable **Users can allow apps to access their data**.  
   ![Azure new portal enable consent](images/waas-wipfb-aad-newenable.png)

## Not receiving Windows 10 Insider Preview build updates?

In some cases, your device might not update to the latest Windows Insider Preview build as expected. Here are items that you can review to troubleshoot this issue:

### Perform a manual check for updates 
Go to **Settings > Updates & Security**. Review available updates or select **Check for updates**.

>[!NOTE]
>If you have set Active Hours, ensure your device is left turned on and signed in during the off-hours so the install process can complete.

### Make sure Windows is activated 
Go to **Settings > Updates & Security > Activation** to verify Windows is activated.

### Make sure your corporate account in AAD is connected to your device
Open **Settings \ Accounts \ Access work or school**. If your device is not listed as connected to your account in AAD, click Connect and enter your AAD account.

### Make sure you have selected a flight ring
Open **Settings > Update & Security > Windows Insider Program** and select your flight ring.

### Have you recently done a roll-back? 
If so, double-check your flight settings under **Settings > Update & Security > Windows Insider Program**.

### Did you do a clean installion? 
After a clean installation and initial setup of a Microsoft or corporate account (even one that has been used previously for flighting) the appropriate targeting needs to take place for your device. This background process is known as Compatibility Checker and will run during idle time on your device. This process might take up to 24 hours. To ensure that this occurs in a timely manner, leave your device turned on. 

### Are there known issues for your current build?
On rare occasion, there might be an issue with a build that could lead to issues with updates being received. Check the most recent blog post or contact the Windows Insider team on Twitter for verification (*@WindowsInsider*). You can also check the **Feedback Hub** for announcements and known issues.

## Exiting flighting

After you’ve tried the latest Windows Insider Preview builds, you might want to opt out. In order to do that, go to  **Settings > Update & Security > Windows Insider Program** and select **Stop Insider Preview Builds**. Follow the on-screen instructions to stop flighting to your device.

To go from a Preview build to the Semi-Annual Channel, use the [Media Creation Tool](http://go.microsoft.com/fwlink/?LinkId=691209) (for device) or [Windows Device Recovery Tool](http://go.microsoft.com/fwlink/p/?LinkId=522381) (for Mobile) to reinstall Windows.  

## Unregister

If you no longer plan to manage Windows Insider Preview policies for your organization, you will need to [unregister your domain with the Windows Insider Program](https://insider.windows.com/en-us/insiderorgleaveprogram/). 

Unregistering will not allow any other administrators at your organization to continue to set policies to manage Windows Insider Preview builds across your organization.

Your individual registration with the Insider program will not be impacted. If you wish to leave the Insider program, see the [leave the program](https://insider.windows.com/en-us/how-to-overview/#leave-the-program) instructions.

>[!IMPORTANT]
>Once your domain is unregistered, setting the **Branch Readiness Level** to preview builds will have no effect. Return this setting to its unconfigured state in order to enable users to control it from their devices.

## Community 

Windows Insiders are a part of a global community focused on innovation, creativity, and growth in their world.  

The Windows Insider program enables you to deepen connections to learn from peers and to connect to subject matter experts (inside Microsoft, Insiders in your local community and in another country) who understand your unique challenges, and who can provide strategic advice on how to maximize your impact.
 
Collaborate and learn from experts in the [WINDOWS INSIDER TECH COMMUNITY](https://techcommunity.microsoft.com/t5/Windows-Insider-Program/bd-p/WindowsInsiderProgram)


## Additional help resources

* [**Windows Blog**](https://blogs.windows.com/blog/tag/windows-insider-program/) - With each new build release we publish a Windows Blog post that outlines key feature changes as well as known issues that Insiders might encounter while using the build.
* [**Microsoft Technical Community for Windows Insiders**](https://techcommunity.microsoft.com/t5/Windows-Insider-Program/bd-p/WindowsInsiderProgram) - Engage with Windows Insiders around the world in a community dedicated to the Windows Insider Program.
* [**Windows Insider Preview community forum**](https://answers.microsoft.com/en-us/insider/forum/insider_wintp) - Answers is Microsoft’s forum platform and there is an entire area dedicated to the Windows Insider Program. Insiders can filter between device, Office, Edge, and many others.

## Learn More
- [Windows Insider Program for Business using Azure Active Directory](waas-windows-insider-for-business-aad.md)
- [Windows Insider Program for Business Frequently Asked Questions](waas-windows-insider-for-business-faq.md)

## Related Topics
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
