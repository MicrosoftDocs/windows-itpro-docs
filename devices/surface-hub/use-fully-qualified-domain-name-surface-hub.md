---
title: Use fully qualified doman name with Surface Hub
description: Troubleshoot common problems, including setup issues, Exchange ActiveSync errors.
ms.assetid: CF58F74D-8077-48C3-981E-FCFDCA34B34A
keywords: ["Troubleshoot common problems", "setup issues", "Exchange ActiveSync errors"]
author: TrudyHa
localizationpriority: medium
---

# Configure domain name for Skype for Business

There are a few scenarios where you need to specify the domain name of your Skype for Business server:
- **Multiple DNS suffixes** - When your Skype for Business infrastructure has disjointed namespaces such that one or more servers have a DNS suffix that doesn't match the suffix of the sign-in address (SIP) for Skype for Business.  
- **Skype for Business and Exchange suffixes are different** - When the suffix of the sign-in address for Skype for Business differs from the suffix of the Exchange address used for the device account.
- **Working with certificates** - Large organizations with on-premise Skype for Business servers commonly use certificates with their own root certificate authority (CA). It is common for the CA domain to be different than the domain of the Skype for Business server which causes the certificate to not be trusted, and sign-in fails.  The Skype app needs to know the domain name of the certificate in order to set up a trust relationship. Enterprises typically use Group Policy to push this out to Skype desktop, but Group Policy is not supported on Surface Hub.

**To configure the domain name for your Skype for Business server**</br>
1. On Surface Hub, open the **Settings** app.
2. Navigate to **This device** > **Calling**. 
3. Under **Skype for Business configuration**, select **Configure domain name**. 
4. Type the domain name for your Skype for Business server. You can type multiple domain names, separated by commas. <br> For example: lync.com, outlook.com, lync.glbdns.microsoft.com

    ![Add Skype for Business FQDN to Settings](images/system-settings-add-fqdn.png)