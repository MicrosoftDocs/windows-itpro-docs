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
-   Windows 10, version 1703

Starting with Windows 10, version 1703, you can save an App-V project template (.appvt) file as part of a sequenced App-V package, so it's automatically loaded every time the package opens for editing or updates. Your template can include general option settings, file exclusion list settings, and target operating system settings.

>[!NOTE]
>App-V project templates differ from App-V Package Accelerators because App-V Package Accelerators are application-specific, while App-V project templates can be applied to multiple applications. For more info about Package Accelerators, see the [How to create a Package Accelerator](appv-create-a-package-accelerator.md) topic.

## Create a project template
You must first create and save a project template, including a virtual app package with settings to be used by the template.

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

- [Automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-provision-a-vm.md)

- [Manually sequence a single app using the Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md)

**Have a suggestion for App-V?**<p>
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).
