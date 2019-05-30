---
title: BitLocker recovery guide (Windows 10)
description: This topic for IT professionals describes how to recover BitLocker keys from AD DS.
ms.assetid: d0f722e9-1773-40bf-8456-63ee7a95ea14
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BitLocker recovery guide

**Applies to**
-   Windows 10

This topic for IT professionals describes how to recover BitLocker keys from AD DS.

Organizations can use BitLocker recovery information saved in Active Directory Domain Services (AD DS) to access BitLocker-protected data. Creating a recovery model for BitLocker while you are planning your BitLocker deployment is recommended.

This article assumes that you understand how to set up AD DS to back up BitLocker recovery information automatically, and what types of recovery information are saved to AD DS.

This article does not detail how to configure AD DS to store the BitLocker recovery information.

## <a href="" id="bkmk-whatisrecovery"></a>What is BitLocker recovery?

BitLocker recovery is the process by which you can restore access to a BitLocker-protected drive in the event that you cannot unlock the drive normally. In a recovery scenario, you have the following options to restore access to the drive:

-   The user can supply the recovery password. If your organization allows users to print or store recovery passwords, the user can type in the 48-digit recovery password that they printed or stored on a USB drive or with your Microsoft Account online. (Saving a recovery password with your Microsoft Account online is only allowed when BitLocker is used on a PC that is not a member of a domain).
-   A data recovery agent can use their credentials to unlock the drive. If the drive is an operating system drive, the drive must be mounted as a data drive on another computer for the data recovery agent to unlock it.
-   A domain administrator can obtain the recovery password from AD DS and use it to unlock the drive. Storing recovery passwords in AD DS is recommended to provide a way for IT professionals to be able to obtain recovery passwords for drives in their organization if needed. This method requires that you have enabled this recovery method in the BitLocker Group Policy setting **Choose how BitLocker-protected operating system drives can be recovered** located at **Computer Configuration\\Administrative Templates\\Windows Components\\BitLocker Drive Encryption\\Operating System Drives** in the Local Group Policy Editor. For more information, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).

### What causes BitLocker recovery?

The following list provides examples of specific events that will cause BitLocker to enter recovery mode when attempting to start the operating system drive:

