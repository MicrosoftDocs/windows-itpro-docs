---
title: Initialize and configure ownership of the TPM (Windows 10)
description: This topic for the IT professional describes how to initialize and set the ownership the Trusted Platform Module (TPM) turn the TPM on and off and clear TPM keys.
MSHAttr: PreferredLib /library
ms.assetid: 1166efaf-7aa3-4420-9279-435d9c6ac6f8
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Initialize and configure ownership of the TPM


**Applies to**

-   Windows 10

This topic for the IT professional describes how to initialize and set the ownership the Trusted Platform Module (TPM), turn the TPM on and off, and clear TPM keys. It also explains how to troubleshoot issues that you might encounter as a result of using these procedures.

## <a href="" id="bkmk-init"></a>About TPM initialization and ownership


The TPM must be initialized and ownership must be taken before it can be used to help secure your computer. The owner of the TPM is the user who possesses the owner password and is able to set it and change it. Only one owner password exists per TPM. The owner of the TPM can make full use of TPM capabilities. Taking ownership of the TPM can be done as part of the initialization process.

When you start the TPM Initialization Wizard, which is accessed through the TPM Microsoft Management Console (MMC), you can determine whether the computer's TPM has been initialized. You can also view the TPM properties.

This topic contains procedures for the following tasks:

