---
title: Copying the MBAM 2.5 Group Policy Templates
description: Copying the MBAM 2.5 Group Policy Templates
author: dansimp
ms.assetid: e526ecec-07ff-435e-bc90-3084b617b84b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/28/2017
---


# Copying the MBAM 2.5 Group Policy Templates


Before deploying the MBAM Client installation, you must download the MBAM Group Policy Templates, which contain Group Policy settings that define MBAM implementation settings for BitLocker Drive Encryption. After downloading the templates, you then set the Group Policy settings to implement across your enterprise.

## Downloading and deploying the MDOP Group Policy templates


MDOP Group Policy templates are available for download in a self-extracting, compressed file, grouped by technology and version.

**How to download and deploy the MDOP Group Policy templates**

1. Download the MDOP Group Policy templates from [Microsoft Desktop Optimization Pack Group Policy Administrative Templates](https://www.microsoft.com/en-us/download/details.aspx?id=55531).

2. Run the downloaded file to extract the template folders.

   **Warning**  
   Do not extract the templates directly to the Group Policy deployment directory. Multiple technologies and versions are bundled in this file.



3. In the extracted folder, locate the technology-version .admx file. Certain MDOP technologies have multiple sets of Group Policy Objects (GPOs). For example, MBAM includes MBAM Management settings and MBAM User settings.

4. Locate the appropriate .adml file by language-culture (that is, *en* for English-United States).

5. Copy the .admx and .adml files to a policy definition folder. Depending on where you store the templates, you can configure Group Policy settings from the local device or from any computer on the domain.

   **Local files.** To configure Group Policy settings from the local device, copy template files to the following locations:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">File type</th>
   <th align="left">File location</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Group Policy template (.admx)</p></td>
   <td align="left"><p><code>%systemroot%</code>&lt;strong&gt;policyDefinitions</strong></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Group Policy language file (.adml)</p></td>
   <td align="left"><p><code>%systemroot%</code>&lt;strong&gt;policyDefinitions</strong><code>[MUIculture]</code></p></td>
   </tr>
   </tbody>
   </table>



~~~
**Domain central store.** To enable Group Policy settings configuration by a Group Policy administrator from any computer on the domain, copy files to the following locations on the domain controller:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">File type</th>
<th align="left">File location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Group Policy template (.admx)</p></td>
<td align="left"><p><code>%systemroot%</code>\<strong>sysvol\domain\policies\PolicyDefinitions</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>Group Policy language file (.adml)</p></td>
<td align="left"><p><code>%systemroot%</code>\<strong>sysvol\domain\policies\PolicyDefinitions\[MUIculture]</strong><code>\[MUIculture]</code></p>
<p>For example, the U.S. English ADML language-specific file will be stored in %systemroot%\sysvol\domain\policies\PolicyDefinitions\en-us.</p></td>
</tr>
</tbody>
</table>
~~~



6. Edit the Group Policy settings using Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM) to configure Group Policy settings for the MDOP technology. See [Editing the MBAM 2.5 Group Policy Settings](editing-the-mbam-25-group-policy-settings.md) for more information.

   For descriptions of the Group Policy settings, see [Planning for MBAM 2.5 Group Policy Requirements](planning-for-mbam-25-group-policy-requirements.md).


## Related topics


[Deploying MBAM 2.5 Group Policy Objects](deploying-mbam-25-group-policy-objects.md)


## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).






