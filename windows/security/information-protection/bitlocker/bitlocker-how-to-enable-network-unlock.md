---
title: BitLocker - How to enable Network Unlock (Windows 10)
description: This article for the IT professional describes how BitLocker Network Unlock works and how to configure it.
ms.reviewer: 
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.topic: conceptual
ms.date: 11/08/2022
ms.custom: bitlocker
ms.technology: itpro-security
---

# BitLocker: How to enable Network Unlock

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

This article describes how BitLocker Network Unlock works and how to configure it.

Network Unlock is a BitLocker protector option for operating system volumes. Network Unlock enables easier management for BitLocker-enabled desktops and servers in a domain environment by providing automatic unlock of operating system volumes at system reboot when connected to a wired corporate network. This feature requires the client hardware to have a DHCP driver implemented in its UEFI firmware. Without Network Unlock, operating system volumes protected by TPM+PIN protectors require a PIN to be entered when a computer reboots or resumes from hibernation (for example, by Wake on LAN). Requiring a PIN after a reboot can make it difficult to enterprises to roll out software patches to unattended desktops and remotely administered servers.

Network Unlock allows BitLocker-enabled systems that have a TPM+PIN and that meet the hardware requirements to boot into Windows without user intervention. Network Unlock works in a similar fashion to the TPM+StartupKey at boot. Rather than needing to read the StartupKey from USB media, however, the Network Unlock feature needs the key to be composed from a key stored in the TPM and an encrypted network key that is sent to the server, decrypted and returned to the client in a secure session.

## Network Unlock core requirements

Network Unlock must meet mandatory hardware and software requirements before the feature can automatically unlock domain-joined systems. These requirements include:

- Currently supported Windows operating system
- Any supported operating system with UEFI DHCP drivers that can serve as Network Unlock clients
- Network Unlock clients with a TPM chip and at least one TPM protector
- A server running the Windows Deployment Services (WDS) role on any supported server operating system
- BitLocker Network Unlock optional feature installed on any supported server operating system
- A DHCP server, separate from the WDS server
- Properly configured public/private key pairing
- Network Unlock group policy settings configured
- Network stack enabled in the UEFI firmware of client devices

> [!NOTE]
> To properly support DHCP within UEFI, the UEFI-based system should be in native mode and shouldn't have a compatibility support module (CSM) enabled.

For Network Unlock to work reliably on computers, the first network adapter on the computer, usually the onboard adapter, must be configured to support DHCP. This first network adapter must be used for Network Unlock. This configuration is especially worth noting when the device has multiple adapters, and some adapters are configured without DHCP, such as for use with a lights-out management protocol. This configuration is necessary because Network Unlock stops enumerating adapters when it reaches one with a DHCP port failure for any reason. Thus, if the first enumerated adapter doesn't support DHCP, isn't plugged into the network, or fails to report availability of the DHCP port for any reason, then Network Unlock fails.

The Network Unlock server component is installed on supported versions of Windows Server 2012 and later as a Windows feature that uses Server Manager or Windows PowerShell cmdlets. The feature name is BitLocker Network Unlock in Server Manager and BitLocker-NetworkUnlock in Windows PowerShell. This feature is a core requirement.

Network Unlock requires Windows Deployment Services (WDS) in the environment where the feature will be utilized. Configuration of the WDS installation isn't required. However, the WDS service must be running on the server.

The network key is stored on the system drive along with an AES 256 session key and encrypted with the 2048-bit RSA public key of the Unlock server certificate. The network key is decrypted with the help of a provider on a supported version of Windows Server running WDS, and returned encrypted with its corresponding session key.

## Network Unlock sequence

The unlock sequence starts on the client side when the Windows boot manager detects the existence of Network Unlock protector. It uses the DHCP driver in UEFI to obtain an IP address for IPv4 and then broadcasts a vendor-specific DHCP request that contains the network key and a session key for the reply, all encrypted by the server's Network Unlock certificate, as described above. The Network Unlock provider on the supported WDS server recognizes the vendor-specific request, decrypts it with the RSA private key, and returns the network key encrypted with the session key via its own vendor-specific DHCP reply.

