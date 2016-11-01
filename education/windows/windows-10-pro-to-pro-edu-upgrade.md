---
title: Windows 10 Pro to Pro Education upgrade
description: Describes how IT Pros can opt into a Windows 10 Pro Education upgrade from the Windows Store for Business.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: edu
author: CelesteDG
---


# Upgrade Windows 10 Pro to Pro Education from Windows Store for Business

Windows 10 Pro Education is a new offering in Windows 10 Anniversary Update (Windows 10, version 1607). This edition builds on the commercial version of Windows 10 Pro and provides important management controls needed in schools by providing education-specific default settings.

If you have an education tenant and use Windows 10 Pro in your schools now, IT Pros can opt-in to a free upgrade to Windows 10 Pro Education through the Windows Store for Business. To take advantage of this offering, you must have the following:

-   Windows 10 Pro, version 1607 (also known as Windows 10 Anniversary Update) or later installed on the devices to be upgraded.

-   Azure Active Directory (Azure AD) available for identity management.

Starting with Windows 10, version 1607, you can easily move from Windows 10 Pro to Windows 10 Pro Education—no keys and no reboots. After one of your users enters the Azure AD credentials associated with a Windows 10 Pro Education license, the operating system turns from Windows 10 Pro to Windows 10 Pro Education and all the appropriate Windows 10 Pro Education features are unlocked. When a license expires or is transferred to another user, the Windows 10 Pro Education device seamlessly steps back down to Windows 10 Pro.

Previously, only schools or organizations with a Microsoft Volume Licensing Agreement could deploy Windows 10 Pro Education to their users. Now, if you have an education tenant, you can take advantage of the Windows 10 Pro Education features.

When you upgrade to Windows 10 Pro Education, you get the following benefits:

-   **Windows 10 Pro Education edition**. Devices currently running Windows 10 Pro, version 1607 can get Windows 10 Pro Education Current Branch (CB). This benefit does not include Long Term Service Branch (LTSB).

-   **Support from one to hundreds of users**. The Windows 10 Pro Education program does not have a limitation on the number of licenses an organization can have.

-   **Deploy on up to five devices**. For each user covered by the license, you can deploy Windows 10 Enterprise edition on up to five devices.
> [!IMPORTANT]  
> **TBD - Reviewers:** Does the above item apply here?

-   **Roll back to Windows 10 Pro at any time**. When a user’s subscription expires or is transferred to another user, the Windows 10 Pro Education device reverts seamlessly to Windows 10 Pro edition (after a grace period of up to 90 days).

-   **Move licenses between users**. Licenses can be quickly and easily reallocated from one user to another user, allowing you to optimize your licensing investment against changing needs.


> [!IMPORTANT]  
> **TBD - Reviewers:** Does the following section apply to Pro Education?

How does the Windows 10 Pro to Pro Education upgrade program compare with Microsoft Volume Licensing Agreements and Software Assurance?