-   [Initialize the TPM and set ownership](#bkmk-initializetpm)

-   [Troubleshoot TPM initialization](#bkmk-troubleshootinit)

-   [Turn on or turn off the TPM](#bkmk-onoff)

-   [Clear all the keys from the TPM](#bkmk-clear1)

-   [Use the TPM cmdlets](#bkmk-tpmcmdlets)

## <a href="" id="bkmk-initializetpm"></a>Initialize the TPM and set ownership


Membership in the local Administrators group, or equivalent, is the minimum required to complete this procedure. In addition, the computer must be equipped with a Trusted Computing Group-compliant BIOS.

**To start the TPM Initialization Wizard**

1.  Open the TPM Management console (tpm.msc). If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.

2.  On the **Action** menu, click **Initialize TPM** to start the TPM Initialization Wizard.

3.  If the TPM has never been initialized or is turned off, the TPM Initialization Wizard displays the **Turn on the TPM security hardware** dialog box. This dialog box provides guidance for initializing or turning on the TPM. Follow the instructions in the wizard.

    **Note**  
    If the TPM is already turned on, the TPM Initialization Wizard displays the **Create the TPM owner password** dialog box. Skip the remainder of this procedure and continue with the [To set ownership of the TPM](#bkmk-setownership) procedure.

     

    **Note**  
    If the TPM Initialization Wizard detects that you do not have a compatible BIOS, you cannot continue with the TPM Initialization Wizard, and you are alerted to consult the computer manufacturer's documentation for instructions to initialize the TPM.

     

4.  Click **Restart**.

5.  Follow the BIOS screen prompts. An acceptance prompt is displayed to ensure that a user has physical access to the computer and that no malicious software is attempting to turn on the TPM.

    **Note**  
    BIOS screen prompts and the required keystrokes vary by computer manufacturer.

     

6.  After the computer restarts, sign in to the computer with the same administrative credentials that you used to start this procedure.

7.  The TPM Initialization Wizard automatically restarts. If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.

8.  Continue with the next procedure to take ownership of the TPM.

To finish initializing the TPM for use, you must set an owner for the TPM. The process of taking ownership includes creating an owner password for the TPM.

**To set ownership of the TPM**

1.  If you are not continuing immediately from the last procedure, start the TPM Initialization Wizard. If you need to review the steps to do so, see the previous procedure [To start the TPM Initialization Wizard](#bkmk-starttpminitwizard).

2.  In the **Create the TPM owner password** dialog box, click **Automatically create the password (recommended)**.

3.  In the **Save your TPM owner password** dialog box, click **Save the password**.

4.  In the **Save As** dialog box, select a location to save the password, and then click **Save**. The password file is saved as *computer\_name.tpm*.

    **Important**  
    We highly recommend saving the TPM owner password to a removable storage device and storing it in a safe location.

     

5.  Click **Print the password** if you want to print a copy of your password.

    **Important**  
    We highly recommend printing a copy of your TPM owner password and storing it in a safe location.

     

6.  Click **Initialize**.

    **Note**  
    The process of initializing the TPM might take a few minutes to complete.

     

7.  Click **Close**.

    **Caution**  
    Do not lose your password. If you do, you will be unable to make administrative changes unless you clear the TPM, which can result in data loss.

     

## <a href="" id="bkmk-troubleshootinit"></a>Troubleshoot TPM initialization


Managing the Trusted Platform Module (TPM) is usually a straightforward procedure. If are unable to complete the initialization procedure, review the following information:

-   If the TPM is not detected by Windows, verify that your computer hardware contains a Trusted Computing Group-compliant BIOS. Ensure that no BIOS settings have been used to hide the TPM from the operating system.

-   If you are attempting to initialize the TPM as part of the BitLocker setup, check which TPM driver is installed on the computer. We recommend always using one of the TPM drivers that is provided by Microsoft and is protected with BitLocker. If a non-Microsoft TPM driver is installed, it may prevent the default TPM driver from loading and cause BitLocker to report that a TPM is not present on the computer. If you have a non-Microsoft driver installed, remove it and then try to initialize the TPM. The following table lists the three standard TPM drivers that are provided by Microsoft.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Driver name</th>
    <th align="left">Manufacturer</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Trusted Platform Module 1.2</p></td>
    <td align="left"><p>(Standard)</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Broadcom Trusted Platform Module (A1), v1.2</p></td>
    <td align="left"><p>Broadcom</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Broadcom Trusted Platform Module (A2), v1.2</p></td>
    <td align="left"><p>Broadcom</p></td>
    </tr>
    </tbody>
    </table>

     

-   If the TPM has been previously initialized and you do not have the owner password, you may have to clear or reset the TPM to the factory default values. For more information, see [Clear all the keys from the TPM](#bkmk-clear1).

    **Caution**  
    Clearing the TPM can result in data loss. To avoid data loss, make sure that you have a backup or recovery method for any data that is protected or encrypted by the TPM.

     

Because your TPM security hardware is a physical part of your computer, you may want to read the manuals or instructions that came with your computer, or search the manufacturer's website.

**Network connection**

You cannot complete the initialization of the Trusted Platform Module (TPM) when your computer is disconnected from your organization's network if either of the following conditions exist:

-   An administrator has configured your computer to require that TPM recovery information be saved in Active Directory Domain Services (AD DS). This requirement can be configured through Group Policy.

-   A domain controller cannot be reached. This can occur on a computer that is currently disconnected from the network, separated from the domain by a firewall, or experiencing a network component failure (such as an unplugged cable or a faulty network adapter).

In either case, an error message appears, and you cannot complete the initialization process. To avoid this issue, initialize the TPM while you are connected to the corporate network and you can contact a domain controller.

**Systems with multiple TPMs**

Some systems may have multiple TPMs and the active TPM may be toggled in the BIOS. Windows 10 does not support this behavior. If you switch TPMs, functionality that depends on the TPM will not work with the new TPM unless it is cleared and put through provisioning. Performing this clear may cause data loss, in particular of keys and certificates associated with the previous TPM. For example, toggling TPMs will cause Bitlocker to enter recovery mode. It is strongly recommended that, on systems with two TPMs, one TPM is selected to be used and the selection is not changed.

## <a href="" id="bkmk-onoff"></a>Turn on or turn off the TPM


Normally, the TPM is turned on as part of the TPM initialization process. You do not normally need to turn the TPM on or off. However, if necessary you can do so by using the TPM MMC.

### <a href="" id="turn-on-the-tpm-"></a>Turn on the TPM

If the TPM has been initialized but has never been used, or if you want to use the TPM after you have turned it off, you can use the following procedure to turn on the TPM.

**To turn on the TPM**

1.  Open the TPM MMC (tpm.msc).

2.  In the **Action** pane, click **Turn TPM On** to display the **Turn on the TPM Security Hardware** page. Read the instructions on this page.

3.  Click **Shutdown** (or **Restart**), and then follow the BIOS screen prompts.

    After the computer restarts, but before you sign in to Windows, you will be prompted to accept the reconfiguration of the TPM. This ensures that the user has physical access to the computer and that malicious software is not attempting to make changes to the TPM.

### <a href="" id="turn-off-the-tpm-"></a>Turn off the TPM

If you want to stop using the services that are provided by the TPM, you can use the TPM MMC to turn off the TPM. If you have the TPM owner password, physical access to the computer is not required to turn off the TPM. If you do not have the TPM owner password, you must have physical access to the computer to turn off the TPM.

**To turn off the TPM**

1.  Open the TPM MMC (tpm.msc).

2.  In the **Action** pane, click **Turn TPM Off** to display the **Turn off the TPM security hardware** page.

3.  In the **Turn off the TPM security hardware** dialog box, select a method to enter your owner password and turning off the TPM:

    -   If you saved your TPM owner password on a removable storage device, insert it, and then click **I have the owner password file**. In the **Select backup file with the TPM owner password** dialog box, click **Browse** to locate the .tpm file that is saved on your removable storage device, click **Open**, and then click **Turn TPM Off**.

    -   If you do not have the removable storage device with your saved TPM owner password, click **I want to enter the password**. In the **Type your TPM owner password** dialog box, type your password (including hyphens), and then click **Turn TPM Off**.

    -   If you do not know your TPM owner password, click **I do not have the TPM owner password**, and follow the instructions that are provided in the dialog box and subsequent BIOS screens to turn off the TPM without entering the password.

## <a href="" id="bkmk-clear1"></a>Clear all the keys from the TPM


Clearing the TPM resets it to an unowned state. After clearing the TPM, you need to complete the TPM initialization process before using software that relies on the TPM, such as BitLocker Drive Encryption. By default, the TPM is initialized automatically.

**Important**  
Clearing the TPM can result in data loss. To avoid data loss, make sure that you have a backup or recovery method for any data that is protected or encrypted by the TPM.

 

After the TPM is cleared, it is also turned off.

To temporarily suspend TPM operations, turn off the TPM instead of clearing it.

Membership in the local Administrators group, or equivalent, is the minimum required to complete this procedure.

**To clear the TPM**

1.  Open the TPM MMC (tpm.msc).

2.  If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.

3.  Under **Actions**, click **Clear TPM**.

    **Warning**  
    If the TPM is off, reinitialize it before clearing it.

    Clearing the TPM resets it to factory defaults and turns it off. You will lose all created keys and data that is protected by those keys.

     

4.  In the **Clear the TPM security hardware** dialog box, select one of the following methods to enter your password and clear the TPM:

    -   If you have the removable storage device with your saved TPM owner password, insert it, and click **I have the owner password file**. In the **Select backup file with the TPM owner password** dialog box, use **Browse** to navigate to the .tpm file that is saved on your removable storage device. Click **Open**, and then click **Clear TPM**.

    -   If you do not have the removable storage device with your saved password, click **I want to enter the owner password**. In the **Type your TPM owner password** dialog box, type your password (including hyphens), and click **Clear TPM**.

    -   If you do not know your TPM owner password, click **I don't have the TPM owner password**, and follow the instructions that are provided to clear the TPM without entering the password.

    **Note**  
    If you have physical access to the computer, you can clear the TPM and perform a limited number of management tasks without entering the TPM owner password.

     

    The status of your TPM is displayed under **Status** in TPM MMC.

## <a href="" id="bkmk-tpmcmdlets"></a>Use the TPM cmdlets


If you are using Windows PowerShell to manage your computers, you can also manage the TPM by using Windows PowerShell. To install the TPM cmdlets, type the following command:

**dism /online /enable-feature /FeatureName:tpm-psh-cmdlets**

For details about the individual cmdlets, see [TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx).

## Additional resources


For more info about TPM, see [Trusted Platform Module Technology Overview](trusted-platform-module-technology-overview.md#bkmk-additionalresources).

 

 





