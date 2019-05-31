---
title: CleanPC CSP
description: The CleanPC configuration service provider (CSP) allows removal of user-installed and pre-installed applications, with the option to persist user data. This CSP was added in Windows 10, version 1703.
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
ms.reviewer: 
manager: dansimp
---

# CleanPC CSP

The CleanPC configuration service provider (CSP) allows removal of user-installed and pre-installed applications, with the option to persist user data. This CSP was added in Windows 10, version 1703.

The following diagram shows the CleanPC configuration service provider in tree format.

![CleanPC csp diagram](images/provisioning-csp-cleanpc.png)

<a href="" id="--device-vendor-msft-cleanpc"></a>**./Device/Vendor/MSFT/CleanPC**  
<p style="margin-left: 20px">The root node for the CleanPC configuration service provider.</p>

<a href="" id="cleanpcwithoutretaininguserdata"></a>**CleanPCWithoutRetainingUserData**  
<p style="margin-left: 20px">An integer specifying a CleanPC operation without any retention of user data.

<p style="margin-left: 20px">The only supported operation is Execute.

<a href="" id="cleanpcwithoutretaininguserdata"></a>**CleanPCRetainingUserData**  
<p style="margin-left: 20px">An integer specifying a CleanPC operation with retention of user data. 

<p style="margin-left: 20px">The only supported operation is Execute.
