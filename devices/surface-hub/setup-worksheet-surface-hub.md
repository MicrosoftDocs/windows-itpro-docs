---
title: Setup worksheet (Surface Hub)
description: When you've finished pre-setup and are ready to start first-time setup for your Microsoft Surface Hub, make sure you have all the information listed in this section.
ms.assetid: AC6F925B-BADE-48F5-8D53-8B6FFF6EE3EB
ms.reviewer: 
manager: dansimp
keywords: Setup worksheet, pre-setup, first-time setup
ms.prod: surface-hub
ms.sitesec: library
author: levinec
ms.author: ellevin
ms.topic: article
ms.date: 06/20/2019
ms.localizationpriority: medium
---

# Setup worksheet (Surface Hub)


When you've finished pre-setup and are ready to start first-time setup for your Microsoft Surface Hub, make sure you have all the information listed in this section.

You should fill out one list for each Surface Hub you need to configure, although some information can be used on all Surface Hubs, like the proxy information or domain credentials. Some of this information may not be needed, depending on how you've decided to configure your device, or depending on how the environment is configured for your organization's infrastructure.

<table>
<tr>
<th>Property</th>
<th>What this is used for</th>
<th>Example</th>
<th>Actual value</th>
</tr>
<tr>
<td>
<p>Proxy information</p>
</td>
<td>
<p>If your network uses a proxy for network and/or Internet access, you must provide a script or server/port information.</p>
</td>
<td>
<p>Proxy script: <code>http://contoso/proxy.pa</code> </br>
- OR - </br>
Server and port info: 10.10.10.100, port 80
</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Wireless network credentials (username and password)</p>
</td>
<td>
<p>If you decide to connect your device to Wi-Fi, and your wireless network requires user credentials.</p>
</td>
<td>
<p>admin1@contoso.com, #MyPassw0rd</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Device account UPN or Domain\username and device account password</p>
</td>
<td>
<p>This is the User Principal Name (UPN) or the domain\username, and the password of the device account. Mail, calendar, and Skype for Business depend on a compatible device account.</p>
</td>
<td>
<p> UPN: ConfRoom15@contoso.com, #Passw0rd1 </br>
- OR - <br> 
Domain and username: CONTOSO\ConfRoom15, #Passw0rd1</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Device account Microsoft Exchange server</p>
</td>
<td>
<p>This is the device account's Exchange server.
Mail, calendar, and Skype for Business depend on a compatible device account.
For mail and calendar to work, the device account must have a valid Exchange server. The device will try to find this automatically.</p>
</td>
<td>
<p>outlook.office365.com</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Device account Session Initiation Protocol (SIP) address</p>
</td>
<td>
<p>This is the device account's Skype for Business SIP address.
Mail, calendar, and Skype for Business depend on a compatible device account.
For Skype for Business to work, the device account must have a valid SIP address. The device will try to find this automatically.</p>
</td>
<td>
<p>sip: ConfRoom15@contoso.com</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Friendly name</p>
</td>
<td>
<p>The friendly name of the device is the broadcast name that people will see when they try to wirelessly connect to the Surface Hub. This name will be displayed prominently on the Surface Hub's screen.
We suggest that the friendly name you choose is recognizable and unique so that people can distinguish one Surface Hub from another when trying to connect.</p>
</td>
<td>
<p>Conference Room 15</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Device name</p>
</td>
<td>
<p>The device name is the name that will be used for domain join, and is the identity you will see in your MDM provider if the device is enrolled into MDM.
The device name you choose must not be the same name as any other device on the user’s Active Directory domain (if you decide to domain join the device). The device cannot join the domain if its name is not unique.
</p>
</td>
<td>
<p>confroom15</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td colspan="4">
<p><b>IF YOU'RE JOINING AZURE AD</b></p>
</td>
</tr>
<tr>
<td>
<p>Azure AD tenant user credentials (username and password)</p>
</td>
<td>
<p>If you decide to have people in your Azure Active Directory (Azure AD) organization become admins on the device, then you'll need to join Azure AD.
To join Azure AD, you will need valid user credentials.</p>
</td>
<td>
<p>admin1@contoso.com, #MyPassw0rd</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td colspan="4">
<p><b>IF YOU'RE JOINING A DOMAIN</b></p>
</td>
</tr>
<tr>
<td>
<p>Domain to join</p>
</td>
<td>
<p>This is the domain you will need to join so that a security group of your choice can be admins for the device.
You may need the fully qualified domain name (FQDN).</p>
</td>
<td>
<p>contoso (short name) OR contoso.corp.com (FQDN)</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Domain account credentials (username and password)</p>
</td>
<td>
<p>A domain can't be joined unless you provide sufficient account credentials to join the domain. Once you provide a domain to join and credentials to join the domain, then a security group of your choice can change settings on the device.</p>
</td>
<td>
<p>admin1, #MyPassw0rd</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td>
<p>Admin security group alias</p>
</td>
<td>
<p>This is a security group in your Active Directory (AD); any members of this security group can change settings on the device.</p>
</td>
<td>
<p>SurfaceHubAdmins</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td colspan="4">
<p><b>IF YOU'RE USING A LOCAL ADMIN</b></p>
</td>
</tr>
<tr>
<td>
<p>Local admin account credentials (username and password)</p>
</td>
<td>
<p>If you decide not to join an AD domain or Azure AD, you can create a local admin account on the device.</p>
</td>
<td>
<p>admin1, #MyPassw0rd</p>
</td>
<td>
<p></p>
</td>
</tr>
<tr>
<td colspan="4">
<p><b>IF YOU NEED TO INSTALL CERTIFICATES OR APPS</b></p>
</td>
</tr>
<tr>
<td>
<p>USB drive</p>
</td>
<td>
<p>If you know before first run that you want to install certificates or universal apps, follow the steps in <a href="provisioning-packages-for-certificates-surface-hub.md">Create provisioning packages</a>. Your provisioning packages will be created on a USB drive.</p>
</td>
<td>
<p></p>
</td>
<td>
<p></p>
</td>
</tr>
</table> 





