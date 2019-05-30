---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: networking
description: Auto detect settings Internet Explorer 11
author: dansimp
ms.prod: ie11
ms.assetid: c6753cf4-3276-43c5-aae9-200e9e82753f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
title: Auto detect settings Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Auto detect settings Internet Explorer 11
After you specify the specific settings related to automatic detection on your Dynamic Host Configuration Protocol (DHCP) and Domain Name System (DNS) servers, you can set up your users' browser settings from a central location.

Automatic detection works even if the browser wasn't originally set up or installed by the administrator.

-   **Using DHCP servers:** For local area network (LAN)-based users. This server type lets you specify your global and subnet TCP/IP parameters centrally, defining your users' parameters by using reserved addresses. By doing it this way, a computer can move between subnets, automatically reconfiguring for TCP/IP when it starts.

-   **Using DNS servers:** For users on dial-up connections. This server type uses a set of protocols and services on a TCP/IP network, which lets users search for other computers by using hierarchical, user-friendly names (hosts), instead of numeric IP addresses.<p>**Note**<br>DHCP has a higher priority than DNS for automatic configuration. If DHCP provides the URL to a .pac, .jvs, .js, or .ins configuration file, the process stops and the DNS lookup doesn't happen.

## Updating your automatic detection settings
To use automatic detection, you have to set up your DHCP and DNS servers.<p>**Note**<br>Your DHCP servers must support the `DHCPINFORM` message, to obtain the DHCP options.

 **To turn on automatic detection for DHCP servers**

1.  Open the Internet Explorer Customization Wizard 11, and go to the **Automatic Configuration** page.

2.  Choose the **Automatically detect configuration settings** box to automatically detect your browser settings. For more information about the **Automatic Configuration** page, see [Use the Automatic Configuration page in the IEAK 11 Wizard](../ie11-ieak/auto-config-ieak11-wizard.md).

3.  Open the [DHCP Administrative Tool](https://go.microsoft.com/fwlink/p/?LinkId=302212), create a new option type, using the code number 252, and then associate it with the URL to your configuration file. For detailed instructions about how to do this, see [Create an option 252 entry in DHCP](https://go.microsoft.com/fwlink/p/?LinkId=294649).

 **To turn on automatic detection for DNS servers**

1.  Open the IE Customization Wizard 11, and go to the **Automatic Configuration** page.

2.  Choose the **Automatically detect configuration settings** box to automatically detect your browser settings.

3.  In your DNS database file, create a host record named, **WPAD**. This record has the IP address of the web server storing your automatic configuration (.js, .jvs, .pac, or .ins) file.<p>**-OR-**<p>Create a canonical name (CNAME) alias record named, **WPAD**. This record has the resolved name (not the IP address) of the server storing your automatic configuration (.pac) file.<p>**Note**<br>For more information about creating a **WPAD** entry, see [Creating a WPAD entry in DNS](https://go.microsoft.com/fwlink/p/?LinkId=294651). 

4.  After the database file propagates to the server, the DNS name, `wpad.<domain>.com` resolves to the server name that includes your automatic configuration file.<p>**Note**<br>Internet Explorer 11 creates a default URL template based on the host name, **wpad**. For example, `https://wpad.<domain>.com/wpad.dat`. Because of this, you need to set up a file or redirection point in your web server **WPAD** record, named **wpad.dat**. The **wpad.dat** record delivers the contents of your automatic configuration file.

     

 

 



