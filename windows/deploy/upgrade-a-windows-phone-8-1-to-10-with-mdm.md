**Enable a Windows Phone 8.1 upgrade to Windows 10 Mobile in an MDM environment **

Summary
=======

This article describes how to upgrade eligible Windows Phone 8.1 devices to Windows 10 Mobile. See the section to determine whether your device is eligible for the update.
The Windows Phone 8.1 to Windows 10 Mobile upgrade uses an "opt-in" or "seeker" model. An eligible device must "opt-in" to be offered the upgrade.
For consumers, the Windows 10 Mobile Upgrade Advisor app is available from the Windows Store to perform the opt-in.
For Enterprises, Microsoft is offering a centralized management solution through Mobile Device Management (MDM) that can push a management policy to each eligible device to perform the opt-in.
If you use a list of allowed apps (whitelisting) through MDM, see the documentation [here](https://msdn.microsoft.com/en-us/library/windows/hardware/mt299056(v=vs.85).aspx#whitelist) to make sure system apps are whitelisted before you upgrade to Windows 10 Mobile. Also, be aware that there are known issues listed in the documentation that could adversely affect the device after you upgrade. See this documentation for rules to avoid.
Some enterprises may want to control the availability of the Windows 10 Mobile upgrade to their users. With the opt-in model, the enterprise can blacklist the Upgrade Advisor app to prevent their users from upgrading prematurely. For more information about how to blacklist the Upgrade Advisor app, see the  section. Enterprises that have blacklisted the Upgrade Advisor app can use the solution that's described in this article to select the upgrade timing on a per-device basis.

More information
================

To provide enterprises with a solution that's independent of the Upgrade Advisor, a new registry key in the registry configuration service provider (CSP) is available. A special GUID key value is defined. When Microsoft Update (MU) detects the presence of the registry key value on a device, any available upgrade will be made available to the device.

Prerequisites
-------------

-   Windows Phone 8.1 device with an available upgrade to Windows 10 Mobile.

-   Device connected to Wi-Fi or cellular network to perform scan for upgrade.

-   Device is already enrolled with a MDM session.

-   Device is able to receive the management policy.

-   MDM is capable of pushing the management policy to devices. (The minimum version for popular MDM providers that support the solution in this article are: InTune: 5.0.5565, AirWatch: 8.2, Mobile Iron: 9.0.)

**Instructions for the MDM server**

The registry CSP is used to push the GUID value to the following registry key for which the Open Mobile Alliance (OMA) Device Management (DM) client has Read/Write access and for which the Device Update service has Read access.

| \[HKLM\\Software\\Microsoft\\Provisioning\\OMADM\]         
 "EnterpriseUpgrade"="d369c9b6-2379-466d-9162-afc53361e3c2”  |
|------------------------------------------------------------|

The complete SyncML command for the solution is as follows.
**Note**: The SyncML may vary, depending on your MDM solution.

SyncML xmlns="SYNCML:SYNCML1.1"&gt;

&lt;SyncBody&gt;

&lt;Add&gt;

&lt;CmdID&gt;250&lt;/CmdID&gt;

&lt;Item&gt;

&lt;Target&gt;

&lt;LocURI&gt;./Vendor/MSFT/Registry/HKLM/SOFTWARE/Microsoft/Provisioning/OMADM/ EnterpriseUpgrade&lt;/LocURI&gt;

&lt;/Target&gt;

&lt;Meta&gt;

&lt;Format xmlns=”syncml:metinf”&gt;chr&lt;/Format&gt;

&lt;/Meta&gt;

&lt;Data&gt;d369c9b6-2379-466d-9162-afc53361e3c2&lt;/Data&gt;

&lt;/Item&gt;

&lt;/Add&gt;

&lt;Final/&gt;

&lt;/SyncBody&gt;

&lt;/SyncML&gt;

The OMA DM server policy description is provided in the following table:

| OMA-URI   | ./Vendor/MSFT/Registry/HKLM/SOFTWARE/Microsoft/Provisioning/OMADM/EnterpriseUpgrade |
|-----------|-------------------------------------------------------------------------------------|
| Data Type | String                                                                              |
| Value     | d369c9b6-2379-466d-9162-afc53361e3c2                                                |

After the device consumes the policy, it will be able to receive an available upgrade.
To disable the policy, either delete the OMADM registry key or set the EnterpriseUpgrade string value to anything other than the GUID.

How to determine whether an upgrade is available for a device
-------------------------------------------------------------

The Windows 10 Mobile Upgrade Advisor app is not designed or intended for Enterprise customers who want to automate the upgrade process.
However, the Windows 10 Mobile Upgrade Advisor app is the best mechanism to determine when an upgrade is available. The app dynamically queries whether the upgrade is released for this device model and associated mobile operator (MO).
We recommend that enterprises use a pilot device with the Windows 10 Mobile Upgrade Advisor app installed. The pilot device provides the device model and MO used by the enterprise. When you run the app on the pilot device, it will tell you that either an upgrade is available, that the device is eligible for upgrade, or that an upgrade is not available for this device.
Note: The availability of Windows 10 Mobile as an update for existing Windows Phone 8.1 devices varies by device manufacturer, device model, country or region, mobile operator or service provider, hardware limitations, and other factors. To check for compatibility and other important installation information, see the [Windows 10 mobile](https://www.microsoft.com/en/mobile/windows10) page.

How to blacklist the Upgrade Advisor app
----------------------------------------

Some enterprises may want to block their users from installing the Windows 10 Mobile Upgrade Advisor app. With Windows Phone 8.1, you can allow or deny individual apps by adding specific app publishers or the app globally unique identifier (GUID) from the Window Phone Store to an allow or deny XML list. The GUID for a particular application can be found in the URL for the app in the phone store. For example, the GUID to the Windows Phone Upgrade Adviser is listed in the following location:

<http://windowsphone.com/s?appid=fbe47e4f-7769-4103-910e-dca8c43e0b07>

For more information about how to do this, see the [Try it out: restrict Windows Phone 8.1 apps](https://technet.microsoft.com/en-us/windows/dn771706.aspx) topic on TechNet

Applies to 
===========

-   Windows 10 Mobile Enterprise, released in November 2015

-   Windows 10 Mobile, released in November 2015

-   Windows Phone 8.1

-   Windows Phone 8 for Business
