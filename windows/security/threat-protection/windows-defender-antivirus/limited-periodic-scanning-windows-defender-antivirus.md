---
title: Enable the limited periodic Windows Defender Antivirus scanning feature
description: Limited periodic scanning lets you use Windows Defender Antivirus in addition to your other installed AV providers
keywords: lps, limited, periodic, scan, scanning, compatibility, 3rd party, other av, disable
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
---



# Use limited periodic scanning in Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Limited periodic scanning is a special type of threat detection and remediation that can be enabled when you have installed another antivirus product on a Windows 10 device.

It can only be enabled in certain situations. See [Windows Defender Antivirus compatibility](windows-defender-antivirus-compatibility.md) for more information on when limited periodic scanning can be enabled, and how Windows Defender Antivirus works with other AV products.

**Microsoft does not recommend using this feature in enterprise environments. This is a feature primarily intended for consumers.** This feature only uses a very limited subset of the Windows Defender Antivirus capabilities to detect malware, and will not be able to detect most malware and potentially unwanted software. Also, management and reporting capabilities will be limited. Microsoft recommends enterprises choose their primary antivirus solution and use it exclusively.

## How to enable limited periodic scanning

By default, Windows Defender Antivirus will enable itself on a Windows 10 device if there is no other antivirus product installed, or if the other product is out-of-date, expired, or not working correctly.

If Windows Defender Antivirus is enabled, the usual options will appear to configure it on that device:

![Windows Security app showing Windows Defender AV options, including scan options, settings, and update options](images/vtp-wdav.png)

If another antivirus product is installed and working correctly, Windows Defender Antivirus will disable itself. The Windows Security app will change the **Virus & threat protection** section to show status about the AV product, and provide a link to the product's configuration options:

![Windows Security app showing ContosoAV as the installed and running antivirus provider. There is a single link to open ContosoAV settings.](images/vtp-3ps.png)

Underneath any 3rd party AV products, a new link will appear as **Windows Defender Antivirus options**. Clicking this link will expand to show the toggle that enables limited periodic scanning. 

![The limited periodic option is a toggle to enable or disable **periodic scanning**](images/vtp-3ps-lps.png)

Sliding the swtich to **On** will show the standard Windows Defender AV options underneath the 3rd party AV product. The limited periodic scanning option will appear at the bottom of the page.

![When enabled, periodic scanning shows the normal Windows Defender Antivirus options](images/vtp-3ps-lps-on.png)

## Related topics

- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
