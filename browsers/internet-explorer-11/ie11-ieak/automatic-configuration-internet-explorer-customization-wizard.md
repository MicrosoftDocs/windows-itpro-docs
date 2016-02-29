---
title: 'Automatic Configuration: Internet Explorer Customization Wizard'
description: Automatic Configuration: Internet Explorer Customization Wizard
ms.assetid: de5b1dbf-6e4d-4f86-ae08-932f14e606b0
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Automatic Configuration: Internet Explorer Customization Wizard


The **Automatic Configuration** page of the Internet Explorer Customization Wizard 11 lets you provide URLs to the files that’ll automatically configure Internet Explorer 11 for a group of employees or computers.

This page only appears if you’re using the **Internal** version of the wizard.

You can set your proxy settings using Internet setting (.ins) files. You can also configure and maintain your advanced proxy settings using JScript (.js), JavaScript (.jvs), or proxy auto-configuration (.pac) script files. When you provide an auto-proxy script, IE dynamically determines whether to connect directly to a host or to use a proxy server.

You can use the Domain Name System (DNS) and the Dynamic Host Configuration Protocol (DHCP) naming systems to detect and change a browser’s settings automatically when the employee first starts IE on the network. For more information, see the product documentation for your DNS and DHCP software packages. Also see [Set up automatic detection for DHCP or DNS servers using IEAK 11](set-up-automatic-detection-for-dhcp-or-dns-servers-using-ieak-11.md).

![](images/wedge.gif) **To check the existing settings on your employee’s computers**

1.  Open IE, click **Tools**, click **Internet Options**, and then click the **Connections** tab.

2.  Click **LAN Settings** and make sure that the **Use automatic configuration script** box is selected, confirming the path and name of the file in the **Address** box.

![](images/wedge.gif) **To use the Automatic Configuration page**

1.  Check the **Automatically detect configuration settings** box to automatically detect browser settings.

2.  Check the **Enable Automatic Configuration** box if you plan to automatically change your IE settings after deployment, using configuration files. You can then:

    -   Type the length of time (in minutes) for how often settings are to be applied in your company. Putting zero (**0**), or nothing, in this box will cause automatic configuration to only happen when the computer’s restarted.

    -   Type the location to your .ins file. You can edit this file directly to make any necessary changes.

        The updates will take effect the next time your employee starts IE, or during your next scheduled update.

    -   Type the location to your automatic proxy script file.

        **Note**  
        If you specify URLs for both auto-config and auto-proxy, the auto-proxy URL will be incorporated into the .ins file. The correct form for the URL is *http://share/test.ins*.

         

3.  Click **Next** to go to the [Proxy Settings: Internet Explorer Customization Wizard](proxy-settings-internet-explorer-customization-wizard.md) page or **Back** to go to the [Connection Settings: Internet Explorer Customization Wizard](connection-settings-internet-explorer-customization-wizard.md) page.

 

 





