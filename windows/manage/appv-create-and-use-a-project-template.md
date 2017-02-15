---
title: Create and apply an App-V project template to a sequenced App-V package (Windows 10)
description: Steps for how to create and apply an App-V project template (.appvt) to a sequenced App-V package.
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Create and apply an App-V project template to a sequenced App-V package

**Applies to**
-   Windows 10, version 1607

You can use an App-V project template (.appvt) file to save commonly applied settings associated with an existing virtual application package. These settings can then be applied when you create new virtual application packages in your environment. Using a project template can streamline the process of creating virtual application packages. App-V project templates differ from App-V Package Accelerators because App-V Package Accelerators are application-specific, while App-V project templates can be applied to multiple applications. For more info about Package Accelerators, see the [How to create a Package Accelerator](appv-create-a-package-accelerator.md) topic.

>[!IMPORTANT]
>In Windows 10, version 1703, running the new-appvsequencerpackage or the update-appvsequencepackage cmdlets automatically captures and stores all of your customizations as an App-V project template. If you want to make changes to this package later, your customizations are automatically loaded from this template file. If you have an auto-saved template and you attempt to load another template through the _TemplateFilePath_ parameter, the customization value from the parameter will override the auto-saved template.


## Create a project template
You must first create and save a project template, including a virtual app package with settings to be used by the template.

**To create a project template**

1. On the device running the App-V Sequencer, click **Start**, click **All Programs**, click **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.

    >[!NOTE]
    >If the virtual app package is currently open in the App-V Sequencer console, skip to Step 3 of this procedure.

2. On the **File** menu, click **Open**, click **Edit Package**, browse for the virtual app package that includes the settings you want to save with the App-V project template, and then click **Edit** to change any of the settings or info included in the file.

3. On the **File** menu, click **Save As Template**, review the settings associated with the new template, click **OK**, name your new template, and then click **Save**.

    The new App-V project template is saved in the folder you specified.

## Apply a project template
After creating the template, you can apply it to all of your new virtual app packages, automatically including all of the settings.

>[!IMPORTANT]
>Virtual app packages don't support using both a project template and a Package Accelerator together.

1. On the device running the App-V Sequencer, click **Start**, click **All Programs**, click **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.

2. On the **File** menu, click **New From Template**, browse to your newly created project template, and then click **Open**.

3. Create your new virtual app package. The settings saved with your template are automatically applied.

### Related topics
- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)

- [How to install the App-V Sequencer](appv-install-the-sequencer.md)

- [Learn about Hyper-V on Windows Server 2016](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)

- [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md)

- [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-updating.md)

- [Manually sequence a new app using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md)

**Have a suggestion for App-V?**<p>
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).
