---
title: How to Ensure that Crash Analyzer Can Access Symbol Files
description: How to Ensure that Crash Analyzer Can Access Symbol Files
author: dansimp
ms.assetid: 150a2f88-68a5-40eb-8471-e5008488ab6e
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Ensure that Crash Analyzer Can Access Symbol Files


Typically, debugging information is stored in a symbol file that is separate from the executable. You must have access to the symbol information when you debug an application that has stopped responding, for example if it crashed.

Symbol files are automatically downloaded when you run the Microsoft Diagnostics and Recovery Toolset (DaRT) 7 Crash Analyzer. If the computer does not have an Internet connection or the network requires the computer to access an HTTP proxy server, the symbol files cannot be downloaded.

## Ensure access to symbol files


Typically, debugging information is stored in a symbol file that is separate from the executable. You must have access to the symbol information when you debug an application that has stopped responding, for example if it crashed.

Symbol files are automatically downloaded when you run **Crash Analyzer**. If the computer does not have an Internet connection or the network requires the computer to access an HTTP proxy server, the symbol files cannot be downloaded.

The following is a list of options that are available for guaranteeing access to symbol files:

-   **Copy the dump file to another computer.** If the symbols cannot be downloaded because of a lack of an Internet connection, copy the crash dump file to a computer that does have an Internet connection and run the stand-alone **Crash Analyzer Wizard** on that computer.

-   **Access the symbol files from another computer.** If the symbols cannot be downloaded because of a lack of an Internet connection, you can download the symbols from a computer that does have an Internet connection and then copy them to the computer that does not have an Internet connection, or you can map a network drive to a location where the symbols are available on the local network. If you run the **Crash Analyzer** in a Windows Recovery Environment (Windows RE), you can include the symbol files on the DaRT recovery image. For more information about how to create a recovery image, see [Creating the DaRT 7.0 Recovery Image](creating-the-dart-70-recovery-image-dart-7.md).

-   **Access symbol files through an HTTP proxy server.** If the symbols cannot be downloaded because an HTTP proxy server must be accessed, use the following steps to access an HTTP proxy server. In DaRT 7, the **Crash Analyzer Wizard** has a setting available on the **Specify Symbol Files Location** dialog page, marked with the label **Proxy server (optional, using the format "server:port")**. You can use this text box to specify a proxy server. Enter the proxy address in the form **&lt;hostname&gt;:&lt;port&gt;**, where the &lt;**hostname**&gt; is a DNS name or IP address, and the &lt;**port**&gt; is a TCP port number, usually 80. There are two modes in which the **Crash Analyzer** can be run. Following is how you use the proxy setting in each of these modes:

    -   **Online mode:** In this mode, if the proxy server field is left blank, the wizard uses the proxy settings from Internet Options in Control Panel. If you enter a proxy address in the text box which is provided, that address will be used, and it will override the setting in the Internet Options.

    -   **Windows Recovery Environment (Windows RE):** When you run **Crash Analyzer** from the **Diagnostics and Recovery Toolset** window, there is no default proxy address. If the computer is directly connected to the Internet, a proxy address is not required. Therefore, you can leave this field blank in the wizard setting. If the computer is not directly connected to the Internet, and it is in a network environment that has a proxy server, you must set the proxy field in the wizard to access the symbol store. The proxy address can be obtained from the network administrator. Setting the proxy server is important only when the public symbol store is connected to the Internet. If the symbols are already on the DaRT recovery image, or if they are available locally, setting the proxy server is not required.

## Related topics


[Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer--dart-7.md)

 

 





