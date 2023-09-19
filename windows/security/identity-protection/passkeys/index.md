---
title: Support for passkeys in Windows
description: Learn about passkeys and how to use them on Windows devices.
ms.collection: 
- highpri
- tier1
ms.topic: article
ms.date: 09/06/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
---

# Support for passkeys in Windows

Passkeys provide a more secure and convenient method to logging into websites and applications compared to passwords. Unlike passwords, which users must remember and type, passkeys are stored as secrets on a device and can use a device's unlock mechanism (such as biometrics or a PIN). Passkeys can be used without the need for other sign in challenges, making the authentication process faster, secure, and more convenient.

You can use passkeys with any applications or websites that support them to create and sign in with the Windows Hello native experience. Once a passkey is created and stored with Windows Hello, you can use Windows Hello (biometrics and PIN) or a companion device (phone or tablet) to sign in.

> [!NOTE]
> Windows provides a *native experience* for passkey management starting in Windows 11, version 22H2 with [KB5030310][KB-1]. However, passkey support is available in all supported versions of Windows clients.

This article describes how to create and use passkeys on Windows devices.

## How passkeys work

Microsoft has long been a founding member of the FIDO Alliance and has helped to define and use passkeys natively within a platform authenticator like Windows Hello. Passkeys utilize the FIDO industry security standard, which is adopted by all major platforms. Leading technology companies like Microsoft are backing passkeys as part of the FIDO Alliance, and numerous websites and apps are integrating support for passkeys.

The FIDO protocols rely on standard public/private key cryptography techniques to offer more secure authentication. When a user registers with an online service, their client device generates a new key pair. The private key is stored securely on the users device, while the public key is registered with the service. To authenticate, the client device must prove that it possesses the private key by signing a challenge. The private keys can only be used after they're unlocked by the user using the Windows Hello unlock factor (biometrics or PIN).

FIDO protocols prioritize user privacy, as they're designed to prevent online services from sharing information or tracking users across different services. Additionally, any biometric information used in the authentication process remains on the user's device and isn't transmitted across the network or to the service.

### Passkeys compared to passwords

Passkeys have several advantages over passwords, including their ease of use and intuitive nature. Unlike passwords, passkeys don't require a creation process, don't need to be remembered, and don't need to be safeguarded. Additionally, passkeys are unique to each website or application, preventing their reuse. They're highly secure because they're only stored on the user's devices, with the service only storing public keys. Passkeys are resistant to phishing attempts, as they're enforced by the browsers or operating systems to only be used for the appropriate service, rather than relying on human verification. Finally, passkeys provide cross-device and cross-platform authentication, meaning that a passkey from one device can be used to sign in on another device.

[!INCLUDE [passkey](../../../../includes/licensing/passkeys.md)]

## User experiences

### Create a passkey

Follow these steps to create a passkey from a Windows device:

:::row:::
  :::column span="4":::

  1. Open a website or app that supports passkeys

  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::

  2. Create a passkey from your account settings

  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
  3. Choose where to save the passkey. By default, Windows offers to save the passkey locally if you're using Windows Hello or Windows Hello for Business. If you select the option **Use another device**, you can choose to save the passkey in one of the following locations:
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

- **This Windows device**: the passkey is saved locally on your Windows device, and protected by Windows Hello (biometrics and PIN)
- **iPhone, iPad or Android device**: the passkey is stored on a phone or tablet, protected by the device's biometrics, if offered by the device. This option requires you to scan a QR code with your phone or tablet
- **Linked device**: the key is stored on a *linked* device, typically a phone or tablet, protected by the device's biometrics or a PIN. This option is only supported for Android devices and requires the linked device to be connected via Bluetooth to the Windows device and becomes available after a passkey is created in the mobile device
- **Security key**: the passkey is saved to a FIDO2 security key, protected by the key's unlock mechanism (for example, biometrics or PIN)

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/save-passkey.png" alt-text="Screenshot showing a dialog box prompting the user to pick a location to store the passkey." lightbox="images/save-passkey.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
  4. Select **Next**
  :::column-end:::
:::row-end:::

Pick one of the following options to learn how to save a passkey, based on where you want to store it.

#### [:::image type="icon" source="images/laptop.svg" border="false"::: **Windows device**](#tab/windows)

:::row:::
  :::column span="3":::

  5. Select a Windows Hello verification method and proceed with the verification, then select **OK**

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/hello-save.png" alt-text="Screenshot showing the Windows Hello face verification method." lightbox="images/hello-save.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. The passkey is saved to your Windows device. To confirm select **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/hello-save-confirm.png" alt-text="Screenshot confirming that the passkey is saved to the Windows device" lightbox="images/hello-save-confirm.png" border="false":::
  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/qr-code.svg" border="false"::: **New phone or tablet**](#tab/mobile)

