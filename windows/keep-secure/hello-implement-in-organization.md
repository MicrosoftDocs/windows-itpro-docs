---
title: Implement Windows Hello in your organization (Windows 10)
description: You can create a Group Policy or mobile device management (MDM) policy that will implement Windows Hello for Business on devices running Windows 10.
ms.assetid: 47B55221-24BE-482D-BD31-C78B22AC06D8
keywords: identity, PIN, biometric, Hello
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: jdeckerMS
localizationpriority: high
---

# Implement Windows Hello for Business in your organization

**Applies to**
-   Windows 10
-   Windows 10 Mobile

You can create a Group Policy or mobile device management (MDM) policy that will implement Windows Hello on devices running Windows 10.

>[!IMPORTANT]
>The Group Policy setting **Turn on PIN sign-in** does not apply to Windows Hello for Business. It still prevents or enables the creation of a convenience PIN for Windows 10, version 1507 and 1511. 
>
>Beginning in version 1607, Windows Hello as a convenience PIN is disabled by default on all domain-joined computers. To enable a convenience PIN for Windows 10, version 1607, enable the Group Policy setting **Turn on convenience PIN sign-in**. 
>
>Use **Windows Hello for Business** policy settings to manage PINs for Windows Hello for Business.
 
## Group Policy settings for Windows Hello for Business

The following table lists the Group Policy settings that you can configure for Hello use in your workplace. These policy settings are available in both **User configuration** and **Computer Configuration** under **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Hello for Business**.


<table>
<tr>
<th colspan="2">Policy</th>
<th>Options</th>
</tr>
<tr>
<td>Use Windows Hello for Business</td>
<td></td>
<td>
<p><b>Not configured</b>: Users can provision Windows Hello for Business, which encrypts their domain password.</p>
<p><b>Enabled</b>: Device provisions Windows Hello for Business using keys or certificates for all users.</p>
<p><b>Disabled</b>: Device does not provision Windows Hello for Business for any user.</p>
</td>
</tr>
<tr>
<td>Use a hardware security device</td>
<td></td>
<td>
<p><b>Not configured</b>: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.</p>
<p><b>Enabled</b>: Windows Hello for Business will only be provisioned using TPM.</p>
<p><b>Disabled</b>: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.</p>
</td>
</tr>
<tr>
<td>Use biometrics</td>
<td></td>
<td>
<p><b>Not configured</b>: Biometrics can be used as a gesture in place of a PIN.</p>
<p><b>Enabled</b>: Biometrics can be used as a gesture in place of a PIN.</p>
<p><b>Disabled</b>: Only a PIN can be used as a gesture.</p>
</td>
</tr>
<tr>
<td rowspan="8">PIN Complexity</td>
<td>Require digits</td>
<td>
<p><b>Not configured</b>: Users must include a digit in their PIN.</p>
<p><b>Enabled</b>: Users must include a digit in their PIN.</p>
<p><b>Disabled</b>: Users cannot use digits in their PIN.</p>
</td>
</tr>
<tr>
<td>Require lowercase letters</td>
<td>
<p><b>Not configured</b>: Users cannot use lowercase letters in their PIN.</p>
<p><b>Enabled</b>: Users must include at least one lowercase letter in their PIN.</p>
<p><b>Disabled</b>: Users cannot use lowercase letters in their PIN.</p>
</td>
</tr>
<tr>
<td>Maximum PIN length</td>
<td>
<p><b>Not configured</b>: PIN length must be less than or equal to 127.</p>
<p><b>Enabled</b>: PIN length must be less than or equal to the number you specify.</p>
<p><b>Disabled</b>: PIN length must be less than or equal to 127.</p>
</td>
</tr>
<tr>
<td>Minimum PIN length</td>
<td>
<p><b>Not configured</b>: PIN length must be greater  than or equal to 4.</p>
<p><b>Enabled</b>: PIN length must be greater than or equal to the number you specify.</p>
<p><b>Disabled</b>: PIN length must be greater  than or equal to 4.</p>
</td>
</tr>
<tr>
<td>Expiration</td>
<td>
<p><b>Not configured</b>: PIN does not expire.</p>
<p><b>Enabled</b>: PIN can be set to expire after any number of days between 1 and 730, or PIN can be set to never expire by setting policy to 0.</p>
<p><b>Disabled</b>: PIN does not expire.</p>
</td>
</tr>
<tr>
<td>History</td>
<td>
<p><b>Not configured</b>: Previous PINs are not stored.</p>
<p><b>Enabled</b>: Specify the number of previous PINs that can be associated to a user account that can't be reused.</p>
<p><b>Disabled</b>: Previous PINs are not stored.</p>
<div class="alert"><b>Note</b>  Current PIN is included in PIN history.</div>
<div> </div>
</td>
</tr>
<tr>
<td>Require special characters</td>
<td>
<p><b>Not configured</b>: Users cannot include a special character in their PIN.</p>
<p><b>Enabled</b>: Users must include at least one special character in their PIN.</p>
<p><b>Disabled</b>: Users cannot include a special character in their PIN.</p>
</td>
</tr>
<tr>
<td>Require uppercase letters</td>
<td>
<p><b>Not configured</b>: Users cannot include an uppercase letter in their PIN.</p>
<p><b>Enabled</b>: Users must include at least one uppercase letter in their PIN.</p>
<p><b>Disabled</b>: Users cannot include an uppercase letter in their PIN.</p>
</td>
</tr>
<tr>
<td><a href="prepare-people-to-use-microsoft-passport.md#BMK_remote">Phone Sign-in</a></td>
<td>
<p>Use Phone Sign-in</p>
<div class="alert"><b>Note</b>  Applies to desktop only. Phone sign-in is currently limited to select Technology Adoption Program (TAP) participants.</div>
<div> </div>
</td>
<td>
<p><b>Not configured</b>: Phone sign-in is disabled.</p>
<p><b>Enabled</b>: Users can use a portable, registered device as a companion device for desktop authentication.</p>
<p><b>Disabled</b>: Phone sign-in is disabled.</p>
</td>
</tr>
</table>

