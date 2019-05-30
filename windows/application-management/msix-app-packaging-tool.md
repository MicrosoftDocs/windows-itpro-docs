---
title: Repackage your existing win32 applications to the MSIX format.
description: Learn how to install and use the MSIX packaging tool.
keywords: ["MSIX", "application", "app", "win32", "packaging tool"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.author: tracyp
ms.topic: article
ms.date: 12/03/2018
---

# Repackage existing win32 applications to the MSIX format

MSIX is a packaging format built to be safe, secure and reliable, based on a combination of .msi, .appx, App-V and ClickOnce installation technologies. You can [use the MSIX packaging tool](https://docs.microsoft.com/windows/msix/packaging-tool/create-app-package-msi-vm) to repackage your existing Win32 applications to the MSIX format. 

You can either run your installer interactively (through the UI) or create a package from the command line. Either way, you can convert an application without having the source code. Then, you can make your app available through the Microsoft Store.

- [Package your favorite application installer](https://docs.microsoft.com/windows/msix/packaging-tool/create-app-package-msi-vm) interactively (msi, exe, App-V 5.x and ClickOnce) in MSIX format. 
- Create a [modification package](https://docs.microsoft.com/windows/msix/packaging-tool/package-editor) to update an existing MSIX package.
- [Bundle multiple MSIX packages](https://docs.microsoft.com/windows/msix/packaging-tool/bundle-msix-packages) for distribution. 

## Installing the MSIX Packaging Tool

### Prerequisites

- Windows 10, version 1809 (or later)
- Participation in the Windows Insider Program (if you're using an Insider build)
- A valid Microsoft account (MSA) alias to access the app from the Microsoft Store 
- Admin privileges on your PC account 

### Get the app from the Microsoft Store

1. Use the MSA login associated with your Windows Insider Program credentials in the [Microsoft Store](https://www.microsoft.com/store/r/9N5LW3JBCXKF). 
2. Open the product description page.
3. Click the install icon to begin installation.
