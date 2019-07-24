---
title: Upgrade Readiness data sharing
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: Connectivity scenarios for data sharing with Upgrade Readiness
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.topic: article
ms.collection: M365-analytics
---

# Upgrade Readiness data sharing

To enable data sharing with the Upgrade Readiness solution, double-check the endpoints list in [Enrolling devices in Windows Analytics](../update/windows-analytics-get-started.md#enable-data-sharing) to be sure they are whitelisted.

## Connectivity to the Internet

There are several different methods your organization can use to connect to the Internet, and these methods can affect how authentication is performed by the deployment script.

### Direct connection to the Internet

This scenario is very simple since there is no proxy involved. If you are using a network firewall which is blocking outgoing traffic, please keep in mind that even though we provide DNS names for the endpoints needed to communicate to the Microsoft diagnostic data backend, We therefore do not recommend to attempt to whitelist endpoints on your firewall based on IP-addresses.

In order to use the direct connection scenario, set the parameter **ClientProxy=Direct** in **runconfig.bat**.

### Connection through the WinHTTP proxy

This is the first and most simple proxy scenario. The WinHTTP stack was designed for use in services and does not support proxy autodetection, PAC scripts or authentication.

In order to set the WinHTTP proxy system-wide on your computers, you need to
- Use the command netsh winhttp set proxy \<server\>:\<port\>
- Set ClientProxy=System in runconfig.bat

The WinHTTP scenario is most appropriate for customers who use a single proxy. If you have more advanced proxy requirements, refer to Scenario 3.

If you want to learn more about proxy considerations on Windows, see [Understanding Web Proxy Configuration](https://blogs.msdn.microsoft.com/ieinternals/2013/10/11/understanding-web-proxy-configuration/).

### Logged-in user’s Internet connection

In order to accommodate complex proxy scenarios, we also support using the currently logged-in user’s internet connection. This scenario supports PAC scripts, proxy autodetection and authentication. Essentially, if the logged in user can reach the Windows diagnostic data endpoints, the diagnostic data client can send data. If runconfig.bat runs while no user is logged in, diagnostic data events get written into a buffer which gets flushed when a user logs in.

In order to enable this scenario, you need:
- A current quality update Rollup for Windows 7, 8.1 or Windows 10 Version 1511. Updates shipped after October 2016 have the needed code
- Set the reg key HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection\DisableEnterpriseAuthProxy to 0. If the value does not exist, create a new DWORD, name it DisableEnterpriseAuthProxy and set the value to 0. The deployment script will check this is configured correctly.
- Set ClientProxy=User in bat.

> [!IMPORTANT]
> Using **Logged-in user's internet connection** with **DisableEnterpriseAuthProxy = 0** scenario is incompatible with ATP where the required value of that attribute is 1.(Read more here)[<https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-proxy-internet-windows-defender-advanced-threat-protection>]





