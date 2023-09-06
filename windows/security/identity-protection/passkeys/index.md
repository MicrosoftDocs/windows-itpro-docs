---
title: Passkeys
description: Learn about passkeys and how to use them on Windows devices.
ms.collection: 
- highpri
- tier1
ms.topic: article
ms.date: 09/05/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
---

## Overview

Passkeys are a simple and more secure replacement for passwords when you sign into a web site or application that supports them. Passkeys are phish-resistant, recoverable, and faster to use than passwords.

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], you can use any apps or websites that supports passkeys to create and sign in using passkeys with the Windows Hello native experience. Once a passkey is created, you can use Windows Hello (biometrics and PIN) or a companion device (phone or tablet) to sign in.

## System requirements

Windows provides a native experience for passkey management starting in Windows 11, version 22H2 with [KB5030310][KB-1].

## User experiences

### Create a passkey

Follow these steps to create a passkey:

:::row:::
  :::column span="4":::

  1. Go to a website or app that supports passkeys

  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::

  2. Create a passkey from your account settings

  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
  3. Choose where to save the passkey. By default, Windows prompts to save the passkey locally if you're using Windows Hello or Windows Hello for Business. If you select the option **Use another device**, you can choose to save the passkey on one of the following locations:
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

- **This Windows device**: the passkey is saved locally on your Windows device, and protected by Windows Hello (biometrics and PIN)
- **iPhone, iPad or Android device**: the passkey is stored on a phone or tablet, protected by the device's biometrics, if offered by the device. This option requires you to scan a QR code with your phone or tablet
- **linked device**: the key is stored on a *linked* device, typically a phone or tablet, protected by the device's biometrics or a PIN. This option is only supported for Android devices and requires the linked device to be connected via Bluetooth to the Windows device
- **Security key**: the passkey is saved to a security key (FIDO2 key), protected by the key's biometrics, if offered by the key

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/save-passkey.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/save-passkey.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
  4. Select **Next**
  :::column-end:::
:::row-end:::

Pick one of the following options to learn how to save a passkey, based on where you want to store it.

#### [**Windows device**](#tab/windows)

:::row:::
  :::column span="3":::

  5. Select a Windows Hello verification method

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/hello-save.png" alt-text="Screenshot prompting the user to pick a Windows Hello verification method." lightbox="images/hello-save.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. The passkey is saved to your Windows device. To confirm select **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/hello-save-confirmation.png" alt-text="Screenshot confirming that the passkey is saved to the Windows device" lightbox="images/hello-save-confirmation.png" border="false":::
  :::column-end:::
:::row-end:::

#### [**Phone or tablet**](#tab/mobile)

:::row:::
  :::column span="3":::

  5. Scan the QR code with your phone or tablet, and follow the instructions to save the passkey

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/device-save-qr.png" alt-text="Screenshot showing the qr code asking the user to scan on phone or tablet." lightbox="images/device-save-qr.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. Once the passkey is saved to your phone or tablet, confirm by selecting **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/device-save.png" alt-text="Screenshot confirming that the passkey is saved to the device." lightbox="images/device-save.png" border="false":::
  :::column-end:::
:::row-end:::

#### [**Linked device**](#tab/linked)

:::row:::
  :::column span="3":::

  5. Select the linked device option and confirm the notification sent to the device

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/linked-device-connect.png" alt-text="Screenshot showing the passkey save dialog connecting to a linked device." lightbox="images/linked-device-connect.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. The passkey is saved to your linked device. To confirm select **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/linked-device-save.png" alt-text="Screenshot confirming that the passkey is saved to the linked device." lightbox="images/linked-device-save.png" border="false":::
  :::column-end:::
:::row-end:::

#### [**Security key**](#tab/key)

:::row:::
  :::column span="4":::

  5. Unlock the security key using the key's unlock mechaniosm (for example, biometrics or PIN)

  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. The passkey is saved to the security key. Confirm by selecting **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/device-save.png" alt-text="Screenshot confirming that the passkey is saved to the security key." lightbox="images/device-save.png" border="false":::
  :::column-end:::
:::row-end:::

---

### Use a passkey

Follow these steps to use a passkey:

:::row:::
  :::column span="3":::
  1. Open a website or app that supports passkeys
  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  2. Select **Sign in with a passkey**, or a similar option
  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  3. If a passkey is stored locally and protected by Windows Hello, you'll be prompted to use Windows Hello to sign in. If you select the option **Use another device**, you can choose one of the following options:
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
- **This Windows device**: use this option to use a passkey that is stored locally on your Windows device, and protected by Windows Hello
- **iPhone, iPad or Android device**: use this option if you want to sign in with a passkey stored on a phone or tablet. This option requires you to scan a QR code with your phone or tablet
- **linked device**: use this option if you want to sign in with a passkey stored on a *linked* device. This option is only supported for Android devices and requires the linked device to be connected via Bluetooth to the Windows device
- **Security key** - use this option if you want to sign in with a passkey stored on a security key (FIDO2 key)
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/use-passkey.png" alt-text="Screenshot of the passkey dialog prompting the user to pick where the passkey is stored." lightbox="images/use-passkey.png" border="false":::
  :::column-end:::
:::row-end:::

Pick one of the following options to learn how to use a passkey, based on where you saved it.

#### [**Windows device**](#tab/windows)

:::row:::
  :::column span="3":::

  4. Select a Windows Hello unlock option

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the Windows Hello prompt for a verification method." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. Select **OK** to continue signing in

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/hello-use-confirm.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/hello-use-confirm.png" border="false":::
  :::column-end:::
:::row-end:::

#### [**Phone or tablet**](#tab/mobile)

:::row:::
  :::column span="3":::

  4. Select a Windows Hello unlock option

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. The passkey is saved to your Windows device. Confirm by selecting **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::

#### [**Linked device**](#tab/linked)

:::row:::
  :::column span="3":::

  4. Select a Windows Hello unlock option

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. The passkey is saved to your Windows device. Confirm by selecting **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::

#### [**Security key**](#tab/key)

:::row:::
  :::column span="3":::

  4. Select a Windows Hello unlock option

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. The passkey is saved to your Windows device. Confirm by selecting **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::

---

### Manage passkeys

To view and manage passkeys saved for apps or websites, go to **Settings > Accounts > Passkeys**:

- A list of saved passkeys is displayed and you can filter them by name
- To delete a passkey, select **... > Delete passkey** next to the passkey name

:::image type="content" source="images/delete.png" alt-text="Screenshot of the Settings app showing the delete option for a passkey." lightbox="images/delete.png" border="false":::

> [!NOTE]
> You can't delete the passkey used to sign in to your Windows device, either Microsoft Entra ID or Microsoft Account.

## Provide feedback

To provide feedback for Windows Hello for Business passwordless experience, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Passkey**.

<!--links used in this document-->

[FHUB]: feedback-hub://?tabid=2&newFeedback=true&feedbackType=1
[KB-1]: https://support.microsoft.com/kb/5030310