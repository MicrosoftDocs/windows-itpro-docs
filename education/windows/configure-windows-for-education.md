---
title: Windows 10 configuration recommendations for education customers
description: Provides guidance on ways to configure the OS diagnostic data, consumer experiences, Cortana, search, as well as some of the preinstalled apps, so that Windows is ready for your school.
keywords: ["Windows 10 deployment", "recommendations", "privacy settings", "school", "education", "configurations"]
ms.mktglfcycl: plan
ms.sitesec: library
localizationpriority: high
author: CelesteDG
---

# Windows 10 configuration recommendations for education customers
**Applies to:**

-   Windows 10


Privacy is important to us, we want to provide you with ways to customize the OS diagnostic data, consumer experiences, Cortana, search, as well as some of the preinstalled apps, for usage with [education editions of Windows 10](windows-editions-for-education-customers.md) in education environments. To learn more about Microsoft’s commitment to privacy, see [Windows 10 and privacy](https://go.microsoft.com/fwlink/?LinkId=809305).

In Windows 10, version 1703 (Creators Update), it is straightforward to configure Windows to be education ready.

| Area | How to configure | What this does | Notes | 
| --- | --- | --- | --- | 
| **Diagnostic Data** | **SetEduPolicies** | Sets Diagnostic Data to [Basic](https://technet.microsoft.com/itpro/windows/configure/configure-windows-telemetry-in-your-organization) | On Windows 10 Education or Windows 10 Pro Education, this is already set |
| **Microsoft consumer experiences** | **SetEduPolicies** | Disables suggested content from Windows such as app recommendations | On Windows 10 Education or Windows 10 Pro Education, this is already set |
| **Cortana** | **AllowCortana** | Disables Cortana | * Cortana is enabled by default on all editions in Windows 10, version 1703</br></br> * If using Windows 10 Pro Education or Windows 10 Education, upgrading from Windows 10, version 1607 to Windows 10, version 1703 will enable Cortana. You can use the **AllowCortana** policy to turn it off. |
| **Safe search** | **SetEduPolicies** | Locks Bing safe search to Strict in Microsoft Edge | On Windows 10 Education or Windows 10 Pro Education, this is already set |
| **Bing search advertising** | Ad free search with Bing | Disables ads when searching the internet with Bing in Microsoft Edge | Depending on your specific requirements, there are different ways to configure this as detailed in [Ad-free search with Bing](#ad-free-search-with-bing) |
| **Apps** | **SetEduPolicies** | Preinstalled apps like Microsoft Edge, Movies & TV, Groove, and Skype become education ready | * Any app can detect Windows is running in an education ready configuration through [IsEducationEnvironment](https://docs.microsoft.com/en-us/uwp/api/windows.system.profile.educationsettings)</br></br> * On Windows 10 Education or Windows 10 Pro Education, this is already set |


## Recommended configuration
It is easy to be education ready when using Microsoft products. We recommend the following configuration:

1. Use an Office 365 Education tenant. 

    With Office 365, you also have Azure Active Directory (Azure AD). To learn more about Office 365 Education features and pricing, see [Office 365 Education plans and pricing](https://products.office.com/en-us/academic/compare-office-365-education-plans).

2. Activate Intune for Education in your tenant.

    You can [sign up to learn more about Intune for Education](https://info.microsoft.com/US-WNDWS-CNTNT-FY17-01Jan-17-IntuneforEducationlandingpageandnurture292531_01Registration-ForminBody.html).

3. On PCs running Windows 10, version 1703  (Windows 10 Pro Education or Windows 10 Education):
  1. Provision the PC using one of these methods:
    * [Provision PCs with the Set up School PCs app](use-set-up-school-pcs-app.md) - This will automatically set both **SetEduPolicies** to True and **AllowCortana** to False.
    * [Provision PCs with a custom package created with Windows Configuration Designer](https://technet.microsoft.com/en-us/itpro/windows/configure/provisioning-create-package) - Make sure to set both **SetEduPolicies** to True and **AllowCortana** to False.
  2. Join the PC to Azure Active Directory.
    * Use Set up School PCs or Windows Configuration Designer to bulk enroll to Azure AD.
    * Manually Azure AD join the PC during the Windows device setup experience.
  3. Enroll the PCs in MDM.
    * If you have activated Intune for Education in your Azure AD tenant, enrollment will happen automatically when the PC is joined to Azure AD. Intune for Education will automatically set **SetEduPolicies** to True and **AllowCortana** to False.

4. Distribute the PCs to students.

    Students sign in with their Azure AD/Office 365 identity, which enables single sign-on to Bing in Microsoft Edge, enabling an ad-free search experience with Bing in Microsoft Edge.

5. Ongoing management through Intune for Education.

    You can set many policies through Intune for Education, including **SetEduPolicies** and **AllowCortana**, for ongoing management of the PCs.

## Configuring Windows
You can configure Windows through provisioning or management tools including industry standard MDM.
- Provisioning - A one-time setup process.
- Management - A one-time and/or ongoing management of a PC by setting policies.

You can set all the education compliance areas through both provisioning and management tools. Additionally, these Microsoft education tools will ensure PCs that you set up are education ready:
- [Set up School PCs](use-set-up-school-pcs-app.md)
- Intune for Education (coming soon)

## AllowCortana
**AllowCortana** is a policy that enables or disables Cortana. It is a policy node in the Policy configuration service provider, [AllowCortana](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#experience-allowcortana). 

Use one of these methods to set this policy.

### MDM
- Intune for Education automatically sets this policy in the **All devices** group policy configuration.
- If you're using an MDM provider other than Intune for Education, check your MDM provider documentation on how to set this policy.
    - If your MDM provider doesn't explicitly support this policy, you can manually set this policy if your MDM provider allows specific OMA-URIs to be manually set.

        For example, in Intune, create a new configuration policy and add an OMA-URI. 
        - OMA-URI:  ./Vendor/MSFT/Policy/Config/Experience/AllowCortana
        - Data type:  Integer
        - Value:  0

        ![Create an OMA URI for AllowCortana](images/allowcortana_omauri.png)

### Group Policy
Set **Computer Configuration > Administrative Templates > Windows Components > Search > AllowCortana** to **Disabled**.

![Set AllowCortana to disabled through Group Policy](images/allowcortana_gp.png)

### Provisioning tools
- [Set up School PCs](use-set-up-school-pcs-app.md) always sets this policy in provisioning packages it creates.
- [Windows Configuration Designer](https://technet.microsoft.com/en-us/itpro/windows/configure/provisioning-create-package) 
    - Under **Runtime settings**, click the **Policies** settings group, set **Experience > Cortana** to **No**.

        ![Set AllowCortana to No in Windows Configuration Designer](images/allowcortana_wcd.png)

## SetEduPolicies
**SetEduPolicies** is a policy that applies a set of configuration behaviors to Windows. It is a policy node in the [SharedPC configuration service provider](https://msdn.microsoft.com/en-us/windows/hardware/commercialize/customize/mdm/sharedpc-csp).

Use one of these methods to set this policy. 

### MDM
- Intune for Education automatically sets this policy in the **All devices** group policy configuration.
- If you're using an MDM provider other than Intune for Education, check your MDM provider documentation on how to set this policy.
    - If your MDM provider doesn't explicitly support this policy, you can manually set this policy if your MDM provider allows specific OMA-URIs to be manually set.

        For example, in Intune, create a new configuration policy and add an OMA-URI.
        - OMA-URI:  ./Vendor/MSFT/SharedPC/SetEduPolicies
        - Data type:  Boolean
        - Value:  true

        ![Create an OMA URI for SetEduPolices](images/setedupolicies_omauri.png)

### Group Policy
**SetEduPolicies** is not natively supported in Group Policy. Instead, use the [MDM Bridge WMI Provider](https://msdn.microsoft.com/en-us/library/windows/desktop/dn905224(v=vs.85).aspx) to set the policy in [MDM SharedPC](https://msdn.microsoft.com/en-us/library/windows/desktop/mt779129(v=vs.85).aspx).

### Provisioning tools
- [Set up School PCs](use-set-up-school-pcs-app.md) always sets this policy in provisioning packages it creates.
- [Windows Configuration Designer](https://technet.microsoft.com/en-us/itpro/windows/configure/provisioning-create-package) 
    - Under **Runtime settings**, click the **SharedPC** settings group, set **PolicyCustomization > SetEduPolicies** to **True**.

        ![Set SetEduPolicies to True in Windows Configuration Designer](images/setedupolicies_wcd.png)

## Ad-free search with Bing
Provide an ad-free experience that is a safer, more private search option for K–12 education institutions in the United States. Additional information is available at http://www.bing.com/classroom/about-us.

> [!NOTE]  
> If you enable the guest account in shared PC mode, students using the guest account will not have an ad-free experience searching with Bing in Microsoft Edge unless the PC is connected to your school network and your school network has been configured as described in [IP registration for entire school network using Microsoft Edge](#ip-registration-for-entire-school-network-using-microsoft-edge).

### Configurations

#### IP registration for entire school network using Microsoft Edge
Ad-free searching with Bing in Microsoft Edge can be configured at the network level. To configure this, email bicteam@microsoft.com with the subject "New Windows 10, version 1703 (Creators Update) Registration: [School District Name]" and the include the following information in the body of the email.

**District information**
- **District or School Name:**
- **Outbound IP Addresses (IP Range + CIDR):**
- **Address:**
- **City:**
- **State Abbreviation:**
- **Zip Code:**

**Registrant information**
- **First Name:**
- **Last Name:**
- **Job Title:**
- **Email Address:**
- **Opt-In for Email Announcements?:**
- **Phone Number:**

This will suppress ads when searching with Bing on Microsoft Edge when the PC is connected to the school network. 

#### Azure AD and Office 365 Education tenant
To suppress ads when searching with Bing on Microsoft Edge on any network, follow these steps:

1. Ensure your Office 365 tenant is registered as an education tenant. For more information, see [Verify your Office 365 domain to prove education status](https://support.office.com/article/Verify-your-Office-365-domain-to-prove-ownership-nonprofit-or-education-status-or-to-activate-Yammer-87d1844e-aa47-4dc0-a61b-1b773fd4e590).
2. Domain join the Windows 10 PCs to your Azure AD tenant (this is the same as your Office 365 tenant).
3. Configure **SetEduPolicies** according to one of the methods described in the previous sections in this topic.
4. Have students sign in with their Azure AD identity, which is the same as your Office 365 identity, to use the PC.

#### Office 365 sign-in to Bing
To suppress ads only when the student signs into Bing with their Office 365 account in Microsoft Edge, follow these steps:

1. Configure **SetEduPolicies** according to one of the methods described in the previous sections in this topic.
2. Have students sign into Bing with their Office 365 account.

### More information
For more information on all the possible Bing configuration methods, see https://aka.ms/e4ahor. 

## Related topics
[Deployment recommendations for school IT administrators](edu-deployment-recommendations.md)
