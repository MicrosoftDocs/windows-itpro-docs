---
title: Configuring UE-V 2.x with System Center Configuration Manager 2012
description: Configuring UE-V 2.x with System Center Configuration Manager 2012
author: levinec
ms.assetid: 9a4e2a74-7646-4a77-b58f-2b4456487295
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/02/2016
---


# Configuring UE-V 2.x with System Center Configuration Manager 2012


After you install Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, or 2.1 SP1 and their required features, UE-V must be configured. The UE-V Configuration Pack provides a way for administrators to use the Compliance Settings feature of System Center Configuration Manager 2012 SP1 or later to apply consistent configurations across sites where UE-V and Configuration Manager are installed.

## UE-V Configuration Pack supported features


The UE-V Configuration Pack includes tools to perform the following tasks:

-   Create or update UE-V settings location template distribution baselines.

    -   Define UE-V templates to be registered or unregistered

    -   Update UE-V template configuration items and baselines as templates are added or updated

    -   Distribute and register UE-V templates using standard Configuration Item remediation

-   Create or update a UE-V Agent policy configuration item to set or clear these settings.

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Max package size</p></td>
    <td align="left"><p>Enable/disable Windows app sync</p></td>
    <td align="left"><p>Wait for sync on application start</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Setting import delay</p></td>
    <td align="left"><p>Sync unlisted Windows apps</p></td>
    <td align="left"><p>Wait for sync on logon</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Settings import notification</p></td>
    <td align="left"><p>IT contact URL</p></td>
    <td align="left"><p>Wait for sync timeout</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Settings storage path</p></td>
    <td align="left"><p>IT contact descriptive text</p></td>
    <td align="left"><p>Settings template catalog path</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Sync enablement</p></td>
    <td align="left"><p>Tray icon enabled</p></td>
    <td align="left"><p>Start/Stop UE-V agent service</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Sync method</p></td>
    <td align="left"><p>First use notification</p></td>
    <td align="left"><p>Define which Windows apps will roam settings</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Sync timeout</p></td>
    <td align="left"><p></p></td>
    <td align="left"><p></p></td>
    </tr>
    </tbody>
    </table>

     

-   Verify compliance by confirming that UE-V is running.

## Generate a UE-V Agent Policy Configuration Item


All UE-V Agent policy and configuration is distributed through a single configuration item that is generated using the UevAgentPolicyGenerator.exe tool. This tool reads the desired configuration from an XML configuration file and creates a CI containing the discovery and remediation settings needed to bring the machine into compliance.

The UE-V Agent policy configuration item CAB file is created using the UevTemplateBaselineGenerator.exe command line tool, which has these parameters:

-   Site &lt;site code&gt;

-   PolicyName &lt;name&gt; Optional: Defaults to “UE-V Agent Policy” if not present

-   PolicyDescription &lt;description&gt; Optional: A description is provided if not present

-   CabFilePath &lt;full path to configuration item .CAB file&gt;

-   ConfigurationFile &lt;full path to agent configuration XML file&gt;

**Note**  
It might be necessary to change the PowerShell execution policy to allow these scripts to run in your environment. Perform these steps in the Configuration Manager console:

1.  Select **Administration &gt; Client Settings &gt; Properties**

2.  In the **User Agent** tab, set the **PowerShell Execution Policy** to **Bypass**

<a href="" id="create"></a>**Create the First UE-V Policy Configuration Item**

1.  Copy the default settings configuration file from the UE-V Config Pack installation directory to a location visible to your ConfigMgr Admin Console:

    ``` syntax
    C:\Program Files (x86)\Microsoft User Experience Virtualization\ConfigPack\AgentConfiguration.xml c:\<target path>
    ```

    The default configuration file contains five sections:

    <a href="" id="computer-policy"></a>**Computer Policy**  
    All UE-V machine level settings. The DesiredState attribute can be

    -   **Set** to have the value assigned in the registry

    -   **Clear** to remove the setting

    -   **Unmanaged** to have the configuration item left at its current state

    Do not remove lines from this section. Instead, set the DesiredState to ‘Unmanaged’ if you do not want Configuration Manager to alter current or default values.

    <a href="" id="currentcomputeruserpolicy"></a>**CurrentComputerUserPolicy**  
    All UE-V user level settings. These entries override the machine settings for a user. The DesiredState attribute can be

    -   **Set** to have the value assigned in the registry

    -   **Clear** to remove the setting

    -   **Unmanaged** to have the configuration item left at its current state

    Do not remove lines from this section. Instead, set the DesiredState to ‘Unmanaged’ if you do not want Configuration Manager to alter current or default values.

    <a href="" id="services"></a>**Services**  
    Entries in this section control service operation. The default configuration file contains a single entry for the UevAgentService. The DesiredState attribute can be set to **Running** or **Stopped**.

    <a href="" id="windows8appscomputerpolicy"></a>**Windows8AppsComputerPolicy**  
    All machine level Windows app synchronization settings. Each PackageFamilyName listed in this section can be assigned a DesiredState of

    -   **Enabled** to have settings roam

    -   **Disabled** to prevent settings from roaming

    -   **Cleared** to have the entry removed from UE-V control

    Additional lines can be added to this section based on the list of installed Windows apps that can be viewed using the PowerShell cmdlet GetAppxPackage.

    <a href="" id="windows8appscurrentcomputeruserpolicy"></a>**Windows8AppsCurrentComputerUserPolicy**  
    Identical to the Windows8AppsComputerPolicy with settings that override machine settings for an individual user.