On the server side, the WDS server role has an optional plugin component, like a PXE provider, which is what handles the incoming Network Unlock requests. The provider can also be configured with subnet restrictions, which would require that the IP address provided by the client in the Network Unlock request belong to a permitted subnet to release the network key to the client. In instances where the Network Unlock provider is unavailable, BitLocker fails over to the next available protector to unlock the drive. In a typical configuration, the standard TPM+PIN unlock screen is presented to unlock the drive.

The server side configuration to enable Network Unlock also requires provisioning a 2048-bit RSA public/private key pair in the form of an X.509 certificate, and distributing the public key certificate to the clients. This certificate must be managed and deployed through the Group Policy editor directly on a domain controller with at least a Domain Functional Level of Windows Server 2012. This certificate is the public key that encrypts the intermediate network key (which is one of the two secrets required to unlock the drive; the other secret is stored in the TPM).

Manage and deploy this certificate through the Group Policy editor directly on a domain controller that has a domain functional level of at least Windows Server 2012. This certificate is the public key that encrypts the intermediate network key. The intermediate network key is one of the two secrets that are required to unlock the drive; the other secret is stored in the TPM.

![Diagram showing the BitLocker Network Unlock sequence.](images/bitlockernetworkunlocksequence.png)

The Network Unlock process follows these phases:

1. The Windows boot manager detects a Network Unlock protector in the BitLocker configuration.

2. The client computer uses its DHCP driver in the UEFI to get a valid IPv4 IP address.

3. The client computer broadcasts a vendor-specific DHCP request that contains:

    1. A network key (a 256-bit intermediate key) that is encrypted by using the 2048-bit RSA Public Key of the Network Unlock certificate from the WDS server.

    2. An AES-256 session key for the reply.

4. The Network Unlock provider on the WDS server recognizes the vendor-specific request.

5. The provider decrypts the request by using the WDS server's BitLocker Network Unlock certificate RSA private key.

6. The WDS provider returns the network key encrypted with the session key by using its own vendor-specific DHCP reply to the client computer. This key is an intermediate key.

7. The returned intermediate key is combined with another local 256-bit intermediate key. This key can be decrypted only by the TPM.

8. This combined key is used to create an AES-256 key that unlocks the volume.

9. Windows continues the boot sequence.

## Configure Network Unlock

The following steps allow an administrator to configure Network Unlock in a domain where the Domain Functional Level is at least Windows Server 2012.

### Install the WDS server role

The BitLocker Network Unlock feature installs the WDS role if it isn't already installed. WDS can be installed separately before BitLocker Network Unlock is installed by using **Server Manager** or **Windows PowerShell**. To install the role using Server Manager, select the **Windows Deployment Services** role in **Server Manager**.

To install the role by using Windows PowerShell, use the following command:

```powershell
Install-WindowsFeature WDS-Deployment
```

The WDS server must be configured so that it can communicate with DHCP (and optionally AD DS) and the client computer. The WDS server can be configured using the WDS management tool, `wdsmgmt.msc`, which starts the Windows Deployment Services Configuration wizard.

### Confirm the WDS service is running

To confirm that the WDS service is running, use the Services Management Console or Windows PowerShell. To confirm that the service is running in Services Management Console, open the console using `services.msc` and check the status of the Windows Deployment Services service.

To confirm that the service is running using Windows PowerShell, use the following command:

```powershell
Get-Service WDSServer
```

### Install the Network Unlock feature

To install the Network Unlock feature, use Server Manager or Windows PowerShell. To install the feature using Server Manager, select the **BitLocker Network Unlock** feature in the Server Manager console.

To install the feature by using Windows PowerShell, use the following command:

```powershell
Install-WindowsFeature BitLocker-NetworkUnlock
```

### Create the certificate template for Network Unlock

A properly configured Active Directory Services Certification Authority can use this certificate template to create and issue Network Unlock certificates.

1. Open the Certificates Template snap-in (`certtmpl.msc`).

2. Locate the User template, right-click the template name and select **Duplicate Template**.

3. On the **Compatibility** tab, change the **Certification Authority** and **Certificate recipient** fields to Windows Server 2012 and Windows 8, respectively. Ensure that the **Show resulting changes** dialog box is selected.

4. Select the **General** tab of the template. The **Template display name** and **Template name** should clearly identify that the template will be used for Network Unlock. Clear the check box for the **Publish certificate in Active Directory** option.

