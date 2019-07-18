---
title: NetworkQoSPolicy (Windows 10)
description: This section describes the NetworkQoSPolicy settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
ms.reviewer: 
manager: dansimp
---

# NetworkQoSPolicy (Windows Configuration Designer reference)

Use to create network Quality of Service (QoS) policies. A QoS policy performs a set of actions on network traffic based on a set of matching conditions. 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |   |  | X |  |  |

1. In **Available customizations**, select **NetworkQ0SPolicy**, enter a friendly name for the account, and then click **Add**.
2. In **Available customizations**, select the name that you just created. The following table describes the settings you can configure. 

| Setting | Description |
| --- | --- |
| AppPathNameMatchCondition | Enter the name of an application to be sued to match the network traffic, such as application.exe or %ProgramFiles%\application.exe.  |
| DestinationPortMatchCondition | Specify a port or a range of ports to be used to match the network traffic. Valid values are [first port number]-[last port number], or [port number]. |
| DSCPAction | Enter the differentiated services code point (DSCP) value to apply to match with network traffic. Valid values are 0-63. |
| IPProtocolMatchCondition | Select between **Both TCP and UDP**, **TCP**, and **UDP** to specify the IP protocol used to match the network traffic.   |
| PriorityValue8021Action | Specify the IEEE 802.1p value. Valid values are 0 through 7. |
| SourcePortMatchCondition | Specify a single port or range of ports. Valid values are [first port number]-[last port number], or [port number]. |

## Related topics

- [NetworkQoSPolicy configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/networkqospolicy-csp)
