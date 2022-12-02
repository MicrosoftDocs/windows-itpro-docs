---
title: Use signed policies to protect Windows Defender Application Control against tampering  (Windows)
description: Signed WDAC policies give organizations the highest level of malware protection available in Windows 10 and Windows 11.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.topic: conceptual
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: vinpa
manager: aaroncz
ms.date: 11/04/2022
ms.technology: itpro-security
---

# Use signed policies to protect Windows Defender Application Control against tampering

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

Signed Windows Defender Application Control (WDAC) policies give organizations the highest level of protection available in Windows. These policies are designed to detect administrative tampering of the policy, such as by malware running as admin, and will result in a boot failure (blue screen). With this goal in mind, it's much more difficult to remove signed WDAC policies. SecureBoot must be enabled in order to provide this protection for signed WDAC policies.

If you don't currently have a code signing certificate you can use to sign your WDAC policies, see [Obtain code signing certificates for your own use](/windows/security/threat-protection/windows-defender-application-control/use-code-signing-to-simplify-application-control-for-classic-windows-applications#obtain-code-signing-certificates-for-your-own-use).

> [!WARNING]
> Boot failure (blue screen) may occur if your signing certificate doesn't follow these rules:
>
> - All policies, including base and supplemental, must be signed according to the [PKCS 7 Standard](https://datatracker.ietf.org/doc/html/rfc5652).
> - Use RSA keys with 2K, 3K, or 4K key size only. ECDSA isn't supported.
> - Only use SHA-256 as the digest algorithm.
> - Don't use UTF-8 encoding for certificate fields, like 'subject common name' and 'issuer common name'. These strings must be encoded as PRINTABLE_STRING, IA5STRING or BMPSTRING.

Before you attempt to deploy signed WDAC policy, you should first deploy an unsigned version of the policy to uncover any issues with the policy rules. We also recommend you enable rule options **9 - Enabled:Advanced Boot Options Menu** and **10 - Enabled:Boot Audit on Failure** to leave troubleshooting options available to administrators. To ensure that a rule option is enabled, you can run a command such as `Set-RuleOption -FilePath <PathAndFilename> -Option 9`, even if you're not sure whether the option is already enabled. If so, the command has no effect. When validated and ready for enterprise deployment, you can remove these options. For more information about rule options, see [Windows Defender Application Control policy rules](select-types-of-rules-to-create.md).

> [!NOTE]
> When signing a Base policy that has existing Supplemental policies, you must also switch to signed policy for all of the Supplementals. Authorize the signed supplemental policies by adding a **&lt;SupplementalPolicySigner&gt;** rule to the Base policy.

## Prepare your WDAC policy for signing

<br>
<details>
  <summary>Expand this section for detailed instructions on preparing your WDAC policy files for signing.</summary>

1. Open an elevated Windows PowerShell session and initialize the variables that will be used:

   ```powershell
   $PolicyPath=$env:userprofile+"\Desktop\"
   $PolicyName="FixedWorkloadPolicy_Enforced"
   $LamnaServerPolicy=$PolicyPath+$PolicyName+".xml"
   ```

   > [!NOTE]
   > This example uses an enforced version of the WDAC policy that you created in [Create a Windows Defender Application Control policy from a reference computer](create-initial-default-policy.md) article. If you are signing another policy, be sure to update the **$PolicyPath** and **$PolicyName** variables with the correct information.

2. Navigate to your desktop as the working directory:

   ```powershell
   cd $PolicyPath
   ```

3. Add an **&lt;UpdatePolicySigner&gt;** rule to the WDAC policy for your policy signing certificate. If you're using the Device Guard Signing Service v2 (DGSS) to sign your policy, you can find the policy signer rule in your tenant's default policy, which you can download from [Get-DefaultPolicy](/windows/security/threat-protection/windows-defender-application-control/use-device-guard-signing-portal-in-microsoft-store-for-business#get-defaultpolicy).

   Otherwise, use [Add-SignerRule](/powershell/module/configci/add-signerrule) and create an **&lt;UpdatePolicySigner&gt;** rule from your certificate file (.cer). DGSS users can download the root certificate file from [Get-RootCertificate](/windows/security/threat-protection/windows-defender-application-control/use-device-guard-signing-portal-in-microsoft-store-for-business#get-rootcertificate). If you purchased a code signing certificate or issued one from your own public key infrastructure (PKI), you can export the certificate file.

   NOTE: If your policy doesn't allow Supplemental policies, you should omit the **-Supplemental** switch from the following command:

   ```powershell
   Add-SignerRule -FilePath $LamnaServerPolicy -CertificatePath <Path to exported .cer certificate> –Update -Supplemental
   ```

   > [!IMPORTANT]
   > Failing to perform this step will leave you unable to modify or disable this policy and will lead to boot failure. For more information about how to disable signed WDAC policies causing boot failure, see [Remove WDAC policies causing boot stop failures](/windows/security/threat-protection/windows-defender-application-control/disable-windows-defender-application-control-policies#remove-wdac-policies-causing-boot-stop-failures).

4. Use [Set-RuleOption](/powershell/module/configci/set-ruleoption) to remove the unsigned policy rule option:

    ```powershell
   Set-RuleOption -FilePath $LamnaServerPolicy -Option 6 -Delete
   ```

5. (Optional) Use [Set-CIPolicyIdInfo](/powershell/module/configci/set-cipolicyidinfo) to reset the policy ID and change the policy name.

6. (Optional) Use [Set-CIPolicyVersion](/powershell/module/configci/set-cipolicyversion) to change the policy VersionEx.

   > [!IMPORTANT]
   > When updating a signed policy, the VersionEx of the updated policy must be greater than or equal to the current policy. Replacing a signed policy with a lower version will lead to boot failure.

7. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the policy to binary format:

   ```powershell
   $PolicyID= Set-CIPolicyIdInfo -FilePath $LamnaServerPolicy  -ResetPolicyID
   $PolicyID = $PolicyID.Substring(11)
   $CIPolicyBin = $env:userprofile + "\Desktop\" + $PolicyID + ".cip"
   ConvertFrom-CIPolicy $LamnaServerPolicy $CIPolicyBin
   ```

</details>

## Sign your WDAC policy

### Policy signing with Device Guard Signing Service v2 (DGSS)

If you have an existing Microsoft Store for Business and Education account, you can use the DGSS to sign your WDAC policy. For more information, see [Submit-SigningJob](/windows/security/threat-protection/windows-defender-application-control/use-device-guard-signing-portal-in-microsoft-store-for-business#submit-signingjob).

### Policy signing with signtool.exe

If you purchased a code signing certificate or issued one from your own PKI, you can use [SignTool.exe](/windows/win32/seccrypto/signtool) to sign your WDAC policy files:

1. Import the .pfx code signing certificate into the user’s personal store on the computer where the signing will happen. In this example, you use the certificate that was created in [Optional: Create a code signing certificate for Windows Defender Application Control](create-code-signing-cert-for-windows-defender-application-control.md).

2. Sign the WDAC policy by using SignTool.exe:

   ```powershell
   <Path to signtool.exe> sign -v -n "ContosoSigningCert" -p7 . -p7co 1.3.6.1.4.1.311.79.1 -fd sha256 $CIPolicyBin
   ```

   > [!NOTE]
   > The *&lt;Path to signtool.exe&gt;* variable should be the full path to the SignTool.exe utility. **ContosoSigningCert** is the subject name of the certificate that will be used to sign the WDAC policy. You should import this certificate to your personal certificate store on the computer you use to sign the policy.

When complete, the commands should output a signed policy file with a .p7 extension. You must rename the file to *{GUID}*.cip where "{GUID}" is the &lt;PolicyId&gt; from your original WDAC policy XML.

## Verify and deploy the signed policy

You can use certutil.exe to verify the signed file. Review the output to confirm the signature algorithm and encoding for certificate fields, like 'subject common name' and 'issuer common name' as described in the Warning at the top of this article.

```powershell
certutil.exe -asn <path to signed policy file>
```

Thoroughly test the signed policy on a representative set of computers before proceeding with deployment. Be sure to reboot the test computers at least twice after applying the signed WDAC policy to ensure you don't encounter a boot failure.

Once you've verified the signed policy, deploy it using your preferred deployment method. For information about deploying WDAC policies, see [Deploying WDAC policies](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide).

> [!NOTE]
> Anti-tampering protection for signed WDAC policies takes effect after the first reboot once the signed WDAC policy is applied to a computer. This protection only applies to computers with UEFI Secure Boot enabled.