5. Select the **Request Handling** tab. Select **Encryption** from the **Purpose** drop-down menu. Ensure that the **Allow private key to be exported** option is selected.

6. Select the **Cryptography** tab. Set the **Minimum key size** to 2048. Any Microsoft cryptographic provider that supports RSA can be used for this template, but for simplicity and forward compatibility, it is recommended to use **Microsoft Software Key Storage Provider**.

7. Select the **Requests must use one of the following providers** option and clear all options except for the cryptography provider selected, such as **Microsoft Software Key Storage Provider**.

8. Select the **Subject Name** tab. Select **Supply in the request**. Select **OK** if the certificate templates pop-up dialog appears.

9. Select the **Issuance Requirements** tab. Select both **CA certificate manager approval** and **Valid existing certificate** options.

10. Select the **Extensions** tab. Select **Application Policies** and choose **Edit…**.

11. In the **Edit Application Policies Extension** options dialog box, select **Client Authentication**, **Encrypting File System**, **and Secure Email** and choose **Remove**.

12. On the **Edit Application Policies Extension** dialog box, select **Add**.

13. On the **Add Application Policy** dialog box, select **New**. In the **New Application Policy** dialog box, enter the following information in the space provided and then select **OK** to create the BitLocker Network Unlock application policy:

    - *Name:* **BitLocker Network Unlock**
    - *Object Identifier:* **1.3.6.1.4.1.311.67.1.1**

14. Select the newly created **BitLocker Network Unlock** application policy and select **OK**.

15. With the **Extensions** tab still open, select the **Edit Key Usage Extension** dialog. Select the **Allow key exchange only with key encryption (key encipherment)** option. Select the **Make this extension critical** option.

16. Select the **Security** tab. Confirm that the **Domain Admins** group has been granted **Enroll** permission.

17. Select **OK** to complete configuration of the template.

To add the Network Unlock template to the certificate authority, open the certificate authority snap-in (`certsrv.msc`). Right-click **Certificate Templates**, and then choose **New, Certificate Template to issue**. Select the previously created BitLocker Network Unlock certificate.

After the Network Unlock template is added to the certificate authority, this certificate can be used to configure BitLocker Network Unlock.

### Create the Network Unlock certificate

Network Unlock can use imported certificates from an existing public key infrastructure (PKI). Or it can use a self-signed certificate.

To enroll a certificate from an existing certificate authority:

1. On the WDS server, open Certificate Manager by using `certmgr.msc`.

2. Under **Certificates - Current User**, right-click **Personal**.

3. Select **All Tasks** > **Request New Certificate**.

4. When the Certificate Enrollment wizard opens, select **Next**.

5. Select **Active Directory Enrollment Policy**.

6. Choose the certificate template that was created for Network Unlock on the domain controller. Then select **Enroll**.

7. When prompted for more information, select **Subject Name** and provide a friendly name value. The friendly name should include information for the domain or organizational unit for the certificate. For example:

    *BitLocker Network Unlock Certificate for Contoso domain*

8. Create the certificate. Ensure the certificate appears in the **Personal** folder.

9. Export the public key certificate for Network Unlock:

   1. Create a `.cer` file by right-clicking the previously created certificate, selecting **All Tasks**, and then selecting **Export**.

   2. Select **No, do not export the private key**.

   3. Select **DER encoded binary X.509** and complete exporting the certificate to a file.

   4. Give the file a name such as BitLocker-NetworkUnlock.cer.

10. Export the public key with a private key for Network Unlock.

    1. Create a `.pfx` file by right-clicking the previously created certificate, selecting **All Tasks**, and then selecting **Export**.

    2. Select **Yes, export the private key**.

    3. Complete the steps to create the `.pfx` file.

To create a self-signed certificate, either use the `New-SelfSignedCertificate` cmdlet in Windows PowerShell or use `certreq.exe`. For example:

**Windows PowerShell:**

```powershell
New-SelfSignedCertificate -CertStoreLocation Cert:\LocalMachine\My -Subject "CN=BitLocker Network Unlock certificate" -Provider "Microsoft Software Key Storage Provider" -KeyUsage KeyEncipherment -KeyUsageProperty Decrypt,Sign -KeyLength 2048 -HashAlgorithm sha512 -TextExtension @("1.3.6.1.4.1.311.21.10={text}OID=1.3.6.1.4.1.311.67.1.1","2.5.29.37={text}1.3.6.1.4.1.311.67.1.1")
```

