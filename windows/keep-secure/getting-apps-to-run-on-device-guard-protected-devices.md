---
title: Get apps to run on Device Guard protected devices (Windows 10)
description: Windows 10 introduces several new features and settings that when combined all equal what we're calling Device Guard.
MSHAttr: PreferredLib /library
ms.assetid: E62B68C3-8B9F-4842-90FC-B4EE9FF8A67E
keywords: ["Package Inspector", "packageinspector.exe", "sign catalog file"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Get apps to run on Device Guard-protected devices


**Applies to**

-   Windows 10

**In this article**

-   [What you need to run your apps on Device-Guard protected devices](#what-you-need-to-run-your-apps-on-device-guard-protected-devices)
-   [Create a catalog file for unsigned apps](#create-a-catalog-file-for-unsigned-apps)
-   [Sign your catalog file using Sign Tool](#sign-your-catalog-file-using-sign-tool)
-   [Troubleshooting the Package Inspector](#troubleshooting-the-package-inspector)
-   [Related topics](#related-topics)

Windows 10 introduces several new features and settings that when combined all equal what we're calling, Device Guard. Device Guard can help to protect your enterprise devices against the accidental running of malicious apps by requiring all of your apps to be signed by a trusted entity.

To use Device Guard in an enterprise, you must be able to get your existing line-of-business and Independent Software Vendor (ISV)-developed apps to run on a protected device. Unfortunately, many line-of-business apps aren't signed, and in many cases, aren't even being actively developed. Similarly, you may have unsigned software from an ISV that you want to run, or you want to run certain applications from an ISV while not trusting all applications from that ISV. As part of the Device Guard features, Windows 10 includes a new tool called Package Inspector. Package Inspector scans your unsigned apps, and creates catalog files of the installed and running binaries, which can then be signed by the Sign Tool Windows SDK utility and distributed using Group Policy so that your apps will run on Device Guard-protected devices.

## What you need to run your apps on Device-Guard protected devices


Before you can get your apps to run on Device Guard-protected devices, you must have:

-   A device running Windows 10 Enterprise, Windows 10 Education, or Windows Server 2016 Technical Preview.

-   Determined which unsigned apps you need to include in your catalog file.

-   Created a code integrity policy for use by Device Guard.

-   A [code signing certificate](http://go.microsoft.com/fwlink/p/?LinkId=619282), created using an internal public key infrastructure (PKI).

-   [SignTool]( http://go.microsoft.com/fwlink/p/?LinkId=619283). A command-line tool that digitally signs files, verifies signatures in files, or time stamps files. The tool is installed in the \\Bin folder of the Microsoft Windows Software Development Kit (SDK) installation path.

## Create a catalog file for unsigned apps


You must run Package Inspector on a device that's running a temporary Code Integrity Policy in audit mode, created explicitly for this purpose. Audit mode lets this policy catch any binaries missed by the inspection tool, but because it's audit mode, allows everything to continue running.

**Important**  This temporary policy, shouldn't be used for normal business purposes.

 

**To create a catalog file for an existing app**

1.  Start Windows PowerShell as an administrator, and create your temporary policy file by typing:

    ``` syntax
    mkdir temp
    New-CIPolicy -l FileName -f .\tempdeny.xml -s .\temp -u
    ConvertFrom-CIPolicy .\tempdeny.xml .\tempdeny.bin
    cp .\tempdeny.bin C:\Windows\System32\CodeIntegrity\SIPolicy.p7b
    ```

2.  Restart your device.

3.  Start PowerShell as an administrator, and start scanning your file system by typing:

    ``` syntax
    PackageInspector.exe start c:
    ```

    Where:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Option</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>start &lt;<em>drive_letter</em>&gt;:</p></td>
    <td align="left"><p>Specifies to start a scan. For example, starting to scan the C: drive.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>-path</p></td>
    <td align="left"><p>File path to the package being inspected.</p></td>
    </tr>
    </tbody>
    </table>

     

4.  Copy the app installation media to your C:\\ drive, and then install and run the program.

    Copying the media to your local drive helps to make sure that the installer and its related files are included in your catalog file. If you miss the install files, your Code Integrity Policy might trust the app to run, but not to install. After you've installed the app, you should check for updates. If updates happen while the app is open, you should close and restart the app to make sure everything is caught during the inspection process.

    **Note**  
    Because the Package Inspector creates a log entry in the catalog for every binary laid down on the file system, we recommend that you don't run any other installations or updates during the scanning process.

     

5.  **Optional:** If you want to create a multi-app catalog (many apps included in a single catalog file), you can continue to run Steps 2-3 for each additional app. After you've added all of the apps you want to add, you can continue to Step 5.

    **Note**  To streamline your process, we suggest:
    -   **Actively supported and updated apps.** Create a single catalog file for each app.

    -   **Legacy apps, non-active or not updated.** Create a single catalog file for all of your legacy apps.

     

6.  Stop the scanning process and create the .\\InspectedPackage.cat and InspectedPackage.cdf files for your single app in your specified location, by typing:

    ``` syntax
    PackageInspector.exe stop c:
    ```

You can also use the `scan` command in place of using both `start` and `stop` if you want to create a catalog of files that are already present on your hard drive. The `scan` command recursively scans a specified directory and includes all signable files in the catalog. You can scan a specified directory by typing:

``` syntax
PackageInspector.exe scan c:\<insert directory path>
```

The following table shows the available options for both the `scan` and `stop` commands.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>stop &lt;<em>drive_letter</em>&gt;:</p></td>
<td align="left"><p>Specifies that a scan of the specified location is complete, creating either a catalog or a definition file. For example, <em>C:</em></p></td>
</tr>
<tr class="even">
<td align="left"><p>scan <em>&lt;path to scan&gt;</em></p></td>
<td align="left"><p>Specifies a directory path to scan. This command recursively scans a specified directory and includes all signable files in the catalog.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>-out</p></td>
<td align="left"><p>Specifies what type of info should be created by the tool. You can use either <code>CAT</code> for a catalog file, <code>CDF</code> for a catalog definition file or <code>list</code> for a delimited list of files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>-listpath</p></td>
<td align="left"><p>Specifies the location where the installer will output the list of files for <code>-out list</code>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>-cdfPath &lt;<em>file_name</em>&gt;</p></td>
<td align="left"><p>Specifies where the tool should put the created .cdf file. If you use this option, you must also specify the file name.</p>
<p>We recommend that you use the full path to the file. However, relative paths are supported.</p></td>
</tr>
<tr class="even">
<td align="left"><p>-resdir</p></td>
<td align="left"><p>This option isn't currently supported.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>-name</p></td>
<td align="left"><p>This option isn't currently supported.</p></td>
</tr>
<tr class="even">
<td align="left"><p>-ph <code>[true|false]</code></p></td>
<td align="left"><p>Specifies whether to include page hashes in the catalog. You can use either <code>True</code> to add the hashes or <code>False</code> to not add the hashes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>-en</p></td>
<td align="left"><p>Specifies the catalog's encoding type. By default, it's PKCS_7_ASN_ENCODING | X509_ASN_ENCODING, 0x00010001.</p></td>
</tr>
<tr class="even">
<td align="left"><p>-ca1</p></td>
<td align="left"><p>Specifies the CATATTR1 in the catalog and catalog definition files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>-ca2</p></td>
<td align="left"><p>Specifies the CATATTR2 in the catalog and catalog definition files.</p></td>
</tr>
</tbody>
</table>

 

You can add additional parameters to your catalog beyond what's listed here. For more info, see the [MakeCat](http://go.microsoft.com/fwlink/p/?LinkId=618024) topic.

## Sign your catalog file using Sign Tool


You can sign your catalog file using Sign Tool, located in the Windows 7 or later Windows Software Development Kit (SDK) or by using the Device Guard signing portal. For details on using the Device Guard signing portal, see [Device Guard signing](http://go.microsoft.com/fwlink/p/?LinkID=698760).

This process shows how to use a password-protected Personal Information Exchange (.pfx) file to sign the catalog file.

**Important**  To use this tool, you must have an internal certificate authority code signing certificate, or a code signing certificate issued by an external third-party certificate authority.

 

**To use Sign Tool**

1.  Check that your code signing certificates have been imported into your certificate store or that they're on the file system.

2.  Open SignTool.exe and sign the catalog file, based on where your certificate is stored.

    If you are using the PFX from a file system location:

    ``` syntax
    signtool sign /f <\\SignCertLocation> /p <\\password> /fd sha256 /v
    ```

    If you have imported the certificate into your cert store:

    ``` syntax
    signtool sign /n <\\CertSubjectName> /fd sha256 /v <CatalogNameAndLocation>
    ```

    Where:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Option</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>signtool</p></td>
    <td align="left"><p>Specifies the full path location to SignTool.exe.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>sign</p></td>
    <td align="left"><p>Digitally signs files. For a list of the options supported by the sign command, see the [SignTool options](http://go.microsoft.com/fwlink/p/?LinkId=619283).</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/n <em>SubjectName</em></p></td>
    <td align="left"><p>Specifies the name of the subject of the signing certificate. This value can be a substring of the entire subject name.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/f <em>SignCertFileLocation</em></p></td>
    <td align="left"><p>Specifies the signing certificate in a file.</p>
    <p>If the file is in .pfx format and protected by a password, use the /p option to specify the password. If the file does not contain private keys, use the /csp and /k options to specify the .csp and private key container name.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/p <em>Password</em></p></td>
    <td align="left"><p>Specifies the password to use when opening a PFX file. (Use the /f option to specify a PFX file.)</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>/fd <em>Algorithm</em></p></td>
    <td align="left"><p>Specifies the file digest algorithm to use for creating file signatures. The default is SHA2.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>/v</p></td>
    <td align="left"><p>Displays verbose output regardless of whether the command runs successfully or fails, and displays warning messages.</p></td>
    </tr>
    </tbody>
    </table>

     

    For more detailed info and examples using the available options, see the [SignTool.exe (Sign Tool)](http://go.microsoft.com/fwlink/p/?LinkId=618026) topic.

3.  In File Explorer, right-click your catalog file, click **Properties**, and then click the **Digital Signatures** tab to make sure your catalog file's digital signature is accurate.

4.  Copy your catalog file to C:\\Windows\\System32\\catroot\\{F750E6C3-38EE-11D1-85E5-00C04FC295EE} and test the file.

    **Note**  For testing purposes, you can manually copy your file to this location. However, we recommend that you use Group Policy to copy the catalog file to all of your devices for large-scale implementations.

     

## Troubleshooting the Package Inspector


If you see "Error 1181" while stopping the Package Inspector, you'll need to increase your USN journal size and then clear all of the cached data before re-scanning the impacted apps.

You must make sure that you clear the cache by creating and setting a new temporary policy. If you reuse the same policy, the Package Inspector will fail.

**To increase your journal size**

1.  Open a command-prompt window, and then type:

    ``` syntax
    fsutil usn createjournal m=0x8000000 a=0x800000 C:
    ```

    Where the "m" value needs to be increased. We recommend that you change the value to at least 4 times the default value of m=0x2000000.

2.  Re-run the failed app installation(s).

**To clear your cached data and re-scan your apps**

1.  Delete the SIPolicy.p7b file from the C:\\Windows\\System32\\CodeIntegrity\\ folder.

2.  Create a new temporary Code Integrity Policy to clear all of the cached data by starting Windows Powershell as an administrator and typing:

    ``` syntax
    mkdir temp
    cp C:\Windows\System32\PackageInspector.exe .\temp\
    New-CIPolicy -l Hash -f .\DenyPackageInspector.xml -s .\temp -u -deny
    ConvertFrom-CIPolicy .\DenyPackageInspector.xml .\DenyPackageInspector.bin
    cp .\DenyPackageInspector.bin C:\Windows\System32\SIPolicy.p7b
    ```

3.  Restart your device and follow the steps in the [Create a catalog file for unsigned apps](#create-a-catalog-file-for-unsigned-apps) section.

## Related topics


[Download SignTool]( http://go.microsoft.com/fwlink/p/?LinkId=619283)

 

 





