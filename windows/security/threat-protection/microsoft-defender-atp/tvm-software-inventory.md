---
title: Software inventory in threat and vulnerability management
description: The software inventory page for Microsoft Defender ATP's threat and vulnerability management shows how many weaknesses and vulnerabilities have been detected in software.
keywords: threat and vulnerability management, microsoft defender atp, microsoft defender atp software inventory, mdatp threat & vulnerability management, mdatp threat & vulnerability management software inventory, mdatp tvm software inventory, tvm software inventory
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---
# Software inventory - threat and vulnerability management

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

The software inventory in threat and vulnerability management is a list of all the software in your organization. It also includes details such as the name of the vendor, number of weaknesses, threats, and number of exposed devices.

## How it works

In the field of discovery, we're leveraging the same set of signals that is responsible for detection and vulnerability assessment in [Microsoft Defender ATP endpoint detection and response capabilities](overview-endpoint-detection-response.md).

Since it's real time, in a matter of minutes, you'll see vulnerability information as they get discovered. The engine automatically grabs information from multiple security feeds. In fact, you'll see if a particular software is connected to a live threat campaign. It also provides a link to a Threat Analytics report soon as it's available.

## Navigate to the Software inventory page

Access the Software inventory page by selecting **Software inventory** from the threat and vulnerability management navigation menu in the [Microsoft Defender Security Center](portal-overview.md).

View software on specific devices in the individual devices pages from the [devices list](machines-view-overview.md).

## Software inventory overview

The **Software inventory** page opens with a list of software installed in your network, including the vendor name, weaknesses found, threats associated with them, exposed devices, impact to exposure score, and tags. You can filter the list view based on weaknesses found in the software, threats associated with them, and whether the software or software versions have reached end-of-support.
![Example of the landing page for software inventory.](images/software_inventory_filter.png)

Select the software that you want to investigate. A flyout panel will open with a more compact view of the information on the page. You can either dive deeper into the investigation and select **Open software page**, or flag any technical inconsistencies by selecting **Report inaccuracy**.

![Flyout example page of "Visual Studio 2017" from the software inventory page.](images/tvm-software-inventory-flyout500.png)

## Software pages

You can view software pages a few different ways:

- Software inventory page > Select a software name > Select **Open software page** in the flyout
- [Security recommendations page](tvm-security-recommendation.md) > Select a recommendation > Select **Open software page** in the flyout
- [Event timeline page](threat-and-vuln-mgt-event-timeline.md) > Select an event > Select the hyperlinked software name (like Visual Studio 2017) in the section called "Related component" in the flyout

 A full page will appear with all the details of a specific software and the following information:

- Side panel with vendor information, prevalence of the software in the organization (including number of devices it's installed on, and exposed devices that aren't patched), whether and exploit is available, and impact to your exposure score
- Data visualizations showing the number of, and severity of, vulnerabilities and misconfigurations. Also, graphs with the number of exposed devices
- Tabs with lists of the corresponding security recommendations for the weaknesses and vulnerabilities identified, the named CVEs of discovered vulnerabilities, the names of the devices that the software is installed on, and the specific versions of the software with the number of devices that have each version installed and number of vulnerabilities.

    ![Software example page for Visual Studio 2017 with the software details, weaknesses, exposed devices, and more.](images/tvm-software-page-example.png)

## Software evidence

We now show evidence of where we detected a specific software on a device from the registry, disk or both.
You can find it on any devices found in the [devices list](machines-view-overview.md) in a section called "Software Evidence."

From the Microsoft Defender Security Center navigation panel, go to the **Devices list**. Select the name of a device to open the device page (like Computer1) > select the **Software inventory** tab > select the software name to open the flyout and view software evidence.

![Software evidence example of Windows 10 from the devices list, showing software evidence registry path.](images/tvm-software-evidence.png)

## Report inaccuracy

Report a false positive when you see any vague, inaccurate, or incomplete information. You can also report on security recommendations that have already been remediated.

1. Open the software flyout on the Software inventory page.
2. Select **Report inaccuracy**.
3. From the flyout pane, select the inaccuracy category from the drop-down menu, fill in your email address, and details about the inaccuracy.
4. Select **Submit**. Your feedback is immediately sent to the threat and vulnerability management experts.

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat and vulnerability management dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Weaknesses](tvm-weaknesses.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [APIs](next-gen-threat-and-vuln-mgt.md#apis)
- [Configure data access for threat and vulnerability management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