**certreq.exe:**

1. Create a text file with an `.inf` extension, for example:

    ```cmd
    notepad.exe BitLocker-NetworkUnlock.inf
    ```

2. Add the following contents to the previously created file:

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

3. Open an elevated command prompt and use the `certreq.exe` tool to create a new certificate. Use the following command, specifying the full path to the file that was created previously along with the file name:

    ```cmd
    certreq.exe -new BitLocker-NetworkUnlock.inf BitLocker-NetworkUnlock.cer
    ```

4. Verify that certificate was properly created by the previous command by confirming that the `.cer` file exists.

5. Launch the **Certificates - Local Computer** console by running `certlm.msc`.

6. Create a `.pfx` file by following the below steps the **Certificates - Local Computer** console:

   1. Navigate to **Certificates - Local Computer** > **Personal** > **Certificates**

   2. Right-click the previously imported certificate, select **All Tasks**, and then select **Export**

   3. Follow through the wizard to create the `.pfx` file.

### Deploy the private key and certificate to the WDS server

After creating the certificate and key, deploy them to the infrastructure to properly unlock systems. To deploy the certificates:

1. On the WDS server, launch the **Certificates - Local Computer** console by running `certlm.msc`.

2. Right-click **BitLocker Drive Encryption Network Unlock** item under **Certificates (Local Computer)**, select **All Tasks**, and then select **Import**.

3. In the **File to Import** dialog, choose the `.pfx` file created previously.

4. Enter the password used to create the `.pfx` and complete the wizard.

### Configure group policy settings for Network Unlock

With certificate and key deployed to the WDS server for Network Unlock, the final step is to use group policy settings to deploy the public key certificate to the desired computers that will use the Network Unlock key to unlock. Group policy settings for BitLocker can be found under **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** using the Local Group Policy Editor or the Microsoft Management Console.

The following steps describe how to enable the group policy setting that is a requirement for configuring Network Unlock.

1. Open Group Policy Management Console (`gpmc.msc`).
2. Enable the policy **Require additional authentication at startup**, and then select **Require startup PIN with TPM** or **Allow startup PIN with TPM**.
3. Turn on BitLocker with TPM+PIN protectors on all domain-joined computers.

The following steps describe how to deploy the required group policy setting:

> [!NOTE]
> The group policy settings **Allow Network Unlock at startup** and **Add Network Unlock Certificate** were introduced in Windows Server 2012.

1. Copy the `.cer` file that was created for Network Unlock to the domain controller.

2. On the domain controller, open Group Policy Management Console (`gpmc.msc`).

3. Create a new Group Policy Object or modify an existing object to enable the **Allow Network Unlock at startup** setting.

4. Deploy the public certificate to clients:

    1. Within group policy management console, navigate to the following location:

        **Computer Configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Public Key Policies** > **BitLocker Drive Encryption Network Unlock Certificate**.

    2. Right-click the folder and select **Add Network Unlock Certificate**.

    3. Follow the wizard steps and import the `.cer` file that was copied earlier.

    > [!NOTE]
    > Only one Network Unlock certificate can be available at a time. If a new certificate is needed, delete the current certificate before deploying a new one. The Network Unlock certificate is located under the **`HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\SystemCertificates\FVE_NKP`** registry key on the client computer.

5. Reboot the clients after the Group Policy is deployed.

   > [!NOTE]
   > The **Network (Certificate Based)** protector will be added only after a reboot, with the policy enabled and a valid certificate present in the FVE_NKP store.

### Subnet policy configuration files on the WDS server (optional)

By default, all clients with the correct Network Unlock certificate and valid Network Unlock protectors that have wired access to a Network Unlock-enabled WDS server via DHCP are unlocked by the server. A subnet policy configuration file on the WDS server can be created to limit which are the subnet(s) the Network Unlock clients can use to unlock.

The configuration file, called bde-network-unlock.ini, must be located in the same directory as the Network Unlock provider DLL (`%windir%\System32\Nkpprov.dll`) and it applies to both IPv6 and IPv4 DHCP implementations. If the subnet configuration policy becomes corrupted, the provider fails and stops responding to requests.

