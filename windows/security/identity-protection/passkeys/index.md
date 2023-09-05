---
title: Passkeys
description: Learn about passkeys and how to use them on Windows devices.
ms.collection: 
- highpri
- tier2
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

The general steps to create a passkey are the same, regardless of *where* you want to store it:

1. Go to a website or app that supports passkeys
1. Create a passkey from your account settings

    - Locally on your Windows device, protected by Windows Hello (biometrics and PIN). This is the default option, if you're using a Windows device with Windows Hello or Windows Hello for Business enabled
    - On a phone or tablet, protected by the device's biometrics, if offered by the device. This option requires you to scan a QR code with your phone or tablet
    - To a *linked* device (typically a phone or tablet), protected by the device's biometrics, if offered by the device. This option requires the linked device to be connected via Bluetooth to the Windows device
    - On a security key (FIDO2 key), protected by the key's biometrics, if offered by the key

:::row:::
  :::column span="3":::
  1. Go to a website or app that supports passkeys
  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  2. Create a passkey from your account settings
  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  3. Choose where to save the passkey. By default, Windows prompts to save the passkey locally if you're using Windows Hello or Windows Hello for Business. If you select the option **Use another device**, you can choose to save the passkey on one of the following locations:

      - **This Windows device** - the passkey is saved locally on your Windows device, and protected by Windows Hello (biometrics and PIN)
      - **iPhone, iPad or Android device** - the passkey is stored on a phone or tablet, protected by the device's biometrics, if offered by the device. This option requires you to scan a QR code with your phone or tablet
      - **linked device** - the key is stored on a *linked* device typically a phone or tablet, protected by the device's biometrics, if offered by the device. This option requires the linked device to be connected via Bluetooth to the Windows device
      - **Security key** - the passkey is saved to a security key (FIDO2 key), protected by the key's biometrics, if offered by the key
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/save-passkey.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/save-passkey.png" border="false":::
  :::column-end:::
:::row-end:::

Select one of the following options to learn how to save a passkey, based on where you want to store it.

#### [**Windows device**](#tab/windows)

:::row:::
  :::column span="3":::
  4. Select **Save** to save the passkey
  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/save-passkey-hello.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/save-passkey-hello.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  5. Confirmation screen
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/save-passkey-hello-confirmation.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/save-passkey-hello-confirmation.png" border="false":::
  :::column-end:::
:::row-end:::

#### [**Phone or tablet**](#tab/mobile)

#### [**Linked device**](#tab/linked)

#### [**Security key**](#tab/key)

---

### Use a passkey

The general steps to sign in to an app or website using passkey are the same, regardless of *where* you stored the passkey:

1. Visit a website or app that supports passkeys
1. Select **Sign in with a passkey**, or similar option
1. If the passkey is stored locally and protected by Windows Hello (biometrics and PIN), you'll be prompted to use Windows Hello to sign in. If you select the option **Use another device**, you can choose one of the following options:

:::row:::
  :::column span="3":::
  1. Go to a website or app that supports passkeys
  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  2. Select **Sign in with a passkey**, or similar option
  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  3. If the passkey is stored locally and protected by Windows Hello, you'll be prompted to use Windows Hello to sign in. If you select the option **Use another device**, you can choose one of the following options:
    - **This Windows device** - use this option to use a passkey that is stored locally on your Windows device, and protected by Windows Hello
    - **iPhone, iPad or Android device** - use this option if you want to sign in with a passkey stored on a phone or tablet. This option requires you to scan a QR code with your phone or tablet
    - **linked device** - use this option if you want to sign in with a passkey stored on a *linked* device. This option requires the linked device to be connected via Bluetooth to the Windows device
    - **Security key** - use this option if you want to sign in with a passkey stored on a security key (FIDO2 key)
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/save-passkey.png" alt-text="Screenshot showing the passkey save dialog prompting the user to pick a location." lightbox="images/save-passkey.png" border="false":::
  :::column-end:::
:::row-end:::

Select one of the following options to learn how to save a passkey, based on where you want to store it.

#### [**Windows device**](#tab/windows)

#### [**Phone or tablet**](#tab/mobile)

#### [**Linked device**](#tab/linked)

#### [**Security key**](#tab/key)

---

### Manage passkeys

To view and manage passkeys saved for apps or websites, go to **Settings > Accounts > Passkeys**:

- A list of saved passkeys is displayed and you can filter them by name
- To delete a passkey, select **... > Delete passkey** next to the passkey name

## Provide feedback

To provide feedback for Windows Hello for Business passwordless experience, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Passkey**.

<!--links-->

[FHUB]: feedback-hub://?referrer=resolveUpgradeErrorsPage&tabid=2&contextid=81&newFeedback=true&feedbackType=2&topic=submit-errors.md
