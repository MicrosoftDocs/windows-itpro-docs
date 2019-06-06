---
title: Removing MBAM Server Features or Software
description: Removing MBAM Server Features or Software
author: dansimp
ms.assetid: 5212ba3f-124d-43c5-824a-608e9a192e86
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Removing MBAM Server Features or Software


These instructions explain how to remove software and features from Microsoft BitLocker Administration and Monitoring (MBAM). If you remove MBAM Server features, only the configured features are removed from the server, not the MBAM Server software. If you remove the MBAM Server software, the software and any MBAM Server features that you configured on that server are removed.

**Note**  
To prevent the accidental removal of data, MBAM provides no mechanism for removing the databases; you must do that manually.

 

## <a href="" id="bkmk-removeserverfeatures"></a>Removing MBAM Server features


You can use either of the following methods to remove MBAM Server features that you have configured:

-   MBAM Server Configuration wizard

-   Windows PowerShell cmdlets

### Using the MBAM Server Configuration wizard to remove features

Follow these instructions to use the MBAM Server Configuration wizard to remove configured MBAM Server features from a server.

**To remove MBAM features by using the wizard**

1.  On the server where you want to remove features, select **MBAM Server Configuration** to open the configuration wizard.

2.  Click **Remove Features**, select the features to remove, and then click **Next**. A **Summary** page displays the features you selected for removal.

3.  Click **Remove** to start removing the features, and then click **Close**.

### Using Windows PowerShell to remove features

Use the following steps as a general guide to remove MBAM Server features by using Windows PowerShell cmdlets.

**To remove MBAM features by using Windows PowerShell**

1.  Before removing any features, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md) to review the prerequisites for using Windows PowerShell.

2.  Use the following cmdlets to remove MBAM Server features:

    -   Disable-MbamReport

    -   Disable-MbamWebApplication

    -   Disable-MbamCMIntegration

    To get help with Windows PowerShell cmdlets, type **Get-Help** &lt;*cmdlet*&gt; or see the [Microsoft Desktop Optimization Pack Automation with Windows PowerShell](https://go.microsoft.com/fwlink/?LinkId=393498) page for the MBAM Windows PowerShell cmdlets.

## Removing MBAM Server software


Use the following steps to remove the MBAM Server software and any MBAM Server features that you configured on that server.

**To remove the MBAM Server software**

1.  On the server where you want to uninstall the MBAM Server software, run **MBAMserversetup.exe** to start the Microsoft BitLocker Administration and Monitoring Setup wizard.

2.  Select **Uninstall**, and follow the remaining prompts to complete the process of uninstalling the MBAM Server software.



## Related topics


[Deploying MBAM 2.5](deploying-mbam-25.md)

 

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).