The subnet policy configuration file must use a **\[SUBNETS\]** section to identify the specific subnets. The named subnets may then be used to specify restrictions in certificate subsections. Subnets are defined as simple name-value pairs, in the common INI format, where each subnet has its own line, with the name on the left of the equal-sign, and the subnet identified on the right of the equal-sign as a Classless Inter-Domain Routing (CIDR) address or range. The key word **ENABLED** is disallowed for subnet names.

```ini
[SUBNETS]
SUBNET1=10.185.250.0/24 ; a comment about this subrange could be here, after the semicolon
SUBNET2=10.185.252.200/28 
SUBNET3= 2001:4898:a:2::/64 ; an IPv6 subnet
SUBNET4=2001:4898:a:3::/64; in production, the admin would likely give more useful names, like BUILDING9-EXCEPT-RECEP.
```

Following the **\[SUBNETS\]** section, there can be sections for each Network Unlock certificate, identified by the certificate thumbprint formatted without any spaces, which define the subnets clients that can be unlocked from that certificate.

> [!NOTE]
> When specifying the certificate thumbprint, do not include any spaces. If spaces are included in the thumbprint, the subnet configuration fails because the thumbprint will not be recognized as valid.

Subnet restrictions are defined within each certificate section by denoting the allowed list of permitted subnets. If any subnets are listed in a certificate section, then only those subnets are permitted for that certificate. If no subnet is listed in a certificate section, then all subnets are permitted for that certificate. If a certificate doesn't have a section in the subnet policy configuration file, then no subnet restrictions are applied for unlocking with that certificate. For restrictions to apply to every certificate, there must be a certificate section for every Network Unlock certificate on the server, and an explicit allowed list set for each certificate section.

Subnet lists are created by putting the name of a subnet from the **\[SUBNETS\]** section on its own line below the certificate section header. Then, the server will only unlock clients with this certificate on the subnet(s) specified as in the list. For troubleshooting, a subnet can be quickly excluded without deleting it from the section by commenting it out with a prepended semi-colon.

```ini
[2158a767e1c14e88e27a4c0aee111d2de2eafe60]
;Comments could be added here to indicate when the cert was issued, which Group Policy should get it, and so on.
;This list shows this cert is allowed to unlock clients only on the SUBNET1 and SUBNET3 subnets. In this example, SUBNET2 is commented out.
SUBNET1
;SUBNET2
SUBNET3
```

To disallow the use of a certificate altogether, add a `DISABLED` line to its subnet list.

## Turn off Network Unlock

To turn off the unlock server, the PXE provider can be unregistered from the WDS server or uninstalled altogether. However, to stop clients from creating Network Unlock protectors, the **Allow Network Unlock at startup** group policy setting should be disabled. When this policy setting is updated to **disabled** on client computers, any Network Unlock key protector on the computer is deleted. Alternatively, the BitLocker Network Unlock certificate policy can be deleted on the domain controller to accomplish the same task for an entire domain.

> [!NOTE]
> Removing the FVE_NKP certificate store that contains the Network Unlock certificate and key on the WDS server will also effectively disable the server's ability to respond to unlock requests for that certificate. However, this is seen as an error condition and is not a supported or recommended method for turning off the Network Unlock server.

## Update Network Unlock certificates

To update the certificates used by Network Unlock, administrators need to import or generate the new certificate for the server, and then update the Network Unlock certificate group policy setting on the domain controller.

> [!NOTE]
> Servers that don't receive the Group Policy Object (GPO) will require a PIN when they boot. In such cases, find out why the server didn't receive the GPO to update the certificate.

## Troubleshoot Network Unlock

Troubleshooting Network Unlock issues begins by verifying the environment. Many times, a small configuration issue can be the root cause of the failure. Items to verify include:

- Verify that the client hardware is UEFI-based and is on firmware version 2.3.1 and that the UEFI firmware is in native mode without a Compatibility Support Module (CSM) for BIOS mode enabled. Verification can be done by checking that the firmware doesn't have an option enabled such as "Legacy mode" or "Compatibility mode" or that the firmware doesn't appear to be in a BIOS-like mode.

- All required roles and services are installed and started.

- Public and private certificates have been published and are in the proper certificate containers. The presence of the Network Unlock certificate can be verified in the Microsoft Management Console (MMC.exe) on the WDS server with the certificate snap-ins for the local computer enabled. The client certificate can be verified by checking the registry key **`HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\SystemCertificates\FVE_NKP`** on the client computer.

