---
title: BitLocker - How to enable Network Unlock (Windows 10)
description: This article for the IT professional describes how BitLocker Network Unlock works and how to configure it.
ms.assetid: be45bc28-47db-4931-bfec-3c348151d2e9
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
ms.custom: bitlocker
---

# BitLocker: How to enable Network Unlock

**Applies to**
-   Windows 10

This article for IT professionals describes how BitLocker Network Unlock works and how to configure it.

Network Unlock was introduced in Windows 8 and Windows Server 2012 as a BitLocker protector option for operating system volumes. Network Unlock helps you manage BitLocker-enabled desktops and servers in a domain environment by automatically unlocking operating system volumes when the system is rebooted and is connected to a wired corporate network. This feature requires the client hardware to have a DHCP driver implemented in its UEFI firmware.

Without Network Unlock, operating system volumes that use TPM+PIN protectors require a PIN when a computer reboots or resumes after hibernation (for example, by Wake on LAN). For enterprises, this setup can make software patches difficult to roll out to unattended desktops and remotely administered servers.

Network Unlock allows BitLocker-enabled systems that use TPM+PIN and that meet the hardware requirements to boot into Windows without user intervention. Network Unlock works like the TPM+StartupKey at boot. But the StartupKey doesn't need to be read from USB media. Instead, the key for Network Unlock is composed from a key that's stored in the TPM and an encrypted network key that's sent to the server. It's decrypted and returned to the client in a secure session.

## <a href="" id="bkmk-nunlockcorereqs"></a>Network Unlock core requirements

Network Unlock requires the following mandatory hardware and software configurations before it can automatically unlock domain-joined systems:

-   You must be running at least Windows 8 or Windows Server 2012.
-   Any supported operating system that uses UEFI DHCP drivers can be a Network Unlock client.
-   Network Unlock clients must have a TPM (trusted platform module) chip and at least one TPM protector.
-   You must have a server running the Windows Deployment Services (WDS) role on any supported server operating system.
-   The BitLocker Network Unlock optional feature can be installed on any supported server operating system.
-   You must have a DHCP server, separate from the WDS server.
-   You must have a properly configured public/private key pairing.
-   Network Unlock Group Policy settings must be configured.

The network stack must be enabled to use the Network Unlock feature. Equipment manufacturers deliver their products in various states and with different BIOS menus. So confirm that the network stack has been enabled in the BIOS before you start the computer.

> [!NOTE]
> To properly support DHCP within UEFI, the UEFI-based system should be in native mode and shouldn't have a compatibility support module (CSM) enabled.

On computers that run Windows 8 and later, the first network adapter on the computer, usually the onboard adapter, must be configured to support DHCP. This adapter must be used for Network Unlock. 

Use this configuration especially when you have multiple adapters and you want to configure one without DHCP, such as for a lights-out management protocol. The configuration is necessary because Network Unlock stops enumerating adapters when it reaches an adapter that has a DHCP port that has failed for any reason. So if the first enumerated adapter doesn't support DHCP, isn't plugged into the network, or fails to report availability of the DHCP port for any reason, then Network Unlock will fail.
 
On supported versions of Windows Server 2012 and later, the Network Unlock server component installs as a Windows feature. It uses Server Manager or Windows PowerShell cmdlets. In Server Manager, the feature name is BitLocker Network Unlock. In Windows PowerShell, the feature name is BitLocker-NetworkUnlock. This feature is a core requirement.

Network Unlock requires WDS in the environment where the feature will be used. Configuration of the WDS installation isn't required. But the WDS service must be running on the server.

The network key is stored on the system drive along with an AES 256 session key. It's encrypted with the 2048-bit RSA public key of the unlock server's certificate. The network key is decrypted with the help of a provider on a supported version of Windows Server that's running WDS. The network key is returned encrypted with its corresponding session key.

## <a href="" id="bkmk-networkunlockseq"></a>Network Unlock sequence

The unlock sequence starts on the client side, when the Windows boot manager detects the existence of the Network Unlock protector. It uses the DHCP driver in UEFI to get an IP address for IPv4. Then it broadcasts a vendor-specific DHCP request that contains the network key and a session key for the reply, all encrypted by the server's Network Unlock certificate, as described earlier. The Network Unlock provider on the supported WDS server recognizes the vendor-specific request, decrypts it with the RSA private key, and returns the network key encrypted with the session key via its own vendor-specific DHCP reply.