-   On PCs that use BitLocker Drive Encryption, or on devices such as tablets or phones that use [BitLocker Device Encryption](bitlocker-device-encryption-overview-windows-10.md) only, when an attack is detected, the device will immediately reboot and enter into BitLocker recovery mode. To take advantage of this functionality Administrators can set the **Interactive logon: Machine account lockout threshold** Group Policy setting located in **\\Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options** in the Local Group Policy Editor, or use the **MaxFailedPasswordAttempts** policy of [Exchange ActiveSync](https://technet.microsoft.com/library/aa998357.aspx) (also configurable through [Windows Intune](https://technet.microsoft.com/library/jj733621.aspx)), to limit the number of failed password attempts before the device goes into Device Lockout.
-   On devices with TPM 1.2, changing the BIOS or firmware boot device order causes BitLocker recovery. However, devices with TPM 2.0 do not start BitLocker recovery in this case. TPM 2.0 does not consider a firmware change of boot device order as a security threat because the OS Boot Loader is not compromised.
-   Having the CD or DVD drive before the hard drive in the BIOS boot order and then inserting or removing a CD or DVD.
-   Failing to boot from a network drive before booting from the hard drive.
-   Docking or undocking a portable computer. In some instances (depending on the computer manufacturer and the BIOS), the docking condition of the portable computer is part of the system measurement and must be consistent to validate the system status and unlock BitLocker. This means that if a portable computer is connected to its docking station when BitLocker is turned on, then it might also need to be connected to the docking station when it is unlocked. Conversely, if a portable computer is not connected to its docking station when BitLocker is turned on, then it might need to be disconnected from the docking station when it is unlocked.
-   Changes to the NTFS partition table on the disk including creating, deleting, or resizing a primary partition.
-   Entering the personal identification number (PIN) incorrectly too many times so that the anti-hammering logic of the TPM is activated. Anti-hammering logic is software or hardware methods that increase the difficulty and cost of a brute force attack on a PIN by not accepting PIN entries until after a certain amount of time has passed.
-   Turning off the support for reading the USB device in the pre-boot environment from the BIOS or UEFI firmware if you are using USB-based keys instead of a TPM.
-   Turning off, disabling, deactivating, or clearing the TPM.
-   Upgrading critical early startup components, such as a BIOS or UEFI firmware upgrade, causing the related boot measurements to change.
-   Forgetting the PIN when PIN authentication has been enabled.
-   Updating option ROM firmware.
-   Upgrading TPM firmware.
-   Adding or removing hardware; for example, inserting a new card in the computer, including some PCMIA wireless cards.
-   Removing, inserting, or completely depleting the charge on a smart battery on a portable computer.
-   Changes to the master boot record on the disk.
-   Changes to the boot manager on the disk.
-   Hiding the TPM from the operating system. Some BIOS or UEFI settings can be used to prevent the enumeration of the TPM to the operating system. When implemented, this option can make the TPM hidden from the operating system. When the TPM is hidden, BIOS and UEFI secure startup are disabled, and the TPM does not respond to commands from any software.
-   Using a different keyboard that does not correctly enter the PIN or whose keyboard map does not match the keyboard map assumed by the pre-boot environment. This can prevent the entry of enhanced PINs.
-   Modifying the Platform Configuration Registers (PCRs) used by the TPM validation profile. For example, including **PCR\[1\]** would result in BitLocker measuring most changes to BIOS settings, causing BitLocker to enter recovery mode even when non-boot critical BIOS settings change.

    >**Note:**  Some computers have BIOS settings that skip measurements to certain PCRs, such as **PCR\[2\]**. Changing this setting in the BIOS would cause BitLocker to enter recovery mode because the PCR measurement will be different.
     
-   Moving the BitLocker-protected drive into a new computer.
-   Upgrading the motherboard to a new one with a new TPM.
-   Losing the USB flash drive containing the startup key when startup key authentication has been enabled.
-   Failing the TPM self-test.
-   Having a BIOS, UEFI firmware, or an option ROM component that is not compliant with the relevant Trusted Computing Group standards for a client computer. For example, a non-compliant implementation may record volatile data (such as time) in the TPM measurements, causing different measurements on each startup and causing BitLocker to start in recovery mode.
-   Changing the usage authorization for the storage root key of the TPM to a non-zero value.

    >**Note:**  The BitLocker TPM initialization process sets the usage authorization value to zero, so another user or process must explicitly have changed this value.
     
-   Disabling the code integrity check or enabling test signing on Windows Boot Manager (Bootmgr).
-   Pressing the F8 or F10 key during the boot process.
-   Adding or removing add-in cards (such as video or network cards), or upgrading firmware on add-in cards.
-   Using a BIOS hot key during the boot process to change the boot order to something other than the hard drive.

>**Note:**  Before you begin recovery, we recommend that you determine what caused recovery. This might help prevent the problem from occurring again in the future. For instance, if you determine that an attacker has modified your computer by obtaining physical access, you can create new security policies for tracking who has physical presence. After the recovery password has been used to recover access to the PC, BitLocker will reseal the encryption key to the current values of the measured components.
 
For planned scenarios, such as a known hardware or firmware upgrades, you can avoid initiating recovery by temporarily suspending BitLocker protection. Because suspending BitLocker leaves the drive fully encrypted, the administrator can quickly resume BitLocker protection after the planned task has been completed. Using suspend and resume also reseals the encryption key without requiring the entry of the recovery key.

>**Note:**  If suspended BitLocker will automatically resume protection when the PC is rebooted, unless a reboot count is specified using the manage-bde command line tool.

If software maintenance requires the computer be restarted and you are using two-factor authentication, you can enable BitLocker Network Unlock to provide the secondary authentication factor when the computers do not have an on-premises user to provide the additional authentication method.
 
Recovery has been described within the context of unplanned or undesired behavior, but you can also cause recovery as an intended production scenario, in order to manage access control. For example, when you redeploy desktop or laptop computers to other departments or employees in your enterprise, you can force BitLocker into recovery before the computer is given to a new user.

## <a href="" id="bkmk-testingrecovery"></a>Testing recovery

Before you create a thorough BitLocker recovery process, we recommend that you test how the recovery process works for both end users (people who call your helpdesk for the recovery password) and administrators (people who help the end user get the recovery password). The –forcerecovery command of manage-bde is an easy way for you to step through the recovery process before your users encounter a recovery situation.

**To force a recovery for the local computer**

1.  Click the **Start** button, type **cmd** in the **Start Search** box, right-click **cmd.exe**, and then click **Run as administrator**.
2.  At the command prompt, type the following command and then press ENTER:
    `manage-bde -forcerecovery <BitLockerVolume>`


**To force recovery for a remote computer**

1.  On the Start screen, type **cmd.exe**, and then click **Run as administrator**.
2.  At the command prompt, type the following command and then press ENTER:
    `manage-bde. -ComputerName <RemoteComputerName> -forcerecovery <BitLockerVolume>`

> **Note:**  Recovery triggered by `-forcerecovery` persists for multiple restarts until a TPM protector is added or protection is suspended by the user. When using Modern Standby devices (such as Surface devices), the `-forcerecovery` option is not recommended because BitLocker will have to be unlocked and disabled manually from the WinRE environment before the OS can boot up again. For more information, see [BitLocker Troubleshooting: Continuous reboot loop with BitLocker recovery on a slate device](https://social.technet.microsoft.com/wiki/contents/articles/18671.bitlocker-troubleshooting-continuous-reboot-loop-with-bitlocker-recovery-on-a-slate-device.aspx).
 
## <a href="" id="bkmk-planningrecovery"></a>Planning your recovery process

When planning the BitLocker recovery process, first consult your organization's current best practices for recovering sensitive information. For example: How does your enterprise handle lost Windows passwords? How does your organization perform smart card PIN resets? You can use these best practices and related resources (people and tools) to help formulate a BitLocker recovery model.

Organizations that rely on BitLocker Drive Encryption and BitLocker To Go to protect data on a large number of computers and removable drives running the Windows 10, Windows 8, or Windows 7 operating systems and Windows to Go should consider using the Microsoft BitLocker Administration and Monitoring (MBAM) Tool version 2.0, which is included in the Microsoft Desktop Optimization Pack (MDOP) for Microsoft Software Assurance. MBAM makes BitLocker implementations easier to deploy and manage and allows administrators to provision and monitor encryption for operating system and fixed drives. MBAM prompts the user before encrypting fixed drives. MBAM also manages recovery keys for fixed and removable drives, making recovery easier to manage. MBAM can be used as part of a Microsoft System Center deployment or as a stand-alone solution. For more info, see [Microsoft BitLocker
Administration and Monitoring](https://technet.microsoft.com/windows/hh826072.aspx).

After a BitLocker recovery has been initiated, users can use a recovery password to unlock access to encrypted data. You must consider both self-recovery and recovery password retrieval methods for your organization.

When you determine your recovery process, you should:

-   Become familiar with how you can retrieve the recovery password. See:

    -   [Self-recovery](#bkmk-selfrecovery)
    -   [Recovery password retrieval](#bkmk-recoveryretrieval)

-   Determine a series of steps for post-recovery, including analyzing why the recovery occurred and resetting the recovery password. See:

    -   [Post-recovery analysis](#bkmk-planningpostrecovery)

### <a href="" id="bkmk-selfrecovery"></a>Self-recovery

In some cases, users might have the recovery password in a printout or a USB flash drive and can perform self-recovery. We recommend that your organization create a policy for self-recovery. If self-recovery includes using a password or recovery key stored on a USB flash drive, the users should be warned not to store the USB flash drive in the same place as the PC, especially during travel, for example if both the PC and the recovery items are in the same bag it would be very easy for access to be gained to the PC by an unauthorized user. Another policy to consider is having users contact the Helpdesk before or after performing self-recovery so that the root cause can be identified.

### <a href="" id="bkmk-recoveryretrieval"></a>Recovery password retrieval

If the user does not have a recovery password in a printout or on a USB flash drive, the user will need to be able to retrieve the recovery password from an online source. If the PC is a member of a domain the recovery password can be backed up to AD DS. However, this does not happen by default, you must have configured the appropriate Group Policy settings before BitLocker was enabled on the PC. BitLocker Group Policy settings can be found in the Local Group Policy Editor or the Group Policy Management Console (GPMC) under **Computer Configuration\\Administrative Templates\\Windows Components\\BitLocker Drive Encryption**. The following policy settings define the recovery methods that can be used to restore access to a BitLocker-protected drive if an authentication method fails or is unable to be used.

-   **Choose how BitLocker-protected operating system drives can be recovered**
-   **Choose how BitLocker-protected fixed drives can be recovered**
-   **Choose how BitLocker-protected removable drives can be recovered**
In each of these policies, select **Save BitLocker recovery information to Active Directory Domain Services** and then choose which BitLocker recovery information to store in Active Directory Domain Services (AD DS). Select the **Do not enable BitLocker until recovery information is stored in AD
DS** check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information for the drive to AD DS succeeds.

>**Note:**  If the PCs are part of a workgroup, users should be advised to save their BitLocker recovery password with their Microsoft Account online. Having an online copy of your BitLocker recovery password is recommended to help ensure that you do not lose access to your data in the event that recovery is required.
 
The BitLocker Recovery Password Viewer for Active Directory Users and Computers tool allows domain administrators to view BitLocker recovery passwords for specific computer objects in Active Directory.

You can use the following list as a template for creating your own recovery process for recovery password retrieval. This sample process uses the BitLocker Recovery Password Viewer for Active Directory Users and Computers tool.

-   [Record the name of the user's computer](#bkmk-recordcomputername)
-   [Verify the user's identity](#bkmk-verifyidentity)
-   [Locate the recovery password in AD DS](#bkmk-locatepassword)
-   [Gather information to determine why recovery occurred](#bkmk-gatherinfo)
-   [Give the user the recovery password](#bkmk-givepassword)

### <a href="" id="bkmk-recordcomputername"></a>Record the name of the user's computer

You can use the name of the user's computer to locate the recovery password in AD DS. If the user does not know the name of the computer, ask the user to read the first word of the **Drive Label** in the **BitLocker Drive Encryption Password Entry** user interface. This is the computer name when BitLocker was enabled and is probably the current name of the computer.

### <a href="" id="bkmk-verifyidentity"></a>Verify the user's identity

You should verify that the person that is asking for the recovery password is truly the authorized user of that computer. You may also wish to verify that the computer with the name the user provided belongs to the user.

### <a href="" id="bkmk-locatepassword"></a>Locate the recovery password in AD DS

Locate the Computer object with the matching name in AD DS. Because Computer object names are listed in the AD DS global catalog, you should be able to locate the object even if you have a multi-domain forest.

### Multiple recovery passwords

If multiple recovery passwords are stored under a computer object in AD DS, the name of the BitLocker recovery information object includes the date that the password was created.

If at any time you are unsure what password to provide, or if you think you might be providing the incorrect password, ask the user to read the eight character password ID that is displayed in the recovery console.

Since the password ID is a unique value that is associated with each recovery password stored in AD DS, running a query using this ID will find the correct password to unlock the encrypted volume.

### <a href="" id="bkmk-gatherinfo"></a>Gather information to determine why recovery occurred

Before you give the user the recovery password, you should gather any information that will help determine why the recovery was needed, in order to analyze the root cause during the post-recovery analysis. For more info about post-recovery analysis, see [Post-recovery analysis](#bkmk-planningpostrecovery).

### <a href="" id="bkmk-givepassword"></a>Give the user the recovery password

Because the recovery password is 48 digits long the user may need to record the password by writing it down or typing it on a different computer. If you are using MBAM, the recovery password will be regenerated after it is recovered from the MBAM database to avoid the security risks associated with an uncontrolled password.

>**Note:**  Because the 48-digit recovery password is long and contains a combination of digits, the user might mishear or mistype the password. The boot-time recovery console uses built-in checksum numbers to detect input errors in each 6-digit block of the 48-digit recovery password, and offers the user the opportunity to correct such errors.
 
### <a href="" id="bkmk-planningpostrecovery"></a>Post-recovery analysis

When a volume is unlocked using a recovery password, an event is written to the event log and the platform validation measurements are reset in the TPM to match the current configuration. Unlocking the volume means that the encryption key has been released and is ready for on-the-fly encryption
when data is written to the volume, and on-the-fly decryption when data is read from the volume. After the volume is unlocked, BitLocker behaves the same way, regardless of how the access was granted.

If you notice that a computer is having repeated recovery password unlocks, you might want to have an administrator can perform post-recovery analysis to determine the root cause of the recovery and refresh BitLocker platform validation so that the user no longer needs to enter a recovery password each time that the computer starts up. See:

-   [Determine the root cause of the recovery](#bkmk-determinecause)
-   [Refresh BitLocker protection](#bkmk-refreshprotection)

### <a href="" id="bkmk-determinecause"></a>Determine the root cause of the recovery

If a user needed to recover the drive, it is important to determine the root cause that initiated the recovery as soon as possible. Properly analyzing the state of the computer and detecting tampering may reveal threats that have broader implications for enterprise security.

While an administrator can remotely investigate the cause of recovery in some cases, the end user might need to bring the computer that contains the recovered drive on site to analyze the root cause further.

Review and answer the following questions for your organization:

1.  What BitLocker protection mode is in effect (TPM, TPM + PIN, TPM + startup key, startup key only)? Which PCR profile is in use on the PC?
2.  Did the user merely forget the PIN or lose the startup key? If a token was lost, where might the token be?
3.  If TPM mode was in effect, was recovery caused by a boot file change?
4.  If recovery was caused by a boot file change, is this due to an intended user action (for example, BIOS upgrade), or to malicious software?
5.  When was the user last able to start the computer successfully, and what might have happened to the computer since then?
6.  Might the user have encountered malicious software or left the computer unattended since the last successful startup?

To help you answer these questions, use the BitLocker command-line tool to view the current configuration and protection mode (for example, **manage-bde -status**). Scan the event log to find events that help indicate why recovery was initiated (for example, if boot file change occurred). Both of these capabilities can be performed remotely.

### <a href="" id="bkmk-refreshprotection"></a>Resolve the root cause

After you have identified what caused recovery, you can reset BitLocker protection and avoid recovery on every startup.

The details of this reset can vary according to the root cause of the recovery. If you cannot determine the root cause, or if malicious software or a rootkit might have infected the computer, Helpdesk should apply best-practice virus policies to react appropriately.

>**Note:**  You can perform a BitLocker validation profile reset by suspending and resuming BitLocker.
 
-   [Unknown PIN](#bkmk-unknownpin)
-   [Lost startup key](#bkmk-loststartup)
-   [Changes to boot files](#bkmk-changebootknown)
### <a href="" id="bkmk-unknownpin"></a>Unknown PIN

If a user has forgotten the PIN, you must reset the PIN while you are logged on to the computer in order to prevent BitLocker from initiating recovery each time the computer is restarted.

**To prevent continued recovery due to an unknown PIN**

1.  Unlock the computer using the recovery password.
2.  Reset the PIN:
    1.  Right-click the drive and then click **Change PIN**
    2.  In the BitLocker Drive Encryption dialog, click **Reset a forgotten PIN**. If you are not logged in with an administrator account you must provide administrative credentials at this time.
    3.  In the PIN reset dialog, provide and confirm the new PIN to use and then click **Finish**.
3.  You will use the new PIN the next time you unlock the drive.

### <a href="" id="bkmk-loststartup"></a>Lost startup key

If you have lost the USB flash drive that contains the startup key, then you must unlock the drive by using the recovery key and then create a new startup key.

**To prevent continued recovery due to a lost startup key**

1.  Log on as an administrator to the computer that has the lost startup key.
2.  Open Manage BitLocker.
3.  Click **Duplicate start up key**, insert the clean USB drive on which you are going to write the key and then click **Save**.

### <a href="" id="bkmk-changebootknown"></a>Changes to boot files

This error might occur if you updated the firmware. As a best practice you should suspend BitLocker before making changes the firmware and then resume protection after the update has completed. This prevents the computer from going into recovery mode. However if changes were made when BitLocker protection was on you can simply log on to the computer using the recovery password and the platform validation profile will be updated so that recovery will not occur the next time.

## Windows RE and BitLocker Device Encryption

Windows Recovery Environment (RE) can be used to recover access to a drive protected by [BitLocker Device Encryption](bitlocker-device-encryption-overview-windows-10.md). If a PC is unable to boot after two failures, Startup Repair will automatically start. When Startup Repair is launched automatically due to boot failures, it will only execute operating system and driver file repairs, provided that the boot logs or any available crash dump point to a specific corrupted file. In Windows 8.1 and later, devices that include firmware to support specific TPM measurements for PCR\[7\] the TPM can validate that Windows RE is a trusted operating environment and will unlock any BitLocker-protected drives if Windows RE has not been modified. If the Windows RE environment has been modified, for example the TPM has been disabled, the drives will stay locked until the BitLocker recovery key is provided. If Startup Repair is not able to be run automatically from the PC and instead Windows RE is manually started from a repair disk, the BitLocker recovery key must be provided to unlock the BitLocker–protected drives.

## <a href="" id="bkmk-usingaddrecovery"></a>Using additional recovery information

Besides the 48-digit BitLocker recovery password, other types of recovery information are stored in Active Directory. This section describes how this additional information can be used.

### BitLocker key package

If the recovery methods discussed earlier in this document do not unlock the volume, you can use the BitLocker Repair tool to decrypt the volume at the block level. The tool uses the BitLocker key package to help recover encrypted data from severely damaged drives. You can then use this recovered data to salvage encrypted data, even after the correct recovery password has failed to unlock the damaged volume. We recommend that you still save the recovery password. A key package cannot be used without the corresponding recovery password.

>**Note:**  You must use the BitLocker Repair tool **repair-bde** to use the BitLocker key package.
 
The BitLocker key package is not saved by default. To save the package along with the recovery password in AD DS you must select the **Backup recovery password and key package** option in the Group Policy settings that control the recovery method. You can also export the key package from a working volume. For more details on how to export key packages, see [Retrieving the BitLocker Key Package](#bkmk-appendixc).

## <a href="" id="bkmk-appendixb"></a>Resetting recovery passwords

You should invalidate a recovery password after it has been provided and used. It should also be done when you intentionally want to invalidate an existing recovery password for any reason.

You can reset the recovery password in two ways:

-   **Use manage-bde** You can use manage-bde to remove the old recovery password and add a new recovery password. The procedure identifies the command and the syntax for this method.
-   **Run a script** You can run a script to reset the password without decrypting the volume. The sample script in the procedure illustrates this functionality. The sample script creates a new recovery password and invalidates all other passwords.

**To reset a recovery password using manage-bde**

1.  Remove the previous recovery password

    ``` syntax
    Manage-bde –protectors –delete C: –type RecoveryPassword
    ```

2.  Add the new recovery password

    ``` syntax
    Manage-bde –protectors –add C: -RecoveryPassword

    ```

3.  Get the ID of the new recovery password. From the screen copy the ID of the recovery password.

    ``` syntax
    Manage-bde –protectors –get C: -Type RecoveryPassword

    ```
4.  Backup the new recovery password to AD DS

    ``` syntax
    Manage-bde –protectors –adbackup C: -id {EXAMPLE6-5507-4924-AA9E-AFB2EB003692}
    ```
    >**Warning:**  You must include the braces in the ID string.
     
**To run the sample recovery password script**

1.  Save the following sample script in a VBScript file. For example: ResetPassword.vbs.
2.  At the command prompt, type a command similar to the following:

    **cscript ResetPassword.vbs**

>**Important:**  This sample script is configured to work only for the C volume. You must customize the script to match the volume where you want to test password reset.
 
> **Note:**  To manage a remote computer, you can specify the remote computer name rather than the local computer name.
 
You can use the following sample script to create a VBScript file to reset the recovery passwords.

``` syntax
' Target drive letter
strDriveLetter = "c:"
' Target computer name
' Use "." to connect to the local computer
strComputerName = "."
' --------------------------------------------------------------------------------
' Connect to the BitLocker WMI provider class
' --------------------------------------------------------------------------------
strConnectionStr = "winmgmts:" _
                 & "{impersonationLevel=impersonate,authenticationLevel=pktPrivacy}!\\" _
                 & strComputerName _
                 & "\root\cimv2\Security\MicrosoftVolumeEncryption"


On Error Resume Next 'handle permission errors
Set objWMIService = GetObject(strConnectionStr)
If Err.Number <> 0 Then
     WScript.Echo "Failed to connect to the BitLocker interface (Error 0x" & Hex(Err.Number) & ")."
     Wscript.Echo "Ensure that you are running with administrative privileges."
     WScript.Quit -1
End If
On Error GoTo 0
strQuery = "Select * from Win32_EncryptableVolume where DriveLetter='" & strDriveLetter & "'"
Set colTargetVolumes = objWMIService.ExecQuery(strQuery)
If colTargetVolumes.Count = 0 Then
    WScript.Echo "FAILURE: Unable to find BitLocker-capable drive " &  strDriveLetter & " on computer " & strComputerName & "."
    WScript.Quit -1
End If
' there should only be one volume found
For Each objFoundVolume in colTargetVolumes
    set objVolume = objFoundVolume
Next
' objVolume is now our found BitLocker-capable disk volume
' --------------------------------------------------------------------------------
' Perform BitLocker WMI provider functionality
' --------------------------------------------------------------------------------
' Add a new recovery password, keeping the ID around so it doesn't get deleted later
' ----------------------------------------------------------------------------------
nRC = objVolume.ProtectKeyWithNumericalPassword("Recovery Password Refreshed By Script", , sNewKeyProtectorID)
If nRC <> 0 Then
WScript.Echo "FAILURE: ProtectKeyWithNumericalPassword failed with return code 0x" & Hex(nRC)
WScript.Quit -1
End If
' Removes the other, "stale", recovery passwords
' ----------------------------------------------------------------------------------
nKeyProtectorTypeIn = 3 ' type associated with "Numerical Password" protector
nRC = objVolume.GetKeyProtectors(nKeyProtectorTypeIn, aKeyProtectorIDs)
If nRC <> 0 Then
WScript.Echo "FAILURE: GetKeyProtectors failed with return code 0x" & Hex(nRC)
WScript.Quit -1
End If
' Delete those key protectors other than the one we just added.
For Each sKeyProtectorID In aKeyProtectorIDs
If sKeyProtectorID <> sNewKeyProtectorID Then
nRC = objVolume.DeleteKeyProtector(sKeyProtectorID)
If nRC <> 0 Then
WScript.Echo "FAILURE: DeleteKeyProtector on ID " & sKeyProtectorID & " failed with return code 0x" & Hex(nRC)
WScript.Quit -1
Else
' no output
'WScript.Echo "SUCCESS: Key protector with ID " & sKeyProtectorID & " deleted"
End If
End If
Next
WScript.Echo "A new recovery password has been added. Old passwords have been removed."
' - some advanced output (hidden)
'WScript.Echo ""
'WScript.Echo "Type ""manage-bde -protectors -get " & strDriveLetter & " -type recoverypassword"" to view existing passwords."
```

## <a href="" id="bkmk-appendixc"></a>Retrieving the BitLocker key package

You can use two methods to retrieve the key package, as described in [Using Additional Recovery Information](#bkmk-usingaddrecovery):

-   **Export a previously-saved key package from AD DS.** You must have Read access to BitLocker recovery passwords that are stored in AD DS.
-   **Export a new key package from an unlocked, BitLocker-protected volume.** You must have local administrator access to the working volume, before any damage has occurred.

The following sample script exports all previously-saved key packages from AD DS.

**To run the sample key package retrieval script**

1.  Save the following sample script in a VBScript file. For example: GetBitLockerKeyPackageADDS.vbs.
2.  At the command prompt, type a command similar to the following:

    **cscript GetBitLockerKeyPackageADDS.vbs -?**

You can use the following sample script to create a VBScript file to retrieve the BitLocker key package from AD DS.

``` syntax
' --------------------------------------------------------------------------------
' Usage
' --------------------------------------------------------------------------------
Sub ShowUsage
   Wscript.Echo "USAGE: GetBitLockerKeyPackageADDS [Path To Save Key Package] [Optional Computer Name]"
   Wscript.Echo "If no computer name is specified, the local computer is assumed."
   Wscript.Echo
   Wscript.Echo "Example: GetBitLockerKeyPackageADDS E:\bitlocker-ad-key-package mycomputer"
   WScript.Quit
End Sub
' --------------------------------------------------------------------------------
' Parse Arguments
' --------------------------------------------------------------------------------
Set args = WScript.Arguments
Select Case args.Count
  Case 1
    If args(0) = "/?" Or args(0) = "-?" Then
    ShowUsage
    Else
      strFilePath = args(0)
      ' Get the name of the local computer
      Set objNetwork = CreateObject("WScript.Network")
      strComputerName = objNetwork.ComputerName
    End If

  Case 2
    If args(0) = "/?" Or args(0) = "-?" Then
      ShowUsage
    Else
      strFilePath = args(0)
      strComputerName = args(1)
    End If
  Case Else
    ShowUsage
End Select
' --------------------------------------------------------------------------------
' Get path to Active Directory computer object associated with the computer name
' --------------------------------------------------------------------------------
Function GetStrPathToComputer(strComputerName)
    ' Uses the global catalog to find the computer in the forest
    ' Search also includes deleted computers in the tombstone
    Set objRootLDAP = GetObject("LDAP://rootDSE")
    namingContext = objRootLDAP.Get("defaultNamingContext") ' e.g. string dc=fabrikam,dc=com
    strBase = "<GC://" & namingContext & ">"

    Set objConnection = CreateObject("ADODB.Connection")
    Set objCommand = CreateObject("ADODB.Command")
    objConnection.Provider = "ADsDSOOBject"
    objConnection.Open "Active Directory Provider"
    Set objCommand.ActiveConnection = objConnection
    strFilter = "(&(objectCategory=Computer)(cn=" &  strComputerName & "))"
    strQuery = strBase & ";" & strFilter  & ";distinguishedName;subtree"
    objCommand.CommandText = strQuery
    objCommand.Properties("Page Size") = 100
    objCommand.Properties("Timeout") = 100
    objCommand.Properties("Cache Results") = False
    ' Enumerate all objects found.
    Set objRecordSet = objCommand.Execute
    If objRecordSet.EOF Then
      WScript.echo "The computer name '" &  strComputerName & "' cannot be found."
      WScript.Quit 1
    End If
    ' Found object matching name
    Do Until objRecordSet.EOF
      dnFound = objRecordSet.Fields("distinguishedName")
      GetStrPathToComputer = "LDAP://" & dnFound
      objRecordSet.MoveNext
    Loop
    ' Clean up.
    Set objConnection = Nothing
    Set objCommand = Nothing
    Set objRecordSet = Nothing
End Function
' --------------------------------------------------------------------------------
' Securely access the Active Directory computer object using Kerberos
' --------------------------------------------------------------------------------
Set objDSO = GetObject("LDAP:")
strPathToComputer = GetStrPathToComputer(strComputerName)
WScript.Echo "Accessing object: " + strPathToComputer
Const ADS_SECURE_AUTHENTICATION = 1
Const ADS_USE_SEALING = 64 '0x40
Const ADS_USE_SIGNING = 128 '0x80
' --------------------------------------------------------------------------------
' Get all BitLocker recovery information from the Active Directory computer object
' --------------------------------------------------------------------------------
' Get all the recovery information child objects of the computer object
Set objFveInfos = objDSO.OpenDSObject(strPathToComputer, vbNullString, vbNullString, _
                                   ADS_SECURE_AUTHENTICATION + ADS_USE_SEALING + ADS_USE_SIGNING)
objFveInfos.Filter = Array("msFVE-RecoveryInformation")
' Iterate through each recovery information object and saves any existing key packages
nCount = 1
strFilePathCurrent = strFilePath & nCount
For Each objFveInfo in objFveInfos
   strName = objFveInfo.Get("name")
   strRecoveryPassword = objFveInfo.Get("msFVE-RecoveryPassword")
   strKeyPackage = objFveInfo.Get("msFVE-KeyPackage")
   WScript.echo
   WScript.echo "Recovery Object Name: " + strName
   WScript.echo "Recovery Password: " + strRecoveryPassword
   ' Validate file path
   Set fso = CreateObject("Scripting.FileSystemObject")
   If (fso.FileExists(strFilePathCurrent)) Then
 WScript.Echo "The file " & strFilePathCurrent & " already exists. Please use a different path."
WScript.Quit -1
   End If
   ' Save binary data to the file
   SaveBinaryDataText strFilePathCurrent, strKeyPackage

   WScript.echo "Related key package successfully saved to " + strFilePathCurrent
   ' Update next file path using base name
   nCount = nCount + 1
   strFilePathCurrent = strFilePath & nCount
Next
'----------------------------------------------------------------------------------------
' Utility functions to save binary data
'----------------------------------------------------------------------------------------
Function SaveBinaryDataText(FileName, ByteArray)
  'Create FileSystemObject object
  Dim FS: Set FS = CreateObject("Scripting.FileSystemObject")

  'Create text stream object
  Dim TextStream
  Set TextStream = FS.CreateTextFile(FileName)

  'Convert binary data To text And write them To the file
  TextStream.Write BinaryToString(ByteArray)
End Function
Function BinaryToString(Binary)
  Dim I, S
  For I = 1 To LenB(Binary)
    S = S & Chr(AscB(MidB(Binary, I, 1)))
  Next
  BinaryToString = S
End Function
WScript.Quit
```

The following sample script exports a new key package from an unlocked, encrypted volume.

**To run the sample key package retrieval script**

1. Save the following sample script in a VBScript file. For example: GetBitLockerKeyPackage.vbs
2. Open an administrator command prompt, type a command similar to the following:

    **cscript GetBitLockerKeyPackage.vbs  -?**

``` syntax
' --------------------------------------------------------------------------------
' Usage
' --------------------------------------------------------------------------------
Sub ShowUsage
   Wscript.Echo "USAGE: GetBitLockerKeyPackage [VolumeLetter/DriveLetter:] [Path To Save Key Package]"
   Wscript.Echo
   Wscript.Echo "Example: GetBitLockerKeyPackage C: E:\bitlocker-backup-key-package"
   WScript.Quit
End Sub
' --------------------------------------------------------------------------------
' Parse Arguments
' --------------------------------------------------------------------------------
Set args = WScript.Arguments
Select Case args.Count
  Case 2
    If args(0) = "/?" Or args(0) = "-?" Then
      ShowUsage
    Else
      strDriveLetter = args(0)
      strFilePath = args(1)
    End If
  Case Else
    ShowUsage
End Select
' --------------------------------------------------------------------------------
' Other Inputs
' --------------------------------------------------------------------------------
' Target computer name
' Use "." to connect to the local computer
strComputerName = "."
' Default key protector ID to use. Specify "" to let the script choose.
strDefaultKeyProtectorID = ""
' strDefaultKeyProtectorID = "{001298E0-870E-4BA0-A2FF-FC74758D5720}"  ' sample
' --------------------------------------------------------------------------------
' Connect to the BitLocker WMI provider class
' --------------------------------------------------------------------------------
strConnectionStr = "winmgmts:" _
                 & "{impersonationLevel=impersonate,authenticationLevel=pktPrivacy}!\\" _
                 & strComputerName _
                 & "\root\cimv2\Security\MicrosoftVolumeEncryption"


On Error Resume Next 'handle permission errors
Set objWMIService = GetObject(strConnectionStr)
If Err.Number <> 0 Then
     WScript.Echo "Failed to connect to the BitLocker interface (Error 0x" & Hex(Err.Number) & ")."
     Wscript.Echo "Ensure that you are running with administrative privileges."
     WScript.Quit -1
End If
On Error GoTo 0
strQuery = "Select * from Win32_EncryptableVolume where DriveLetter='" & strDriveLetter & "'"
Set colTargetVolumes = objWMIService.ExecQuery(strQuery)
If colTargetVolumes.Count = 0 Then
    WScript.Echo "FAILURE: Unable to find BitLocker-capable drive " &  strDriveLetter & " on computer " & strComputerName & "."
    WScript.Quit -1
End If
' there should only be one volume found
For Each objFoundVolume in colTargetVolumes
    set objVolume = objFoundVolume
Next
' objVolume is now our found BitLocker-capable disk volume
' --------------------------------------------------------------------------------
' Perform BitLocker WMI provider functionality
' --------------------------------------------------------------------------------
' Collect all possible valid key protector ID's that can be used to get the package
' ----------------------------------------------------------------------------------
nNumericalKeyProtectorType = 3 ' type associated with "Numerical Password" protector
nRC = objVolume.GetKeyProtectors(nNumericalKeyProtectorType, aNumericalKeyProtectorIDs)
If nRC <> 0 Then
WScript.Echo "FAILURE: GetKeyProtectors failed with return code 0x" & Hex(nRC)
WScript.Quit -1
End If
nExternalKeyProtectorType = 2 ' type associated with "External Key" protector
nRC = objVolume.GetKeyProtectors(nExternalKeyProtectorType, aExternalKeyProtectorIDs)
If nRC <> 0 Then
WScript.Echo "FAILURE: GetKeyProtectors failed with return code 0x" & Hex(nRC)
WScript.Quit -1
End If
' Get first key protector of the type "Numerical Password" or "External Key", if any
' ----------------------------------------------------------------------------------
if strDefaultKeyProtectorID = "" Then
' Save first numerical password, if exists
If UBound(aNumericalKeyProtectorIDs) <> -1 Then
strDefaultKeyProtectorID = aNumericalKeyProtectorIDs(0)
End If
' No numerical passwords exist, save the first external key
If strDefaultKeyProtectorID = "" and UBound(aExternalKeyProtectorIDs) <> -1 Then
strDefaultKeyProtectorID = aExternalKeyProtectorIDs(0)
End If
' Fail case: no recovery key protectors exist.
If strDefaultKeyProtectorID = "" Then
WScript.Echo "FAILURE: Cannot create backup key package because no recovery passwords or recovery keys exist. Check that BitLocker protection is on for this drive."
WScript.Echo "For help adding recovery passwords or recovery keys, type ""manage-bde -protectors -add -?""."
WScript.Quit -1
End If
End If
' Get some information about the chosen key protector ID
' ----------------------------------------------------------------------------------
' is the type valid?
nRC = objVolume.GetKeyProtectorType(strDefaultKeyProtectorID, nDefaultKeyProtectorType)
If Hex(nRC) = "80070057" Then
WScript.Echo "The key protector ID " & strDefaultKeyProtectorID & " is not valid."
WScript.Echo "This ID value may have been provided by the script writer."
ElseIf nRC <> 0 Then
WScript.Echo "FAILURE: GetKeyProtectorType failed with return code 0x" & Hex(nRC)
WScript.Quit -1
End If
' what's a string that can be used to describe it?
strDefaultKeyProtectorType = ""
Select Case nDefaultKeyProtectorType
  Case nNumericalKeyProtectorType
      strDefaultKeyProtectorType = "recovery password"
  Case nExternalKeyProtectorType
      strDefaultKeyProtectorType = "recovery key"
  Case Else
      WScript.Echo "The key protector ID " & strDefaultKeyProtectorID & " does not refer to a valid recovery password or recovery key."
      WScript.Echo "This ID value may have been provided by the script writer."
End Select
' Save the backup key package using the chosen key protector ID
' ----------------------------------------------------------------------------------
nRC = objVolume.GetKeyPackage(strDefaultKeyProtectorID, oKeyPackage)
If nRC <> 0 Then
WScript.Echo "FAILURE: GetKeyPackage failed with return code 0x" & Hex(nRC)
WScript.Quit -1
End If
' Validate file path
Set fso = CreateObject("Scripting.FileSystemObject")
If (fso.FileExists(strFilePath)) Then
WScript.Echo "The file " & strFilePath & " already exists. Please use a different path."
WScript.Quit -1
End If
Dim oKeyPackageByte, bKeyPackage
For Each oKeyPackageByte in oKeyPackage
  'WScript.echo "key package byte: " & oKeyPackageByte
  bKeyPackage = bKeyPackage & ChrB(oKeyPackageByte)
Next
' Save binary data to the file
SaveBinaryDataText strFilePath, bKeyPackage
' Display helpful information
' ----------------------------------------------------------------------------------
WScript.Echo "The backup key package has been saved to " & strFilePath & "."
WScript.Echo "IMPORTANT: To use this key package, the " & strDefaultKeyProtectorType & " must also be saved."
' Display the recovery password or a note about saving the recovery key file
If nDefaultKeyProtectorType = nNumericalKeyProtectorType Then
nRC = objVolume.GetKeyProtectorNumericalPassword(strDefaultKeyProtectorID, sNumericalPassword)
If nRC <> 0 Then
WScript.Echo "FAILURE: GetKeyProtectorNumericalPassword failed with return code 0x" & Hex(nRC)
WScript.Quit -1
End If
WScript.Echo "Save this recovery password: " & sNumericalPassword
ElseIf nDefaultKeyProtectorType = nExternalKeyProtectorType Then
WScript.Echo "The saved key file is named " & strDefaultKeyProtectorID & ".BEK"
WScript.Echo "For help re-saving this external key file, type ""manage-bde -protectors -get -?"""
End If
'----------------------------------------------------------------------------------------
' Utility functions to save binary data
'----------------------------------------------------------------------------------------
Function SaveBinaryDataText(FileName, ByteArray)
  'Create FileSystemObject object
  Dim FS: Set FS = CreateObject("Scripting.FileSystemObject")

  'Create text stream object
  Dim TextStream
  Set TextStream = FS.CreateTextFile(FileName)

  'Convert binary data To text And write them To the file
  TextStream.Write BinaryToString(ByteArray)
End Function
Function BinaryToString(Binary)
  Dim I, S
  For I = 1 To LenB(Binary)
    S = S & Chr(AscB(MidB(Binary, I, 1)))
  Next
  BinaryToString = S
End Function
```

## See also

-   [BitLocker overview](bitlocker-overview.md)
 
 
