---
title: Windows Firewall overview 
description: Learn overview information about the Windows Firewall security feature.
ms.topic: conceptual
ms.date: 11/14/2023
---

# Windows Firewall overview

Windows Firewall is a stateful host firewall that helps secure the device by allowing you to create rules that determine which network traffic is permitted to enter the device from the network and which network traffic the device is allowed to send to the network. Windows Firewall supports Internet Protocol security (IPsec), which you can use to require authentication from any device that is attempting to communicate with your device. When authentication is required, devices that can't be authenticated as a trusted device can't communicate with your device. You can use IPsec to require that certain network traffic is encrypted to prevent it from being read by network packet analyzers that could be attached to the network by

Windows Firewall also works with Network Awareness so that it can apply security settings appropriate to the types of networks to which the device is connected.

## Practical applications

To help address your organizational network security challenges, Windows Firewall offers the following benefits:

- **Reduces the risk of network security threats.** Windows Firewall reduces the attack surface of a device, providing an extra layer to the defense-in-depth model. Reducing the attack surface of a device increases manageability and decreases the likelihood of a successful attack.
- **Safeguards sensitive data and intellectual property.** With its integration with IPsec, Windows Firewall provides a simple way to enforce authenticated, end-to-end network communications. It provides scalable, tiered access to trusted network resources, helping to enforce integrity of the data, and optionally helping to protect the confidentiality of the data.
- **Extends the value of existing investments.** Because Windows Firewall is a host-based firewall that is included with the operating system, there's no other hardware or software required. Windows Firewall is also designed to complement existing non-Microsoft network security solutions through a documented application programming interface (API).

[!INCLUDE [windows-firewall](../../../../../includes/licensing/windows-firewall.md)]

## View and manage Windows Firewall

You can use the Windows Sevurity app to view and manage Windows Firewall. Select <kbd>START</kbd>, type `windows security`, and press <kbd>ENTER</kbd>. Once Windows Security is open, select the tab **Firewall & network protection**. Or use the following shortcut:

> [!div class="nextstepaction"]
>
> [Firewall & network protection][SEC-1]

The *Windows Firewall with Advanced Security* MMC snap-in provides more functionality than the Windows Firewall Control Panel applet. Both interfaces interact with the same underlying services, but provide different levels of control over those services. While the Windows Firewall Control Panel applet can protect a single device in a home environment, it doesn't provide enough centralized management or security features to help secure more complex network traffic found in a typical business enterprise environment.

## :::image type="icon" source="images/feedback.svg" border="false"::: Provide feedback

To provide feedback for Windows Firewall, open [**Feedback Hub**][FHUB] (<kbd>WIN</kbd>+<kbd>F</kbd>) and use the category **Security and Privacy** > **Network protection**.

## Next steps

> [!div class="nextstepaction"]
> Learn about the recommendations for configuring Windows Firewall:
>
> [Configure Windows Firewall >](best-practices-configuring.md)

<!--links-->

[SEC-1]: windowsdefender://network/
[FHUB]: feedback-hub:?tabid=2&newFeedback=true