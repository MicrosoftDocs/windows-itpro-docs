---
title: How to Download and Deploy MDOP Group Policy (.admx) Templates
description: How to Download and Deploy MDOP Group Policy (.admx) Templates
author: dansimp
ms.assetid: fdb64505-6c66-4fdf-ad74-a6a161191e3f
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/15/2018
---


# How to Download and Deploy MDOP Group Policy (.admx) Templates


You can manage the feature settings of certain Microsoft Desktop Optimization Pack (MDOP) technologies (for example, App-V, UE-V, or MBAM) by using Group Policy templates, the .admx and .adml files. MDOP Group Policy templates are available for download in a self-extracting, compressed file, grouped by technology and version.

## MDOP Group Policy templates

**How to download and deploy the MDOP Group Policy templates**

1. Download the latest [MDOP Group Policy templates](https://www.microsoft.com/download/details.aspx?id=55531) 

2. Expand the downloaded .cab file by running `expand <download_folder>\MDOP_ADMX_Templates.cab -F:* <destination_folder>`

   **Warning**  
   Do not extract the templates directly to the Group Policy deployment directory. Multiple technologies and versions are bundled in this file.

3. In the extracted folder, locate the technology-version .admx file. Certain MDOP technologies have multiple sets of Group Policy Objects (GPOs). For example, MBAM includes MBAM Management settings and MBAM User settings.

4. Locate the appropriate .adml file by language-culture (that is, *en-us* for English-United States).

5. Copy the .admx and .adml files to a policy definition folder. Depending on where you store the templates, you can configure Group Policy settings from the local device or from any computer on the domain.

   - **Local files:** To configure Group Policy settings from the local device, copy template files to the following locations:

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

   - **Domain central store:** To enable Group Policy settings configuration by a Group Policy administrator from any computer on the domain, copy files to the following locations on the domain controller:

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
   <td align="left"><p><code>%systemroot%</code>&lt;strong&gt;sysvol\domain\policies\PolicyDefinitions</strong></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Group Policy language file (.adml)</p></td>
   <td align="left"><p><code>%systemroot%</code>&lt;strong&gt;sysvol\domain\policies\PolicyDefinitions[MUIculture]</strong><code>[MUIculture]</code></p>
   <p>For example, the U.S. English ADML language-specific file will be stored in %systemroot%\sysvol\domain\policies\PolicyDefinitions\en-us.</p></td>
   </tr>
   </tbody>
   </table>

6. Edit the Group Policy settings using Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM) to configure Group Policy settings for the MDOP technology.

### MDOP Group Policy by technology

For more information about supported MDOP Group Policy, see the specific documentation for the technology.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">MDOP Technology</th>
<th align="left">Version bundles</th>
<th align="left">Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Application Virtualization (App-V)</strong></p></td>
<td align="left"><p>App-V 5.0 and App-V 5.0 Service Packs</p></td>
<td align="left"><p><a href="../appv-v5/how-to-modify-app-v-50-client-configuration-using-the-admx-template-and-group-policy.md" data-raw-source="[How to Modify App-V 5.0 Client Configuration Using the ADMX Template and Group Policy](../appv-v5/how-to-modify-app-v-50-client-configuration-using-the-admx-template-and-group-policy.md)">How to Modify App-V 5.0 Client Configuration Using the ADMX Template and Group Policy</a></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>User Experience Virtualization (UE-V)</strong></p></td>
<td align="left"><p>UE-V 2.0 and UE-V 2.1</p></td>
<td align="left"><p><a href="../uev-v2/configuring-ue-v-2x-with-group-policy-objects-both-uevv2.md" data-raw-source="[Configuring UE-V 2.x with Group Policy Objects](../uev-v2/configuring-ue-v-2x-with-group-policy-objects-both-uevv2.md)">Configuring UE-V 2.x with Group Policy Objects</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p>UE-V 1.0 including 1.0 SP1</p></td>
<td align="left"><p><a href="../uev-v1/configuring-ue-v-with-group-policy-objects.md" data-raw-source="[Configuring UE-V with Group Policy Objects](../uev-v1/configuring-ue-v-with-group-policy-objects.md)">Configuring UE-V with Group Policy Objects</a></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Microsoft BitLocker Administration and Monitoring (MBAM)</strong></p></td>
<td align="left"><p>MBAM 2.5</p></td>
<td align="left"><p><a href="../mbam-v25/planning-for-mbam-25-group-policy-requirements.md" data-raw-source="[Planning for MBAM 2.5 Group Policy Requirements](../mbam-v25/planning-for-mbam-25-group-policy-requirements.md)">Planning for MBAM 2.5 Group Policy Requirements</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p>MBAM 2.0 including 2.0 SP1</p></td>
<td align="left"><p><a href="../mbam-v2/planning-for-mbam-20-group-policy-requirements-mbam-2.md" data-raw-source="[Planning for MBAM 2.0 Group Policy Requirements](../mbam-v2/planning-for-mbam-20-group-policy-requirements-mbam-2.md)">Planning for MBAM 2.0 Group Policy Requirements</a></p>
<p><a href="../mbam-v2/deploying-mbam-20-group-policy-objects-mbam-2.md" data-raw-source="[Deploying MBAM 2.0 Group Policy Objects](../mbam-v2/deploying-mbam-20-group-policy-objects-mbam-2.md)">Deploying MBAM 2.0 Group Policy Objects</a></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>MBAM 1.0</p></td>
<td align="left"><p><a href="../mbam-v1/how-to-edit-mbam-10-gpo-settings.md" data-raw-source="[How to Edit MBAM 1.0 GPO Settings](../mbam-v1/how-to-edit-mbam-10-gpo-settings.md)">How to Edit MBAM 1.0 GPO Settings</a></p></td>
</tr>
</tbody>
</table>

 

 

 





