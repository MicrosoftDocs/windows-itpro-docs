---
title: Create and apply an App-V project template to a sequenced App-V package (Windows 10)
description: Steps for how to create and apply an App-V project template (.appvt) to a sequenced App-V package.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/10/2018
ms.topic: article
---
# Create and apply an App-V project template to a sequenced App-V package

>Applies to: Windows 10, version 1607

You can use an App-V Project Template (.appvt) file to save commonly applied settings associated with an existing virtual application package. You can then apply these settings whenever you create new virtual application packages in your environment, streamlining the package creation process. App-V Project Templates differ from App-V Package Accelerators because App-V Package Accelerators are application-specific, while App-V Project Templates can be applied to multiple applications. To learn more about package accelerators, see [How to create a package accelerator](appv-create-a-package-accelerator.md).

>[!IMPORTANT]
>In Windows 10, version 1703, running the **New-AppvSequencerPackage** or the **Update-AppvSequencerPackage** cmdlets will automatically capture and store your customizations as an App-V Project Template. If you want to make changes to this package later, you can automatically load your customizations from this template file. If you have an auto-saved template and you attempt to load another template through the *TemplateFilePath* parameter, the customization value from the parameter will override the auto-saved template.

## Create a project template

You must first create and save a project template, including a virtual app package with settings to be used by the template.

1. On the device running the App-V Sequencer, select **Start**, select **All Programs**, select **Microsoft Application Virtualization**, and then select **Microsoft Application Virtualization Sequencer**.

    >[!NOTE]
    >If the virtual app package is currently open in the App-V Sequencer console, skip to Step 3 of this procedure.

2. On the **File** menu, select **Open**, select **Edit Package**, browse for the virtual app package that includes the settings you want to save with the App-V Project Template, and then select **Edit** to change any of the settings or info included in the file.

3. On the **File** menu, select **Save As Template**, review the settings associated with the new template, select **OK**, name your new template, and then select **Save**.

    The new App-V Project Template is saved in the folder you specified.

## Apply a project template

After creating the template, you can apply it to all of your new virtual app packages, automatically including all of the settings.

>[!IMPORTANT]
>Virtual app packages don't support using both a project template and a package accelerator at the same time.

1. On the device running the App-V Sequencer, select **Start** > **All Programs** > **Microsoft Application Virtualization** > **Microsoft Application Virtualization Sequencer**.

2. On the **File** menu, select **New From Template**, browse to your newly created project template and select **Open**.

3. Create your new virtual app package. The settings saved with your template are automatically applied.

### Related topics

- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)
- [How to install the App-V Sequencer](appv-install-the-sequencer.md)
- [Learn about Hyper-V on Windows Server 2016](https://technet.microsoft.com/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)
- [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md)
- [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-updating.md)
- [Manually sequence a new app using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md)




