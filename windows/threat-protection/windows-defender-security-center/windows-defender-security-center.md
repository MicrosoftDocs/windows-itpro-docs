---
title: Windows Defender Security Center 
description: The Windows Defender Security Center brings together common Windows security features into one place
keywords: wdav, smartscreen, antivirus, wdsc, firewall, device health, performance, Edge, browser, family, parental options, security, windows
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---





# The Windows Defender Security Center

**Applies to**

- Windows 10, version 1703




In Windows 10, version 1703 we introduced the new Windows Defender Security Center, which brings together common Windows security features into one, easy-to-use app.




![Screen shot of the Windows Defender Security Center showing that the device is protected and five icons for each of the features](images/security-center-home.png)




Many settings that were previously part of the individual features and main Windows Settings have been combined and moved to the new app, which is installed out-of-the-box as part of Windows 10, version 1703.

The app includes the settings and status for the following security features:

- Virus & threat protection, including settings for Windows Defender Antivirus
- Device performance & health, which includes information about drivers, storage space, and general Windows Update issues
- Firewall & network protection, including Windows Firewall
- App & browser control, covering Windows Defender SmartScreen settings
- Family options, which include a number of parental controls along with tips and information for keeping kids safe online



The Windows Defender Security Center uses the [Windows Security Center service](https://technet.microsoft.com/en-us/library/bb457154.aspx#EDAA) to provide the status and information on 3rd party antivirus and firewall products that are installed on the device. 

> [!IMPORTANT] 
> Disabling the Windows Security Center service will not disable Windows Defender AV or [Windows Firewall](https://docs.microsoft.com/en-us/windows/access-protection/windows-firewall/windows-firewall-with-advanced-security). These will be disabled automatically when a 3rd party antivirus or firewall product is installed and kept up to date.

> [!WARNING] 
> If you do disable the Windows Security Center service, or configure its associated Group Policy settings to prevent it from starting or running, the Windows Defender Security Center may display stale or inaccurate information about any antivirus or firewall products you have installed on the device. 
>It may also prevent Windows Defender AV from enabling itself if you have an old or outdated 3rd party antivirus, or if you uninstall any 3rd party antivirus products you may have previously installed. 
>This will significantly lower the protection of your device and could lead to malware infection.


## Open the Windows Defender Security Center
- Right-click the icon in the notification area on the taskbar and click **Open**.

    ![Screen shot of the Shield icon for the Windows Defender Security Center in the bottom Windows task bar](images/security-center-taskbar.png)
- Search the Start menu for **Windows Defender Security Center**.

    ![Screen shot of the Start menu showing the results of a search for Windows Defender Security Center, the first option with a large shield symbol is selected](images/security-center-start-menu.png)


> [!NOTE]
> Settings configured with management tools, such as Group Policy, Microsoft Intune, or System Center Configuration Manager, will generally take precedence over the settings in the Windows Defender Security Center. Review the settings for each feature in its appropriate library. Links for both home user and enterprise or commercial audiences are listed below.

## How the Windows Defender Security Center works with Windows security features




The Windows Defender Security Center operates as a separate app or process from each of the individual features, and will display notifications through the Action Center. 

It acts as a collector or single place to see the status and perform some configuration for each of the features.

Disabling any of the individual features (through Group Policy or other management tools, such as System Center Configuration Manager) will prevent that feature from reporting its status in the Windows Defender Security Center. The Windows Defender Security Center itself will still run and show status for the other security features.

> [!IMPORTANT] 
> Individually disabling any of the services will not disable the other services or the Windows Defender Security Center itself.

For example, [using a 3rd party antivirus will disable Windows Defender Antivirus](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/deploy-manage-report-windows-defender-antivirus). However, the Windows Defender Security Center will still run, show its icon in the taskbar, and display information about the other features, such as Windows Defender SmartScreen and Windows Firewall.

The presence of the 3rd party antivirus will be indicated under the **Virus & threat protection** section in the Windows Defender Security Center.



## More information

See the following links for more information on the features in the Windows Defender Security Center:
- Windows Defender Antivirus
    - IT administrators and IT pros can get configuration guidance from the [Windows Defender Antivirus in the Windows Defender Security Center topic](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/windows-defender-security-center-antivirus) and the [Windows Defender Antivirus documentation library](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10)
    - Home users can learn more at the [Virus & threat protection in Windows Defender Security Center topic at support.microsoft.com](https://support.microsoft.com/en-us/help/4012987/windows-10-virus-threat-protection-windows-defender-security-center)
- Device performance & health
    - It administrators and IT pros can [configure the Load and unload device drivers security policy setting](https://docs.microsoft.com/en-us/windows/device-security/security-policy-settings/load-and-unload-device-drivers), and learn how to [deploy drivers during Windows 10 deployment using System Center Configuration Manager](https://docs.microsoft.com/en-us/windows/deployment/deploy-windows-sccm/add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager)
    - Home users can learn more at the [Track your device and performance health in Windows Defender Security Center topic at support.microsoft.com](https://support.microsoft.com/en-us/help/4012986/windows-defender-track-your-device-performance-health)
- Windows Firewall
    - IT administrators and IT pros can get configuration guidance from the [Windows Firewall with Advanced Security documentation library](https://docs.microsoft.com/en-us/windows/access-protection/windows-firewall/windows-firewall-with-advanced-security)
    - Home users can learn more at the [Firewall & network protection in Windows Defender Security Center topic at support.microsoft.com](https://support.microsoft.com/en-us/help/4012988/windows-10-firewall-network-protection-windows-defender-security-center)
- Windows Defender SmartScreen
    - IT administrators and IT pros can get configuration guidance from the [Windows Defender SmartScreen documentation library](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview)
    - Home users can learn more at the [App & browser control in Windows Defender Security Center topic at support.microsoft.com](https://support.microsoft.com/en-us/help/4013218/windows-10-app-browser-control-in-windows-defender)
- Family options, which include a number of parental controls along with tips and information for keeping kids safe online
    - Home users can learn more at the [Help protection your family online in Windows Defender Security Center topic at support.microsoft.com](https://support.microsoft.com/en-us/help/4013209/windows-10-protect-your-family-online-in-windows-defender)



>[!NOTE]
>The Windows Defender Security Center app is a client interface on Windows 10, version 1703. It is not the Windows Defender Security Center web portal that is used to review and manage [Windows Defender Advanced Threat Protection](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection).