2.  Edit the configuration file by changing the desired state and value fields.

3.  Run this command on a machine running the ConfigMgr Admin Console:

    ``` syntax
    C:\Program Files (x86)\Microsoft User Experience Virtualization\ConfigPack\UevAgentPolicyGenerator.exe –Site ABC –CabFilePath "C:\MyCabFiles\UevPolicyItem.cab" –ConfigurationFile "c:\AgentConfiguration.xml"
    ```

4.  Import the CAB file using ConfigMgr console or PowerShell Import-CMConfigurationItem

**Update a UE-V Policy Configuration Item**

1.  Edit the configuration file by changing the desired state and value fields.

2.  Run the command from Step 3 in [Create the First UE-V Policy Configuration Item](#create). If you changed the name with the PolicyName parameter, make sure you enter the same name.

3.  Reimport the CAB file. The version in ConfigMgr will be updated.

## Generate a UE-V Template Baseline
UE-V templates are distributed using a baseline containing multiple configuration items. Each configuration item contains the discovery and remediation scripts needed to install one UE-V template. The actual UE-V template is embedded within the remediation script for distribution using standard Configuration Item functionality.

The UE-V template baseline is created using the UevTemplateBaselineGenerator.exe command line tool, which has these parameters:

-   Site &lt;site code&gt;

-   BaselineName &lt;name&gt; (Optional: defaults to “UE-V Template Distribution Baseline” if not present)

-   BaselineDescription &lt;description&gt; (Optional: a description is provided if not present)

-   TemplateFolder &lt;UE-V template folder&gt;

-   Register &lt;comma separated template file list&gt;

-   Unregister &lt;comma separated template list&gt;

-   CabFilePath &lt;Full path to baseline CAB file to generate&gt;

The result is a baseline CAB file that is ready for import into Configuration Manager. If at a future date, you update or add a template, you can rerun the command using the same baseline name. Importing the CAB results in CI version updates on the changed templates.

### <a href="" id="create2"></a>Create the First UE-V Template Baseline

1.  Create a “master” set of UE-V templates in a stable folder location visible to the machine running your ConfigMgr Admin Console. As templates are added or updated, this folder is where they are pulled for distribution. The initial list of templates can be copied from a machine with UE-V installed. The default template location is C:\\Program Files\\Microsoft User Experience Virtualization\\Templates.

2.  Create a text.bat file where you can add the template generator command. This is optional, but will make regeneration simpler if you save the command parameters.

3.  Add the command and parameters to the .bat file that will generate the baseline. The following example creates a baseline that distributes Notepad and Calculator:

    ``` syntax
    C:\Program Files (x86)\Microsoft User Experience Virtualization\ConfigPack\UevTemplateBaselineGenerator.exe –Site "ABC" –TemplateFolder "C:\ProductionUevTemplates" –Register "MicrosoftNotepad.xml, MicrosoftCalculator.xml" –CabFilePath "C:\MyCabFiles\UevTemplateBaseline.cab"
    ```

4.  Run the .bat file to create UevTemplateBaseline.cab ready for import into Configuration Manager.

### Update a UE-V Template Baseline

The template generator uses the template version to determine if a template should be updated. If you make a template change and update the version, the baseline generator compares the template in your master folder with the template contained in the CI on the ConfigMgr server. If a difference is found, the generated baseline and modified CI versions are updated.

To distribute a new Notepad template, you would perform these steps:

1.  Update the template and template version located in the &lt;Version&gt; element of the template.

2.  Copy the template to your master template directory.

3.  Run the command in the .bat file that you created in Step 3 in [Create the First UE-V Template Baseline](#create2).

4.  Import the generated CAB file into ConfigMgr using the console or PowerShell Import-CMBaseline.

## Get the UE-V Configuration Pack


The UE-V Configuration Pack for Configuration Manager 2012 SP1 or later can be downloaded [here](https://go.microsoft.com/fwlink/?LinkId=317263).






## Related topics


[Manage Configurations for UE-V 2.x](manage-configurations-for-ue-v-2x-new-uevv2.md)

 

 





