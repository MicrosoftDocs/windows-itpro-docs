---
title: Take tests in Windows 10
description: Learn how to set up and use the Take a Test app.
keywords: ["shared cart", "shared PC", "school"]
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: library
author: jdeckerMS
---

# Take tests in Windows 10 (Preview)
**Applies to:**

-   Windows 10 Insider Preview  


> <span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. ]</span>

Many schools use online testing for formative and summative assessments. It's critical that students use a secure browser that prevents them from using other computer or Internet resources during the test. The **Take a Test** app in Windows 10, Version 1607, creates the right environment for taking a test:

- **Take a Test** shows just the test and nothing else.
- Students aren’t able to go to other websites.
- Students can’t open or access other apps.
- Students can't share, print, or record their screens.
- Students can’t copy or paste.
- Students can’t change settings, extend their display, see notifications, get updates, or use autofill features.
- Cortana is turned off.


**Take a Test** is included in Windows 10 Education. To add **Take a Test** to other editions of Windows 10, see [Add the Take a Test app to Windows 10](#add-the-take-a-test-app-to-windows-10)

## How you use Take a Test

![Use test account or test url in Take a Test](images/take-a-test-flow.png)

- **Use a test URL and a dedicated testing account** - A user signs in to the account and the **Take a Test** app automatically launches the pre-configured assessment URL in a single-app, kiosk mode. A student will never have access to the desktop in this configuration. We recommend this configuration for high stakes testing.
- **Put a test URL with an included prefix on a web page or OneNote for students to click** - This allows teachers and test administrators an easier way to deploy assessments. We recommend this method for lower stakes assessments.

[Learn how to set up Take a Test on a single PC](take-a-test-single-pc.md)

[Learn how to set up Take a Test on multiple PCs](take-a-test-multiple-pcs.md)

## Add the Take a Test app to Windows 10

You can add the Take a Test app to Windows 10 Pro and Enterprise.

### Add Take a Test on a single PC

Use **Settings** to get **Take a Test** from Windows Update.

1. Open **Settings**.
2. Go to **System** > **Apps & features** > **Manage optional features** > **Add a feature**.
3. Select **Take a Test**.

### Deploy Take a Test to multiple PCs using DISM

You can deploy the Take a Test package through Deployment Image Servicing and Management (DISM.exe).

1. Get the Take a Test package from the [Microsoft update catalog](http://catalog.update.microsoft.com/).
2. Upload the package to a network share or to your Windows Server Update Services (WSUS) server.
3. Create and deploy a DISM script to add the package to offline or online images. For more information on how to add or enable features through DISM, see [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/dism-operating-system-package-servicing-command-line-options).

## Related topics

[Take a Test app technical reference](take-a-test-app-technical.md)



