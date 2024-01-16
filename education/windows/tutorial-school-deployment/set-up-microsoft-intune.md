---
title: Set up device management
description: Learn how to configure the Intune service and set up the environment for education.
ms.date: 01/16/2024
ms.topic: tutorial
appliesto:
---

# Set up Microsoft Intune

Without the proper tools and resources, managing hundreds or thousands of devices in a school environment can be a complex and time-consuming task. Microsoft Intune is a collection of services that simplifies the management of devices at scale.

The Microsoft Intune service can be managed in different ways, and one of them is **Intune for Education**, a web portal designed for education environments.

:::image type="content" source="./images/intune-education-portal.png" alt-text="Intune for Education dashboard" lightbox="./images/intune-education-portal.png" border="true":::

**Intune for Education** supports the entire device lifecycle, from the enrollment phase through retirement. IT administrators can start managing classroom devices with bulk enrollment options and a streamlined deployment. At the end of the school year, IT admins can reset devices, ensuring they're ready for the next year.

For more information, see [Intune for Education documentation][INT-1].


> [!div class="checklist"]
>In this section you will:
>
> - Review Intune's licensing prerequisites
> - Configure the Intune service for education devices

## Prerequisites

Before configuring settings with Intune for Education, consider the following prerequisites:

- **Intune subscription.** Microsoft Intune is licensed in three ways:
  - As a standalone service
  - As part of [Enterprise Mobility + Security][MSFT-1]
  - As part of a [Microsoft 365 Education subscription][MSFT-2]
- **Device platform.** Intune for Education can manage devices running a supported version of Windows 10, Windows 11, Windows 11 SE, iOS, and iPad OS

For more information, see [Intune licensing][MEM-1] and [this comparison sheet][MSFT-3], which includes a table detailing the *Microsoft Modern Work Plan for Education*.

## Configure the Intune service for education devices

The Intune service can be configured in different ways, depending on the needs of your school. In this section, you'll configure the Intune service using settings commonly implemented by K-12 school districts.

### Configure enrollment restrictions

With enrollment restrictions, you can prevent certain types of devices from being enrolled and therefore managed by Intune. For example, you can prevent the enrollment of devices that are not owned by the school.

To block personally owned Windows devices from enrolling:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** > **Enroll devices** > **Enrollment device platform restrictions**
1. Select the **Windows restrictions** tab
1. Select **Create restriction**
1. On the **Basics** page, provide a name for the restriction and, optionally, a description > **Next**
1. On the **Platform settings** page, in the **Personally owned devices** field, select **Block** > **Next**
    :::image type="content" source="./images/enrollment-restrictions.png" alt-text="This screenshot is of the device enrollment restriction page in Microsoft Intune admin center." lightbox="./images/enrollment-restrictions.png":::
1. Optionally, on the **Scope tags** page, add scope tags > **Next**
1. On the **Assignments** page, select **Add groups**, and then use the search box to find and choose groups to which you want to apply the restriction > **Next**
1. On the **Review + create** page, select **Create** to save the restriction

For more information, see [Create a device platform restriction][MEM-2].

### Disable Windows Hello for Business

Windows Hello for Business is a biometric authentication feature that allows users to sign in to their devices using a PIN, password, or fingerprint. Windows Hello for Business is enabled by default on Windows devices, and to set it up, users must perform for multi-factor authentication (MFA). As a result, this feature may not be ideal for students, who may not have MFA enabled.
It's suggested to disable Windows Hello for Business on Windows devices at the tenant level, and enabling it only for devices that need it, for example for teachers and staff devices.
To disable Windows Hello for Business at the tenant level:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** > **Windows** > **Windows Enrollment**
1. Select **Windows Hello for Business**
1. Ensure that **Configure Windows Hello for Business** is set to **disabled**
1. Select **Save**

:::image type="content" source="./images/whfb-disable.png" alt-text="Disablement of Windows Hello for Business from Microsoft Intune admin center." lightbox="./images/whfb-disable.png":::

For more information how to enable Windows Hello for Business on specific devices, see [Create a Windows Hello for Business policy][MEM-4].

---

## Next steps

With the Intune service configured, you can configure policies and applications in preparation to the deployment of students' and teachers' devices.

> [!div class="nextstepaction"]
> [Next: Configure devices >](configure-devices-overview.md)

<!-- Reference links in article -->

[MEM-1]: /mem/intune/fundamentals/licenses
[MEM-2]: /mem/intune/enrollment/enrollment-restrictions-set
[MEM-4]: /mem/intune/protect/windows-hello#create-a-windows-hello-for-business-policy

[INT-1]: /intune-education/what-is-intune-for-education

[MSFT-1]: https://www.microsoft.com/microsoft-365/enterprise-mobility-security
[MSFT-2]: https://www.microsoft.com/licensing/product-licensing/microsoft-365-education
[MSFT-3]: https://edudownloads.azureedge.net/msdownloads/Microsoft-Modern-Work-Plan-Comparison-Education_11-2021.pdf