On the server side, the WDS server role has an optional plug-in component, like a PXE (preboot execution environment) provider. The plug-in component handles the incoming Network Unlock requests. The provider can also be configured with subnet restrictions. These restrictions require the IP address that's provided by the client in the Network Unlock request to belong to a permitted subnet in order to release the network key to the client. If the Network Unlock provider is unavailable, then BitLocker fails over to the next available protector to unlock the drive. So in a typical configuration, the standard TPM+PIN unlock screen is presented to unlock the drive.

The server-side configuration to enable Network Unlock requires provisioning a 2048-bit RSA public/private key pair in the form of an X.509 certificate. The configuration also requires the public key certificate to be distributed to the clients. 

Manage and deploy this certificate through the Group Policy editor directly on a domain controller that has a domain functional level of at least Windows Server 2012. This certificate is the public key that encrypts the intermediate network key. The intermediate network key is one of the two secrets that are required to unlock the drive; the other secret is stored in the TPM.

![Diagram showing the BitLocker network unlock sequence.](images/bitlockernetworkunlocksequence.png)

The Network Unlock process follows these phases:

1.  The Windows boot manager detects a Network Unlock protector in the BitLocker configuration.
2.  The client computer uses its DHCP driver in the UEFI to get a valid IPv4 IP address.
3.  The client computer broadcasts a vendor-specific DHCP request that contains: 
    - A network key (a 256-bit intermediate key) that's encrypted by the 2048-bit RSA public key of the Network Unlock certificate from the WDS server.
    - An AES-256 session key for the reply.
4.  The Network Unlock provider on the WDS server recognizes the vendor-specific request.
5.  The provider decrypts the request by using the WDS server's BitLocker Network Unlock certificate RSA private key.
6.  The WDS provider returns the network key encrypted with the session key by using its own vendor-specific DHCP reply to the client computer. This key is an intermediate key.
7.  The returned intermediate key is combined with another local 256-bit intermediate key. This key can be decrypted only by the TPM.
8.  This combined key is used to create an AES-256 key that unlocks the volume.
9.  Windows continues the boot sequence.

## <a href="" id="bkmk-configuringnetworkunlock"></a>Configure Network Unlock

The following steps allow an administrator to configure Network Unlock in a domain where the functional level is at least Windows Server 2012.

### <a href="" id="bkmk-installwdsrole"></a>Install the WDS server role

The BitLocker Network Unlock feature installs the WDS role if it's not already installed. If you want to install it separately before you install BitLocker Network Unlock, use Server Manager or Windows PowerShell. To install the role in Server Manager, select the **Windows Deployment Services** role.

To install the role by using Windows PowerShell, use the following command:

```powershell
Install-WindowsFeature WDS-Deployment
```

Configure the WDS server so that it can communicate with DHCP (and optionally Active Directory Domain Services) and the client computer. Use the WDS management tool, `wdsmgmt.msc`. This tool starts the Windows Deployment Services Configuration Wizard.

### <a href="" id="bkmk-confirmwdsrunning"></a>Confirm the WDS service is running

To confirm the WDS service is running, use the Services Management console or Windows PowerShell. To confirm the service is running in the Services Management console, open the console by using `services.msc`. Then check the status of the WDS service.

To confirm the service is running by using Windows PowerShell, use the following command:

```powershell
Get-Service WDSServer
```
### <a href="" id="bkmk-installnufeature"></a>Install the Network Unlock feature

To install the Network Unlock feature, use Server Manager or Windows PowerShell. To install the feature in the Server Manager console, select **BitLocker Network Unlock**.

To install the feature by using Windows PowerShell, use the following command:

```powershell
Install-WindowsFeature BitLocker-NetworkUnlock
```
### <a href="" id="bkmk-createcerttmpl"></a>Create the certificate template for Network Unlock

A properly configured Active Directory Services Certification Authority can use the certificate template to create and issue Network Unlock certificates. To create a certificate template:

