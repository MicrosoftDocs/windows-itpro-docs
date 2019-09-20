---
title: Release Notes for MBAM 2.5
description: Release Notes for MBAM 2.5
author: dansimp
ms.assetid: fcaf03e6-5e39-4771-af3c-a3cd468f3961
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Release Notes for MBAM 2.5


To search these release notes, press Ctrl+F.

Read these release notes thoroughly before you install Microsoft BitLocker Administration and Monitoring (MBAM) 2.5. These release notes contain information that is required to successfully install MBAM and can contain information that is not available in the product documentation. If these release notes differ from other MBAM 2.5 documentation, consider the latest change to be authoritative. These release notes supersede the content that is included with this product.

## <a href="" id="---------mbam-2-5-known-issues"></a> MBAM 2.5 known issues


This section contains release notes for MBAM 2.5.

### Web browser unintentionally run as administrator

Help links in the MBAM Server Configuration tool can cause browser windows to open with administrator rights.

**Workaround:** Enable Internet Explorer Enhanced Security Configuration (IESC) or close your web browser before navigating to other sites.

**Note**  
This is fixed in MBAM 2.5 SP1.

 

### <a href="" id="-------------mbam-reports-as-noncompliant-a-client-encrypted-with-aes-256-bit-encryption-keys-and-diffuser"></a> MBAM reports as noncompliant a client encrypted with AES 256-bit encryption keys and Diffuser

If a computer has the MBAM 2.5 client installed and is encrypted by using the AES 256-bit with Diffuser cipher strength, the MBAM client is reported as noncompliant in the MBAM compliance reports.

