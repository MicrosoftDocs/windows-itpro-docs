---
title: Get and deploy Minecraft Education
description: Learn how to obtain and distribute Minecraft Education to Windows devices.
ms.topic: how-to
ms.date: 02/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
ms.collection:
  - highpri
  - education
  - tier2
---

# Get and deploy Minecraft Education

Minecraft Education is a game-based platform that inspires creative, inclusive learning through play. Explore blocky worlds that unlock new ways to tackle any subject or challenge. Dive into subjects like reading, math, history, and coding with lessons and standardized curriculum designed for all types of learners. Or explore and build together in creative open worlds.

**Use it your way**: with hundreds of ready-to-teach lessons, creative challenges, and blank canvas worlds, there are lots of ways to make Minecraft Education work for your students. It's easy to get started, no gaming experience necessary.

**Prepare students for the future**: learners develop key skills like problem solving, collaboration, digital citizenship, and critical thinking to help them thrive now and in the future workplace. Spark a passion for STEM.

**Game based learning**: unlock creativity and deep learning with immersive content created with partners including BBC Earth, NASA, and the Nobel Peace Center. Inspire students to engage in real-world topics with culturally relevant lessons and build challenges.  

## Minecraft Education key features

- Multiplayer mode enables collaboration in-game across platforms, devices, and hybrid environments  
- Code Builder supports block-based coding, JavaScript, and Python with intuitive interface and in-game execution  
- Immersive Reader helps players read and translate text  
- Camera and Book & Quill items allow documentation and export of in-game creations  
- Integration with Microsoft Teams and Flipgrid supports assessment and teacher controls  

## Try or purchase Minecraft Education

Users in a Microsoft-verified academic organization with Microsoft 365 accounts have [access to a free trial][EDU-1] for Minecraft Education. This grants faculty accounts 25 free logins, and student accounts 10 free logins before a paid license will be required to continue playing. Users in non-Microsoft-verified academic organizations are granted 10 free logins.

[Subscriptions can be purchased][EDU-2] directly in the *Microsoft 365 admin center*, via volume licensing agreements, or through partner resellers.

When you sign up for a Minecraft Education trial, or purchase a subscription, Minecraft Education licenses are associated to your Azure Active Directory (Azure AD) tenant. If you don't have an Azure AD tenant:

- Microsoft-verified academic organizations can set up a free [Office 365 Education subscription][EDU-3] which includes an Azure AD tenant  
- Non-Microsoft-verified academic organizations can set up a free Azure AD tenant when they [purchase Minecraft Education commercial licenses][EDU-4]

### Direct purchase

To purchase direct licenses:

1. Go to [https://education.minecraft.net/](https://education.minecraft.net/) and select **How to Buy** in the top navigation bar
1. Scroll down and select **Buy Now** under **Direct Purchase**
1. The purchase page in the Microsoft Admin center will be opened. Sign in with an account that has *Billing Admin* privileges in your organization
1. If necessary, fill in any requested organization or payment information
1. Select the quantity of licenses you would like to purchase and select **Place Order**
1. After you've purchased licenses, you'll need to [assign Minecraft Education licenses to your users](#assign-minecraft-education-licenses)

If you need more licenses for Minecraft Education, see [Buy or remove subscription licenses](/microsoft-365/commerce/licenses/buy-licenses).

### Volume licensing

Qualified education institutions can purchase Minecraft Education licenses through their Microsoft channel partner. Schools need to be part of the *Enrollment for Education Solutions* (EES) volume licensing program. Educational institutions should work with their channel partner to determine which Minecraft Education licensing offer is best for their institution. The process looks like this:

1. Your channel partner will submit and process your volume license order
1. Your licenses will be shown on [Volume Licensing Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx)
1. After you've purchased licenses, you'll need to [assign Minecraft Education licenses to your users](#assign-minecraft-education-licenses)

### Payment options

You can pay for Minecraft Education with a debit or credit card, or with an invoice.

#### Debit or credit cards

During the purchase, select **Add a new payment method**. Provide the information needed for your debit or credit card.

#### Invoices

Invoices are a supported payment method for Minecraft Education. There are a few requirements:

- $500 invoice minimum for your initial purchase
- $15,000 invoice maximum (for all invoices within your organization)

To pay with an invoice:

1. During the purchase, select **Add a new payment method.**
2. Select the **Invoice** option, and provide the information needed for an invoice. The **PO number** item allows you to add a tracking number or info that is meaningful to your organization.

For more information about invoices and how to pay by invoice, see [Payment options for your Microsoft subscription][M365-1].  

<!-->
## Assign Minecraft Education licenses

You can assign and manage Minecraft Education licenses from the Microsoft 365 admin center.\
The Microsoft 365 admin center can be accessed by members of your organization with administrative roles.

1. Go to [https://admin.microsoft.com](https://admin.microsoft.com) and sign in with an account that has *Global Administrator* or *Billing Administrator* privileges in your organization
1. From the left-hand menu in Microsoft Admin Center, select *Users*
1. From the Users list, select the users you want to add or remove for Minecraft Education access
1. Add the relevant Minecraft Education or A3/A5 license if it hasn't been assigned already
    > [!Note]
    > If you add a faculty license, the user will be assigned an instructor role in the application and will have elevated permissions.
1. After selecting the appropriate product license, ensure *Minecraft Education* is toggled on
    > [!Note]
    > If you turn off this setting after students have been using Minecraft Education, they will have up to 30 more days to use Minecraft Education before they don't have access
-->
:::image type="content" source="images/minecraft/admin-center-minecraft-license.png" alt-text="Microsoft 365 admin center - assignment of a Minecraft Education license to a user" lightbox="images/minecraft/admin-center-minecraft-license.png":::
<!--
For more information about license assignment, see [Assign Microsoft licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

## Distribute Minecraft Education

There are different ways to install Minecraft Education on Windows devices. You can manually install the app on each device, or you can use a deployment tool to install the app on multiple devices at once.
If you're using Microsoft Intune to manage your devices, follow these steps to deploy Minecraft Education:

1. Go to the <a href="https://intune.micorsoft.com" target="_blank"><b>Microsoft Intune admin center</b></a>
1. Select **Apps > Windows > Add**
1. Under *App type*, select **Microsoft Store app (new)** and choose **Select**
1. Select **Search the Microsoft Store app (new)** and search for **Minecraft Education**
1. Select the app and choose **Select**
1. On the *App information* screen, select **Next**
1. On the *Assignments* screen, choose how you want to target the installation of Minecraft Education
    - *Required* assignments are installed without user interaction
    - *Available* assignments enable Minecraft Education to be installed from Company Portal by the targeted users
1. Select **Next**
1. On the *Review + Create* screen, select **Create**

Minecraft Education will be installed by Microsoft Intune at the next device check-in, or be made available in Company Portal for optional installs.

:::image type="content" source="images/minecraft/win11-minecraft-education.png" alt-text="Minecraft Education executing on a Windows 11 device.":::

For additional information how to deploy Minecraft Education, see [Deploy Minecraft Education](https://educommunity.minecraft.net/hc/articles/13106858087956-Windows-Installation-Guide).

If you're having trouble installing the app, you can get more help on the [Minecraft Education support page](https://aka.ms/minecraftedusupport).

<!--links-->
[EDU-1]: https://educommunity.minecraft.net/hc/articles/360047116432
[EDU-2]: https://educommunity.minecraft.net/hc/articles/360061371532
[EDU-3]: https://www.microsoft.com/education/products/office
[EDU-4]: https://educommunity.minecraft.net/hc/articles/360061369812
[EDU-5]: https://educommunity.minecraft.net/hc/articles/360047118672

[M365-1]: /microsoft-365/commerce/billing-and-payments/pay-for-your-subscription
