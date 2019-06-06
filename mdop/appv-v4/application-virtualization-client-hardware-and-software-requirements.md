---
title: Application Virtualization Client Hardware and Software Requirements
description: Application Virtualization Client Hardware and Software Requirements
author: dansimp
ms.assetid: 8b877a2c-5721-4b22-a47f-e2838d58ab12
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Application Virtualization Client Hardware and Software Requirements


This topic describes the recommended minimum hardware and software configuration for the installation of the Application Virtualization Desktop Client and the Application Virtualization Client for Remote Desktop Services (formerly Terminal Services).

## Application Virtualization Desktop Client


The following list includes the recommended minimum hardware and software requirements for the Application Virtualization Desktop Client. The requirements are listed first for Microsoft Application Virtualization (App-V) 4.6 SP2, followed by the requirements for versions that preceded App-V 4.6 SP2.

**Note**  
The Application Virtualization (App-V) Desktop Client requires no additional processor or RAM resources beyond the requirements of the host operating system.

 

### Hardware Requirements

The hardware requirements are applicable to all versions.

-   Processor—See recommended system requirements for the operating system you are using.

-   RAM—See recommended system requirements for the operating system you are using.

-   Disk—30 MB for installation and 6 GB for the cache.

### Software Requirements for App-V 4.6 SP2

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">Achitectural SKU</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows XP</p></td>
<td align="left"><p>Professional Edition</p></td>
<td align="left"><p>SP3</p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Vista</p></td>
<td align="left"><p>Business, Enterprise, or Ultimate Edition</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Professional, Enterprise, or Ultimate Edition</p></td>
<td align="left"><p>No service pack or SP1</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>Pro or Enterprise Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
</tbody>
</table>

