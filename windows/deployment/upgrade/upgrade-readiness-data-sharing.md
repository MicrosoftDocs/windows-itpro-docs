---
title: Upgrade Readiness data sharing
description: Connectivity scenarios for data sharing with Upgrade Readiness
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.date: 04/19/2017
---

# Upgrade Readiness data sharing

To enable data sharing with the Upgrade Readiness solution, the following endpoints must be accessible:


| **Endpoint**  | **Function**  |
|---------------------------------------------------------|-----------|
| `https://v10.vortex-win.data.microsoft.com/collect/v1`<br>`https://Vortex-win.data.microsoft.com/health/keepalive`                                                                                                      | Connected User Experiences and Telemetry component endpoint. User computers send data to Microsoft through this endpoint.             |
| `https://settings.data.microsoft.com/qos`                                                                                                                                  | Enables the compatibility update KB to send data to Microsoft.                                                                       |
| `https://go.microsoft.com/fwlink/?LinkID=544713`<br>`https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc`                                         | This service provides driver information about whether there will be a driver available post-upgrade for the hardware on the system. |

Whitelist these endpoints on your network. This might require working with your organizations's network security group.

## Connectivity to the Internet

There are several different methods your organization can use to connect to the Internet, and these methods can affect how authentication is performed by the deployment script.

### Direct connection to the Internet

This scenario is very simple since there is no proxy involved. If you are using a network firewall which is blocking outgoing traffic, please keep in mind that even though we provide DNS names for the endpoints needed to communicate to the Microsoft diagnostic data backend, We therefore do not recommend to attempt to whitelist endpoints on your firewall based on IP-addresses.

In order to use the direct connection scenario, set the parameter **ClientProxy=Direct** in **runconfig.bat**.

### Connection through the WinHTTP proxy

This is the first and most simple proxy scenario. The WinHTTP stack was designed for use in services and does not support proxy autodetection, PAC scripts or authentication.

In order to set the WinHTTP proxy system-wide on your computers, you need to
•Use the command netsh winhttp set proxy \<server\>:\<port\>
•Set ClientProxy=System in runconfig.bat

The WinHTTP scenario is most appropriate for customers who use a single proxy or f. If you have more advanced proxy requirements, refer to Scenario 3.

If you want to learn more about proxy considerations on Windows, see [Understanding Web Proxy Configuration](https://blogs.msdn.microsoft.com/ieinternals/2013/10/11/understanding-web-proxy-configuration/).

### Logged-in user’s Internet connection

In order to accommodate complex proxy scenarios, we also support using the currently logged-in user’s internet connection. This scenario supports PAC scripts, proxy autodetection and authentication. Essentially, if the logged in user can reach the Windows diagnostic data endpoints, the diagnostic data client can send data. If runconfig.bat runs while no user is logged in, diagnostic data events get written into a buffer which gets flushed when a user logs in.

In order to enable this scenario, you need:
- A current quality update Rollup for Windows 7, 8.1 or Windows 10 Version 1511. Updates shipped after October 2016 have the needed code
- Set the reg key HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection\DisableEnterpriseAuthProxy to 0. If the value does not exist, create a new DWORD, name it DisableEnterpriseAuthProxy and set the value to 0. The deployment script will check this is configured correctly.
- Set ClientProxy=User in bat.


