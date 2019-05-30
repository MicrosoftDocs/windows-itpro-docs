---
title: Windows Autopilot support
description: Support information for Windows Autopilot
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: low
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot FAQ

**Applies to: Windows 10**

This topic provides OEMs, partners, administrators, and end-users with answers to some frequently asked questions about deploying Windows 10 with Windows Autopilot. 

A [glossary](#glossary) of abbreviations used in this topic is provided at the end.


## Microsoft Partner Center

| Question | Answer |
| --- | --- |
| In the Partner Center, does the Tenant ID need to be provided with every device file upload? Is this needed to allow the business customer to access their devices in MSfB?     | No. Providing the Tenant ID is a one-time entry in the Partner Center that can be re-used with future device uploads. |
| How does the customer or tenant know that their devices are ready to be claimed in MSfB?    |  After the device file upload is completed in the Partner Center, the tenant can see the devices available for Windows Autopilot setup in MSfB. The OEM would need to advise the tenant to access MSfB. Auto-notification from MSfB to the tenant is being developed.  |
| How does a customer authorize an OEM or Channel Partner to register Autopilot devices on the customer’s behalf?   |  Before an OEM or Channel Partner can register a device for Autopilot on behalf of a customer, the customer must first give them consent.  The consent process begins with the OEM or Channel Partner sending a link to the customer, which directs the customer to a consent page in Microsoft Store for Business.  The steps explaining this process are [here](registration-auth.md).  |
|  Are there any restrictions if a business customer has registered devices in MSfB and later wants those devices to be managed by a CSP via the Partner Center? | The devices will need to be deleted in MSfB by the business customer before the CSP can upload and manage them in the Partner Center. | 
| Does Windows Autopilot support removing the option to enable a local administrator account?    |  Windows Autopilot doesn’t support removing the local admin account. However, it does support restricting the user performing AAD domain join in OOBE to a standard account (versus admin account by default).|
| How can I test the Windows Autopilot CSV file in the Partner Center?    |  Only CSP Partners have access to the Partner Center portal. If you are a CSP, you can create a Sales agent user account which has access to “Devices” for testing the file. This can be done today in the Partner Center. <br><br>Go [here](https://msdn.microsoft.com/partner-center/create-user-accounts-and-set-permissions) for more information. |
|  Must I become a Cloud Solution Provider (CSP) to participate in Windows Autopilot? | Top volume OEMs do not, as they can use the OEM Direct API.  All others who choose to use MPC to register devices must become CSPs in order to access MPC.  |
| Do the different CSP levels have all the same capabilities when it comes to Windows Autopilot?   |  For purposes of Windows Autopilot, there are three different types of CSPs, each with different levels of authority an access: <br><br>1. <b>Direct CSP</b>: Gets direct authorization from the customer to register devices. <br><br>2. <b>Indirect CSP Provider</b>: Gets implicit permission to register devices through the relationship their CSP Reseller partner has with the customer.  Indirect CSP Providers register devices through Microsoft Partner Center. <br><br>3. <b>Indirect CSP Reseller</b>: Gets direct authorization from the customer to register devices.  At the same time, their indirect CSP Provider partner also gets authorization, which mean that either the Indirect Provider or the Indirect Reseller can register devices for the customer.  However, the Indirect CSP Reseller must register devices through the MPC UI (manually uploading CSV file), whereas the Indirect CSP Provider has the option to register devices using the MPC APIs. |

## Manufacturing

| Question | Answer |
| --- | --- |
| What changes need to be made in the factory OS image for customer configuration settings?     |No changes are required on the factory floor to enable Windows Autopilot deployment.  |
| What version of the OA3 tool meets Windows Autopilot deployment requirements?     | Windows Autopilot can work with any version of the OA3 tool. We recommend using Windows 10, version 1703 and above to generate the 4K Hardware Hash.    |
|  At the time of placing an order, do customers need to be state whether they want it with or without Windows Autopilot options?   | Yes, if they want Windows Autopilot, they will want Windows 10, version 1703 or later versions. Also, they will want to receive the CSV file or have the file upload (i.e., registration) completed on their behalf.    |
|  Does the OEM need to manage or collect any custom imaging files from customers and perform any image uploads to Microsoft?   | No change, OEMs just send the CBRs as usual to Microsoft. No images are sent to Microsoft to enable Windows Autopilot.  Windows Autopilot only customizes OOBE and allows policy configurations (disables admin account, for example).  |
|  Are there any customer impacts to upgrading from Windows 8 to Windows 10?    | The devices must have Windows 10, version 1703 or later to enroll in Windows Autopilot deployment, otherwise no impacts.    |
| Will there be any change to the existing CBR with 4k Hardware Hash?    | No.  |
| What new information needs to be sent from the OEM to Microsoft?    | Nothing, unless the OEM opts to register the device on the customer’s behalf, in which case they would upload the device ID via a CSV file into Microsoft Partner Center, or use the OEM Direct API.  |
| Is there a contract or amendment for an OEM to participate in Windows Autopilot Deployment?    | No.  |

## CSV schema

| Question | Answer |
| --- | --- |
|  Can a comma be used in the CSV file? | No.   |
| What error messages can a user expect to see in the Partner Center or MSfB when uploading a file?    | See the “In Microsoft Store for Business” section of this guide.  |
| Is there a limit to the number of devices that can be listed in the CSV file?    | Yes, the CSV file can only contain 1,000 devices to apply to a single profile. If more than 1,000 devices need to be applied to a profile, the devices need to be uploaded through multiple CSV files.    |
| Does Microsoft have any recommendations on how an OEM should provide the CSV file to their customers?    |  Microsoft recommends encrypting the CSV file when sending to the business customer to self-register their Windows Autopilot devices (either through MPC, MSfB, or Intune).   |


## Hardware hash

| Question | Answer |
| --- | --- |
| Must every Hardware Hash submitted by the OEM contain the SMBIOS UUID (universally unique identifier), MAC (media access control) address and unique disk serial number (if using Windows 10, version 1703 and above OEM Activation 3.0 tool)?    | Yes. Since Windows Autopilot is based on the ability to uniquely identify devices applying for cloud configuration, it is critical to submit Hardware Hashes which meet the outlined requirement.   |
| What is the reason for needing the SMBIOS UUID, MAC Address and Disk Serial Number in the Hardware Hash details?    | For creating the Hardware Hash, these are the fields that are needed to identify a device, as parts of the device are added/removed. Since we don’t have a unique identifier for Windows devices, this is the best logic to identify a device.    |
| What is difference between OA3 Hardware Hash, 4K Hardware Hash, and Windows Autopilot Hardware Hash?    | None.  They’re different names for the same thing.  The Windows 10, 1703 version of the OA3 tool output is called the OA3 Hash, which is 4K in size, which is usable for the Windows Autopilot deployment scenario. Note: When using a non-1703 version OA3Tool, you get a different sized Hash, which may not be used for Windows Autopilot deployment.  |
|  What is the thought around parts replacement and/or repair for the NIC (network interface controller) and/or Disk? Will the Hardware Hash become invalid?   |  Yes.  If you replace parts, you need to gather the new Hardware Hash, though it depends on what is replaced, and the characteristics of the parts. For example, if you replace the TPM or motherboard, it’s a new device – you MUST have new Hardware Hash. If you replace one network card, it’s probably not a new device, and the device will function with the old Hardware Hash.  However, as a best practice, you should assume the old Hardware Hash is invalid and get a new Hardware Hash after any hardware changes – this is Microsoft’s strong recommendation any time you replace parts. |

## Motherboard replacement

| Question | Answer |
| --- | --- |
| How does Autopilot handle motherboard replacement scenarios?”  |  Motherboard replacement is out for scope for Autopilot. Any device that is repaired or serviced in a way that alters the ability to identify the device for Windows Autopilot must go through the normal OOBE process, and manually select the right settings or apply a custom image - as is the case today.  <br><br>To reuse the same device for Windows Autopilot after a motherboard replacement, the device would need to be de-registered from Autopilot, the motherboard replaced, a new 4K HH harvested, and then re-registered using the new 4K HH (or device ID). <br><br>**Note**:  An OEM will not be able to use the OEM Direct API to re-register the device, since the OEM Direct API only accepts a tuple or PKID.  In this case, the OEM would either have to send the new 4K HH info via a CSV file to customer, and let customer reregister the device via MSfB or Intune.|

## SMBIOS

| Question | Answer |
| --- | --- |
| Any specific requirement to SMBIOS UUID?    | It must be unique as specified in the Windows 10 hardware requirements.    |
| What is the requirement on the SMBIOS table to meet the Windows Autopilot Hardware Hash need?    | It must meet all the Windows 10 hardware requirements.  Additional details may be found [here](https://msdn.microsoft.com/library/jj128256(v=vs.85).aspx).    |
| If the SMBIOS supports UUID and Serial Number, is it enough for the OA3 tool to generate the Hardware Hash?    | No.  At a minimum, the following SMBIOS fields need to be populated with unique values: ProductKeyID SmbiosSystemManufacturer SmbiosSystemProductName SmbiosSystemSerialNumber SmbiosSkuNumber SmbiosSystemFamily MacAddress SmbiosUuid DiskSerialNumber TPM EkPub |

## Technical interface

| Question | Answer |
| --- | --- |
|  What is the interface to get the MAC Address and Disk Serial Number? How does the OA tool get MAC and Disk Serial #?   | Disk serial number is found from IOCTL_STORAGE_QUERY_PROPERTY with  StorageDeviceProperty/PropertyStandardQuery.   Network MAC address is  IOCTL_NDIS_QUERY_GLOBAL_STATS from OID_802_3_PERMANENT_ADDRESS.  However the exact mechanisms/”interface” for doing this operation varies depending on the exact scenario being discussed.  |
| Follow up clarification: If we have 2-3 MACs on the system, how does OA Tool choose which MAC Address and Disk Serial Number on the system since there are multiple instances of each? If a platform has LAN And WLAN, which MAC is chosen?     |  In short, all available values are used.  In detail, there may be extra specific usage rules. The System disk serial number is more important than any other disks available. Network interfaces that are removable should not be used if detected as they are removable. LAN vs WLAN should not matter, both will be used.  |

## The end user experience

| Question | Answer |
| --- | --- |
| How do I know that I received Autopilot?    | You can tell that you received Windows Autopilot (as in the device received a configuration but has not yet applied it) when you skip the selection page (as seen below), and are immediately taken to a generic or customized sign-in page.    |
| Windows Autopilot didn’t work, what do I do now?    | Questions and actions to assist in troubleshooting:  Did a screen not get skipped?   Did a user end up as an admin when configured not to? Remember that AAD Admins will be local admins regardless of whether Windows Autopilot is configured to disable local admin  Collection information – run licensingdiag.exe and send the .cab (Cabinet file) file that is generated to AutopilotHelp@microsoft.com. If possible, collect an ETL from WPR. Often in these cases, users are not signing into the right AAD tenant, or are creating local user accounts.  For a complete list of support options, refer to [Windows Autopilot support](autopilot-support.md). |
|  If an Administrator makes changes to an existing profile, will the changes take effect on devices that have that profile assigned to them that have already been deployed?   | No. Windows Autopilot profiles are not resident on the device. They are downloaded during OOBE, the settings defined at the time are applied. Then, the profile is discarded on the device. If the device is re-imaged or reset, the new profile settings will take effect the next time the device goes through OOBE.    |
| What is the experience if a device isn’t registered or if an IT Admin doesn’t configure Windows Autopilot prior to an end user attempting to self-deploy?    | If the device isn’t registered, it will not receive the Windows Autopilot experience and the end user will go through normal OOBE. The Windows Autopilot configurations will NOT be applied until the user runs through OOBE again, after registration. If a device is started before an MDM profile is created, the device will go through standard OOBE experience.  The IT Admin would then have to manually enrol that device into the MDM, after which—the next time that device is “reset”—it will go through the Windows Autopilot OOBE experience.  |
| What may be a reason why I did not receive a customized sign-in screen during Autopilot?    |  Tenant branding must be configured in portal.azure.com to receive a customized sign-in experience.   |
| What happens if a device is registered with Azure AD but does not have an Windows Autopilot profile assigned?    |  The regular AAD OOBE will occur since no Windows Autopilot profile was assigned to the device.   |
| How can I collect logs on Autopilot?  | The best way to collect logs on Windows Autopilot performance is to collect a Windows Performance Recorder (WPR) trace during OOBE. The XML file (WPRP extension) for this trace may be provided upon request.  |


## MDM

| Question | Answer |
| --- | --- |
| Must we use Intune for our MDM?  |  No.  No, any MDM will work with Autopilot, but others probably won’t have the same full suite of Windows Autopilot features as Intune.  You’ll get the best experience from Intune. |
| Can Intune support Win32 app preinstalls?  | Yes.  Starting with the Windows 10 October Update (version 1809), Intune supports Win32 apps using .msi (and .msix) wrappers.  |
| What is co-management?  | Co-management is when you use a combination of a cloud MDM tool (Intune) and an on-premise configuration tool like System Center Configuration Manager (SCCM). You only need to use SCCM if Intune can’t support what you want to do with your profile.  If you choose to co-manage using Intune + SCCM, you do it by including an SCCM agent in your Intune profile.  When that profile is pushed to the device, the device will see the SCCM agent and go out to SCCM to pull down any additional profile settings. |
| Must we use System Center Configuration Manager (SCCM) for Windows Autopilot  |  No.  Co-management (described above) is optional. |


## Features

| Question | Answer |
| --- | --- |
| Self-deploying mode  | A new version of Windows Autopilot where the user only turns on the device, and nothing else.  It’s useful for scenarios where a standard user account isn’t needed (e.g., shared devices, or KIOSK devices).  |
| Hybrid Azure Active Directory join  |  Allows Windows Autopilot devices to connect to an on-premise Active Directory domain controller (in addition to being Azure AD joined). |
| Windows Autopilot reset  | Removes user apps and settings from a device, but maintains AAD domain join and MDM enrollment.  Useful for when transferring a device from one user to another.  |
| Personalization  | Adds the following to the OOBE experience: A personalized welcome message can be created A username hint can be added Sign-in page text can be personalized The company’s logo can be included |
| [Autopilot for existing devices](existing-devices.md)  |  Offers an upgrade path to Windows Autopilot for all existing Win 7/8 devices. |



## General

| Question | Answer |
| --- | --- |
| If I wipe the machine and restart, will I still receive Windows Autopilot?    |  Yes, if the device is still registered for Windows Autopilot and is running Windows 10, version 1703 7B and above releases, it will receive the Windows Autopilot experience.   |
| Can I harvest the device fingerprint on existing machines?    | Yes, if the device is running Windows 10, version 1703 and above, you can harvest device fingerprints for registration. There are no plans to backport the functionality to previous releases and no way to harvest them on pre-Windows 10 Windows 10, version 1703 devices that have not been updated to Windows 10, version 1703.     |
| What is Windows 10, version 1703 7B and why does it matter?    |  Windows 10, version 1703 7B is a Windows 10, version 1703 image bundled with cumulative updates. To receive Autopilot, clients **must** run Windows 10, version 1703 7B or later. These cumulative updates contain a critical fix for Autopilot. Consider the following:<br><br><I>Windows Autopilot will not apply its profiles to the machine unless AAD credentials match the expected AAD tenant. For the Windows 10, version 1703 release, it was assumed that would be determined by the domain name, so the domain name used to register (for example contoso.com) should match the domain name used to sign in (for example user@contoso.com). But what happens if your tenant has multiple domains (for example us.contoso.com, or fr.contoso.com)? Since these domain names do not match, the device will not be configured for Autopilot. However, both domains are part of the same AAD tenant, and as such it was determined the matching scheme was not useful. This was improved upon by making use of the tenant ID. By using the tenant ID, we can determine that if the user signs into a domain with a tenant matching the one they registered with, we can safely consider this to be a match. The fix for this problem already exists in Windows 10, version 1709 and was backported into the Windows 10, version 1703 7B release.</I>  <br><br>**Key Take-Aways**:  When using pre-Windows 10, version 1703 7B clients the user’s domain **must** match the domain they registered with. This functionality is found in Windows 10 version 1709 clients using build >= 16215, and Windows 10, version 1703 clients >= 7B.   |
| What is the impact of not updating to 7B?    |  See the detailed scenario described directly above.  |
|  Is Windows Autopilot supported on other SKUs, e.g. Surface Hub, HoloLens, Windows Mobile.   | No, Windows Autopilot isn’t supported on other SKUs.    |
| Does Windows Autopilot work after MBR or image re-installation?    |  Yes. |
| Can machines that have reimaged a few times go through Autopilot? What does the error message "This user is not authorized to enroll" mean? Error code 801c0003.    | There are limits to the number of devices a particular AAD user can enroll in AAD, as well as the number of devices that are supported per user in Intune.  (These are somewhat configurable but not “infinite.”)  You’ll run into this frequently if you reuse the devices, or even if you roll back to previous virtual machine snapshots.     |
|  What happens if a device is registered to a malicious agent?   | By design, Windows Autopilot does not apply a profile until the user signs in with the matching tenant for the configured profile via the AAD sign-in process. What occurs is illustrated below.  If badguys.com registers a device owned by contoso.com, at worst, the user would be directed to sign into badguys.com. When the user enters their email/password, the sign-in information is redirected through AAD to the proper AAD authentication and the user is prompted to then sign into contoso.com. Since contoso.com does not match badguys.com as the tenant, the Windows Autopilot profile will not be applied and the regular AAD OOBE will occur.    |
|  Where is the Windows Autopilot data stored?    |  Windows Autopilot data is stored in the United States (US), not in a sovereign cloud, even when the AAD tenant is registered in a sovereign cloud. This is applicable to all Windows Autopilot data, regardless of the portal leveraged to deploy Autopilot.   |
|  Why is Windows Autopilot data stored in the US and not in a sovereign cloud?   |  It is not customer data that we store, but business data which enables Microsoft to provide a service, therefore it is okay for the data to reside in the US. Customers can stop subscribing to the service any time, and, in that event, the business data is removed by Microsoft.   |
| How many ways are there to register a device for Windows Autopilot  | There are six ways to register a device, depending on who is doing the registering: <br><br>1.	OEM Direct API (only available to TVOs) <br>2. MPC via the MPC API (must be a CSP) <br>3. MPC via manual upload of CSV file in the UI (must be a CSP) <br>4. MSfB via CSV file upload <br>5. Intune via CSV file upload <br>6.	Microsoft 365 Business portal via CSV file upload |
|  How many ways are there to create an Windows Autopilot profile? |  There are four ways to create & assign an Windows Autopilot profile: <br><br>1.	Through MPC (must be a CSP) <br>2.	Through MSfB <br>3.	Through Intune (or another MDM) <br>4.	Microsoft 365 Business portal <br><br>Microsoft recommends creation and assignment of profiles through Intune.|
|  What are some common causes of registration failures? |  <br>1.	Bad or missing Hardware hash entries can lead to faulty registration attempts <br>2.	Hidden special characters in CSV files.  <br><br>To avoid this issue, after creating your CSV file, open it in Notepad to look for hidden characters or trailing spaces or other corruptions.|

## Glossary

| Term | Meaning |
| --- | --- |
| CSV  | Comma Separated Values (File type similar to Excel spreadsheet)  |
| MPC  | Microsoft Partner Center   |
| MDM  | Mobile Device Management   |
| OEM  | Original Equipment Manufacturer   |
| CSP  |  Cloud Solution Provider  |
| MSfB  | Microsoft Store for Business   |
| AAD  | Azure Active Directory   |
| 4K HH  |  4K Hardware Hash |
| CBR  | Computer Build Report  |
| EC  |  Enterprise Commerce  |
| DDS  | Device Directory Service    |
| OOBE  | Out of the Box Experience   |
| UUID  | Universally Unique Identifier   |
