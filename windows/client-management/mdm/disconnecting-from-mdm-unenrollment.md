---
title: Disconnecting from the management infrastructure (unenrollment)
description: Disconnecting may be initiated either locally by the user from the phone or remotely by the IT admin using management server.
MS-HAID:
- 'p\_phdevicemgmt.disconnecting\_from\_the\_management\_infrastructure\_\_unenrollment\_'
- 'p\_phDeviceMgmt.disconnecting\_from\_mdm\_unenrollment'
ms.assetid: 33B2B248-631B-451F-B534-5DA095C4C8E8
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---


# Disconnecting from the management infrastructure (unenrollment)

Disconnecting may be initiated either locally by the user from the phone or remotely by the IT admin using management server. User-initiated disconnection is performed much like the initial connection, and it is initiated from the same location in the Setting Control Panel as creating the workplace account. Users may choose to disconnect for any number of reasons, including leaving the company or getting a new device and no longer needing access to their LOB apps on the old device. When an administrator initiates a disconnection, the enrollment client performs the disconnection during its next regular maintenance session. Administrators may choose to disconnect a user’s device after they’ve left the company or because the device is regularly failing to comply with the organization’s security settings policy.

During disconnection, the client does the following:

-   Removes the enterprise application token that allowed installing and running LOB apps. Any business applications associated with this enterprise token are removed as well.
-   Removes certificates that are configured by MDM server.
-   Ceases enforcement of the settings policies that the management infrastructure has applied.
-   Removes the device management client configuration and other setting configuration added by MDM server, including the scheduled maintenance task. The client remains dormant unless the user reconnects it to the management infrastructure.
-   Reports successful initiated disassociation to the management infrastructure if the admin initiated the process. Note that in Windows, user-initiated disassociation is reported to the server as a best effort.


## In this topic

-   [User-initiated disconnection](#user-initiated-disconnection)
-   [Server-initiated disconnection](#server-initiated-disconnection)
-   [Unenrollment from Work Access settings page](#unenrollment-from-work-access-settings-page)
-   [IT admin–requested disconnection](#it-admin-requested-disconnection)
-   [Unenrollment from Azure Active Directory Join](#dataloss)


## User-initiated disconnection

In Windows, after the user confirms the account deletion command and before the account is deleted, the MDM client will send a notification to the MDM server notifying that the server the account will be removed. This is a best effort action as no retry is built-in to ensure the notification is successfully sent to the device.

This action utilizes the OMA DM generic alert 1226 function to send a user an MDM unenrollment user alert to the MDM server after the device accepts the user unenrollment request, but before it deletes any enterprise data. The server should set the expectation that unenrollment may succeed or fail, and the server can check whether the device is unenrolled by either checking whether the device calls back at scheduled time or by sending a push notification to the device to see whether it responds back. If the server plans to send a push notification, it should allow for some delay to give the device the time to complete the unenrollment work.

> **Note**  The user unenrollment is an OMA DM standard. For more information about the 1226 generic alert, refer to the OMA Device Management Protocol specification (OMA-TS-DM\_Protocol-V1\_2\_1-20080617-A), available from the [OMA website](https://go.microsoft.com/fwlink/p/?LinkId=267526).

 
The vendor uses the Type attribute to specify what type of generic alert it is. For device initiated MDM unenrollment, the alert type is **com.microsoft:mdm.unenrollment.userrequest**.

After the user elects to unenroll, any active MDM OMA DM sessions are terminated. After that, the DM client starts a DM session, including a user unenroll generic alert in the first package that it sends to the server.

The following sample shows an OMA DM first package that contains a generic alert message. For more information on WP OMA DM support, see the [OMA DM protocol support](oma-dm-protocol-support.md) topic.

```
<SyncML xmlns=&#39;SYNCML:SYNCML1.2&#39;>
   <SyncHdr>
      <VerDTD>1.2</VerDTD>
      <VerProto>DM/1.2</VerProto>
      <SessionID>1</SessionID>
      <MsgID>1</MsgID>
      <Target>
         <LocURI>{unique device ID}</LocURI>
      </Target>
      <Source>
         <LocURI>https://www.thephone-company.com/mgmt-server</LocURI>
      </Source>
   </SyncHdr>
   <SyncBody>
      <Alert>
    <CmdID>2</CmdID>
        <Data>1226</Data> <!-- generic alert -->
        <Item>
          <Meta>
             <Type xmlns="syncml:metinfo"> com.microsoft:mdm.unenrollment.userrequest</Type>
          <Format xmlns= "syncml:metinfo">int</Format>
           </Meta>
        <Data>1</Data>
         </Item>
       </Alert>

<!-- other device information -->
      <Replace>
         <CmdID>2</CmdID>
         <Item>
            <Source>
               <LocURI>./DevInfo/DevID</LocURI>
            </Source>
         <Data>{unique device ID}</Data>
         </Item>
         <Item>
        ...
         </Item>
      </Replace>
      <Final/>
   </SyncBody>
</SyncML>
```

After the previous package is sent, the unenrollment process begins.


## Server-initiated disconnection

When the server initiates disconnection, all undergoing sessions for the enrollment ID are aborted immediately to avoid deadlocks. The server will not get a response for the unenrollment, instead a generic alert notification is sent with messageid=1.

``` syntax
<Alert>
      <CmdID>4</CmdID>
      <Data>1226</Data>
      <Item>
        <Meta>
          <Type xmlns="syncml:metinf">com.microsoft:mdm.unenrollment.userrequest</Type>
         <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>1</Data>
      </Item>
</Alert>
```


<a href="" id="work-access"></a>
## Unenrollment from Work Access settings page

If the user is enrolled into MDM using an Azure Active Directory (AAD Join or by adding a Microsoft work account), the MDM account will show up under the Work Access page. However, the **Disconnect** button is greyed out and not accessible. Users can remove that MDM account by removing the AAD association to the device.

You can only use the Work Access page to unenroll under the following conditions:

-   Enrollment was done using bulk enrollment.
-   Enrollment was created using the Work Access page.


<a href="" id="dataloss"></a>
## Unenrollment from Azure Active Directory Join

When a user is enrolled into MDM through Azure Active Directory Join and then disconnects the enrollment, there is no warning that the user will lose Windows Information Protection (WIP) data. The disconnection message does not indicate the loss of WIP data.

![aadj unenerollment](images/azure-ad-unenrollment.png)

When a device is enrolled into MDM through Azure Active Directory Join and then remotely unenrolled, the device may get into a state where it must be re-imaged. When devices are remotely unenrolled from MDM, the AAD association is also removed. This safeguard is in place to avoid leaving the corporated devices in unmanaged state.

Before remotely unenrolling corporate devices, you must ensure that there is at least one admin user on the device that is not part of the Azure tenant, otherwise the device will not have any admin user after the operation.

In mobile devices, remote unenrollment for Azure Active Directory Joined devices will fail. To remove corporate content from these devices, we recommend you remotely wipe the device.

<a href="" id="it-admin-requested-disconnection"></a>
## IT admin–requested disconnection

The server requests an enterprise management disconnection request by issuing an Exec OMA DM SyncML XML command to the device using the DMClient configuration service provider’s Unenroll node during the next client-initiated DM session. The Data tag inside the Exec command should be the value of the provisioned DM server ProviderID. For more information, see the Enterprise-specific DM client configuration topic.

When the disconnection is completed, the user is notified that the device has been disconnected from enterprise management.

 