1.  Open the certificate template snap-in (`certtmpl.msc`).
2.  Locate the user template. Right-click the template name, and then select **Duplicate Template**.
3.  On the **Compatibility** tab, change the **Certification Authority** and **Certificate recipient** fields to **Windows Server 2012** and **Windows 8**, respectively. Ensure **Show resulting changes** is selected.
4.  Select the **General** tab of the template. The **Template display name** and **Template name** should clearly identify that the template will be used for Network Unlock. Clear the check box for **Publish certificate in Active Directory**.
5.  Select the **Request Handling** tab. In the **Purpose** drop-down menu, select **Encryption**. Ensure the **Allow private key to be exported** option is selected.
6.  Select the **Cryptography** tab. Set the **Minimum key size** to **2048**. (For this template, you can use any Microsoft cryptographic provider that supports RSA. But for simplicity and forward compatibility, we recommend using **Microsoft Software Key Storage Provider**.)
7.  Select **Requests must use one of the following providers**. Then clear all options except for your selected cryptography provider, such as the **Microsoft Software Key Storage Provider**.
8.  Select the **Subject Name** tab. Select **Supply in the request**. If the certificate templates dialog box appears, select **OK**.
9.  Select the **Issuance Requirements** tab. Then select both **CA certificate manager approval** and **Valid existing certificate**.
10. Select the **Extensions** tab. Then select **Application Policies** > **Edit**.
11. In the **Edit Application Policies Extension** dialog box, select **Client Authentication**, **Encrypting File System**, and **Secure Email**. Then choose **Remove**.
12. In the **Edit Application Policies Extension** dialog box, select **Add**.
13. In the **Add Application Policy** dialog box, select **New**. In the **New Application Policy** dialog box, enter the following information in the space provided, and then select **OK** to create the BitLocker Network Unlock application policy.

    -   **Name**: **BitLocker Network Unlock**
    -   **Object Identifier**: **1.3.6.1.4.1.311.67.1.1**

14. Select the newly created **BitLocker Network Unlock** application policy, and then select **OK**.
15. With the **Extensions** tab still open, select **Edit Key Usage Extension**, and then select **Allow key exchange only with key encryption (key encipherment)**. Then select **Make this extension critical**.
16. Select the **Security** tab. Confirm that the **Domain Admins** group has been granted **Enroll** permission.
17. Select **OK** to complete configuration of the template.

To add the Network Unlock template to the certificate authority, open the certificate authority snap-in (`certsrv.msc`). Right-click **Certificate Templates**, and then choose **New, Certificate Template to issue**. Select the previously created BitLocker Network Unlock certificate.

After you add the Network Unlock template to the certificate authority, you can use this certificate to configure BitLocker Network Unlock.

### <a href="" id="bkmk-createcert"></a>Create the Network Unlock certificate

Network Unlock can use imported certificates from an existing public key infrastructure (PKI). Or it can use a self-signed certificate.

To enroll a certificate from an existing certificate authority:

1.  On the WDS server, open Certificate Manager by using `certmgr.msc`.
2.  Under **Certificates - Current User**, right-click **Personal**.
3.  Select **All Tasks** > **Request New Certificate**.
4.  When the Certificate Enrollment wizard opens, select **Next**.
5.  Select **Active Directory Enrollment Policy**.
6.  Choose the certificate template that was created for Network Unlock on the domain controller. Then select **Enroll**. 
1. When you're prompted for more information, select **Subject Name** and provide a friendly name value. Your friendly name should include information for the domain or organizational unit for the certificate. Here's an example: *BitLocker Network Unlock Certificate for Contoso domain*.
7.  Create the certificate. Ensure the certificate appears in the **Personal** folder.
8.  Export the public key certificate for Network Unlock:

    1.  Create a *.cer* file by right-clicking the previously created certificate and choosing **All Tasks** > **Export**.
    2.  Select **No, do not export the private key**.
    3.  Select **DER encoded binary X.509**, and then finish exporting the certificate to a file.
    4.  Give the file a name, such as *BitLocker-NetworkUnlock.cer*.
9.  Export the public key with a private key for Network Unlock:
    1.  Create a *.pfx* file by right-clicking the previously created certificate. Then choose **All Tasks** > **Export**.
    2.  Select **Yes, export the private key**.
    3.  Complete the steps to create the *.pfx* file.

To create a self-signed certificate, either use the `New-SelfSignedCertificate` cmdlet in Windows PowerShell or use `certreq`.

Here's a Windows PowerShell example:

```powershell
New-SelfSignedCertificate -CertStoreLocation Cert:\LocalMachine\My -Subject "CN=BitLocker Network Unlock certificate" -Provider "Microsoft Software Key Storage Provider" -KeyUsage KeyEncipherment -KeyUsageProperty Decrypt,Sign -KeyLength 2048 -HashAlgorithm sha512 -TextExtension @("1.3.6.1.4.1.311.21.10={text}OID=1.3.6.1.4.1.311.67.1.1","2.5.29.37={text}1.3.6.1.4.1.311.67.1.1")
```

Here's a `certreq` example:

1.  Create a text file that has an *.inf* extension. For example, *notepad.exe* *BitLocker-NetworkUnlock.inf*.
2.  Add the following contents to the previously created file:

    ```ini
    [NewRequest]
    Subject="CN=BitLocker Network Unlock certificate"
    ProviderType=0
    MachineKeySet=True
    Exportable=true
    RequestType=Cert
    KeyUsage="CERT_KEY_ENCIPHERMENT_KEY_USAGE"
    KeyUsageProperty="NCRYPT_ALLOW_DECRYPT_FLAG | NCRYPT_ALLOW_SIGNING_FLAG"
    KeyLength=2048
    SMIME=FALSE
    HashAlgorithm=sha512
    [Extensions]
    1.3.6.1.4.1.311.21.10 = "{text}"
    _continue_ = "OID=1.3.6.1.4.1.311.67.1.1"
    2.5.29.37 = "{text}"
    _continue_ = "1.3.6.1.4.1.311.67.1.1"
    ```

3.  Open an elevated command prompt and use the `certreq` tool to create a new certificate. Use the following command, specifying the full path to the file that you created previously. Also specify the file name.

    ```cmd
    certreq -new BitLocker-NetworkUnlock.inf BitLocker-NetworkUnlock.cer
    ```

4.  Verify the previous command properly created the certificate by confirming the *.cer* file exists.
5.  Launch **Certificates - Local Machine** by running `certlm.msc`.
6.  Create a *.pfx* file by opening the *Certificates – Local Computer\\Personal\\Certificates* path in the navigation pane. Right-click the previously imported certificate, and then select **All Tasks** > **Export**. Follow through the steps to create the *.pfx* file.

### <a href="" id="bkmk-deploycert"></a>Deploy the private key and certificate to the WDS server

Now that you've created the certificate and key, deploy them to the infrastructure to properly unlock systems. To deploy the certificates:

1.  On the WDS server, open a new Microsoft Management Console (MMC), and then add the certificates snap-in. When you're prompted, select the computer account and local computer.
2.  Right-click **Certificates (Local Computer) - BitLocker Drive Encryption Network Unlock**, and then choose **All Tasks** > **Import**.
3.  In the **File to Import** dialog box, choose the *.pfx* file that you created previously.
4.  Enter the password that you used to create the *.pfx* file, and finish the steps.

### Configure Group Policy settings for Network Unlock

You've now deployed the certificate and key to the WDS server for Network Unlock. In the final step, you'll use Group Policy settings to deploy the public key certificate to computers that you want to be able to unlock by using the Network Unlock key. Find Group Policy settings for BitLocker in *\\Computer Configuration\\Administrative Templates\\Windows Components\\BitLocker Drive Encryption* by using the Local Group Policy Editor or the MMC.

To enable the Group Policy setting that's required to configure Network Unlock:

1.  Open Group Policy Management Console (`gpmc.msc`).
2.  Enable the policy **Require additional authentication at startup**, and then select **Require startup PIN with TPM** or **Allow startup PIN with TPM**.
3.  Turn on BitLocker with TPM+PIN protectors on all domain-joined computers.

To deploy the required Group Policy setting:

> [!NOTE]
> The Group Policy settings **Allow network unlock at startup** and **Add Network Unlock Certificate** were introduced in Windows Server 2012.
 
1.  Copy the *.cer* file that you created for Network Unlock to the domain controller.
2.  On the domain controller, open Group Policy Management Console (`gpmc.msc`).
3.  Create a new Group Policy Object or modify an existing object to enable the **Allow network unlock at startup** setting.
4.  Deploy the public certificate to clients:

    1.  In Group Policy Management Console, go to *Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Public Key Policies\\BitLocker Drive Encryption Network Unlock Certificate*.
    2.  Right-click the folder, and then choose **Add Network Unlock Certificate**.
    3.  Follow the steps and import the *.cer* file that you copied earlier.

    > [!NOTE]
    > Only one network unlock certificate can be available at a time. If you need a new certificate, delete the current certificate before you deploy a new one. The Network Unlock certificate is located in the *HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\SystemCertificates\\FVE\_NKP* key on the client computer.

5. Reboot the clients after you deploy the Group Policy.
   > [!NOTE]
   > The **Network (Certificate Based)** protector is added only after a reboot where the policy is enabled and a valid certificate is present in the FVE_NKP store.
 
### Subnet policy configuration files on the WDS server (optional)