-   [Microsoft Volume Licensing](http://www.microsoft.com/en-us/licensing/default.aspx) programs are broader in scope, providing organizations with access to licensing for all Microsoft products.

-   [Software Assurance](http://www.microsoft.com/en-us/Licensing/licensing-programs/software-assurance-default.aspx) provides organizations with the following categories of benefits:

    -   **Deployment and management**. These benefits include planning services, Microsoft Desktop Optimization (MDOP), Windows Virtual Desktop Access Rights, Windows-To-Go Rights, Windows Roaming Use Rights, Windows Thin PC, Windows RT Companion VDA Rights, and other benefits.

    -   **Training**. These benefits include training vouchers, online e-learning, and a home use program.

    -   **Support**. These benefits include 24x7 problem resolution support, backup capabilities for disaster recovery, System Center Global Service Monitor, and a passive secondary instance of SQL Server.

    -   **Specialized**. These benefits include step-up licensing availability (which enables you to migrate software from an earlier edition to a higher-level edition) and to spread license and Software Assurance payments across three equal, annual sums.

In summary, the Windows 10 Pro Education free upgrade through the Windows Store for Business is an upgrade offering that provides organizations easier, more flexible access to the benefits of Windows 10 Pro Education edition.

## Compare Windows 10 Pro and Pro Education editions

In Windows 10, version 1607, the Windows 10 Pro Education edition contains the same features as the Windows 10 Pro edition except for the following differences:

- Windows 10 Pro Education Cortana is removed from Windows 10 Pro Education
- Options to manage Windows 10 tips and tricks and Windows Store suggestions

See [Windows 10 editions for education customers](windows-editions-for-education-customers.md) for more info about Windows 10 Pro Education and you can also [Compare Windows 10 Editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare) to find out more about the features we support in other editions of Windows 10.

## Preparing for deployment of Windows 10 Pro Education licenses

You probably have on-premises Active Directory Domain Services (AD DS) domains. Users will use their domain-based credentials to sign in to the AD DS domain. Before you start deploying Windows 10 Pro Education to users, you need to synchronize the identities in the on-premises AD DS domain with Azure AD.

You might ask why you need to synchronize these identities. The answer is so that users will have a *single identity* that they can use to access their on-premises apps and cloud services that use Azure AD (such as Windows 10 Pro Education). This means that users can use their existing credentials to sign in to Azure AD and access the cloud services that you provide and manage for them.

**Figure 1** illustrates the integration between the on-premises AD DS domain with Azure AD. [Microsoft Azure Active Directory Connect](http://www.microsoft.com/en-us/download/details.aspx?id=47594) (Azure AD Connect) is responsible for synchronization of identities between the on-premises AD DS domain and Azure AD. Azure AD Connect is a service that you can install on-premises or in a virtual machine in Azure.

![Illustration of Azure Active Directory Connect](images/enterprise-e3-ad-connect.png)

**Figure 1. On-premises AD DS integrated with Azure AD**

For more information about integrating on-premises AD DS domains with Azure AD, see the following resources:

-   [Integrating your on-premises identities with Azure Active Directory](http://azure.microsoft.com/en-us/documentation/articles/active-directory-aadconnect/)
-   [Azure AD + Domain Join + Windows 10](https://blogs.technet.microsoft.com/enterprisemobility/2016/02/17/azure-ad-domain-join-windows-10/)

### Preparing for deployment: reviewing requirements

Devices must be running Windows 10 Pro, version 1607, and be Azure Active Directory joined, or domain joined with Azure AD Connect. Customers who are federated with Azure Active Directory are also eligible. For more information, see [Review requirements on devices](#review-requirements-on-devices), later in this topic.

<!-- Watch the preceding link if you divide this into multiple topics. -->

## Explore the upgrade experience

Now that you've upgraded from Pro to Pro Education, and Windows 10 Pro Education licenses have been assigned to users, the users are ready to upgrade their devices running Windows 10 Pro, version 1607 edition to Windows 10 Pro Education edition. So what will the users experience? How will they upgrade their devices?

### Step 1: Join users’ devices to Azure AD

Users can join a device to Azure AD the first time they start the device (during setup), or they can join a device that they already use running Windows 10 Pro, version 1607.

**To join a device to Azure AD the first time the device is started**

1.  During the initial setup, on the **Who owns this PC?** page, select **My organization**, and then click **Next**, as illustrated in **Figure 2**.

    <img src="images/enterprise-e3-who-owns.png" alt="Who owns this PC? page in Windows 10 setup" width="624" height="351" />

    **Figure 2. The “Who owns this PC?” page in initial Windows 10 setup**

2.  On the **Choose how you’ll connect** page, select **Join Azure AD**, and then click **Next**, as illustrated in **Figure 3**.

    <img src="images/enterprise-e3-choose-how.png" alt="Choose how you'll connect - page in Windows 10 setup" width="624" height="351" />

    **Figure 3. The “Choose how you’ll connect” page in initial Windows 10 setup**

3.  On the **Let’s get you signed in** page, enter the Azure AD credentials, and then click **Sign in**, as illustrated in **Figure 4**.

    <img src="images/enterprise-e3-lets-get.png" alt="Let's get you signed in - page in Windows 10 setup" width="624" height="351" />

    **Figure 4. The “Let’s get you signed in” page in initial Windows 10 setup**

Now the device is Azure AD joined to the company’s subscription.

**To join a device to Azure AD when the device already has Windows 10 Pro, version 1607 installed and set up**

1.  Go to **Settings &gt; Accounts &gt; Access work or school**, as illustrated in **Figure 5**.

    <img src="images/enterprise-e3-connect-to-work-or-school.png" alt="Connect to work or school configuration" width="624" height="482" />

    **Figure 5. Connect to work or school configuration in Settings**

2.  In **Set up a work or school account**, click **Join this device to Azure Active Directory**, as illustrated in **Figure 6**.

    <img src="images/enterprise-e3-set-up-work-or-school.png" alt="Set up a work or school account" width="624" height="603" />

    **Figure 6. Set up a work or school account**

3.  On the **Let’s get you signed in** page, enter the Azure AD credentials, and then click **Sign in**, as illustrated in **Figure 7**.

    <img src="images/enterprise-e3-lets-get-2.png" alt="Let's get you signed in - dialog box" width="624" height="603" />

    **Figure 7. The “Let’s get you signed in” dialog box**

Now the device is Azure AD joined to the company’s subscription.

### Step 2: Sign in using Azure AD account

Once the device is joined to your Azure AD subscription, the user will sign in by using his or her Azure AD account, as illustrated in **Figure 8**. The Windows 10 Pro Education license associated with the user will enable Windows 10 Enterprise edition capabilities on the device.

<img src="images/enterprise-e3-sign-in.png" alt="Sign in, Windows 10" width="624" height="351" />

**Figure 8. Sign in by using Azure AD account**

### Step 3: Verify that Pro Education edition is enabled

> [!IMPORTANT]  
> **TBD - Reviewers:** The screenshots in this section need to be updated for Pro Education and not Enterprise E3 (original source)

You can verify the Windows 10 Pro Education in **Settings &gt; Update & Security &gt; Activation**, as illustrated in **Figure 9**.

<span id="win-10-activated-subscription-active"/>
**Figure 9** - Windows 10 Pro Education in Settings

<img src="images/enterprise-e3-win-10-activated-enterprise-subscription-active.png" alt="Windows 10 activated and subscription active" width="624" height="407" />

If there are any problems with the Windows 10 Pro Education license or the activation of the license, the **Activation** panel will display the appropriate error message or status. You can use this information to help you diagnose the licensing and activation process.

## Troubleshoot the user experience

In some instances, users may experience problems with the Windows 10 Pro Education upgrade. The most common problems that users may experience are as follows:

-   The existing Windows 10 Pro, version 1607 operating system is not activated.

-   The Windows 10 Pro Education upgrade has lapsed or has been removed.

Use the following figures to help you troubleshoot when users experience these common problems:


<span id="win-10-activated-subscription-active"/>
**[Figure 9](#win-10-activated-subscription-active)** - Illustrates a device in a healthy state, where Windows 10 Pro, version 1607 is activated and the Windows 10 Pro Education upgrade is active.

<img src="images/enterprise-e3-win-10-activated-enterprise-subscription-active.png" alt="Windows 10 activated and subscription active" width="624" height="407" />

<span id="win-10-not-activated"/>

**[Figure 10](#win-10-not-activated)** - Illustrates a device on which Windows 10 Pro, version 1607 is not activated, but the Windows 10 Pro Education upgrade is active.

<img src="images/enterprise-e3-win-10-not-activated-enterprise-subscription-active.png" alt="Windows 10 not activated and subscription active" width="624" height="407" /><br><br>

<span id="subscription-not-active"/>

**[Figure 11](#subscription-not-active)** - Illustrates a device on which Windows 10 Pro, version 1607 is activated, but the Windows 10 Pro Education upgrade is lapsed or removed.

<img src="images/enterprise-e3-win-10-activated-enterprise-subscription-not-active.png" alt="Windows 10 activated and subscription not active" width="624" height="407" /><br><br>

<span id="win-10-not-activated-subscription-not-active"/>

**[Figure 12](#win-10-not-activated-subscription-not-active)** - Illustrates a device on which Windows 10 Pro, version 1607 license is not activated and the Windows 10 Pro Education upgrade is lapsed or removed.

<img src="images/enterprise-e3-win-10-not-activated-enterprise-subscription-not-active.png" alt="Windows 10 not activated and subscription not active" width="624" height="407" /><br><br>

### Review requirements on devices

Devices must be running Windows 10 Pro, version 1607, and be Azure Active Directory joined, or domain joined with Azure AD Connect. Customers who are federated with Azure Active Directory are also eligible. You can use the following procedures to review whether a particular device meets requirements.

**To determine if a device is Azure Active Directory joined:**

1.  Open a command prompt and type **dsregcmd /status**.

2.  Review the output under Device State. If the **AzureAdJoined** status is YES, the device is Azure Active Directory joined.

**To determine the version of Windows 10:**

-   At a command prompt, type:
    **winver**

    A popup window will display the Windows 10 version number and detailed OS build information.

    If a device is running a previous version of Windows 10 Pro (for example, version 1511), it will not be upgraded to Windows 10 Pro Education when a user signs in, even if the user has been assigned a license.

## Related topics

[Deploy Windows 10 in a school](deploy-windows-10-in-a-school.md)

[Deploy Windows 10 in a school district](deploy-windows-10-in-a-school-district.md)

[Compare Windows 10 editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare)
