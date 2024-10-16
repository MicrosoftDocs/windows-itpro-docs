---
title: Use signed policies to protect App Control for Business against tampering
description: Signed App Control for Business policies give organizations the highest level of malware protection available in Windows 10 and Windows 11.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Use signed policies to protect App Control for Business against tampering

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

Signed App Control for Business policies give organizations the highest level of protection available in Windows. These policies are designed to detect administrative tampering of the policy, such as by malware running as admin, and will result in a boot failure or blue screen. With this goal in mind, it's much more difficult to remove signed App Control policies. SecureBoot must be enabled in order to provide this protection for signed App Control policies.

If you don't currently have a code signing certificate you can use to sign your policies, see [Obtain code signing certificates for your own use](use-code-signing-for-better-control-and-protection.md#obtain-code-signing-certificates-for-your-own-use).

> [!WARNING]
> Boot failure, or blue screen, may occur if your signing certificate doesn't follow these rules:
>
> - All policies, including base and supplemental, must be signed according to the [PKCS 7 Standard](https://datatracker.ietf.org/doc/html/rfc5652).
> - Use RSA keys with 2K, 3K, or 4K key size only. ECDSA isn't supported.
> - You can use SHA-256, SHA-384, or SHA-512 as the digest algorithm on Windows 11, as well as Windows 10 and Windows Server 2019 and above after applying the November 2022 cumulative security update. All other devices only support SHA-256.

Before you attempt to deploy a signed policy, you should first deploy an unsigned version of the policy to uncover any issues with the policy rules. We also recommend you enable rule options **9 - Enabled:Advanced Boot Options Menu** and **10 - Enabled:Boot Audit on Failure** to leave troubleshooting options available to administrators. To ensure that a rule option is enabled, you can run a command such as `Set-RuleOption -FilePath <PathAndFilename> -Option 9`, even if you're not sure whether the option is already enabled. If so, the command has no effect. When validated and ready for enterprise deployment, you can remove these options. For more information about rule options, see [App Control for Business policy rules](../design/select-types-of-rules-to-create.md).

> [!NOTE]
> When signing a Base policy that has existing Supplemental policies, you must also switch to signed policy for all of the Supplementals. Authorize the signed supplemental policies by adding a `<SupplementalPolicySigner>` rule to the Base policy.

## Prepare your App Control policy for signing

1. Open an elevated Windows PowerShell session and initialize the variables to use:

   ```powershell
   $PolicyPath=$env:userprofile+"\Desktop\"
   $PolicyName="FixedWorkloadPolicy_Enforced"
   $LamnaServerPolicy=$PolicyPath+$PolicyName+".xml"
   ```

   > [!NOTE]
   > This example uses an enforced version of the App Control policy that you created in [Create an App Control for Business policy from a reference computer](../design/create-appcontrol-policy-using-reference-computer.md) article. If you sign another policy, be sure to update the **$PolicyPath** and **$PolicyName** variables with the correct information.

2. Navigate to your desktop as the working directory:

    ```powershell
    cd $PolicyPath
    ```

3. If your App Control policy doesn't already include an `<UpdatePolicySigner>` rule for your policy signing certificate, you must add it. At least one `<UpdatePolicySigner>` rule must exist to convert your policy XML with [ConvertFrom-CiPolicy](/powershell/module/configci/convertfrom-cipolicy).

    Use [Add-SignerRule](/powershell/module/configci/add-signerrule) and create an `<UpdatePolicySigner>` rule from your certificate file (.cer). If you purchased a code signing certificate or issued one from your own public key infrastructure (PKI), you can export the certificate file.

    > [!NOTE]
    > If your policy doesn't allow Supplemental policies, you should omit the **-Supplemental** switch from the following command:

    ```powershell
    Add-SignerRule -FilePath $LamnaServerPolicy -CertificatePath <Path to exported .cer certificate> -Update -Supplemental
    ```

    > [!IMPORTANT]
    > Failing to perform this step will leave you unable to modify or disable this policy and will lead to boot failure. For more information about how to disable signed policies causing boot failure, see [Remove App Control for Business policies causing boot stop failures](disable-appcontrol-policies.md#remove-app-control-policies-causing-boot-stop-failures).

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

## Sign your policy

### Policy signing with signtool.exe

If you purchased a code signing certificate or issued one from your own PKI, you can use [SignTool.exe](/windows/win32/seccrypto/signtool) to sign your App Control policy files:

1. Import the .pfx code signing certificate into the user's personal store on the computer where the signing will happen. In this example, you use the certificate that was created in [Optional: Create a code signing certificate for App Control for Business](create-code-signing-cert-for-appcontrol.md).

2. Sign the App Control policy by using SignTool.exe:

   ```powershell
   <Path to signtool.exe> sign -v -n "ContosoSigningCert" -p7 . -p7co 1.3.6.1.4.1.311.79.1 -fd sha256 $CIPolicyBin
   ```

   > [!NOTE]
   > The *&lt;Path to signtool.exe&gt;* variable should be the full path to the SignTool.exe utility. **ContosoSigningCert** is the subject name of the certificate that will be used to sign the policy. You should import this certificate to your personal certificate store on the computer you use to sign the policy.

When complete, the commands should output a signed policy file with a `.p7` extension. You must rename the file to `{GUID}.cip` where "{GUID}" is the &lt;PolicyId&gt; from your original App Control policy XML.

## Verify and deploy the signed policy

You can use certutil.exe or PowerShell to verify the signed file. Review the output to confirm the signature algorithm as described in the Warning at the top of this article.

```powershell
certutil.exe -asn <path to signed policy file>
```

```powershell
$CIPolicyBin = 'path to signed policy file'
Add-Type -AssemblyName 'System.Security'
$SignedCryptoMsgSyntax = New-Object -TypeName System.Security.Cryptography.Pkcs.SignedCms
$SignedCryptoMsgSyntax.Decode([System.IO.File]::ReadAllBytes($CIPolicyBin))
$SignedCryptoMsgSyntax.Certificates | Format-List -Property *
```

Thoroughly test the signed policy on a representative set of computers before proceeding with deployment. Be sure to reboot the test computers at least twice after applying the signed App Control policy to ensure you don't encounter a boot failure.

Once you've verified the signed policy, deploy it using your preferred deployment method. For more information about deploying policies, see [Deploying App Control for Business policies](appcontrol-deployment-guide.md).

> [!NOTE]
> Anti-tampering protection for signed policies takes effect after the first reboot once the signed policy is applied to a computer. This protection only applies to computers with UEFI Secure Boot enabled.
