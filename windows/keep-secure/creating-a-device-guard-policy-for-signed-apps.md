---
title: Create a Device Guard code integrity policy based on a reference device (Windows 10)
description: To implement Device Guard app protection, you will need to create a code integrity policy. Code integrity policies determine what apps are considered trustworthy and are allowed to run on a protected device.
ms.assetid: 6C94B14E-E2CE-4F6C-8939-4B375406E825
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Create a Device Guard code integrity policy based on a reference device


**Applies to**

-   Windows 10

To implement Device Guard app protection, you will need to create a code integrity policy. Code integrity policies determine what apps are considered trustworthy and are allowed to run on a protected device.

## <a href="" id="create-a-device-guard-code-integrity-policy-based-on--a-reference-device"></a>Create a Device Guard code integrity policy based on a reference device


To create a code integrity policy, you'll first need to create a reference image that includes the signed applications you want to run on your protected devices. For information on how to sign applications, see [Getting apps to run on Device Guard-protected devices](getting-apps-to-run-on-device-guard-protected-devices.md).

**Note**  Before creating a code integrity policy, make sure your reference device is clean of viruses and malware.

 

**To create a code integrity policy based on a reference device**

1.  On your reference device, start Windows PowerShell as an administrator.

2.  In PowerShell, initialize variables by typing:

    ``` syntax
    $CIPolicyPath=$env:userprofile+"\Desktop\"
    $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"
    $CIPolicyBin=$CIPolicyPath+"DeviceGuardPolicy.bin"
    ```

3.  Scan your device for installed applications and create a new code integrity policy by typing:

    ``` syntax
    New-CIPolicy -Level <RuleLevel> -FilePath $InitialCIPolicy -UserPEs -Fallback Hash 3> Warningslog.txt
    ```

    Where *&lt;RuleLevel&gt;* can be set to any of the following options:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Rule level</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Hash</p></td>
    <td align="left"><p>Specifies individual hash values for each discovered app. Each time an app is updated the hash value will change and you will need to update your policy.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>FileName</p></td>
    <td align="left"><p>Currently unsupported.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>SignedVersion</p></td>
    <td align="left"><p>Currently unsupported.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Publisher</p></td>
    <td align="left"><p>This level is a combination of the PCA certificate and the common name (CN) on the leaf certificate. When a PCA certificate is used to sign apps from multiple companies (such as VeriSign), this rule level allows you to trust the PCA certificate but only for the company whose name is on the leaf certificate.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>FilePublisher</p></td>
    <td align="left"><p>Currently unsupported.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>LeafCertificate</p></td>
    <td align="left"><p>Adds trusted signers at the individual signing certificate level. When an app is updated, the hash value is modified but the signing certificate stays the same. You will only need to update your policy if the signing certificate for an app changes.</p>
    <div class="alert">
    <strong>Note</strong>  Leaf certificates have much shorter validity periods than PCA certificates. You will need to update your policy if a certificate expires.
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>PcaCertificate</p></td>
    <td align="left"><p>Adds the highest certificate in the provided certificate chain to signers. This is typically one certificate below the root certificate, as the scan does not validate anything above the presented signature by going online or checking local root stores.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>RootCertificate</p></td>
    <td align="left"><p>Currently unsupported.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>WHQL</p></td>
    <td align="left"><p>Currently unsupported.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>WHQLPublisher</p></td>
    <td align="left"><p>Currently unsupported.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>WHQLFilePublisher</p></td>
    <td align="left"><p>Currently unsupported.</p></td>
    </tr>
    </tbody>
    </table>

     

4.  Type the following to convert the code integrity policy to a binary format:

    ``` syntax
    ConvertFrom-CIPolicy $InitialCIPolicy $CIPolicyBin
    ```

Once you have completed these steps, the Device Guard policy binary file (DeviceGuardPolicy.bin) and original xml file (InitialScan.xml) will be available on your desktop.

**Note**  We recommend that you keep a copy of InitialScan.xml to use if you need to merge this code integrity policy with another policy, or update policy rule options.

 

## Related topics


[Getting apps to run on Device Guard-protected devices](getting-apps-to-run-on-device-guard-protected-devices.md)

 

 





