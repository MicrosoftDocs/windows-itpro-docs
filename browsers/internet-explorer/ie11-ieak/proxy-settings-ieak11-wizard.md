---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use the Proxy Settings page in the IEAK 11 Customization Wizard to pick the proxy servers used to connect to required services.
author: lomayor
ms.prod: ie11
ms.assetid: 1fa1eee3-e97d-41fa-a48c-4a6e0dc8b544
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Use the Proxy Settings page in the IEAK 11 Wizard (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the Proxy Settings page in the IEAK 11 Wizard
The **Proxy Settings** page of the Internet Explorer Customization Wizard 11 lets you pick the proxy servers used by your employees to connect for services required by the custom install package.

Using a proxy server lets you limit access to the Internet. You can also use the **Additional Settings** page of the wizard to further restrict your employees from changing the proxy settings.

**To use the Proxy Settings page**

1.  Check the **Enable proxy settings** box if you want to use proxy servers for any of your services.

2.  Type the address of the proxy server you want to use for your services into the **Address of proxy** box. In most cases, a single proxy server is used for all of your services.<p>
Proxy locations that don’t begin with a protocol (like, https:// or ftp://) are assumed to be a CERN-type HTTP proxy. For example, the entry *proxy* is treated the same as the entry `https://proxy`.

3.  Type the port for each service. The default value is *80*.

4.  Check the **Use the same proxy server for all addresses** box to use the same proxy server settings for all of your services.

5.  Type any services that shouldn’t use a proxy server into the **Do not use proxy server for addresses beginning with** box.<p>
When filling out your exceptions, keep in mind:

    -   Proxy bypass entries can begin with a protocol type, such as https://, https://, or ftp://. However, if a protocol type is used, the exception entry applies only to requests for that protocol.

    -   Protocol values are not case sensitive and you can use a wildcard character (*) in place of zero or more characters.

    -   You must use a semicolon between your entries.

    -   This list is limited to **2064** characters.

6.  Check the **Do not use proxy server for local (intranet) addresses** to bypass your proxy servers for all addresses on your intranet.

7.  Click **Next** to go to the [Security and Privacy Settings](security-and-privacy-settings-ieak11-wizard.md) page or **Back** to go to the [Automatic Configuration](auto-config-ieak11-wizard.md) page.

 

 