:::row:::
  :::column span="3":::

  5. Scan the QR code with your phone or tablet, and follow the instructions on the device to save the passkey

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/device-save-qr.png" alt-text="Screenshot showing the QR code asking the user to scan on the device." lightbox="images/device-save-qr.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. Once the passkey is saved to your phone or tablet, select **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/device-save.png" alt-text="Screenshot confirming that the passkey is saved to the device." lightbox="images/device-save.png" border="false":::
  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/phone.svg" border="false"::: **Linked phone or tablet**](#tab/linked)

:::row:::
  :::column span="3":::

  5. Once the connection to the linked device is established, follow the instructions on the device to save the passkey

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/linked-device-connect.png" alt-text="Screenshot showing the passkey save dialog connecting to a linked device." lightbox="images/linked-device-connect.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. Once the passkey is saved to your linked device, select **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/linked-device-save.png" alt-text="Screenshot confirming that the passkey is saved to the linked device." lightbox="images/linked-device-save.png" border="false":::
  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/usb.svg" border="false"::: **Security key**](#tab/key)

:::row:::
  :::column span="3":::

  5. Select **OK** to confirm that you want to set up a security key, and unlock the security key using the key's unlock mechanism

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/security-key-setup.png" alt-text="Screenshot showing a prompt to use a security key to store the passkey." lightbox="images/security-key-setup.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. Once the passkey is saved to the security key, select **OK**

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/security-key-save.png" alt-text="Screenshot confirming that the passkey is saved to the security key." lightbox="images/security-key-save.png" border="false":::
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
  :::image type="content" source="images/website.png" alt-text="Screenshot of a website offering the passkey sign in option." lightbox="images/website.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  3. If a passkey is stored locally and protected by Windows Hello, you're prompted to use Windows Hello to sign in. If you select the option **Use another device**, you can choose one of the following options:
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
- **This Windows device**: use this option to use a passkey that is stored locally on your Windows device, and protected by Windows Hello
- **iPhone, iPad or Android device**: use this option if you want to sign in with a passkey stored on a phone or tablet. This option requires you to scan a QR code with your phone or tablet
- **Linked device**: use this option if you want to sign in with a passkey stored on a *linked* device. This option is only supported for Android devices and requires the linked device to be connected via Bluetooth to the Windows device
- **Security key** - use this option if you want to sign in with a passkey stored on a FIDO2 security key
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/use-passkey.png" alt-text="Screenshot of the passkey dialog prompting the user to pick where the passkey is stored." lightbox="images/use-passkey.png" border="false":::
  :::column-end:::
:::row-end:::

Pick one of the following options to learn how to use a passkey, based on where you saved it.

#### [:::image type="icon" source="images/laptop.svg" border="false"::: **Windows device**](#tab/windows)

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
  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/qr-code.svg" border="false"::: **Phone or tablet**](#tab/mobile)

:::row:::
  :::column span="3":::

  4. Scan the QR code with your phone or tablet where you saved the passkey

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/device-use.png" alt-text="Screenshot showing the QR code to scan from your phone or tablet." lightbox="images/device-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::

  5. You're signed in to the website or app

  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/phone.svg" border="false"::: **Linked phone or tablet**](#tab/linked)

:::row:::
  :::column span="3":::

  4. Once the connection to the linked device is established, follow the instructions on the device to use the passkey

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/linked-device-use.png" alt-text="Screenshot showing that the linked device is connected to Windows." lightbox="images/linked-device-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. You're signed in to the website or app

  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/usb.svg" border="false"::: **Security key**](#tab/key)

:::row:::
  :::column span="3":::

  4. Unlock the security key using the key's unlock mechanism

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/security-key-use.png" alt-text="Screenshot showing a prompt asking the user to unlock the security key." lightbox="images/security-key-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. You're signed in to the website or app

  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::

---

### Manage passkeys

> [!div class="nextstepaction"]
> To view and manage passkeys saved for apps or websites, go to **Settings > Accounts > Passkeys**, or use the following shortcut: [Manage passkeys](ms-settings:savedpasskeys)

- A list of saved passkeys is displayed and you can filter them by name
- To delete a passkey, select **... > Delete passkey** next to the passkey name

:::image type="content" source="images/delete-passkey.png" alt-text="Screenshot of the Settings app showing the delete option for a passkey." lightbox="images/delete-passkey.png" border="false":::

> [!NOTE]
> Some passkeys for *login.microsoft.com* can't be deleted, as they're used with Microsoft Entra ID and/or Microsoft Account for signing in to the device and Microsoft services.

## Provide feedback

To provide feedback for Windows Hello for Business passwordless experience, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Passkey**.

<!--links used in this document-->

[FHUB]: feedback-hub://?tabid=2&newFeedback=true&feedbackType=1
[KB-1]: https://support.microsoft.com/kb/5030310