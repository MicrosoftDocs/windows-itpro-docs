---
title: OMA DM protocol support
description: See how the OMA DM client communicates with the server over HTTPS and uses DM Sync (OMA DM v1.2) as the message payload.
ms.topic: conceptual
ms.date: 07/08/2024
---

# OMA DM protocol support

The OMA DM client communicates with the server over HTTPS and uses DM Sync (OMA DM v1.2) as the message payload. This article describes the OMA DM functionality that the DM client supports in general. The full description of the OMA DM protocol v1.2 can be found at the [OMA website](https://www.openmobilealliance.org/release/DM/V1_2-20070209-A/OMA-TS-DM_Protocol-V1_2-20070209-A.pdf).

## OMA DM standards

The following table shows the OMA DM standards that Windows uses.

|General area|OMA DM standard that is supported|
|--- |--- |
|Data transport and session|<li>Client-initiated remote HTTPS DM session over TLS/SSL.<li>Remote HTTPS DM session over TLS/SSL.<li>Remote DM server initiation notification using WAP Push over Short Message Service (SMS). Not used by enterprise management.<li>Remote bootstrap by using WAP Push over SMS. Not used by enterprise management.|
|Bootstrap XML|OMA Client Provisioning XML.|
|DM protocol commands|The following list shows the commands that are used by the device. For more information about the OMA DM command elements, see "[OMA website](https://www.openmobilealliance.org/release/DM/V1_1_2-20031209-A/)" available from the OMA website.<br/><li>Add (Implicit Add supported)<li>Alert (DM alert): Generic alert (1226) is used by enterprise management client when the user triggers an MDM unenrollment action from the device or when a CSP finishes some asynchronous actions. Device alert (1224) is used to notify the server some device triggered event.<li>Atomic: Performing an Add command followed by Replace on the same node within an atomic element isn't supported. Nested Atomic and Get commands aren't allowed and generate error code 500.<li>Delete: Removes a node from the DM tree, and the entire subtree beneath that node if one exists<li>Exec: Invokes an executable on the client device<li>Get: Retrieves data from the client device; for interior nodes, the child node names in the Data element are returned in URI-encoded format<li>Replace: Overwrites data on the client device<li>Result: Returns the data results of a Get command to the DM server<li>Sequence: Specifies the order in which a group of commands must be processed<li>Status: Indicates the completion status (success or failure) of an operation<br/><br/>If an XML element that isn't a valid OMA DM command is under one of the following elements, the status code 400 is returned for that element:<br/><li>SyncBody<li>Atomic<li>Sequence<br><br/>If no CmdID is provided in the DM command, the client returns blank in the status element and the status code 400.<br/><br/>If Atomic elements are nested, the following status codes are returned:<br/><li>The nested Atomic command returns 500.<li>The parent Atomic command returns 507.<br/><br/>For more information about the Atomic command, see OMA DM protocol common elements.<br>Performing an Add command followed by Replace on the same node within an Atomic element isn't supported.<br><br/>LocURI can't start with `/`.<br/><br/>Meta XML tag in SyncHdr is ignored by the device.|
|OMA DM standard objects|DevInfo<li>DevDetail<li>OMA DM DMS account objects (OMA DM version 1.2)|
|Security|<li>Authenticate DM server initiation notification SMS message (not used by enterprise management)<li>Application layer Basic and MD5 client authentication<li>Authenticate server with MD5 credential at application level<li>Data integrity and authentication with HMAC at application level<li>TLS/SSL level certificate-based client/server authentication, encryption, and data integrity check|
|Nodes|In the OMA DM tree, the following rules apply for the node name:<br/><li>"." can be part of the node name.<li>The node name can't be empty.<li>The node name can't be only the asterisk (`*`) character.|
|Provisioning Files|Provisioning XML must be well formed and follow the definition in [SyncML Representation Protocol](https://www.openmobilealliance.org/release/Common/V1_2_2-20090724-A/OMA-TS-SyncML-RepPro-V1_2_2-20090724-A.pdf).<br/><br/>If an XML element that isn't a valid OMA DM command is under SyncBody, the status code 400 is returned for that element.<div class="alert">**Note**<br>To represent a Unicode string as a URI, first encode the string as UTF-8. Then encode each of the UTF-8 bytes using URI encoding.</div>|
|WBXML support|Windows supports sending and receiving SyncML in both XML format and encoded WBXML format. This dual-format support is configurable by using the DEFAULTENCODING node under the w7 APPLICATION characteristic during enrollment. For more information about WBXML encoding, see section 8 of the [SyncML Representation Protocol](https://www.openmobilealliance.org/release/Common/V1_2_2-20090724-A/OMA-TS-SyncML-RepPro-V1_2_2-20090724-A.pdf) specification.|
|Handling of large objects|In Windows 10, client support for uploading large objects to the server was added.|

## OMA DM protocol common elements

Common elements are used by other OMA DM element types. The following table lists the OMA DM common elements used to configure the devices. For more information about OMA DM common elements, see "SyncML Representation Protocol Device Management Usage" (OMA-SyncML-DMRepPro-V1_1_2-20030613-A) available from the [OMA website](https://www.openmobilealliance.org/release/DM/V1_1_2-20031209-A/).

| Element | Description |
|:--|:--|
| Chal      | Specifies an authentication challenge. The server or client can send a challenge to the other if no credentials or inadequate credentials were given in the original request message. |
| Cmd       | Specifies the name of an OMA DM command referenced in a Status element. |
| CmdID     | Specifies the unique identifier for an OMA DM command. |
| CmdRef    | Specifies the ID of the command for which status or results information is being returned. This element takes the value of the CmdID element of the corresponding request message. |
| Cred      | Specifies the authentication credential for the originator of the message. |
| Final     | Indicates that the current message is the last message in the package. |
| LocName   | Specifies the display name in the Target and Source elements, used for sending a user ID for MD5 authentication. |
| LocURI    | Specifies the address of the target or source location. If the address contains a non-alphanumeric character, it must be properly escaped according to the URL encoding standard. |
| MsgID     | Specifies a unique identifier for an OMA DM session message. |
| MsgRef    | Specifies the ID of the corresponding request message. This element takes the value of the request message MsgID element. |
| RespURI   | Specifies the URI that the recipient must use when sending a response to this message. |
| SessionID | Specifies the identifier of the OMA DM session associated with the containing message. If the server doesn't notify the device that it supports a new version (through SyncApplicationVersion node in the DMClient CSP), the client returns the SessionID in integer in decimal format. If the server supports DM session sync version 2.0, which is used in Windows, the device client returns 2 bytes. |
| Source    | Specifies the message source address. |
| SourceRef | Specifies the source of the corresponding request message. This element takes the value of the request message Source element and is returned in the Status or Results element. |
| Target    | Specifies the address of the node in the DM Tree that is the target of the OMA DM command. |
| TargetRef | Specifies the target address in the corresponding request message. This element takes the value of the request message Target element and is returned in the Status or Results element. |
| VerDTD    | Specifies the major and minor version identifier of the OMA DM representation protocol specification used to represent the message. |
| VerProto  | Specifies the major and minor version identifier of the OMA DM protocol specification used with the message. |

## Device management session

A Device Management (DM) session consists of a series of commands exchanged between a DM server and a client device. The server sends commands indicating operations that must be performed on the client device's management tree. The client responds by sending commands that contain the results and any requested status information.

A short DM session can be summarized as:

A server sends a Get command to a client device to retrieve the contents of one of the nodes of the management tree. The device performs the operation and responds with a Result command that contains the requested contents.

A DM session can be divided into two phases:

1. **Setup phase**: In response to a trigger event, a client device sends an initiating message to a DM server. The device and server exchange needed authentication and device information. This phase is represented by steps 1, 2, and 3.
1. **Management phase**: The DM server is in control. It sends management commands to the device and the device responds. Phase 2 ends when the DM server stops sending commands and terminates the session. This phase is represented by steps 3, 4, and 5.

The following information shows the sequence of events during a typical DM session.

1. DM client is invoked to call back to the management server<br><br>Enterprise scenario - The device task schedule invokes the DM client.

    The MO server sends a server trigger message to invoke the DM client.

    The trigger message includes the server ID and tells the client device to initiate a session with the server. The client device authenticates the trigger message and verifies that the server is authorized to communicate with it.<br><br>Enterprise scenario - At the scheduled time, the DM client is invoked periodically to call back to the enterprise management server over HTTPS.

1. The device sends a message, over an IP connection, to initiate the session.

    This message includes device information and credentials. The client and server do mutual authentication over a TLS/SSL channel or at the DM application level.

1. The DM server responds, over an IP connection (HTTPS). The server sends initial device management commands, if any.

1. The device responds to server management commands. This message includes the results of performing the specified device management operations.

1. The DM server terminates the session or sends another command. The DM session ends, or Step 4 is repeated.

The step numbers don't represent message identification numbers (MsgID). All messages from the server must have a MsgID that is unique within the session, starting at 1 for the first message, and increasing by an increment of 1 for each extra message. For more information about MsgID and OMA SyncML protocol, see [OMA Device Management Representation Protocol (DM_RepPro-V1_2-20070209-A)](https://www.openmobilealliance.org/release/DM/V1_2-20070209-A/).

During OMA DM application level mutual authentication, if the device response code to Cred element in the server request is 212, no further authentication is needed for the remainder of the DM session. If the MD5 authentication occurs, the `Chal` element can be returned. Then the next nonce in `Chal` must be used for the MD5 digest when the next DM session is started.

If a request includes credentials and the response code to the request is 200, the same credential must be sent within the next request. If the `Chal` element is included and the MD5 authentication is required, a new digest is created by using the next nonce via the `Chal` element for next request.

For more information about Basic or MD5 client authentication, MD5 server authentication, MD5 hash, and MD5 nonce, see the OMA Device Management Security specification (OMA-TS-DM_Security-V1_2_1-20080617-A), authentication response code handling and step-by-step samples in OMA Device Management Protocol specification (OMA-TS-DM_Protocol-V1_2_1-20080617-A), available from the [OMA website](https://www.openmobilealliance.org/release/DM/V1_2_1-20080617-A/).

## User targeted vs. Device targeted configuration

For CSPs and policies that support per user configuration, the MDM server can send user targeted setting values to the device that a MDM-enrolled user is actively logged into. The device notifies the server of the sign-in status via a device alert (1224) with Alert type = in DM pkg\#1.

The data part of this alert could be one of following strings:

- User: the user that enrolled the device is actively logged in. The MDM server could send user-specific configuration for CSPs/policies that support per user configuration
- Others: another user sign in but that user doesn't have an MDM account. The server can only apply device-wide configuration, for example, configuration applies to all users in the device.
- None: no active user sign in. The server can only apply device-wide configuration and available configuration is restricted to the device environment (no active user sign in).

Here's an alert example:

```xml
<Alert>
    <CmdID>1</CmdID>
    <Data>1224</Data>
    <Item>
        <Meta>
            <Type xmlns="syncml:metinf">com.microsoft/MDM/LoginStatus</Type>
            <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data>user</Data>
    </Item>
</Alert>
```

The server notifies the device whether it's a user-targeted or device-targeted configuration by a prefix to the management node's LocURL, with `./user` for user-targeted configuration, or `./device` for device-targeted configuration. By default, if no prefix with `./device` or `./user`, it's a device-targeted configuration.

The following LocURL shows a per user CSP node configuration: `./user/vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/<PackageFamilyName>/StoreInstall`

The following LocURL shows a per device CSP node configuration: `./device/vendor/MSFT/RemoteWipe/DoWipe`

## SyncML response status codes

When using SyncML in OMA DM, there are standard response status codes that are returned. The following table lists the common SyncML response status codes you're likely to see. For more information about SyncML response status codes, see section 10 of the [SyncML Representation Protocol](https://openmobilealliance.org/release/Common/V1_2_2-20090724-A/OMA-TS-SyncML-RepPro-V1_2_2-20090724-A.pdf) specification.

| Status code | Description |
|---|----|
| 200         | The SyncML command completed successfully.  |
| 202         | Accepted for processing. This code denotes an asynchronous operation, such as a request to run a remote execution of an application.  |
| 212         | Authentication accepted. Normally you only see this code in response to the SyncHdr element (used for authentication in the OMA-DM standard). You may see this code if you look at OMA DM logs, but CSPs don't typically generate this code. |
| 214         | Operation canceled. The SyncML command completed successfully, but no more commands are processed within the session. |
| 215         | Not executed. A command wasn't executed as a result of user interaction to cancel the command.  |
| 216         | `Atomic` roll back OK. A command was inside an `Atomic` element and `Atomic` failed. This command was rolled back successfully.  |
| 400         | Bad request. The requested command couldn't be performed because of malformed syntax. CSPs don't usually generate this error, however you might see it if your SyncML is malformed.  |
| 401         | Invalid credentials. The requested command failed because the requestor must provide proper authentication. CSPs don't usually generate this error.  |
| 403         | Forbidden. The requested command failed, but the recipient understood the requested command.  |
| 404         | Not found. The requested target wasn't found. This code is generated if you query a node that doesn't exist.   |
| 405         | Command not allowed. This respond code is generated if you try to write to a read-only node.  |
| 406         | Optional feature not supported. This response code is generated if you try to access a property that the CSP doesn't support.  |
| 415         | Unsupported type or format. This response code can result from XML parsing or formatting errors.  |
| 418         | Already exists. This response code occurs if you attempt to add a node that already exists.  |
| 425         | Permission Denied. The requested command failed because the sender doesn't have adequate access control permissions (ACL) on the recipient. "Access denied" errors usually get translated to this response code.  |
| 500         | Command failed. Generic failure. The recipient encountered an unexpected condition, which prevented it from fulfilling the request. This response code occurs when the SyncML DPU can't map the originating error code.       |
| 507         | `Atomic` failed. One of the operations in an `Atomic` block failed.  |
| 516         | `Atomic` roll back failed. An `Atomic` operation failed and the command wasn't rolled back successfully.  |

## Related articles

[Configuration service provider reference](mdm/index.yml)
