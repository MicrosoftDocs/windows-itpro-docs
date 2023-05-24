---
title: Planning Your Windows Defender Firewall with Advanced Security Design 
description: After you gather the relevant information, select the design or combination of designs for Windows Defender Firewall with Advanced Security in your environment.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
---

# Planning Your Windows Defender Firewall with Advanced Security Design


After you've gathered the relevant information in the previous sections, and understood the basics of the designs as described earlier in this guide, you can select the design (or combination of designs) that meet your needs.

## Basic firewall design

We recommend that you deploy at least the basic firewall design. As discussed in the [Protect Devices from Unwanted Network Traffic](protect-devices-from-unwanted-network-traffic.md) section, host-based firewalls are an important element in a defense-in-depth strategy and complement most other security measures you put in place in your organization.

When you're ready to examine the options for firewall policy settings, see the [Planning Settings for a Basic Firewall Policy](planning-settings-for-a-basic-firewall-policy.md) section.

## Algorithm and method support and selection

To create a domain isolation or server isolation design, you must understand the algorithms available in each version of Windows, and their relative strengths.

## IPsec performance considerations

Although IPsec is critically important in securing network traffic going to and from your devices, there are costs associated with its use. The mathematically intensive cryptographic algorithms require a significant amount of computing power, which can prevent your device from making use of all of the available bandwidth. For example, an IPsec-enabled device using the AES encryption protocols on a 10 gigabits per second (Gbps) network link might see a throughput of 4.5 Gbps. This reduction is due to the demands placed on the CPU to perform the cryptographic functions required by the IPsec integrity and encryption algorithms.

IPsec task offload is a Windows technology that supports network adapters equipped with dedicated cryptographic processors to perform the computationally intensive work required by IPsec. This configuration frees up a device’s CPU and can dramatically increase network throughput. For the same network link as above, the throughput with IPsec task offload enabled improves to about 9.2 Gbps.

## Domain isolation design


Include this design in your plans:

-   If you have an Active Directory domain of which most of the devices are members.

-   If you want to prevent the devices in your organization from accepting any unsolicited network traffic from devices that aren't part of the domain.

If you plan on including the basic firewall design as part of your deployment, we recommend that you deploy the firewall policies first to confirm that they work properly. Also plan to enable your connection security rules in request mode at first, instead of the more restrictive require mode, until you're sure that the devices are all correctly protecting network traffic with IPsec. If something is wrong, request mode still allows communications to continue while you're troubleshooting.

When you're ready to examine the options for creating an isolated domain, see the [Planning Domain Isolation Zones](planning-domain-isolation-zones.md) section.

## Server isolation design


Include this design in your plans:

-   If you have an isolated domain and you want to additionally restrict access to specific servers to only authorized users and devices.

-   You aren't deploying an isolated domain, but want to take advantage of similar benefits for a few specific servers. You can restrict access to the isolated servers to only authorized users and devices.

If you plan to include domain isolation in your deployment, we recommend that you complete that layer and confirm its correct operation before you implement the other server isolation elements.

When you're ready to examine the options for isolating servers, see the [Planning Server Isolation Zones](planning-server-isolation-zones.md) section.

## Certificate-based authentication design


Include this design in your plans:

-   If you want to implement some of the elements of domain or server isolation on devices that aren't joined to an Active Directory domain, or don't want to use domain membership as an authentication mechanism.

-   You have an isolated domain and want to include a server that isn't a member of the Active Directory domain because the device isn't running Windows, or for any other reason.

-   You must enable external devices that aren't managed by your organization to access information on one of your servers in a secure way.

If you plan to include domain or server isolation in your deployment, we recommend that you complete those elements and confirm their correct operation before you add certificate-based authentication to the devices that require it.

When you're ready to examine the options for using certificate-based authentication, see the [Planning Certificate-based Authentication](planning-certificate-based-authentication.md) section.

## Documenting your design

After you finish selecting the designs that you'll use, you must assign each of your devices to the appropriate isolation zone and document the assignment for use by the deployment team.

-   [Documenting the Zones](documenting-the-zones.md)

## Designing groups and GPOs


After you've selected a design and assigned your devices to zones, you can begin laying out the isolation groups for each zone, the network access groups for isolated server access, and the GPOs that you'll use to apply the settings and rules to your devices.

When you're ready to examine the options for the groups, filters, and GPOs, see the [Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md) section.

**Next:** [Planning Settings for a Basic Firewall Policy](planning-settings-for-a-basic-firewall-policy.md)
