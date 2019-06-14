---
title: Release Notes for MBAM 2.5 SP1
description: Release Notes for MBAM 2.5 SP1
author: dansimp
ms.assetid: 3ac424c8-c490-4d62-aba4-1b462c02e962
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 09/06/2017
---


# Release Notes for MBAM 2.5 SP1


To search these release notes, press Ctrl+F.

Read these release notes thoroughly before you install Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 SP1. These release notes contain information that is required to successfully install MBAM and can contain information that is not available in the product documentation. If these release notes differ from other MBAM 2.5 SP1 documentation, consider the latest change to be authoritative. These release notes supersede the content that is included with this product.

## <a href="" id="---------mbam-2-5-sp1-known-issues"></a> MBAM 2.5 SP1 known issues


This section contains release notes for MBAM 2.5 SP1.

### <a href="" id="powershell-read-ad--cmdlets-do-not-provide-feedback-if-user-does-not-have-sufficient-rights"></a>PowerShell Read-AD\* cmdlets do not provide feedback if user does not have sufficient rights

If a user trying to use the PowerShell Read-AD\* cmdlets for the MBAM Server does not have user rights to read the Active Directory recovery information or to read the TPM information, the cmdlets will not provide the user with any error or warning.

**Workaround:** Only use the PowerShell Read-AD\* cmdlets if you have the required user rights.

### MBAM Active Directory (AD) Migration cmdlets do not retrieve volume recovery information

MBAM Active Directory (AD) Migration cmdlets fail to retrieve volume recovery information for computers in organizational units (OUs) if the forward slash character (/) is part of the OU name. Repeated AD pulls will fail with a pipeline terminating error when this error is encountered.

**Technical Details:** You will see this error when running the command:

``` syntax
Read-ADRecoveryInformation : Unknown error (0x80005000)
At line:1 char:1
+ Read-ADRecoveryInformation -Server "…" -SearchBase " ...
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [Read-ADRecoveryInformation], COMException
    + FullyQualifiedErrorId : System.Runtime.InteropServices.COMException,Microsoft.Mbam.Server.Commands.ADPullCommands.ReadADRecoveryInformationCommand
```

In addition, the Exception stack trace `Error[0].Exception.StackTrace` will look like this:

``` syntax
   at System.DirectoryServices.DirectoryEntry.Bind(Boolean throwIfFail)
   at System.DirectoryServices.DirectoryEntry.Bind()
   at System.DirectoryServices.DirectoryEntry.get_AdsObject()
   at System.DirectoryServices.PropertyValueCollection.PopulateList()
   at System.DirectoryServices.PropertyValueCollection..ctor(DirectoryEntry entry, String propertyName)
   at System.DirectoryServices.PropertyCollection.get_Item(String propertyName)
   at Microsoft.Mbam.Server.Commands.ADPullCommands.ReadCore.VerifySettingsConnectivity()
   at Microsoft.Mbam.Server.Commands.ADPullCommands.ReadCore.ExecuteRead()
   at Microsoft.Mbam.Server.Commands.ADPullCommands.ReadADInformationBase.ProcessRecord()
   at System.Management.Automation.CommandProcessor.ProcessRecord()
```

**Workaround:** Perform one of these tasks to resolve this situation:

-   Rename the OU to remove the forward slash character and then run the script.

-   To exclude any problematic OU from the backup process, find a list of OUs whose names do not contain the forward slash character. Run the script on these OUs, one OU at a time.

### <a href="" id="-------------mbam-fails-to-encrypt-a-volume-and-reports-an-error-if-you-set-a-tpm---pin-protector-on-a-tablet-device"></a> MBAM fails to encrypt a volume and reports an error if you set a TPM + PIN protector on a tablet device

If end users try to set a TPM + PIN protector on a tablet device, MBAM fails to encrypt, and it reports an error. This issue occurs because tablet devices do not have a pre-boot environment keyboard.

**Workaround:** Enable the **Enable use of BitLocker authentication requiring preboot keyboard input on tablets** Group Policy setting. This setting is a BitLocker Group Policy setting and is not available in the MBAM Group Policy Templates.

### User principal name is required for all service accounts

A user principal name (UPN) must be set for all service accounts in MBAM. If you fail to create a UPN for an account, an error message appears during the configuration process to indicate that the user or group could not be found in Active Directory.

**Workaround:** Add the UPN to the service account.

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

### Cipher strength displays incorrectly on the BitLocker Computer Compliance report

If you do not set a specific cipher strength in the **Choose drive encryption method and cipher strength** Group Policy Object, the BitLocker Computer Compliance report in the Configuration Manager Integration topology always displays "unknown" for the cipher strength, even when the cipher strength uses the default of 128-bit encryption. The report displays the correct cipher strength if you set a specific cipher strength in the Group Policy Object.

**Workaround:** Always set a specific cipher strength in the **Choose drive encryption method and cipher strength** Group Policy Object.

### Compliance Status Distribution By Drive Type displays old data after you update configuration items

After you update MBAM configuration items in System Center 2012 Configuration Manager, the Compliance Status Distribution By Drive Type bar chart on the BitLocker Enterprise Compliance Dashboard shows data that is based on information from old versions of the configuration items.

**Workaround:** None. Modification of the MBAM configuration items is not supported, and the report might not appear as expected.

### Enhanced Security Configuration might cause reports to display an error message incorrectly

If Internet Explorer Enhanced Security Configuration (ESC) is turned on, an "Access Denied" error message might appear when you try to view reports on the MBAM Server. By default, ESC is turned on to protect the server by decreasing the server’s exposure to potential attacks that can occur through web content and application scripts.

**Workaround:** If the "Access Denied" error message appears when you try to view reports on the MBAM Server, you can set a Group Policy Object or change the default manually in your image to disable Enhanced Security Configuration. You can also alternatively view the reports from another computer on which ESC is not enabled.

### Support for Bitlocker XTS-AES encryption algorithm
Bitlocker added support for the XTS-AES encryption algorithm in Windows 10, version 1511. With HF02, MBAM added client support for this Bitlocker option and in HF04, the server-side support was added. However, there is one known limitation:

* Customers must use the same encryption strength for OS and data volumes on the same machine.
If different encryption strengths are used, MBAM will report the machine as **non-compliant**.

### Self-Service Portal automatically adds "-" on Key ID entry
As of HF02, the MBAM Self-Service Portal automatically adds the '-' on Key ID entry.  
**Note:** The Server has to be reconfigured for the Javascript to take effect.

### MBAM 2.5 Sp1 Reports does not work / render properly
Reports Page does not render properly when SSRS is hosted on SQL Server 2016 edition. 
For example – Browsing to Helpdesk – Clicking on Reports –  ( Highlighted portion have “x”  on it )
Digging this further with Fiddler – it does look like once we click on Reports – it calls the SSRS page with HTML 4.0 rendering format.

**Workaround:** Looking at the site.master code and noticed the X-UA mode was dictated as IE8. As IE8 is WAY past the end of life, and customer is using IE11. Update the setting to the below code. This allows the site to utilize IE11 rendering technologies

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />

Original setting is: 

    <meta http-equiv="X-UA-Compatible" content="IE=8" />


This is the reason why the issue was not seen with other browsers like Chrome, Firefox etc.



## Related topics


[About MBAM 2.5](about-mbam-25.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