**Workaround:** Install the hotfix at [KB2975636](https://go.microsoft.com/fwlink/?LinkId=511972).

### <a href="" id="-------------mbam-fails-to-encrypt-a-volume-and-reports-an-error-if-you-set-a-tpm---pin-protector-on-a-tablet-device"></a> MBAM fails to encrypt a volume and reports an error if you set a TPM + PIN protector on a tablet device

If end users try to set a TPM + PIN protector on a tablet device, MBAM fails to encrypt, and it reports an error. This issue occurs because tablet devices do not have a pre-boot environment keyboard.

**Workaround:** Enable the **Enable use of BitLocker authentication requiring preboot keyboard input on tablets** Group Policy setting. This setting is a BitLocker Group Policy setting and is not available in the MBAM Group Policy Templates.

### User principal name is required for all service accounts

A user principal name (UPN) must be set for all service accounts in MBAM. If you fail to create a UPN for an account, an error message appears during the configuration process to indicate that the user or group could not be found in Active Directory.

**Workaround:** Add the UPN to the service account.

### Self-Service Portal requires additional configuration if client computers cannot access Microsoft Ajax Content Delivery Network

If your client computers do not have access to the Microsoft Ajax Content Delivery Network (CDN), which gives the Self-Service Portal the access that it requires to certain JavaScript files, you must configure the Self-Service Portal to reference the JavaScript files from an accessible source. If you don’t configure the Self-Service Portal when client computers cannot access CDN, only the company name and the account under which you logged on is displayed. No error message appears.

**Workaround:** Install MBAM 2.5 SP1. or configure the Self-Service Portal by following these instructions: [How to Configure the Self-Service Portal When Client Computers Cannot Access the Microsoft Content Delivery Network](how-to-configure-the-self-service-portal-when-client-computers-cannot-access-the-microsoft-content-delivery-network.md).

### Self-Service Portal and the Administration and Monitoring Website do not open after you upgrade IIS to .NET Framework 4.5

When you upgrade Internet Information Services (IIS) to the Microsoft .NET Framework 4.5, the Self-Service Portal and the Administration and Monitoring Website do not open.

**Workaround:** See the article [Error message after you install the .NET Framework 4.0: "Could not load type 'System.ServiceModel.Activation.HttpModule'](https://go.microsoft.com/fwlink/?LinkId=393568).

### Administration and Monitoring Website displays a "Report cannot be found" error message when Reports are not configured

If you configure the Administration and Monitoring Website and then try to view a report without configuring the Reports feature first, an error message indicates that the report cannot be found.

**Workaround:** Configure the Reports feature before you configure the web applications.

### Reports in the Administration and Monitoring Website display a warning if SSL is not configured in SSRS

If SQL Server Reporting Services (SSRS) was not configured to use Secure Socket Layer (SSL), the URL for the Reports feature will be set to HTTP instead of to HTTPS when you configure the MBAM Server. If you then open the Administration and Monitoring Website and select a report, the following error message appears: "Only Secure Content is Displayed."

**Workaround:** To show the report, click **Show All Content**. To correct this issue, go to the MBAM computer where SQL Server Reporting Services is installed, run **Reporting Services Configuration Manager**, and then click **Web Service URL**. Select the appropriate SSL certificate for the server, enter the appropriate SSL port (the default port is 443), and then click **Apply**.

### Clicking "Back" in the BitLocker Compliance Summary report might throw an error

If you drill down into a BitLocker Compliance Summary report, and then click the **Back** link in the SSRS report, an error might be thrown.

**Workaround:** None.

### Used Space Only Encryption does not work correctly

If you encrypt a computer for the first time after you install the MBAM Client, and you have configured a Group Policy setting to implement Used Space Only encryption, MBAM erroneously encrypts the entire disk instead of encrypting only the disk’s used space. If a computer is already encrypted with Used Space Only when you install the MBAM Client, and you have configured the same Group Policy setting, MBAM reports that the drive is encrypted correctly, and does not try to re-encrypt the drive.

**Workaround:** None.

### Cipher strength displays incorrectly on the BitLocker Computer Compliance report

If you do not set a specific cipher strength in the **Choose drive encryption method and cipher strength** Group Policy Object, the BitLocker Computer Compliance report in the Configuration Manager Integration topology always displays "unknown" for the cipher strength, even when the cipher strength uses the default of 128-bit encryption. The report displays the correct cipher strength if you set a specific cipher strength in the Group Policy Object.

**Workaround:** Always set a specific cipher strength in the **Choose drive encryption method and cipher strength** Group Policy Object.

### Compliance Status Distribution by Drive Type displays old data after you update configuration items

After you update MBAM configuration items in System Center 2012 Configuration Manager, the Compliance Status Distribution By Drive Type bar chart on the BitLocker Enterprise Compliance Dashboard shows data that is based on information from old versions of the configuration items.

**Workaround:** None. Modification of the MBAM configuration items is not supported, and the report might not appear as expected.

### Enhanced Security Configuration might cause reports to display an error message incorrectly

If Internet Explorer Enhanced Security Configuration (ESC) is turned on, an "Access Denied" error message might appear when you try to view reports on the MBAM Server. By default, ESC is turned on to protect the server by decreasing the server’s exposure to potential attacks that can occur through web content and application scripts.

**Workaround:** If the "Access Denied" error message appears when you try to view reports on the MBAM Server, you can set a Group Policy Object or change the default manually in your image to disable Enhanced Security Configuration. You can also alternatively view the reports from another computer on which ESC is not enabled.

## <a href="" id="hotfixes-and-knowledge-base-articles-for-mbam-2-5-"></a>Hotfixes and Knowledge Base articles for MBAM 2.5


This table lists the hotfixes and KB articles for MBAM 2.5.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>KB Article</strong></th>
<th align="left">Title</th>
<th align="left"><strong>Link</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>2975636</p></td>
<td align="left"><p>Hotfix Package 1 for Microsoft BitLocker Administration and Monitoring 2.5</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/2975636/EN-US" data-raw-source="[support.microsoft.com/kb/2975636/EN-US](https://support.microsoft.com/kb/2975636/EN-US)">support.microsoft.com/kb/2975636/EN-US</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>3015477</p></td>
<td align="left"><p>Hotfix Package 2 for BitLocker Administration and Monitoring 2.5</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/3015477" data-raw-source="[support.microsoft.com/kb/3015477](https://support.microsoft.com/kb/3015477)">support.microsoft.com/kb/3015477</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>3011022</p></td>
<td align="left"><p>MBAM 2.5 installation or Configuration Manager reporting fails if the name of SSRS instance contains an underscore</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/3011022/EN-US" data-raw-source="[support.microsoft.com/kb/3011022/EN-US](https://support.microsoft.com/kb/3011022/EN-US)">support.microsoft.com/kb/3011022/EN-US</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>2756402</p></td>
<td align="left"><p>MBAM client would fail with Event ID 4 and error code 0x8004100E in the Event description</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/2756402/EN-US" data-raw-source="[support.microsoft.com/kb/2756402/EN-US](https://support.microsoft.com/kb/2756402/EN-US)">support.microsoft.com/kb/2756402/EN-US</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>2639518</p></td>
<td align="left"><p>Error opening Enterprise or Computer Compliance Reports in MBAM</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/2639518/EN-US" data-raw-source="[support.microsoft.com/kb/2639518/EN-US](https://support.microsoft.com/kb/2639518/EN-US)">support.microsoft.com/kb/2639518/EN-US</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>2870842</p></td>
<td align="left"><p>MBAM 2.0 Setup fails during Configuration Manager Integration Scenario with SQL Server 2008</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/2870842/EN-US" data-raw-source="[support.microsoft.com/kb/2870842/EN-US](https://support.microsoft.com/kb/2870842/EN-US)">support.microsoft.com/kb/2870842/EN-US</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>2975472</p></td>
<td align="left"><p>SQL deadlocks when many MBAM clients connect to the MBAM recovery database</p></td>
<td align="left"><p><a href="https://support.microsoft.com/kb/2975472/EN-US" data-raw-source="[support.microsoft.com/kb/2975472/EN-US](https://support.microsoft.com/kb/2975472/EN-US)">support.microsoft.com/kb/2975472/EN-US</a></p></td>
</tr>
</tbody>
</table>

 


## Related topics


[About MBAM 2.5](about-mbam-25.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





