---
title: Configure Windows Defender ATP endpoint proxy and Internet connection settings
description: Configure the Windows Defender ATP proxy and internet settings to enable communication with the cloud service.
keywords: configure, proxy, internet, internet connectivity, settings, proxy settings, web proxy auto detect, wpad, netsh, winhttp, proxy server
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---


# Configure endpoint proxy and Internet connectivity settings

**Applies to:**

- Windows 10, version 1607
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to report telemetry and communicate with the Windows Defender ATP service.

The embedded Windows Defender ATP sensor runs in system context using the LocalSystem account. The sensor uses Microsoft Windows HTTP Services (WinHTTP) to enable communication with the Windows Defender ATP cloud service.

The WinHTTP configuration setting is independent of the Windows Internet (WinINet) internet browsing proxy settings and can only discover a proxy server by using the following discovery methods:

- Configure Web Proxy Auto Detect (WPAD) settings and configure Windows to automatically detect the proxy server

- Configure the proxy server manually using Netsh

- Configure the proxy server manually using a static proxy

## Configure Web Proxy Auto Detect (WPAD) settings and proxy server

Configure WPAD in the environment and configure Windows to automatically detect the proxy server through Policy or the local Windows settings.

Enable the **Automatically detect settings** option in the Windows Proxy settings so that WinHTTP can use the WPAD feature to locate a proxy server.

1. Click **Start** and select **Settings**.

2. Click **Network & Internet**.

3. Select **Proxy**.

4. Verify that the **Automatically detect settings** option is set to On.

    ![Image showing the proxy settings configuration page](images/proxy-settings.png)

5. If the **Use setup script** or **Manual proxy setup** options are enabled then you will need to [configure proxy settings manually by using Netsh](#configure-proxy-server-manually-using-netsh) method for WinHTTP to discover the appropriate proxy settings and connect.

## Configure the proxy server manually using Netsh

If **Use setup script** or **Manual proxy setup** settings are configured in the Windows Proxy setting, then endpoints will not be discovered by WinHTTP.
Use Netsh to configure the proxy settings to enable connectivity.

You can configure the endpoint by using any of these methods:

- Importing the configured proxy settings to WinHTTP
- Configuring the proxy settings manually to WinHTTP

After configuring the endpoints, you'll need to verify that the correct proxy settings were applied.

**Import the configured proxy settings to WinHTTP**

1.  Open an elevated command-line prompt on the endpoint:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command and press **Enter**:

 ```text
 netsh winhttp import proxy source=ie
 ```
 An output showing the applied WinHTTP proxy settings is displayed.


 **Configure the proxy settings manually to WinHTTP**

 1.  Open an elevated command-line prompt on the endpoint:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

 2. Enter the following command and press **Enter**:

 ```text
 proxy [proxy-server=] ProxyServerName:PortNumber
 ```
    Replace *ProxyServerName* with the fully qualified domain name of the proxy server.

    Replace *PortNumber* with the port number that you want to configure the proxy server with.

 An output showing the applied WinHTTP proxy settings is displayed.


**Verify that the correct proxy settings were applied**

1.  Open an elevated command-line prompt on the endpoint:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command and press **Enter**:

```
netsh winhttp show proxy
```

For more information on how to use Netsh see, [Netsh Commands for Windows Hypertext Transfer Protocol (WINHTTP)](https://technet.microsoft.com/en-us/library/cc731131(v=ws.10).aspx)     

## Configure the proxy server manually using a static proxy
Configure a static proxy to allow only Windows Defender ATP sensor to report telemetry and communicate with Windows Defender ATP services if a computer is not be permitted to connect to the Internet.

1. Click **Start**, type **Run**, and press **Enter**.

2. From the **Run** dialog box, type **regedit** and press **Enter**.

3. In the **Registry Editor** navigate to the Status key under:
```text
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection
```
4. Right-click **DataCollection** and select **New** > **String value**.
5. Write the proxy address in the following format:
```
[proxy_ip:port]
```
6. Restart the PC.


## Enable access to Windows Defender ATP service URLs in the proxy server

If a proxy or firewall is blocking all traffic by default and allowing only specific domains through, make sure that the following URLs are white-listed to permit communication with Windows Defender ATP service in port 80 and 443:

U.S. region:
- *.blob.core.windows.net
- crl.microsoft.com
- us.vortex-win.data.microsoft.com 
- winatp-gw-cus.microsoft.com
- winatp-gw-eus.microsoft.com
- www.microsoft.com

EU region: 
- *.blob.core.windows.net
- crl.microsoft.com
- eu.vortex-win.data.microsoft.com
- winatp-gw-weu.microsoft.com
- winatp-gw-neu.microsoft.com
- www.microsoft.com

If a proxy or firewall is blocking anonymous traffic, as Windows Defender ATP  sensor is connecting from system context, make sure anonymous traffic is permitted to the above listed URLs.


## Verify client connectivity to Windows Defender ATP service URLs

Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Windows Defender ATP service URLs.

1. Download the connectivity verification tool to the PC where Windows Defender ATP sensor is running on:

    - Download Snapshot  - NEED LINK ON WHERE TO DOWNLOAD THIS. 

2.  Open an elevated command-line:

    a. Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

3. Enter the following command and press **Enter**:

    ```
    HardDrivePath\PsExec.exe -s -i HardDrivePath\SenseSnapshot.exe 
    ```
    Replace *HardDrivePath* with the path where the SenseSnapshot tool was downloaded to, for example ```C:\Programfiles\mytool\sensesnapshottool\SenseSnapshot.exe```.

4. Extract the Snapshot.xml file from the Snapshot.zip created in the *HardDrivePath* folder.

5. Open Snapshot.xml using any XML reader and go to the Connections section of the file.

6.	Verify that the **Result** field of each relevant URL shows that the name is **resolved** and connection status is **listening**.

If the any of the verification steps indicate a fail, then verify that you have performed the proxy configuration steps to enable server discovery and access to the service URLs.

> [!NOTE]
> SenseSnapshot verifies connectivity for all URLs (including EU and U.S.), so you can ignore results of connectivity verification for irrelevant geo-locations.

## Related topics
- [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
