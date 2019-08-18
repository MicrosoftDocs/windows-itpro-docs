---
title: How to Manage Hardware Compatibility
description: How to Manage Hardware Compatibility
author: msfttracyp
ms.assetid: c74b96b9-8161-49bc-b5bb-4838734e7df5
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Manage Hardware Compatibility


Microsoft BitLocker Administration and Monitoring (MBAM) can collect information about the manufacturer and model of client computers after you deploy the Allow Hardware Compatibility Checking Group Policy. If you configure this policy, the MBAM agent reports the computer make and model information to the MBAM Server when the MBAM Client is deployed on a client computer.

The Hardware Compatibility feature is helpful when your organization has older computer hardware or computers that do not support Trusted Platform Module (TPM) chips. In these cases, you can use the Hardware Compatibility feature to ensure that BitLocker encryption is applied only to computer models that support it. If all computers in your organization will support BitLocker, you do not have to use the Hardware Compatibility feature.

**Note**  
By default, MBAM Hardware Compatibility feature is not enabled. To enable it, select the **Hardware Compatibility** feature under the **Administration and Monitoring Server** feature during setup. For more information about how to set up and configure Hardware Compatibility, see [Deploying the MBAM 1.0 Server Infrastructure](deploying-the-mbam-10-server-infrastructure.md).

 

The Hardware Compatibility feature works in the following way.

****

1.  The MBAM client agent discovers basic computer information such as manufacturer, model, BIOS maker, BIOS version, TPM maker, and TPM version, and then passes this information to the MBAM server.

2.  The MBAM server generates a list of client computer makes and models to enable you to differentiate between those that can or cannot support BitLocker

3.  The MBAM client agents that are deployed in the enterprise automatically update this list with all new computer makes and models that are discovered with a state of **Unknown**. An administrator can then use the MBAM administration website to change list entries to specify a particular computer make and model as **Compatible** or **Incompatible**.

4.  Before the MBAM client agent begins encrypting a drive, the agent first verifies the BitLocker encryption compatibility of the hardware it is running on.

    -   If the hardware is marked as compatible, the BitLocker encryption process starts. MBAM will also recheck the hardware compatibility status of the computer one time per day.

    -   If the hardware is marked as incompatible, the agent logs an event and passes a “hardware exempted” state as part of compliance reporting. The agent checks every seven days to see whether the state has changed to “compatible.”

    -   If the hardware is marked as unknown, the BitLocker encryption process will not begin. The MBAM client agent will recheck the hardware compatibility status of the computer one time per day.

**Warning**  
If the MBAM client agent tries to encrypt a computer that does not support BitLocker drive encryption, there is a possibility that the computer will become corrupted. Ensure that the hardware compatibility feature is correctly configured when your organization has older hardware that does not support BitLocker.

 

**To manage hardware compatibility**

1.  Open a web browser and navigate to the Microsoft BitLocker Administration and Monitoring website. Select **Hardware** in the left menu bar.

2.  On the right pane, click **Advanced Search**, and then filter to display a list of all computer models that have a **Capability** status of **Unknown**. A list of computer models matching the search criteria is displayed. Administrators can add, edit, or remove new computer types from this page.

3.  Review each unknown hardware configuration to determine whether the configuration should be set to **Compatible** or **Incompatible**.

4.  Select one or more rows, and then click either **Set Compatible** or **Set Incompatible** to set the BitLocker compatibility, as appropriate, for the selected computer models. If set to **Compatible**, BitLocker tries to enforce drive encryption policy on computers that match the supported model. If set to **Incompatible**, BitLocker will not enforce drive encryption policy on those computers.

    **Note**  
    After you set a computer model as compatible, it can take more than twenty-four hours for the MBAM Client to begin BitLocker encryption on the computers matching that hardware model.

     

5.  Administrators should regularly monitor the hardware compatibility list to review new models that are discovered by the MBAM agent, and then update their compatibility setting to **Compatible** or **Incompatible** as appropriate.

## Related topics


[Administering MBAM 1.0 Features](administering-mbam-10-features.md)

 

 





