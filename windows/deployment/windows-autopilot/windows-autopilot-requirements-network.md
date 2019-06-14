---
title: Windows Autopilot networking requirements
description: This topic goes over Windows Autopilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
---

# Windows Autopilot networking requirements

**Applies to: Windows 10**

Windows Autopilot depends on a variety of internet-based services; access to these services must be provided for Autopilot to function properly. In the simplest case, enabling proper functionality can be achieved by ensuring the following:

-   Ensure DNS name resolution for internet DNS names

-   Allow access to all hosts via port 80 (HTTP), 443 (HTTPS), and 123 (UDP/NTP)

In environments that have more restrictive internet access, or for those that require authentication before internet access can be obtained, additional configuration may be required to whitelist access to the needed services. For additional details about each of these services and their specific requirements, review the following details:

-   **Windows Autopilot Deployment Service (and Windows Activation).**  After a network connection is in place, each Windows 10 device will contact the Windows Autopilot Deployment Service using the same services used for Windows Activation. See the following link for details:

    -   <https://support.microsoft.com/help/921471/windows-activation-or-validation-fails-with-error-code-0x8004fe33>

-   **Azure Active Directory.**  User credentials are validated by Azure Active Directory, then the device may also be joined to Azure Active Directory. See the following link for more information:

    -   <https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2>

-   **Intune.**  Once authenticated, Azure Active Directory will trigger the enrollment of the device into the Intune MDM service. See the following link for details:

    -   <https://docs.microsoft.com/intune/network-bandwidth-use> (Network communication requirements section)

-   **Windows Update.**  During the OOBE process, as well as after the Windows 10 OS is fully configured, the Windows Update service is leveraged to retrieve needed updates.

    -   <https://support.microsoft.com/help/818018/how-to-solve-connection-problems-concerning-windows-update-or-microsof>

    -   NOTE:  If Windows Update is inaccessible, the AutoPilot process will still continue.

-   **Delivery Optimization.**  When downloading Windows Updates, Microsoft Store apps and app updates, Office Updates and Intune Win32 Apps, the Delivery Optimization service is contacted to enable peer-to-peer sharing of content so that only a few devices need to download it from the internet.

    -   <https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization>

    -   NOTE: If Delivery Optimization Service is inaccessible, the AutoPilot process will still continue with Delivery Optimization downloads from the cloud (without peer-to-peer).

-   **Network Time Protocol (NTP) Sync.**  When a Windows device starts up, it will talk to a network time server to ensure that the time on the device is accurate.

    -   Ensure that UDP port 123 to time.windows.com is accessible.

-   **Domain Name Services (DNS).**  To resolve DNS names for all services, the device communicates with a DNS server, typically provided via DHCP.  This DNS server must be able to resolve internet names.

-   **Diagnostics data.**  To enable Windows Analytics and related diagnostics capabilities, see the following documentation:

    -   <https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization>

    -   NOTE: If diagnostic data cannot be sent, the Autopilot process will still continue.

-   **Network Connection Status Indicator (NCSI).**  Windows must be able to tell that the device is able to access the internet.

    -   <https://docs.microsoft.com/windows/configuration/manage-windows-endpoints-version-1709> (Network Connection Status Indicator section, [www.msftconnecttest.com](http://www.msftconnecttest.com) must be resolvable via DNS and accessible via HTTP)

-   **Windows Notification Services (WNS).**  This service is used to enable Windows to receive notifications from apps and services.

    -   <https://docs.microsoft.com/windows/configuration/manage-windows-endpoints-version-1709> (Microsoft store section)

    -   NOTE: If the WNS services are not available, the Autopilot process will still continue.

-   **Microsoft Store, Microsoft Store for Business.**  Apps in the Microsoft Store can be pushed to the device, triggered via Intune (MDM).  App updates and additional apps may also be needed when the user first logs in.

    -   <https://docs.microsoft.com/microsoft-store/prerequisites-microsoft-store-for-business> (also includes Azure AD and Windows Notification Services)

    -   NOTE: If the Microsoft Store is not accessible, the AutoPilot process will still continue.

-   **Office 365.**  As part of the Intune device configuration, installation of Office 365 ProPlus may be required.

    -   <https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2> (includes all Office services, DNS names, IP addresses; includes Azure AD and other services that may overlap with those listed above)

-   **Certificate revocation lists (CRLs).**  Some of these services will also need to check certificate revocation lists (CRLs) for certificates used in the services.  A full list of these is documented in the Office documentation at <https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2#bkmk_crl> and <https://aka.ms/o365chains>.
-	**Hybrid AAD Join.**  Hybrid AAD can be join, the machine should be on corporate network for hybrid ADD join to work. See details at <https://docs.microsoft.com/en-us/windows/deployment/windows-autopilot/user-driven-hybrid>