By default, the server unlocks clients that have the correct Network Unlock certificate and valid Network Unlock protectors that have wired access to a Network Unlock-enabled WDS server via DHCP. You can create a subnet policy configuration file on the WDS server to limit the subnets that Network Unlock clients can use for unlocking.

The configuration file, called *bde-network-unlock.ini*, must be located in the same directory as the Network Unlock provider dynamic-link library (*%windir%\System32\Nkpprov.dll*). The configuration file applies to both IPv6 and IPv4 DHCP implementations. If the subnet configuration policy becomes corrupted, then the provider fails and stops responding to requests.

The subnet policy configuration file must use a `[SUBNETS]` section to identify the specific subnets. You can then use the named subnets to specify restrictions in certificate subsections. 

Subnets are defined as simple name-value pairs, in the common INI format. In this format, each subnet has its own line. The name is on the left of the equals sign. The subnet on the right of the equals sign is a Classless Interdomain Routing (CIDR) address or range. The keyword `ENABLED` is disallowed for subnet names.

```ini
[SUBNETS]
SUBNET1=10.185.250.0/24 ; a comment about this subrange could be here, after the semicolon
SUBNET2=10.185.252.200/28 
SUBNET3= 2001:4898:a:2::/64 ; an IPv6 subnet
SUBNET4=2001:4898:a:3::/64; in production, the admin would likely give more useful names, like BUILDING9-EXCEPT-RECEP.
```

Following the `[SUBNETS]` section are sections for each Network Unlock certificate. A certificate is identified by the certificate thumbprint, which is formatted without any spaces. These sections define subnet clients that you can unlock by using that certificate.

> [!NOTE]
> When you specify the certificate thumbprint, don't include spaces. Thumbprints that include spaces aren't recognized as valid. The spaces will cause the subnet configuration to fail.

Each certificate section defines subnet restrictions by denoting the allowed list of permitted subnets. If any subnets are listed in a certificate section, then only those subnets are permitted for that certificate. If no subnet is listed in a certificate section, then all subnets are permitted for that certificate. If a certificate has no section in the subnet policy configuration file, then no subnet unlocking restrictions are applied for that certificate. 

So to apply restrictions to every certificate, you must add a certificate section for every Network Unlock certificate on the server. And you must add an explicit allow list set for each certificate section.

Create subnet lists by putting the name of a subnet from the `[SUBNETS]` section on its own line below the certificate section header. Then, the server will unlock clients that have this certificate only on the subnets that the list specifies. 

To troubleshoot, you can quickly exclude a subnet without deleting it from the section. Just comment it out by using a prepended semicolon.

```ini
[2158a767e1c14e88e27a4c0aee111d2de2eafe60]
;Comments could be added here to indicate when the cert was issued, which Group Policy should get it, and so on.
;This list shows this cert is allowed to unlock clients only on the SUBNET1 and SUBNET3 subnets. In this example, SUBNET2 is commented out.
SUBNET1
;SUBNET2
SUBNET3
```

To disallow the use of a certificate altogether, add a `DISABLED` line to its subnet list.

## <a href="" id="bkmk-turnoffnetworkunlock"></a>Turn off Network Unlock

To turn off the unlock server, you can unregister the PXE provider from the WDS server or uninstall it altogether. However, to stop clients from creating Network Unlock protectors, you should disable the **Allow Network Unlock at startup** Group Policy setting. When you disable this policy setting on client computers, any Network Unlock key protectors on the computer are deleted. Alternatively, you can delete the BitLocker Network Unlock certificate policy on the domain controller to accomplish the same task for an entire domain.

> [!NOTE]
> Removing the FVE_NKP certificate store that contains the Network Unlock certificate and key on the WDS server will also effectively disable the server's ability to respond to unlock requests for that certificate. However, this condition is seen as an error. It's not a supported or recommended method for turning off the Network Unlock server.
 
## <a href="" id="bkmk-updatecerts"></a>Update Network Unlock certificates

To update the certificates that Network Unlock uses, administrators need to import or generate the new certificate for the server. Then they must update the Network Unlock certificate Group Policy setting on the domain controller.

> [!NOTE]
> Servers that don't receive the Group Policy Object (GPO) will require a PIN when they boot. In such cases, find out why the server didn't receive the GPO to update the certificate.

## <a href="" id="bkmk-troubleshoot"></a>Troubleshoot Network Unlock

To troubleshoot Network Unlock problems, begin by verifying the environment. Often, a small configuration issue is the root cause of the failure. Verify these items:

- Client hardware is based on UEFI and uses firmware version 2.3.1, and the UEFI firmware is in native mode and has no compatibility support module (CSM) for BIOS mode enabled. Verify this configuration by ensuring that the firmware has no enabled option such as **Legacy mode** or **Compatibility mode** and that the firmware doesn't appear to be in a BIOS-like mode.
- All required roles and services are installed and started.
- Public and private certificates have been published and are in the proper certificate containers. Verify the presence of the Network Unlock certificate by using Microsoft Management Console (*MMC.exe*) on the WDS server. The certificate snap-ins for the local computer should be enabled. Verify the client certificate by checking the registry key *HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\SystemCertificates\\FVE\_NKP* on the client computer.
- Group Policy for Network Unlock is enabled and linked to the appropriate domains.
- Group Policy is reaching the clients properly. Verify this functionality by using the *GPRESULT.exe* utility or the *RSOP.msc* utility.
- The clients were rebooted after the policy was applied.
- The **Network (Certificate Based)** protector is listed on the client. Check for this protector by using either `manage-bde` or Windows PowerShell cmdlets. For example, the following command lists the key protectors that are currently configured on drive C on the local computer.

  ```powershell
  manage-bde -protectors -get C:
  ```
  > [!NOTE]
  > Use the output of `manage-bde` along with the WDS debug log to determine whether the proper certificate thumbprint is being used for Network Unlock.
 
Gather the following files to troubleshoot BitLocker Network Unlock.

- The Windows event logs. Specifically, get the BitLocker event logs and the Microsoft-Windows-Deployment-Services-Diagnostics-Debug log.

    Debug logging is turned off by default for the WDS server role, so you need to enable it before you can retrieve it. Use either of the following two methods to turn on WDS debug logging.

    - Start an elevated command prompt, and then run the following command:

        ```cmd
        wevtutil sl Microsoft-Windows-Deployment-Services-Diagnostics/Debug /e:true
        ```
    - Open Event Viewer on the WDS server:

    1. In the left pane, select **Applications and Services Logs** > **Microsoft** > **Windows** > **Deployment-Services-Diagnostics** > **Debug**.
    1. In the right pane, select **Enable Log**.

- The DHCP subnet configuration file (if one exists).
- The output of the BitLocker status on the volume. Gather this output into a text file by using `manage-bde -status`. Or in Windows PowerShell, use `Get-BitLockerVolume`.
- The Network Monitor capture on the server that hosts the WDS role, filtered by client IP address.

## <a href="" id="bkmk-unsupportedsystems"></a>Configure Network Unlock Group Policy settings on earlier versions

Network Unlock and the accompanying Group Policy settings were introduced in Windows Server 2012. But you can deploy them by  using operating systems that run Windows Server 2008 R2 and Windows Server 2008.

Your system must meet these requirements:

-   The server that hosts WDS must be running a server operating system that's designated in the "Applies to" list at the beginning of this article.
-   Client computers must be running a client operating system that's designated in the "Applies to" list at the beginning of this article.

Follow these steps to configure Network Unlock on these older systems.

1.  [Install the WDS server role.](#bkmk-installwdsrole)
2.  [Confirm the WDS service is running.](#bkmk-confirmwdsrunning)
3.  [Install the Network Unlock feature.](#bkmk-installnufeature)
4.  [Create the Network Unlock certificate.](#bkmk-createcert)
5.  [Deploy the private key and certificate to the WDS server.](#bkmk-deploycert)
6.  Configure registry settings for Network Unlock:

    Apply the registry settings by running the following `certutil` script (assuming your Network Unlock certificate file is called *BitLocker-NetworkUnlock.cer*) on each computer that runs a client operating system that's designated in the "Applies to" list at the beginning of this article.

    ```console
            certutil -f -grouppolicy -addstore FVE_NKP BitLocker-NetworkUnlock.cer
            reg add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v OSManageNKP /t REG_DWORD /d 1 /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseAdvancedStartup /t REG_DWORD /d 1 /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UsePIN /t REG_DWORD /d 2 /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPMPIN /t REG_DWORD /d 2 /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPM /t REG_DWORD /d 2 /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPMKey /t REG_DWORD /d 2 /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPMKeyPIN /t REG_DWORD /d 2 /f
    ```

7.  Set up a TPM protector on the clients.
8.  Reboot the clients to add the **Network (Certificate Based)** protector.

## See also

-   [BitLocker overview](bitlocker-overview.md)
-   [BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions.yml)
-   [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