## MDM policy settings for Windows Hello for Business

The following table lists the MDM policy settings that you can configure for Windows Hello for Business use in your workplace. These MDM policy settings use the [PassportForWork configuration service provider (CSP)](https://go.microsoft.com/fwlink/p/?LinkId=692070).

>[!IMPORTANT]
>Starting in Windows 10, version 1607, all devices only have one PIN associated with Windows Hello for Business. This means that any PIN on a device will be subject to the policies specified in the PassportForWork CSP. The values specified take precedence over any complexity rules set via Exchange ActiveSync (EAS) or the DeviceLock CSP. 

<table>
<tr>
<th colspan="2">Policy</th>
<th>Scope</th>
<th>Default</th>
<th>Options</th>
</tr>
<tr>
<td>UsePassportForWork</td>
<td></td>
<td>Device</td>
<td>True</td>
<td>
<p>True: Windows Hello for Business will be provisioned for all users on the device.</p>
<p>False: Users will not be able to provision Windows Hello for Business. </p>
<div class="alert"><b>Note</b>  If Windows Hello for Business is enabled, and then the policy is changed to False, users who previously set up Windows Hello for Business can continue to use it, but will not be able to set up Windows Hello for Business on other devices.</div>
<div> </div>
</td>
</tr>
<tr>
<td>RequireSecurityDevice</td>
<td></td>
<td>Device</td>
<td>False</td>
<td>
<p>True: Windows Hello for Business will only be provisioned using TPM.</p>
<p>False: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.</p>
</td>
</tr>
<tr>
<td rowspan="2">Biometrics</td>
<td>
<p>UseBiometrics</p>
</td>
<td>Device </td>
<td>False</td>
<td>
<p>True: Biometrics can be used as a gesture in place of a PIN for domain sign-in.</p>
<p>False: Only a PIN can be used as a gesture for domain sign-in.</p>
</td>
</tr>
<tr>
<td>
<p>FacialFeaturesUser</p>
<p>EnhancedAntiSpoofing</p>
</td>
<td>Device</td>
<td>Not configured</td>
<td>
<p>Not configured: users can choose whether to turn on enhanced anti-spoofing.</p>
<p>True: Enhanced anti-spoofing is required on devices which support it.</p>
<p>False: Users cannot turn on enhanced anti-spoofing.</p>
</td>
</tr>
<tr>
<td rowspan="9">PINComplexity</td>
</tr>
<tr>
<td>Digits </td>
<td>Device or user</td>
<td>2 </td>
<td>
<p>1: Numbers are not allowed. </p>
<p>2: At least one number is required.</p>
</td>
</tr>
<tr>
<td>Lowercase letters </td>
<td>Device or user</td>
<td>1 </td>
<td>
<p>1: Lowercase letters are not allowed. </p>
<p>2: At least one lowercase letter is required.</p>
</td>
</tr>
<tr>
<td>Maximum PIN length </td>
<td>Device or user</td>
<td>127 </td>
<td>
<p>Maximum length that can be set is 127. Maximum length cannot be less than minimum setting.</p>
</td>
</tr>
<tr>
<td>Minimum PIN length</td>
<td>Device or user</td>
<td>4</td>
<td>
<p>Minimum length that can be set is 4. Minimum length cannot be greater than maximum setting.</p>
</td>
</tr>
<tr>
<td>Expiration </td>
<td>Device or user</td>
<td>0</td>
<td>
<p>Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user’s PIN will never expire. 
</p>
</td>
</tr>
<tr>
<td>History</td>
<td>Device or user</td>
<td>0</td>
<td>
<p>Integer value that specifies the number of past PINs that can be associated to a user account that can’t be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs is not required. 
</p>
</td>
</tr>
<tr>
<td>Special characters</td>
<td>Device or user</td>
<td>1</td>
<td>
<p>1: Special characters are not allowed. </p>
<p>2: At least one special character is required.</p>
</td>
</tr>
<tr>
<td>Uppercase letters</td>
<td>Device or user</td>
<td>1</td>
<td>
<p>1: Uppercase letters are not allowed </p>
<p>2: At least one uppercase letter is required</p>
</td>
</tr>
<tr>
<td>Remote</td>
<td>
<p>UseRemotePassport</p>
<div class="alert"><b>Note</b>  Applies to desktop only. Phone sign-in is currently limited to select Technology Adoption Program (TAP) participants.</div>
<div> </div>
</td>
<td>Device or user</td>
<td>False</td>
<td>
<p>True: <a href="prepare-people-to-use-microsoft-passport.md#BMK_remote">Phone sign-in</a> is enabled.</p>
<p>False: <a href="prepare-people-to-use-microsoft-passport.md#BMK_remote">Phone sign-in</a> is disabled.</p>
</td>
</tr>
</table>

>[!NOTE]  
> If policy is not configured to explicitly require letters or special characters, users will be restricted to creating a numeric PIN.
 
## Prerequisites

To deploy Windows Hello for Business, in some modes you must add Windows Server 2016 domain controllers to your Active Directory environment, but you don’t have to replace or remove your existing Active Directory servers — the servers required for Windows Hello for Business build on and add capability to your existing infrastructure. You don’t have to change the domain or forest functional level, and you can either add on-premises servers or use Azure Active Directory to deploy Windows Hello for Business in your network. 

You’ll need this software to set Windows Hello for Business policies in your enterprise.
<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows Hello for Business mode</th>
<th align="left">Azure AD</th>
<th align="left">Active Directory (AD) on-premises (available with production release of Windows Server 2016)</th>
<th align="left">Azure AD/AD hybrid (available with production release of Windows Server 2016)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Key-based authentication</td>
<td align="left">Azure AD subscription</td>
<td align="left"><ul>
<li>Active Directory Federation Service (AD FS) (Windows Server 2016)</li>
<li>A few Windows Server 2016 domain controllers on-site</li>
<li>Microsoft System Center 2012 R2 Configuration Manager SP2</li>
</ul></td>
<td align="left"><ul>
<li>Azure AD subscription</li>
<li>[Azure AD Connect](https://go.microsoft.com/fwlink/p/?LinkId=616792)</li>
<li>A few Windows Server 2016 domain controllers on-site</li>
<li>A management solution, such as Configuration Manager, Group Policy, or MDM</li>
<li>Active Directory Certificate Services (AD CS) without Network Device Enrollment Service (NDES)</li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Certificate-based authentication</td>
<td align="left"><ul>
<li>Azure AD subscription</li>
<li>Intune or non-Microsoft mobile device management (MDM) solution</li>
<li>PKI infrastructure</li>
</ul></td>
<td align="left"><ul>
<li>ADFS (Windows Server 2016)</li>
<li>Active Directory Domain Services (AD DS) Windows Server 2016 schema</li>
<li>PKI infrastructure</li>
<li>Configuration Manager SP2, Intune, or non-Microsoft MDM solution</li>
</ul></td>
<td align="left"><ul>
<li>Azure AD subscription</li>
<li>[Azure AD Connect](https://go.microsoft.com/fwlink/p/?LinkId=616792)</li>
<li>AD CS with NDES</li>
<li>Configuration Manager for domain-joined certificate enrollment, or InTune for non-domain-joined devices, or a non-Microsoft MDM service that supports Passport for Work</li>
</ul></td>
</tr>
</tbody>
</table>
 
Configuration Manager and MDM provide the ability to manage Windows Hello for Business policy and to deploy and manage certificates protected by Windows Hello for Business.

Azure AD provides the ability to register devices with your enterprise and to provision Windows Hello for Business for organization accounts.


## Approaches for a Windows Hello for Business deployment

Different organizations will necessarily take different approaches to the deployment of Windows Hello depending on their capabilities and needs, but there is only one strategy: deploy Windows Hello for Business throughout the organization to get maximum protection for the maximum number of devices and resources. Organizations can take one of three basic routes to accomplish that strategy:

- Deploy Windows Hello for Business everywhere according to whatever device or user deployment strategy works best for the organization.
- Deploy Windows Hello for Business first to high-value or high-risk targets, by using conditional access policies to restrict access to key resources only to users who hold strong authentication credentials.
- Blend Windows Hello for Business into an existing multi-factor environment, using it as an additional form of strong authentication alongside physical or virtual smart cards.

### Deploy Windows Hello for Business everywhere

In this approach, you deploy Windows Hello throughout the organization in a coordinated rollout. In some ways, this method is similar to any other desktop deployment project; the only real difference is that you must already have the Windows Hello infrastructure in place to support device registration before you can start using Windows Hello on Windows 10 devices.

You can still upgrade to Windows 10 or add new Windows 10 devices without changing your infrastructure. You just can’t use Windows Hello for Business on a device until the device joins Azure AD and receives the appropriate policy. The major benefit of this approach is that it provides uniform protection for all parts of the organization. Sophisticated attackers have shown a great deal of skill in breaching large organizations by identifying weak points in their security, including users and systems that don’t have high-value information but that can be exploited to get it. Applying consistent protection across every device that an attacker could use to access enterprise data is excellent protection against these types of attacks.

The downside to this approach is its complexity. Smaller organizations may find that managing the rollout of a new operating system across all devices is beyond the scope of their experience and capability. For these organizations, users can self-upgrade, and new users may end up with Windows 10 because they get new devices when they join. Larger organizations, especially those that are highly decentralized or have operations across many physical sites, may have more deployment knowledge and resources but face the challenge of coordinating rollout efforts across a larger user base and footprint.

For more information about desktop deployment of Windows 10, visit the [Windows 10 TechCenter](https://technet.microsoft.com/windows/mt240567).

One key aspect of this deployment strategy is how to get Windows 10 in users’ hands. Because different organizations have wildly differing strategies to refresh hardware and software, there’s no one-size-fits-all strategy. For example, some organizations pursue a coordinated strategy that puts new desktop operating systems in users’ hands every 2–3 years on existing hardware, supplementing with new hardware only where and when required. Others tend to replace hardware and deploy whatever version of the Windows client operating system ships on the purchased devices. In both cases, there are typically separate deployment cycles for servers and server operating systems, and the desktop and server cycles may or may not be coordinated.

In addition to the issue of Windows 10 deployment to users, you must consider how and when (or if!) you’ll deploy biometric devices to users. Because Windows Hello can take advantage of multiple biometric identifiers, you have a flexible range of device options, which includes the purchase of new devices that incorporate your selected biometric, seeding select users with appropriate devices, rollout of biometric devices as part of a scheduled hardware refresh and using PIN gestures until users get devices, or relying on remote unlock as a second authentication factor.

### Deploy to high-value or high-risk targets

This strategy takes into account the fact that in most networks, not every asset is equally protected or equally valuable. There are two ways to think about this. One is that you can focus on protecting the users and services that are most at risk of compromise because of their value. Examples include sensitive internal databases or the user accounts of your key executives. The other option is that you can focus on areas of your network that are the most vulnerable, such as users who travel frequently (and thus run a higher risk of lost or stolen devices or drive-by credential theft). Either way, the strategy is the same: selectively and quickly deploy Windows Hello to protect specific people and resources. For example, you might issue new Windows 10 devices with biometric sensors to all users who need access to a sensitive internal database, and then deploy the minimum required infrastructure to support Windows Hello–secured access to that database for those users.
One of the key design capabilities of Windows Hello for Business is that it supports Bring Your Own Device (BYOD) environments by allowing users to register their own devices with the organizational IDP (whether on premises, hybrid, or Azure AD). You may be able to take advantage of this capability to quickly deploy Windows Hello to protect your most vulnerable users or assets, ideally by using biometrics as an additional safety measure for the most valuable potential targets.

### Blend Windows Hello with your infrastructure

Organizations that have already invested in smart cards, virtual smart cards, or token-based systems can still benefit from Windows Hello. Of those organizations, many use physical tokens and smart cards to protect only critical assets because of the expense and complexity of their deployment. Windows Hello offers a valuable complement to these systems because it protects users who currently rely on reusable credentials; protection of all users’ credentials is an important step toward blunting attacks that seek to leverage compromise of any credential into a widespread breach. This approach also gives you a great deal of flexibility in scheduling and deployment. Some enterprises have deployed multi-use smart cards that provide building-access control, access to copiers or other office equipment, stored value for lunchroom purchases, remote network access, and other services. Deployment of Windows Hello in such environments doesn’t prevent you from continuing to use smart cards for these services. You can leave the existing smart card infrastructure in place for its existing use cases, and then register desktop and mobile devices in Windows Hello and use Windows Hello to secure access to network and Internet resources. This approach requires a more complicated infrastructure and a greater degree of organizational maturity because it requires you to link your existing PKI with an enrollment service and Windows Hello itself.

Smart cards can act as a useful complement to Windows Hello in another important way: to bootstrap the initial logon for Windows Hello registration. When a user registers with Windows Hello on a device, part of that registration process requires a conventional logon. Rather than using a traditional password, organizations that have previously deployed the necessary infrastructure for smart cards or virtual smart cards can allow their users to register new devices by logging on with a smart card or virtual smart card. After the user has proved his or her identity to the organizational IDP with the smart card, the user can set up a PIN and proceed to use Windows Hello for future logons.

### Choose a rollout method

Which rollout method you choose depends on several factors:

- **How many devices you need to deploy**. This number has a huge influence on your overall deployment. A global rollout for 75,000 users has different requirements than a phased rollout for groups of 200–300 users in different cities.
- **How quickly you want to deploy Windows Hello for Business protection**. This is a classic cost–benefit tradeoff. You have to balance the security benefits of Windows Hello for Business against the cost and time required to deploy it broadly, and different organizations may make entirely different decisions depending on how they rate the costs and benefits involved. Getting the broadest possible Windows Hello coverage in the shortest time possible maximizes security benefits.
- **The type of devices you want to deploy**. Windows device manufacturers are aggressively introducing new devices optimized for Windows 10, leading to the possibility that you might deploy Windows Hello first on newly purchased tablets and portable devices, and then deploy it on the desktop as part of your normal refresh cycle.
-** What your current infrastructure looks like**. The individual version of Windows Hello doesn’t require changes to your Active Directory environment, but to support Windows Hello for Business, you may need a compatible MDM system. Depending on the size and composition of your network, mobile enrollment and management services deployment may be a major project in its own right.
- **Your plans for the cloud**. If you’re already planning a move to the cloud, Azure AD eases the process of Windows Hello for Business deployment, because you can use Azure AD as an IDP alongside your existing on-premises AD DS setup without making significant changes to your on-premises environment. Future versions of Windows Hello for Business will support the ability to simultaneously register devices that are already members of an on-premises AD DS domain in an Azure AD partition so that they use Windows Hello for Business from the cloud. Hybrid deployments that combine AD DS with Azure AD give you the ability to keep machine authentication and policy management against your local AD DS domain while providing the full set of Windows Hello for Business services (and Microsoft Office 365 integration) for your users. If you plan to use on-premises AD DS only, then the design and configuration of your on-premises environment will dictate what kind of changes you may need to make.

## How to use Windows Hello for Business with Azure Active Directory

There are three scenarios for using Windows Hello for Business in Azure AD–only organizations: 

- **Organizations that use the version of Azure AD included with Office 365**. For these organizations, no additional work is necessary. When Windows 10 was released to general availability, Microsoft changed the behavior of the Office 365 Azure AD stack. When a user selects the option to join a work or school network, the device is automatically joined to the Office 365 tenant’s directory partition, a certificate is issued for the device, and it becomes eligible for Office 365 MDM if the tenant has subscribed to that feature. In addition, the user will be prompted to log on and, if MFA is enabled, to enter an MFA proof that Azure AD sends to his or her phone. 
- **Organizations that use the free tier of Azure AD**. For these organizations, Microsoft has not enabled automatic domain join to Azure AD. Organizations that have signed up for the free tier have the option to enable or disable this feature, so automatic domain join won’t be enabled unless and until the organization’s administrators decide to enable it. When that feature is enabled, devices that join the Azure AD domain by using the Connect to work or school dialog box will be automatically registered with Windows Hello for Business support, but previously joined devices will not be registered. 
- **Organizations that have subscribed to Azure AD Premium** have access to the full set of Azure AD MDM features. These features include controls to manage Windows Hello for Business. You can set policies to disable or force the use of Windows Hello for Business, require the use of a TPM, and control the length and strength of PINs set on the device.

If you want to use Windows Hello for Business with certificates, you’ll need a device registration system. That means that you set up Configuration Manager Technical Preview, Intune, or a compatible non-Microsoft MDM system and enable it to enroll devices. This is a prerequisite step to use Windows Hello for Business with certificates, no matter the IDP, because the enrollment system is responsible for provisioning the devices with the necessary certificates. Set Microsoft Passport policies



## Related topics

- [Manage identity verification using Windows Hello for Business](hello-manage-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Enable phone sign-in to PC or VPN](hello-enable-phone-signin.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)