---
title: AssignedAccess CSP
description: The AssignedAccess configuration service provider (CSP) is used set the device to run in kiosk mode.
ms.assetid: 421CC07D-6000-48D9-B6A3-C638AAF83984
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 06/19/2017
---

# AssignedAccess CSP


The AssignedAccess configuration service provider (CSP) is used set the device to run in kiosk mode. Once the CSP has been executed, then the next user login that is associated with the kiosk mode puts the device in the kiosk mode running the application specified in the CSP configuration.

For step-by-step guide for setting up devices to run in kiosk mode, see [Set up a kiosk on Windows 10 Pro, Enterprise, or Education.](http://go.microsoft.com/fwlink/p/?LinkID=722211)

> **Note**  The AssignedAccess CSP is only supported in Windows 10 Enterprise and Windows 10 Education.

 

The following diagram shows the AssignedAccess configuration service provider in tree format

![assignedaccess csp diagram](images/provisioning-csp-assignedaccess.png)

<a href="" id="--vendor-msft-assignedaccess"></a>**./Vendor/MSFT/AssignedAccess**  
Root node for the CSP.

<a href="" id="assignedaccess-kioskmodeapp"></a>**AssignedAccess/KioskModeApp**  
A JSON string that contains the user account name and Application User Model ID (AUMID) of the Kiosk mode app. For more information about how to get the AUMID, follow the information in [this Microsoft website](http://go.microsoft.com/fwlink/p/?LinkId=404220).

In Windows 10, version 1607, you can use a provisioned app to configure the kiosk mode. For more information about how to remotely provision an app, see [Enterprise app management](enterprise-app-management.md).

Here's an example:

``` syntax
{"Account":"redmond\\kioskuser","AUMID":"Microsoft.Windows.Contoso_cw5n1h2txyewy!Microsoft.ContosoApp.ContosoApp"}
```

When configuring the kiosk mode app, the account name will be used to find the target user. The account name includes domain name and user name.

> **Note**  The domain name can be optional if the user name is unique across the system.

 

For a local account, the domain name should be the device name. When Get is executed on this node, the domain name is always returned in the output.

The supported operations are Add, Delete, Get and Replace. When there's no configuration, the Get and Delete methods fail. When there's already a configuration for kiosk mode app, the Add method fails. The data pattern for Add and Replace is the same.

## Examples


KioskModeApp Add

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Add>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
               <Meta>  
                   <Format xmlns="syncml:metinf">chr</Format>  
               </Meta>  
               <Data>{"Account":"Domain\\AccountName","AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}</Data>
           </Item>
       </Add>
       <Final />
   </SyncBody>
</SyncML>
```

KioskModeApp Delete

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Delete>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
           </Item>
       </Delete>
       <Final />
   </SyncBody>
</SyncML>
```

KioskModeApp Get

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Get>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
           </Item>
       </Get>
       <Final />
   </SyncBody>
</SyncML>
```

KioskModeApp Replace

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Replace>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
               <Meta>  
                   <Format xmlns="syncml:metinf">chr</Format>  
               </Meta>  
               <Data>{"Account":"Domain\\AccountName","AUMID":"Microsoft.WindowsAlarms_8wekyb3d8bbwe!App"}</Data>
           </Item>
       </Replace>
       <Final />
   </SyncBody>
</SyncML>
```

 

 





