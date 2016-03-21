---
title: Customize Windows 10 Start with mobile device management (MDM) (Windows 10)
description: In Windows 10 Enterprise and Windows 10 Education, you can use a mobile device management (MDM) policy to deploy a customized Start layout to users.
ms.assetid: F487850D-8950-41FB-9B06-64240127C1E4
keywords: ["start screen", "start menu"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Customize Windows 10 Start with mobile device management (MDM)


**Applies to**

-   Windows 10

**Looking for consumer information?**

-   [Customize the Start menu](http://go.microsoft.com/fwlink/p/?LinkId=623630)

In Windows 10 Enterprise and Windows 10 Education, you can use a mobile device management (MDM) policy to deploy a customized Start layout to users. No reimaging is required, and the Start layout can be updated simply by overwriting the .xml file that contains the layout. This enables you to customize Start layouts for different departments or organizations, with minimal management overhead.

**Before you begin**: [Customize and export Start layout](customize-and-export-start-layout.md)

**Warning**  
When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups.

 

## <a href="" id="bkmk-howstartscreencontrolworks"></a>How Start layout control works


Two features enable Start layout control:

-   The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format. **Start layout** can only be applied to a device using the same architecture (32-bit or 64-bit) as the device on which **Start layout** was created.

    **Note**  
    To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](http://go.microsoft.com/fwlink/p/?LinkId=623707) cmdlet.

     

-   In MDM, you set the path to the .xml file that defines the Start layout using an OMA-URI setting, which is based on the [Policy configuration service provider (CSP)](http://go.microsoft.com/fwlink/p/?LinkID=623244).

## <a href="" id="bkmk-domaingpodeployment"></a>Create a policy for your customized Start layout


This example uses Microsoft Intune to configure an MDM policy that applies a customized Start layout. See the documentation for your MDM solution for help in applying the policy.

1.  In the Start layout file created when you ran **Export-StartLayout**, replace markup characters with escape characters, and save the file. (You can replace the characters manually or use an online tool.)

    Example of a layout file produced by Export-StartLayout:

    <span codelanguage="XML"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">XML</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>&lt;LayoutModificationTemplate Version=&quot;1&quot; xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;&gt;
      &lt;DefaultLayoutOverride&gt;
        &lt;StartLayoutCollection&gt;
          &lt;defaultlayout:StartLayout GroupCellWidth=&quot;6&quot; xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot;&gt;
            &lt;start:Group Name=&quot;Life at a glance&quot; xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot;&gt;
              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;0&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge&quot; /&gt;
              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI&quot; /&gt;
              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;2&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
            &lt;/start:Group&gt;        
          &lt;/defaultlayout:StartLayout&gt;
        &lt;/StartLayoutCollection&gt;
      &lt;/DefaultLayoutOverride&gt;
    &lt;/LayoutModificationTemplate&gt;</code></pre></td>
    </tr>
    </tbody>
    </table>

    Example of the same layout file with escape characters replacing the markup characters:

    <span codelanguage="XML"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">XML</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>&amp;lt;wdcml:p xmlns:wdcml=&amp;quot;http://microsoft.com/wdcml&amp;quot;&amp;gt;Example of a layout file produced by Export-StartLayout:&amp;lt;/wdcml:p&amp;gt;&amp;lt;wdcml:snippet xmlns:wdcml=&amp;quot;http://microsoft.com/wdcml&amp;quot;&amp;gt;&amp;lt;![CDATA[&amp;lt;LayoutModificationTemplate Version=&amp;quot;1&amp;quot; xmlns=&amp;quot;http://schemas.microsoft.com/Start/2014/LayoutModification&amp;quot;&amp;gt;
      &amp;lt;DefaultLayoutOverride&amp;gt;
        &amp;lt;StartLayoutCollection&amp;gt;
          &amp;lt;defaultlayout:StartLayout GroupCellWidth=&amp;quot;6&amp;quot; xmlns:defaultlayout=&amp;quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&amp;quot;&amp;gt;
            &amp;lt;start:Group Name=&amp;quot;Life at a glance&amp;quot; xmlns:start=&amp;quot;http://schemas.microsoft.com/Start/2014/StartLayout&amp;quot;&amp;gt;
              &amp;lt;start:Tile Size=&amp;quot;2x2&amp;quot; Column=&amp;quot;0&amp;quot; Row=&amp;quot;0&amp;quot; AppUserModelID=&amp;quot;Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge&amp;quot; /&amp;gt;
              &amp;lt;start:Tile Size=&amp;quot;2x2&amp;quot; Column=&amp;quot;4&amp;quot; Row=&amp;quot;0&amp;quot; AppUserModelID=&amp;quot;Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI&amp;quot; /&amp;gt;
              &amp;lt;start:Tile Size=&amp;quot;2x2&amp;quot; Column=&amp;quot;2&amp;quot; Row=&amp;quot;0&amp;quot; AppUserModelID=&amp;quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&amp;quot; /&amp;gt;
            &amp;lt;/start:Group&amp;gt;        
          &amp;lt;/defaultlayout:StartLayout&amp;gt;
        &amp;lt;/StartLayoutCollection&amp;gt;
      &amp;lt;/DefaultLayoutOverride&amp;gt;
    &amp;lt;/LayoutModificationTemplate&amp;gt;]]&amp;gt;&amp;lt;/wdcml:snippet&amp;gt;</code></pre></td>
    </tr>
    </tbody>
    </table>

2.  In the Microsoft Intune administration console, click **Policy** &gt; **Add Policy**.

3.  Under **Windows**, choose a **Custom Configuration (Windows 10 Desktop and Mobile and later)** policy.

4.  Enter a name (mandatory) and description (optional) for the policy.

5.  In the **OMA-URI Settings** section, click **Add.**

6.  In **Add or Edit OMA-URI Setting**, enter the following information.

    | Item                         | Information                                                                                                       |
    |------------------------------|-------------------------------------------------------------------------------------------------------------------|
    | **Setting name**             | Enter a unique name for the OMA-URI setting to help you identify it in the list of settings.                      |
    | **Setting description**      | Provide a description that gives an overview of the setting and other relevant information to help you locate it. |
    | **Data type**                | **String**                                                                                                        |
    | **OMA-URI (case sensitive)** | **./User/Vendor/MSFT/Policy/Config/Start/StartLayout**                                                            |
    | **Value**                    | Path to the Start layout .xml file that you created.                                                              |

     

7.  Click **OK** to save the setting and return to the **Create Policy** page.

8.  Click **Save Policy**.

## Related topics


[Manage Windows 10 Start layout options](windows-10-start-layout-options-and-policies.md)

[Customize and export Start layout](customize-and-export-start-layout.md)

[Customize Windows 10 Start with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)

[Customize Windows 10 Start with ICD and provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)

[Use Windows 10 custom policies to manage device settings with Microsoft Intune](http://go.microsoft.com/fwlink/p/?LinkID=616316)

 

 





