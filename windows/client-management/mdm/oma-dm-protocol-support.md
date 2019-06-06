---
title: OMA DM protocol support
description: OMA DM protocol support
ms.assetid: e882aaae-447e-4bd4-9275-463824da4fa0
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---


# OMA DM protocol support

The OMA DM client communicates with the server over HTTPS and uses DM Sync (OMA DM v1.2) as the message payload. This topic describes the OMA DM functionality that the DM client supports in general. The full description of the OMA DM protocol v1.2 can be found at the [OMA website](https://www.openmobilealliance.org/release/DM/V1_2-20070209-A/OMA-TS-DM_Protocol-V1_2-20070209-A.pdf).


## In this topic

-   [OMA DM standards](#oma-dm-standards)

-   [OMA DM protocol common elements](#protocol-common-elements)

-   [Device management session](#device-management-session)

-   [User targeted vs. Device targeted configuration](#user-targeted-vs-device-targeted-configuration)

-   [SyncML response codes](#syncml-response-codes)


## OMA DM standards

The following table shows the OMA DM standards that Windows uses.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>General area</th>
<th>OMA DM standard that is supported</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Data transport and session</p></td>
<td style="vertical-align:top"><ul>
<li><p>Client-initiated remote HTTPS DM session over SSL.</p></li>
<li><p>Remote HTTPS DM session over SSL.</p></li>
<li><p>Remote DM server initiation notification using WAP Push over Short Message Service (SMS). Not used by enterprise management.</p></li>
<li><p>Remote bootstrap by using WAP Push over SMS. Not used by enterprise management.</p></li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Bootstrap XML</p></td>
<td style="vertical-align:top"><ul>
<li><p>OMA Client Provisioning XML.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>DM protocol commands</p></td>
<td style="vertical-align:top"><p>The following list shows the commands that are used by the device. For further information about the OMA DM command elements, see &quot;SyncML Representation Protocol Device Management Usage (OMA-SyncML-DMRepPro-V1_1_2-20030613-A)&quot; available from the [OMA website](https://www.openmobilealliance.org/release/DM/V1_1_2-20031209-A/).</p>
<ul>
<li><p>Add (Implicit Add supported)</p></li>
<li><p>Alert (DM alert): Generic alert (1226) is used by enterprise management client when the user triggers an MDM unenrollment action from the device or when a CSP finishes some asynchronous actions. Device alert (1224) is used to notify the server some device triggered event.</p></li>
<li><p>Atomic: Note that performing an Add command followed by Replace on the same node within an atomic element is not supported. Nested Atomic and Get commands are not allowed and will generate error code 500.</p></li>
<li><p>Delete: Removes a node from the DM tree, and the entire subtree beneath that node if one exists</p></li>
<li><p>Exec: Invokes an executable on the client device</p></li>
<li><p>Get: Retrieves data from the client device; for interior nodes, the child node names in the Data element are returned in URI-encoded format</p></li>
<li><p>Replace: Overwrites data on the client device</p></li>
<li><p>Result: Returns the data results of a Get command to the DM server</p></li>
<li><p>Sequence: Specifies the order in which a group of commands must be processed</p></li>
<li><p>Status: Indicates the completion status (success or failure) of an operation</p></li>
</ul>
<p>If an XML element that is not a valid OMA DM command is under one of the following elements, the status code 400 is returned for that element:</p>
<ul>
<li><p>SyncBody</p></li>
<li><p>Atomic</p></li>
<li><p>Sequence</p></li>
</ul>
<p>If no CmdID is provided in the DM command, the client returns blank in the status element and the status code 400.</p>
<p>If Atomic elements are nested, the following status codes are returned:</p>
<ul>
<li><p>The nested Atomic command returns 500.</p></li>
<li><p>The parent Atomic command returns 507.</p></li>
</ul>
<p>For more information about the Atomic command, see OMA DM protocol common elements.</p>
<p>Performing an Add command followed by Replace on the same node within an Atomic element is not supported.</p>
<p>LocURI cannot start with &quot;/&quot;.</p>
<p>Meta XML tag in SyncHdr is ignored by the device.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>OMA DM standard objects</p></td>
<td style="vertical-align:top"><ul>
<li><p>DevInfo</p></li>
<li><p>DevDetail</p></li>
<li><p>OMA DM DMS account objects (OMA DM version 1.2)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Security</p></td>
<td style="vertical-align:top"><ul>
<li><p>Authenticate DM server initiation notification SMS message (not used by enterprise management)</p></li>
<li><p>Application layer Basic and MD5 client authentication</p></li>
<li><p>Authenticate server with MD5 credential at application level</p></li>
<li><p>Data integrity and authentication with HMAC at application level</p></li>
<li><p>SSL level certificate based client/server authentication, encryption, and data integrity check</p></li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Nodes</p></td>
<td style="vertical-align:top"><p>In the OMA DM tree, the following rules apply for the node name:</p>
<ul>
<li><p>&quot;.&quot; can be part of the node name.</p></li>
<li><p>The node name cannot be empty.</p></li>
<li><p>The node name cannot be only the asterisk (*) character.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Provisioning Files</p></td>
<td style="vertical-align:top"><p>Provisioning XML must be well formed and follow the definition in [SyncML Representation Protocol](https://go.microsoft.com/fwlink/p/?LinkId=526905) specification.</p>
<p>If an XML element that is not a valid OMA DM command is under SyncBody, the status code 400 is returned for that element.</p>
<div class="alert">
<strong>Note</strong>  
<p>To represent a Unicode string as a URI, first encode the string as UTF-8. Then encode each of the UTF-8 bytes using URI encoding.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>WBXML support</p></td>
<td style="vertical-align:top"><p>Windows supports sending and receiving SyncML in both XML format and encoded WBXML format. This is configurable by using the DEFAULTENCODING node under the w7 APPLICATION characteristic during enrollment. For more information about WBXML encoding, see section 8 of the [SyncML Representation Protocol](https://go.microsoft.com/fwlink/p/?LinkId=526905) specification.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Handling of large objects</p></td>
<td style="vertical-align:top"><p>In Windows 10, version 1511, client support for uploading large objects to the server was added.</p></td>
</tr>
</tbody>
</table>


<a href="" id="protocol-common-elements"></a>
## OMA DM protocol common elements

Common elements are used by other OMA DM element types. The following table lists the OMA DM common elements used to configure the devices. For more information about OMA DM common elements, see "SyncML Representation Protocol Device Management Usage" (OMA-SyncML-DMRepPro-V1_1_2-20030613-A) available from the [OMA website](https://www.openmobilealliance.org/release/DM/V1_1_2-20031209-A/).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Chal</p></td>
<td style="vertical-align:top"><p>Specifies an authentication challenge. The server or client can send a challenge to the other if no credentials or inadequate credentials were given in the original request message.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Cmd</p></td>
<td style="vertical-align:top"><p>Specifies the name of an OMA DM command referenced in a Status element.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>CmdID</p></td>
<td style="vertical-align:top"><p>Specifies the unique identifier for an OMA DM command.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>CmdRef</p></td>
<td style="vertical-align:top"><p>Specifies the ID of the command for which status or results information is being returned. This element takes the value of the CmdID element of the corresponding request message.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Cred</p></td>
<td style="vertical-align:top"><p>Specifies the authentication credential for the originator of the message.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Final</p></td>
<td style="vertical-align:top"><p>Indicates that the current message is the last message in the package.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>LocName</p></td>
<td style="vertical-align:top"><p>Specifies the display name in the Target and Source elements, used for sending a user ID for MD5 authentication.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>LocURI</p></td>
<td style="vertical-align:top"><p>Specifies the address of the target or source location. If the address contains a non-alphanumeric character, it must be properly escaped according to the URL encoding standard.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>MsgID</p></td>
<td style="vertical-align:top"><p>Specifies a unique identifier for an OMA DM session message.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>MsgRef</p></td>
<td style="vertical-align:top"><p>Specifies the ID of the corresponding request message. This element takes the value of the request message MsgID element.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>RespURI</p></td>
<td style="vertical-align:top"><p>Specifies the URI that the recipient must use when sending a response to this message.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>SessionID</p></td>
<td style="vertical-align:top"><p>Specifies the identifier of the OMA DM session associated with the containing message.</p>
<div class="alert">
<strong>Note</strong>  If the server does not notify the device that it supports a new version (through SyncApplicationVersion node in the DMClient CSP), the desktop client returns the SessionID in integer in decimal format and the mobile device client returns 2 bytes as a string. If the server supports DM session sync version 2.0, which is used in Windows 10, the desktop and mobile device client returns 2 bytes.
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Source</p></td>
<td style="vertical-align:top"><p>Specifies the message source address.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>SourceRef</p></td>
<td style="vertical-align:top"><p>Specifies the source of the corresponding request message. This element takes the value of the request message Source element and is returned in the Status or Results element.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Target</p></td>
<td style="vertical-align:top"><p>Specifies the address of the node, in the DM Tree, that is the target of the OMA DM command.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>TargetRef</p></td>
<td style="vertical-align:top"><p>Specifies the target address in the corresponding request message. This element takes the value of the request message Target element and is returned in the Status or Results element.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>VerDTD</p></td>
<td style="vertical-align:top"><p>Specifies the major and minor version identifier of the OMA DM representation protocol specification used to represent the message.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>VerProto</p></td>
<td style="vertical-align:top"><p>Specifies the major and minor version identifier of the OMA DM protocol specification used with the message.</p></td>
</tr>
</tbody>
</table>


## Device management session

A Device Management (DM) session consists of a series of commands exchanged between a DM server and a client device. The server sends commands indicating operations that must be performed on the client device's management tree. The client responds by sending commands that contain the results and any requested status information.

A short DM session can be summarized as the following:

A server sends a Get command to a client device to retrieve the contents of one of the nodes of the management tree. The device performs the operation and responds with a Result command that contains the requested contents.

A DM session can be divided into two phases:
1.  **Setup phase**: In response to a trigger event, a client device sends an initiating message to a DM server. The device and server exchange needed authentication and device information. This phase is represented by steps 1, 2, and 3 in the following table.
2.  **Management phase**: The DM server is in control. It sends management commands to the device and the device responds. Phase two ends when the DM server stops sending commands and terminates the session. This phase is represented by steps 3, 4, and 5 in the following table.

The following table shows the sequence of events during a typical DM session.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Step</th>
<th>Action</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>1</p></td>
<td style="vertical-align:top"><p>DM client is invoked to call back to the management server</p>
<p>Enterprise scenario – The device task schedule invokes the DM client.</p></td>
<td style="vertical-align:top"><p>The MO server sends a server trigger message to invoke the DM client.</p>
<p>The trigger message includes the server ID and tells the client device to initiate a session with the server. The client device authenticates the trigger message and verifies that the server is authorized to communicate with it.</p>
<p>Enterprise scenario - At the scheduled time, the DM client is invoked periodically to call back to the enterprise management server over HTTPS.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>2</p></td>
<td style="vertical-align:top"><p>The device sends a message, over an IP connection, to initiate the session.</p></td>
<td style="vertical-align:top"><p>This message includes device information and credentials. The client and server do mutual authentication over an SSL channel or at the DM application level.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>3</p></td>
<td style="vertical-align:top"><p>The DM server responds, over an IP connection (HTTPS).</p></td>
<td style="vertical-align:top"><p>The server sends initial device management commands, if any.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>4</p></td>
<td style="vertical-align:top"><p>The device responds to server management commands.</p></td>
<td style="vertical-align:top"><p>This message includes the results of performing the specified device management operations.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>5</p></td>
<td style="vertical-align:top"><p>The DM server terminates the session or sends another command.</p></td>
<td style="vertical-align:top"><p>The DM session ends, or Step 4 is repeated.</p></td>
</tr>
</tbody>
</table>



The step numbers in the table do not represent message identification numbers (MsgID). All messages from the server must have a MsgID that is unique within the session, starting at 1 for the first message, and increasing by an increment of 1 for each additional message. For more information about MsgID and OMA SyncML protocol, see "OMA Device Management Representation Protocol" (DM_RepPro-V1_2-20070209-A) available from the [OMA website](https://www.openmobilealliance.org/release/DM/V1_2-20070209-A/).

During OMA DM application level mutual authentication, if the device response code to Cred element in the server request is 212, no further authentication is needed for the remainder of the DM session. In the case of the MD5 authentication, the Chal element can be returned. Then the next nonce in Chal must be used for the MD5 digest when the next DM session is started.

If a request includes credentials and the response code to the request is 200, the same credential must be sent within the next request. If the Chal element is included and the MD5 authentication is required, a new digest is created by using the next nonce via the Chal element for next request.

For more information about Basic or MD5 client authentication, MD5 server authentication, MD5 hash, and MD5 nonce, see the OMA Device Management Security specification (OMA-TS-DM_Security-V1_2_1-20080617-A), authentication response code handling and step-by-step samples in OMA Device Management Protocol specification (OMA-TS-DM_Protocol-V1_2_1-20080617-A), available from the [OMA website](https://www.openmobilealliance.org/release/DM/V1_2_1-20080617-A/).


## User targeted vs. Device targeted configuration

For CSPs and policies that support per user configuration, the MDM server can send user targeted setting values to the device that a MDM-enrolled user is actively logged into. The device notifies the server of the login status via a device alert (1224) with Alert type = in DM pkg\#1.

The data part of this alert could be one of following strings:

-   user – the user that enrolled the device is actively logged in. The MDM server could send user specific configuration for CSPs/policies that support per user configuration
-   others – another user login but that user does not have an MDM account. The server can only apply device wide configuration, e.g. configuration applies to all users in the device.
-   none – no active user login. The server can only apply device wide configuration and available configuration is restricted to the device environment (no active user login).

Below is an alert example:

```
<Alert>
        <CmdID>1</CmdID>
        <Data>1224</Data>
        <Item>
            <Meta>
                <Type xmlns=”syncml:metinf”>com.microsoft/MDM/LoginStatus</Type>
                <Format xmlns=”syncml:metinf”>chr</Format>
            </Meta>
            <Data>user</Data>
        </Item>
    </Alert>
```

The server notifies the device whether it is a user targeted or device targeted configuration by a prefix to the management node’s LocURL, with ./user for user targeted configuration, or ./device for device targeted configuration. By default, if no prefix with ./device or ./user, it is device targeted configuration.

The following LocURL shows a per user CSP node configuration: **./user/vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/&lt;PackageFamilyName&gt;/StoreInstall**

The following LocURL shows a per device CSP node configuration: **./device/vendor/MSFT/RemoteWipe/DoWipe**


<a href="" id="syncml-response-codes"></a>
## SyncML response status codes

When using SyncML in OMA DM, there are standard response status codes that are returned. The following table lists the common SyncML response status codes you are likely to see. For more information about SyncML response status codes, see section 10 of the [SyncML Representation Protocol](https://go.microsoft.com/fwlink/p/?LinkId=526905) specification.

| Status code | Description                                                                                                                                                                                                                       |
|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 200         | The SyncML command completed successfully.                                                                                                                                                                                        |
| 202         | Accepted for processing. This is usually an asynchronous operation, such as a request to run a remote execution of an application.                                                                                                |
| 212         | Authentication accepted. Normally you'll only see this in response to the SyncHdr element (used for authentication in the OMA-DM standard). You may see this if you look at OMA DM logs, but CSPs do not typically generate this. |
| 214         | Operation cancelled. The SyncML command completed successfully, but no more commands will be processed within the session.                                                                                                        |
| 215         | Not executed. A command was not executed as a result of user interaction to cancel the command.                                                                                                                                   |
| 216         | `Atomic` roll back OK. A command was inside an `Atomic` element and `Atomic` failed. This command was rolled back successfully.                                                                                                   |
| 400         | Bad request. The requested command could not be performed because of malformed syntax. CSPs do not usually generate this error, however you might see it if your SyncML is malformed.                                             |
| 401         | Invalid credentials. The requested command failed because the requestor must provide proper authentication. CSPs do not usually generate this error.                                                                              |
| 403         | Forbidden. The requested command failed, but the recipient understood the requested command.                                                                                                                                      |
| 404         | Not found. The requested target was not found. This code will be generated if you query a node that does not exist.                                                                                                               |
| 405         | Command not allowed. This respond code will be generated if you try to write to a read-only node.                                                                                                                                 |
| 406         | Optional feature not supported. This response code will be generated if you try to access a property that the CSP doesn't support.                                                                                                |
| 415         | Unsupported type or format. This response code can result from XML parsing or formatting errors.                                                                                                                                  |
| 418         | Already exists. This response code occurs if you attempt to add a node that already exists.                                                                                                                                       |
| 425         | Permission Denied. The requested command failed because the sender does not have adequate access control permissions (ACL) on the recipient. "Access denied" errors usually get translated to this response code.                 |
| 500         | Command failed. Generic failure. The recipient encountered an unexpected condition which prevented it from fulfilling the request. This response code will occur when the SyncML DPU cannot map the originating error code.       |
| 507         | `Atomic` failed. One of the operations in an `Atomic` block failed.                                                                                                                                                               |
| 516         | `Atomic` roll back failed. An `Atomic` operation failed and the command was not rolled back successfully.                                                                                                                         |

 

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)

 






