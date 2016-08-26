---
title: Manage TPM lockout (Windows 10)
description: This topic for the IT professional describes how to manage the lockout feature for the Trusted Platform Module (TPM) in Windows.
ms.assetid: bf27adbe-404c-4691-a644-29ec722a3f7b
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---
# Manage TPM lockout

**Applies to**
-   Windows 10

This topic for the IT professional describes how to manage the lockout feature for the Trusted Platform Module (TPM) in Windows.

## <a href="" id="bkmk-lockout1"></a>About TPM lockout

The TPM will lock itself to prevent tampering or malicious attacks. TPM lockout often lasts for a variable amount of time or until the computer is turned off. While the TPM is in lockout mode, it generally returns an error message when it receives commands that require an authorization value. One exception is that the TPM always allows the owner at least one attempt to reset the TPM lockout when it is in lockout mode.

TPM ownership is taken upon first boot by Windows. By default, Windows does not retain the TPM owner password.

In some cases, encryption keys are protected by a TPM by requiring a valid authorization value to access the key. A common example is configuring BitLocker Drive Encryption to use the TPM plus PIN key protector. In this scenario, the user must type the correct PIN during the boot process to access the volume encryption key protected by the TPM. To prevent malicious users or software from discovering authorization values, TPMs implement protection logic. The protection logic is designed to slow or stop responses from the TPM if it detects that an entity might be trying to guess authorization values.

**TPM 1.2**
The industry standards from the Trusted Computing Group (TCG) specify that TPM manufacturers must implement some form of protection logic in TPM 1.2 and TPM 2.0 chips. TPM 1.2 devices implement different protection mechanisms and behavior. In general, the TPM chip takes exponentially longer to respond if incorrect authorization values are sent to the TPM. Some TPM chips may not store failed attempts over time. Other TPM chips may store every failed attempt indefinitely. Therefore, some users may experience increasingly longer delays when they mistype an authorization value that is sent to the TPM. This can prevent them from using the TPM for a period of time.

**TPM 2.0**
 TPM 2.0 devices have standardized lockout behavior which is configured by Windows. TPM 2.0 devices have a maximum count threshold and a healing time. Windows configures the maximum count to be 32 and the healing time to be 2 hours. This means that every continuous two hours of powered on operation without an event which increases the counter will cause the counter to decrease by 1.

If your TPM has entered lockout mode or is responding slowly to commands, you can reset the lockout value by using the following procedures. Resetting the TPM lockout requires the TPM owner’s authorization.  This value is no longer retained by default starting with Windows 10 1607.

## Reset the TPM lockout by using the TPM MMC
**Note:** This procedure is only available if you have configured Windows to retain the TPM Owner Password. By default, this password is not available in Windows 10 starting with version 1607.

The following procedure explains the steps to reset the TPM lockout by using the TPM MMC.  

**To reset the TPM lockout**

1.  Open the TPM MMC (tpm.msc).
2.  In the **Action** pane, click **Reset TPM Lockout** to start the Reset TPM Lockout Wizard.
3.  Choose one of the following methods to enter the TPM owner password:
    -   If you saved your TPM owner password to a .tpm file, click **I have the owner password file**, and then type the path to the file, or click **Browse** to navigate to the file location.
    -   If you want to manually enter your TPM owner password, click **I want to enter the owner password**, and then type the password in the text box provided.

        >**Note:**  If you enabled BitLocker and your TPM at the same time, and you printed your BitLocker recovery password when you turned on BitLocker, your TPM owner password may have printed with it.
         
## Use Group Policy to manage TPM lockout settings

The TPM Group Policy settings in the following list are located at:

**Computer Configuration\\Administrative Templates\\System\\Trusted Platform Module Services\\**

-   [Standard User Lockout Duration](trusted-platform-module-services-group-policy-settings.md#bkmk-individual)

    This policy setting allows you to manage the duration in minutes for counting standard user authorization failures for TPM commands that require authorization. An authorization failure occurs each time a user sends a command to the TPM and receives an error message that indicates an authorization failure occurred. Authorization failures that are older than the duration you set are ignored. If the number of TPM commands with an authorization failure within the lockout duration equals a threshold, the user is prevented from sending commands to the TPM that require authorization.

-   [Standard User Individual Lockout Threshold](trusted-platform-module-services-group-policy-settings.md#bkmk-tpmgp-suld)

    This policy setting allows you to manage the maximum number of authorization failures for the TPM for each user. This value is the maximum number of authorization failures that each user can have before the user is not allowed to send commands to the TPM that require authorization. If the number of authorization failures equals the duration that is set for the policy setting, the user is prevented from sending commands to the TPM that require authorization.

-   [Standard User Total Lockout Threshold](trusted-platform-module-services-group-policy-settings.md#bkmk-total)
    
    This policy setting allows you to manage the maximum number of authorization failures for the TPM for all standard users. If the total number of authorization failures for all users equals the duration that is set for the policy, all users are prevented from sending commands to the TPM that require authorization.

For information about mitigating dictionary attacks that use the lockout settings, see [TPM fundamentals](tpm-fundamentals.md#bkmk-howtpmmitigates).

## <a href="" id="bkmk-tpmcmdlets"></a>Use the TPM cmdlets

If you are using Windows PowerShell to manage your computers, you can also manage the TPM by using Windows PowerShell. To install the TPM cmdlets, type the following command:

**dism /online /enable-feature /FeatureName:tpm-psh-cmdlets**

For details about the individual cmdlets, see [TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx).

## Additional resources

For more info about TPM, see [TPM technology overview](trusted-platform-module-overview.md#bkmk-additionalresources).
