---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: networking
description: Auto configuration and auto proxy problems with Internet Explorer 11
author: dansimp
ms.prod: ie11
ms.assetid: 3fbbc2c8-859b-4b2e-abc3-de2c299e0938
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: dansimp
title: Auto configuration and auto proxy problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Auto configuration and auto proxy problems with Internet Explorer 11
You might experience some problems using automatic configuration and auto-proxy with Internet Explorer 11.

## Branding changes aren't distributed using automatic configuration
If you've turned on the **Disable external branding of Internet Explorer** Group Policy Object, you won't be able to use automatic configuration to distribute your branding changes to your users' computers. When this object is turned on, it prevents the branding of IE by a non-Microsoft company or entity, such as an Internet service provider or Internet content provider. For more information about automatic configuration, see [Auto configuration settings for Internet Explorer 11](auto-configuration-settings-for-ie11.md) and [Use the Automatic Configuration page in the IEAK 11 Wizard](../ie11-ieak/auto-config-ieak11-wizard.md). For more information about Group Policy settings, see [Group policy objects and Internet Explorer 11 (IE11)](group-policy-objects-and-ie11.md).

## Proxy server setup issues
If you experience issues while setting up your proxy server, you can try these troubleshooting steps:

- Check to make sure the proxy server address is right.

- Check that both **Automatically detect settings** and **Automatic configuration** are turned on in the browser.

- Check that the browser is pointing to the right automatic configuration script location.

  **To check your proxy server address**

1. On the **Tools** menu, click **Internet Options**, and then **Connections**.

2. Click **Settings** or **LAN Settings**, and then look at your proxy server address.

3. If you have multiple proxy servers, click **Advanced** to look at all of the additional addresses.<p>**Note**<br>If IE11 uses a proxy server for local IP addresses, regardless whether you turned on the **Bypass Proxy Server for Local Addresses** option, see [Internet Explorer Uses Proxy Server for Local IP Address Even if the "Bypass Proxy Server for Local Addresses" Option Is Turned On](https://go.microsoft.com/fwlink/p/?LinkId=85652).

   **To check that you've turned on the correct settings**

4. On the **Tools** menu, click **Internet Options**, and then click **Connections**.

5. Click **Settings** or **LAN Settings**.

6. In the **Automatic configuration** area, check that you've clicked the **Automatically detect settings** box. If you've turned on automatic configuration, check to make sure that you've also clicked the **Use automatic configuration script** box.<p>**Note**<br>If at this point everything is set up correctly, but the proxy server still isn't behaving properly, click the **Detect my network settings** box in the **Error** dialog box to try to detect the proxy server, again.

   **To check that you're pointing to the correct automatic configuration script location**

7. On the **Tools** menu, click **Internet Options**, and then click **Connections**.

8. Click **Settings** or **LAN Settings**.

9. In the **Automatic configuration** area, check that you've chosen the **Use automatic configuration script** box, and that it has the correct location to your automatic configuration script or for your automatic proxy URL.

 

 