- Group policy for Network Unlock is enabled and linked to the appropriate domains.

- Verify whether group policy is reaching the clients properly. Verification of group policy can be done using the `GPRESULT.exe` or `RSOP.msc` utilities.

- Verify whether the clients were rebooted after applying the policy.

- Verify whether the **Network (Certificate Based)** protector is listed on the client. Verification of the protector can be done using either manage-bde or Windows PowerShell cmdlets. For example, the following command will list the key protectors currently configured on the C: drive of the local computer:

  ```powershell
  manage-bde.exe -protectors -get C:
  ```

  > [!NOTE]
  > Use the output of `manage-bde.exe` along with the WDS debug log to determine whether the proper certificate thumbprint is being used for Network Unlock.

Gather the following files to troubleshoot BitLocker Network Unlock.

- The Windows event logs. Specifically, get the BitLocker event logs and the Microsoft-Windows-Deployment-Services-Diagnostics-Debug log.

    Debug logging is turned off by default for the WDS server role. To retrieve WDS debug logs, the WDS debug logs first need to be enabled. Use either of the following two methods to turn on WDS debug logging.

  - Start an elevated command prompt, and then run the following command:

      ```cmd
      wevtutil.exe sl Microsoft-Windows-Deployment-Services-Diagnostics/Debug /e:true
      ```

  - Open **Event Viewer** on the WDS server:

    1. In the left pane, navigate to **Applications and Services Logs** > **Microsoft** > **Windows** > **Deployment-Services-Diagnostics** > **Debug**.
    2. In the right pane, select **Enable Log**.

- The DHCP subnet configuration file (if one exists).

- The output of the BitLocker status on the volume. Gather this output into a text file by using `manage-bde.exe -status`. Or in Windows PowerShell, use `Get-BitLockerVolume`.

- The Network Monitor capture on the server that hosts the WDS role, filtered by client IP address.

<!--

REMOVING SECTION DUE TO THE VERSIONS OF WINDOWS THAT THIS SECTION APPLIES TO ARE NO LONGER SUPPORTED.

## Configure Network Unlock Group Policy settings on earlier versions

Network Unlock and the accompanying Group Policy settings were introduced in Windows Server 2012. However Network Unlock and the accompanying Group Policy settings can be deployed using operating systems that run Windows Server 2008 R2 and Windows Server 2008.

The system must meet these requirements:

- The server that hosts WDS must be running a server operating system that's designated in the "Applies to" list at the beginning of this article.
- Client computers must be running a client operating system that's designated in the "Applies to" list at the beginning of this article.

Follow these steps to configure Network Unlock on these older systems.

1. [Install the WDS Server role](#install-the-wds-server-role)

2. [Confirm the WDS Service is running](#confirm-the-wds-service-is-running)

3. [Install the Network Unlock feature](#install-the-network-unlock-feature)

4. [Create the Network Unlock certificate](#create-the-network-unlock-certificate)

5. [Deploy the private key and certificate to the WDS server](#deploy-the-private-key-and-certificate-to-the-wds-server)

6. Configure registry settings for Network Unlock:

    Apply the registry settings by running the following `certutil.exe` script (assuming the Network Unlock certificate file is called *BitLocker-NetworkUnlock.cer*) on each computer that runs a client operating system that's designated in the [Applies to](#bitlocker-how-to-enable-network-unlock) list at the beginning of this article.

    ```cmd
            certutil.exe -f -grouppolicy -addstore FVE_NKP BitLocker-NetworkUnlock.cer
            reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v OSManageNKP /t REG_DWORD /d 1 /f
            reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseAdvancedStartup /t REG_DWORD /d 1 /f
            reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UsePIN /t REG_DWORD /d 2 /f
            reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPMPIN /t REG_DWORD /d 2 /f
            reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPM /t REG_DWORD /d 2 /f
            reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPMKey /t REG_DWORD /d 2 /f
            reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v UseTPMKeyPIN /t REG_DWORD /d 2 /f
    ```

7. Set up a TPM protector on the clients.

8. Reboot the clients to add the Network (certificate based) protector.
-->

## Related articles

- [BitLocker overview](bitlocker-overview.md)
- [BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions.yml)
- [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
