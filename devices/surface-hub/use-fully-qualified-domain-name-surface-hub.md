---
title: Use fully qualified doman name with Surface Hub
description: Troubleshoot common problems, including setup issues, Exchange ActiveSync errors.
ms.assetid: CF58F74D-8077-48C3-981E-FCFDCA34B34A
keywords: ["Troubleshoot common problems", "setup issues", "Exchange ActiveSync errors"]
author: TrudyHa
---

# When to us a fully qualified domain name with Surface Hub

A fully qualified domain name (FQDN) is a domain name that explicitly states the location in the Domain Name System (DNS) hierarchy. All levels of a domain are specified. In the case of Skype for Business on the Surface Hub, there are a few scenarios where you need to use a FQDN.
- **Multiple DNS suffixes** - When your Skype for Business infrastructure has disjointed namespaces such that one or more servers have a DNS suffix that doesn't match the suffix of the sign-in address (SIP) for Skype for Business.  
- **Skype for Business and Exchange suffixes are different** - When the suffix of the sign-in address for Skype for Business differs from the suffix of the Exchange address used for the device account.
- **Working with certficates** - Large organizations with on-premise Skype for Business servers commonly use certificates with their own root certificate authority (CA). It is common for the CA domain to be different than the domain of the Skype for Business server which causes the certificate to not be trusted, and sign-in fails.  The Skype app needs to know the FQDN of the certificate in order to set up a trust relationship. Enterprises typically use Group Policy to push this out to Skype desktop, but Group Policy is not supported on Surface Hub.

## Add FQDN to Surface Hub 

You use the Settings app on Surface Hub to add FQDN information. You can add multiple entries, if needed. 

**To add Skype for Business Server FQDN**</br>
1. On Surface Hub open the **Settings** app.
2. Navigate to **System**, **Microsoft Surface Hub**. 
3. Under **Skype for Business**, click **Add FQDN**. 
4. Type the FQDN for the Skype for Business certificate. You can type multiple FQDNs separated by a comma. For example: lync.com, outlook.com, lync.glbdns.microsoft.com. 

 ![Add Skype for Business FQDN to Settings](images/system-settings-add-fqdn.png)