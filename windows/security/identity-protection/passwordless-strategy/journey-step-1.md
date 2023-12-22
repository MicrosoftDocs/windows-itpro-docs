---
title: Deploy a passwordless a replacement option
description: Learn about how to deploy a passwordless a replacement option, the first step of the Microsoft passwordless journey.
ms.topic: concept-article
ms.date: 12/13/2023
---

# Deploy a passwordless a replacement option

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-1-on.svg" border="false" link="journey-step-1.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-2-off.svg" border="false" link="journey-step-2.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-3-off.svg" border="false" link="journey-step-3.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-4-off.svg" border="false":::
   :::column-end:::
:::row-end:::

The first step to password freedom is providing an alternative to passwords.\
Windows provides an affordable and easy in-box alternative to passwords, *Windows Hello for Business*. Another option is to use *FIDO2 security keys*, but they require the organization to purchase and distribute them.

Both options provide a strong, two-factor authentication to Microsoft Entra ID and Active Directory.

## Identify test users representing the targeted work persona

A successful transition relies on user acceptance testing. It's impossible for you to know how every work persona goes about their day-to-day activities, or how to accurately validate them. You need to enlist the help of users who fit the targeted work persona. You only need a few users from the targeted work persona. As you cycle through step 2, you may want to change a few of the users (or add a few) as part of your validation process.

## Deploy Windows Hello for Business or FIDO2 security keys to test users

Next, you'll want to plan your password replacement deployment. Your test users will need an alternative way to sign-in during step 2 of the journey to becoming passwordless. Use the [Windows Hello for Business planning guide](..\hello-for-business\hello-planning-guide.md) to help learning which deployment is best suited for your environment. Next, use the [Windows Hello for Business deployment guides](..\hello-for-business\hello-deployment-guide.md) to deploy Windows Hello for Business. With the Windows Hello for Business infrastructure in place, you can limit Windows Hello for Business enrollments to the targeted work personas. The great news is that you'll only need to deploy the infrastructure once. When other targeted work personas need to start using Windows Hello for Business, add them to a group. You'll use the first work persona to validate your Windows Hello for Business deployment.

If you decide to use FIDO2 security keys, follow the [Enable security key sign-in to Windows guide](/entra/identity/authentication/howto-authentication-passwordless-security-key-windows) to learn how to adopt FIDO2 security keys.

> [!NOTE]
> Deployments vary based on how the device is joined to Microsoft Entra ID. Review the planning guide and deployment guide to learn the type of infrastructure required to support your devices.

## Validate passwords and Windows Hello for Business or FIDO2 security keys

In this first step, passwords and your password replacement choice must coexist. You want to validate that while your targeted work personas can sign in and unlock using Windows Hello for Business or security keys, but they can also sign-in, unlock, and use passwords as needed. Reducing the user-visible password surface too soon can create frustration and confusion with your targeted user personas.

:::image type="content" source="images/lock-screen.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint, PIN and password credential providers." border="false":::

## Next steps

Before you move to step 2, make sure you've:

> [!div class="checklist"]
> - Selected your targeted work persona
> - Identified your test users who represent the targeted work persona
> - Deployed Windows Hello for Business or FIDO2 security keys to test users
> - Validated that both your password replacement choice and passwords work for the test users

> [!div class="nextstepaction"]
>
> [Step 2: reduce the user-visible password surface area >](journey-step-2.md)