The following software prerequisites are installed automatically if you are using the Setup.exe method. If you are using the Setup.msi installation program, the following products must be installed first.
-   **Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)**—For more information about installing Microsoft Visual C++ 2005 SP1 Redistributable Package (x86), see [Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=119961) (https://go.microsoft.com/fwlink/?LinkId=119961). For version 4.5 SP2 of the App-V client, download Vcredist\_x86.exe from [Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package ATL Security Update](https://go.microsoft.com/fwlink/?LinkId=169360) (https://go.microsoft.com/fwlink/?LinkId=169360).
 -   **Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)**—For more information about installing Microsoft Core XML Services (MSXML) 6.0 SP1 (x86), see [Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)](https://go.microsoft.com/fwlink/?LinkId=63266) (https://go.microsoft.com/fwlink/?LinkId=63266).

For the Application Virtualization (App-V) 4.6 Desktop Client, the following additional software prerequisite is installed automatically if you are using the Setup.exe method. If you are using the Setup.msi installation program, you must also install with the other prerequisites listed.

-   **Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)**—For more information about installing Microsoft Visual C++ 2008 SP1 Redistributable Package (x86), see [Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=150700) (https://go.microsoft.com/fwlink/?LinkId=150700).

### Software Requirements for Versions that Precede App-V 4.6 SP2

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">Achitectural SKU</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows XP</p></td>
<td align="left"><p>Professional Edition</p></td>
<td align="left"><p>SP2 or SP3</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Vista</p></td>
<td align="left"><p>Business, Enterprise, or Ultimate Edition</p></td>
<td align="left"><p>No service pack, SP1, or SP2</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7¹</p></td>
<td align="left"><p>Professional, Enterprise, or Ultimate Edition</p></td>
<td align="left"><p>No service pack or SP1</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
</tbody>
</table>
¹Supported for App-V 4.5 SP1 and SP2, App-V 4.6 and 4.6 SP1 only

The Application Virtualization (App-V) 4.6 Desktop Client supports x86 and x64 SKUs of these operating systems.

The following software prerequisites are installed automatically if you are using the Setup.exe method. If you are using the Setup.msi installation program, the following products must be installed first.

-   **Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)**—For more information about installing Microsoft Visual C++ 2005 SP1 Redistributable Package (x86), see [Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=119961) (https://go.microsoft.com/fwlink/?LinkId=119961). For version 4.5 SP2 of the App-V client, download Vcredist\_x86.exe from [Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package ATL Security Update](https://go.microsoft.com/fwlink/?LinkId=169360) (https://go.microsoft.com/fwlink/?LinkId=169360).

-   **Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)**—For more information about installing Microsoft Core XML Services (MSXML) 6.0 SP1 (x86), see [Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)](https://go.microsoft.com/fwlink/?LinkId=63266) (https://go.microsoft.com/fwlink/?LinkId=63266).

-   **Microsoft Application Error Reporting**—The installation program for this software is included in the **Support\\Watson** folder in the self-extracting archive file.

For the Application Virtualization (App-V) 4.6 Desktop Client, the following additional software prerequisite is installed automatically if you are using the Setup.exe method. If you are using the Setup.msi installation program, you must also install with the other prerequisites listed.

-   **Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)**—For more information about installing Microsoft Visual C++ 2008 SP1 Redistributable Package (x86), see [Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=150700) (https://go.microsoft.com/fwlink/?LinkId=150700).

## Application Virtualization Client for Remote Desktop Services

Following are the recommended hardware and software requirements for the Application Virtualization Client for Remote Desktop Services. The requirements are listed first for appv461\_3, followed by the requirements for versions that preceded App-V 4.6 SP2.

The Application Virtualization (App-V) Client for Remote Desktop Services requires no additional processor or RAM resources beyond the requirements of the host operating system.

### Hardware Requirements

The hardware requirements are applicable to all versions.

-   Processor—See recommended system requirements for the operating system you are using.

-   RAM—See recommended system requirements for the operating system you are using. These requirements also depend on the number of users and applications.

-   Disk—30 MB for installation and 6 GB for the cache.

### Software Requirements for App-V 4.6 SP2

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">Achitectural SKU</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Standard Edition, Enterprise Edition, or Datacenter Edition</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>No service pack or SP1</p></td>
<td align="left"><p>x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x64</p></td>
</tr>
</tbody>
</table>

The following software prerequisites are installed automatically if you are using the Setup.exe method. If you are using the Setup.msi installation program, the following products must be installed first.

-   **Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)**—For more information about installing Microsoft Visual C++ 2005 SP1 Redistributable Package (x86), see [Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=119961) (https://go.microsoft.com/fwlink/?LinkId=119961). For version 4.5 SP2 of the App-V client, download Vcredist\_x86.exe from [Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package ATL Security Update](https://go.microsoft.com/fwlink/?LinkId=169360) (https://go.microsoft.com/fwlink/?LinkId=169360).

-   **Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)**—For more information about installing Microsoft Core XML Services (MSXML) 6.0 SP1 (x86), see [Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)](https://go.microsoft.com/fwlink/?LinkId=63266) (https://go.microsoft.com/fwlink/?LinkId=63266).

-   **Microsoft Application Error Reporting**—The installation program for this software is included in the **Support\\Watson** folder in the self-extracting archive file.

For the Application Virtualization (App-V) 4.6 Desktop Client, the following additional software prerequisite is installed automatically if you are using the Setup.exe method. If you are using the Setup.msi installation program, you must also install with the other prerequisites listed.

-   **Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)**—For more information about installing Microsoft Visual C++ 2008 SP1 Redistributable Package (x86), see [Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=150700) (https://go.microsoft.com/fwlink/?LinkId=150700).

### Software Requirements for Versions that Precede App-V 4.6 SP2

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">Achitectural SKU</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Standard Edition, Enterprise Edition, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Standard Edition, Enterprise Edition, or Datacenter Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 and x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>No service pack or SP1</p></td>
<td align="left"><p>x64</p></td>
</tr>
</tbody>
</table>

The Application Virtualization (App-V) 4.6 Client for Remote Desktop Services supports x86 and x64 SKUs of these operating systems.

## Related topics
- [Application Virtualization Sequencer Hardware and Software Requirements](application-virtualization-sequencer-hardware-and-software-requirements.md)
- [Application Virtualization System Requirements](application-virtualization-system-requirements.md)
- [How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)
- [How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)
- [How to Upgrade the Application Virtualization Client](how-to-upgrade-the-application-virtualization-client.md)
