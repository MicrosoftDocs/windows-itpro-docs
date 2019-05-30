---
title: DeveloperSetup CSP
description: The DeveloperSetup configuration service provider (CSP) is used to configure developer mode on the device. This CSP was added in the Windows 10, version 1703.
ms.assetid: 
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2018
---

# DeveloperSetup CSP

The DeveloperSetup configuration service provider (CSP) is used to configure Developer Mode on the device and connect to the Windows Device Portal. For more information about the Windows Device Portal, see [Windows Device Portal overview](https://msdn.microsoft.com/windows/uwp/debug-test-perf/device-portal). This CSP was added in Windows 10, version 1703.

> [!NOTE]
The DeveloperSetup configuration service provider (CSP) is only supported in Windows 10 Holographic Enterprise edition and with runtime provisioning via provisioning packages. It is not supported in MDM.

The following diagram shows the DeveloperSetup configuration service provider in tree format.

![developersetup csp diagram](images/provisioning-csp-developersetup.png)

<a href="" id="developersetup"></a>**DeveloperSetup**  
<p style="margin-left: 20px">The root node for the DeveloperSetup configuration service provider.

<a href="" id="enabledevelopermode"></a>**EnableDeveloperMode**  
<p style="margin-left: 20px">A Boolean value that is used to enable Developer Mode on the device. The default value is false.

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal"></a>**DevicePortal**   
<p style="margin-left: 20px">The node for the Windows Device Portal.   

<a href="" id="deviceportal-authentication"></a>**DevicePortal/Authentication**  
<p style="margin-left: 20px">The node that describes the characteristics of the authentication mechanism that is used for the Windows Device Portal.  

<a href="" id="deviceportal-authentication-mode"></a>**DevicePortal/Authentication/Mode**   
<p style="margin-left: 20px">An integer value that specifies the mode of authentication that is used when making requests to the Windows Device Portal.  

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-authentication-basicauth"></a>**DevicePortal/Authentication/BasicAuth**   
<p style="margin-left: 20px">The node that describes the credentials that are used for basic authentication with the Windows Device Portal.  

<a href="" id="deviceportal-authentication-username"></a>**DevicePortal/Authentication/BasicAuth/Username**   
<p style="margin-left: 20px">A string value that specifies the user name to use when performing basic authentication with the Windows Device Portal. 
The user name must contain only ASCII characters and cannot contain a colon (:).

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-authentication-password"></a>**DevicePortal/Authentication/BasicAuth/Password**   
<p style="margin-left: 20px">A string value that specifies the password to use when authenticating requests against the Windows Device Portal.  

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-connection"></a>**DevicePortal/Connection**  
<p style="margin-left: 20px">The node for configuring connections to the Windows Device Portal service.   

<a href="" id="deviceportal-connection-httpport"></a>**DevicePortal/Connection/HttpPort**   
<p style="margin-left: 20px">An integer value that is used to configure the HTTP port for incoming connections to the Windows Device Portal service. 
If authentication is enabled, **HttpPort** will redirect the user to the (required) **HttpsPort**. 

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-connection-httpsport"></a>**DevicePortal/Connection/HttpsPort**   
<p style="margin-left: 20px">An integer value that is used to configure the HTTPS port for incoming connections to the Windows Device Portal service.  

<p style="margin-left: 20px">The only supported operation is Replace.
