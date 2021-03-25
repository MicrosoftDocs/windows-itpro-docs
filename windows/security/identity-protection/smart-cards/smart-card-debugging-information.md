---
title: Smart Card Troubleshooting (Windows 10)
description: Describes the tools and services that smart card developers can use to help identify certificate issues with the smart card deployment.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
ms.reviewer: 
---

# Smart Card Troubleshooting

Applies To: Windows 10, Windows Server 2016

This article explains tools and services that smart card developers can use to help identify certificate issues with the smart card deployment.

Debugging and tracing smart card issues requires a variety of tools and approaches. The following sections provide guidance about tools and approaches you can use.

-   [Certutil](#certutil)

-   [Debugging and tracing using Windows software trace preprocessor (WPP)](#debugging-and-tracing-using-wpp)

-   [Kerberos protocol, Key Distribution Center (KDC), and NTLM debugging and tracing](#kerberos-protocol-kdc-and-ntlm-debugging-and-tracing)

-   [Smart Card service](#smart-card-service)

-   [Smart card readers](#smart-card-readers)

-   [CryptoAPI 2.0 Diagnostics](#cryptoapi-20-diagnostics)

## Certutil

For a complete description of Certutil including examples that show how to use it, see [Certutil \[W2012\]](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc732443(v=ws.11)).

### List certificates available on the smart card

To list certificates that are available on the smart card, type `certutil -scinfo`.

> [!NOTE]
> Entering a PIN is not required for this operation. You can press ESC if you are prompted for a PIN.

### Delete certificates on the smart card

Each certificate is enclosed in a container. When you delete a certificate on the smart card, you're deleting the container for the certificate.

To find the container value, type `certutil -scinfo`.

To delete a container, type **certutil -delkey -csp "Microsoft Base Smart Card Crypto Provider"** "&lt;*ContainerValue*&gt;".

## Debugging and tracing using WPP

WPP simplifies tracing the operation of the trace provider. It provides a mechanism for the trace provider to log real-time binary messages. Logged messages can be converted to a human-readable trace of the operation. For more information, see [Diagnostics with WPP - The NDIS blog](https://blogs.msdn.com/b/ndis/archive/2011/04/06/diagnostics-with-wpp.aspx).

### Enable the trace

Using WPP, use one of the following commands to enable tracing:

- **tracelog.exe -kd -rt -start** &lt;*FriendlyName*&gt; **-guid \#**&lt;*GUID*&gt; **-f .\\**&lt;*LogFileName*&gt;**.etl -flags** &lt;*flags*&gt; **-ft 1**

- **logman start** &lt;*FriendlyName*&gt; **-ets -p {**&lt;*GUID*&gt;**} -**&lt;*Flags*&gt; **-ft 1 -rt -o .\\**&lt;*LogFileName*&gt;<em>**.etl -mode 0x00080000</em>**

You can use the parameters in the following table.

| Friendly name | GUID           | Flags |
|-------------------|--------------------------------------|-----------|
| `scardsvr`          | 13038e47-ffec-425d-bc69-5707708075fe | 0xffff    |
| `winscard`          | 3fce7c5f-fb3b-4bce-a9d8-55cc0ce1cf01 | 0xffff    |
| `basecsp`           | 133a980d-035d-4e2d-b250-94577ad8fced | 0x7       |
| `scksp`             | 133a980d-035d-4e2d-b250-94577ad8fced | 0x7       |
| `msclmd`            | fb36caf4-582b-4604-8841-9263574c4f2c | 0x7       |
| `credprov`          | dba0e0e0-505a-4ab6-aa3f-22f6f743b480 | 0xffff    |
| `certprop`          | 30eae751-411f-414c-988b-a8bfa8913f49 | 0xffff    |
| `scfilter`          | eed7f3c9-62ba-400e-a001-658869df9a91 | 0xffff    |
| `wudfusbccid`       | a3c09ba3-2f62-4be5-a50f-8278a646ac9d | 0xffff    |

Examples

To enable tracing for the SCardSvr service:

-   **tracelog.exe -kd -rt -start scardsvr -guid \#13038e47-ffec-425d-bc69-5707708075fe -f .\\scardsvr.etl -flags 0xffff -ft 1**

-   **logman start scardsvr -ets -p {13038e47-ffec-425d-bc69-5707708075fe} 0xffff -ft 1 -rt -o .\\scardsvr.etl -mode 0x00080000**

To enable tracing for scfilter.sys:

 - **tracelog.exe -kd -rt -start scfilter -guid \#eed7f3c9-62ba-400e-a001-658869df9a91 -f .\\scfilter.etl -flags 0xffff -ft 1**

### Stop the trace

Using WPP, use one of the following commands to stop the tracing:

-   **tracelog.exe -stop** &lt;*FriendlyName*&gt;

-   **logman -stop** &lt;*FriendlyName*&gt; **-ets**

#### Examples

To stop a trace:

-   **tracelog.exe -stop scardsvr**

-   **logman -stop scardsvr -ets**

## Kerberos protocol, KDC, and NTLM debugging and tracing

<!-- It's difficult to find any Kerberos content any more. If they reinstate some content that's more relevant and detailed than what's below, link to it instead. -->

You can use these resources to troubleshoot these protocols and the KDC:

-   [Kerberos and LDAP Troubleshooting Tips](/previous-versions/tn-archive/bb463167(v=technet.10)).

-   [Windows Driver Kit (WDK) and Debugging Tools for Windows (WinDbg)](https://developer.microsoft.com/en-us/windows/hardware/windows-driver-kit).  You can use the trace log tool in this SDK to debug Kerberos authentication failures.

To begin tracing, you can use `Tracelog`. Different components use different control GUIDs as explained in these examples. For more information, see [`Tracelog`](/windows-hardware/drivers/devtest/tracelog).

### NTLM

To enable tracing for NTLM authentication, run the following command on the command line:

 - **tracelog.exe -kd -rt -start ntlm -guid \#5BBB6C18-AA45-49b1-A15F-085F7ED0AA90 -f .\\ntlm.etl -flags 0x15003 -ft 1**

To stop tracing for NTLM authentication, run this command:

 - **tracelog -stop ntlm**

### Kerberos authentication

To enable tracing for Kerberos authentication, run this command:

 - **tracelog.exe -kd -rt -start kerb -guid \#6B510852-3583-4e2d-AFFE-A67F9F223438 -f .\\kerb.etl -flags 0x43 -ft 1**

To stop tracing for Kerberos authentication, run this command:

 - **tracelog.exe -stop kerb**

### KDC

To enable tracing for the KDC, run the following command on the command line:

 - **tracelog.exe -kd -rt -start kdc -guid \#1BBA8B19-7F31-43c0-9643-6E911F79A06B -f .\\kdc.etl -flags 0x803 -ft 1**

To stop tracing for the KDC, run the following command on the command line:

 - **tracelog.exe -stop kdc**

To stop tracing from a remote computer, run this command: logman.exe -s *&lt;ComputerName&gt;*.

> [!NOTE]
> The default location for logman.exe is %systemroot%system32\\. Use the **-s** option to supply a computer name.

### Configure tracing with the registry

You can also configure tracing by editing the Kerberos registry values shown in the following table.

| Element | Registry Key Setting       |
|-------------|----------------------------------------------------|
| NTLM        | HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\MSV1\_0<br>Value name: NtLmInfoLevel<br>Value type: DWORD<br>Value data: c0015003          |
| Kerberos    | HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\Kerberos<br>Value name: LogToFile<br>Value type: DWORD<br>Value data: 00000001<br><br>HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\Kerberos\\Parameters<br>Value name: KerbDebugLevel<br>Value type: DWORD<br>Value data: c0000043<br><br>HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\Kerberos\\Parameters<br>Value name: LogToFile<br>Value type: DWORD<br>Value data: 00000001 |
| KDC         | HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Kdc<br>Value name: KdcDebugLevel<br>Value type: DWORD<br>Value data: c0000803                  |

If you used `Tracelog`, look for the following log file in your current directory: kerb.etl/kdc.etl/ntlm.etl.

If you used the registry key settings shown in the previous table, look for the trace log files in the following locations:

-   NTLM: %systemroot%\\tracing\\msv1\_0

-   Kerberos: %systemroot%\\tracing\\kerberos 

-   KDC: %systemroot%\\tracing\\kdcsvc 

To decode event trace files, you can use `Tracefmt` (tracefmt.exe). `Tracefmt` is a command-line tool that formats and displays trace messages from an event trace log file (.etl) or a real-time trace session. `Tracefmt` can display the messages in the Command Prompt window or save them in a text file. It is located in the \\tools\\tracing subdirectory of the Windows Driver Kit (WDK). For more information, see [`Tracefmt`](/windows-hardware/drivers/devtest/tracefmt).

## Smart Card service

The smart card resource manager service runs in the context of a local service. It's implemented as a shared service of the services host (svchost) process.

**To check if Smart Card service is running**

1.  Press CTRL+ALT+DEL, and then select **Start Task Manager**.

2.  In the **Windows Task Manager** dialog box, select the **Services** tab.

3.  Select the **Name** column to sort the list alphabetically, and then type **s**.

4.  In the **Name** column, look for **SCardSvr**, and then look under the **Status** column to see if the service is running or stopped.

**To restart Smart Card service**

1.  Run as administrator at the command prompt.

2.  If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.

3.  At the command prompt, type `net stop SCardSvr`.

4.  At the command prompt, type `net start SCardSvr`.

You can use the following command at the command prompt to check whether the service is running: `sc queryex scardsvr`.

The following code sample is an example output from this command:

```console
SERVICE_NAME: scardsvr
    TYPE        : 20 WIN32_SHARE_PROCESS
    STATE       : 4 RUNNING
                (STOPPABLE, NOT_PAUSABLE, ACCEPTS_SHUTDOWN)
    WIN32_EXIT_CODE  : 0 (0x0)
    SERVICE_EXIT_CODE : 0 (0x0)
    CHECKPOINT     : 0x0
    WAIT_HINT     : 0x0
    PID        : 1320
    FLAGS       :
C:\>
```

## Smart card readers

As with any device connected to a computer, Device Manager can be used to view properties and begin the debug process.

**To check if smart card reader is working**

1.  Navigate to **Computer**.

2.  Right-click **Computer**, and then select **Properties**.

3.  Under **Tasks**, select **Device Manager**.

4.  In Device Manager, expand **Smart card readers**, select the name of the smart card reader you want to check, and then select **Properties**.

> [!NOTE]
> If the smart card reader is not listed in Device Manager, in the **Action** menu, select **Scan for hardware changes**.

## CryptoAPI 2.0 Diagnostics

CryptoAPI 2.0 Diagnostics is available in Windows versions that support CryptoAPI 2.0 and can help you troubleshoot public key infrastructure (PKI) issues.

CryptoAPI 2.0 Diagnostics logs events in the Windows event log. The logs contain detailed information about certificate chain validation, certificate store operations, and signature verification. This information makes it easier to identify the causes of issues and reduces the time required for diagnosis.

For more information about CryptoAPI 2.0 Diagnostics, see [Troubleshooting an Enterprise PKI](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc771463(v=ws.11)).

## See also

[Smart Card Technical Reference](smart-card-windows-smart-card-technical-reference.md)