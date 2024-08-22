---
title: Support for passkeys in Windows
description: Learn about passkeys and how to use them on Windows devices.
ms.collection:
- tier1
ms.topic: overview
ms.date: 11/07/2023
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
---

# Support for passkeys in Windows

Passkeys provide a more secure and convenient method to logging into websites and applications compared to passwords. Unlike passwords, which users must remember and type, passkeys are stored as secrets on a device and can use a device's unlock mechanism (such as biometrics or a PIN). Passkeys can be used without the need for other sign-in challenges, making the authentication process faster, secure, and more convenient.

You can use passkeys with any applications or websites that support them, to create and sign in with Windows Hello. Once a passkey is created and stored with Windows Hello, you can use your device's biometrics or PIN to sign in. Alternatively, you can use a companion device (phone or tablet) to sign in.

> [!NOTE]
> Starting in Windows 11, version 22H2 with [KB5030310][KB-1], Windows provides a native experience for passkey management. However, passkeys can be used in all supported versions of Windows clients.

This article describes how to create and use passkeys on Windows devices.

## How passkeys work

Microsoft has long been a founding member of the FIDO Alliance and has helped to define and use passkeys natively within a platform authenticator like Windows Hello. Passkeys utilize the FIDO industry security standard, which is adopted by all major platforms. Leading technology companies like Microsoft are backing passkeys as part of the FIDO Alliance, and numerous websites and apps are integrating support for passkeys.

The FIDO protocols rely on standard public/private key cryptography techniques to offer more secure authentication. When a user registers with an online service, their client device generates a new key pair. The private key is stored securely on the user's device, while the public key is registered with the service. To authenticate, the client device must prove that it possesses the private key by signing a challenge. The private keys can only be used after they're unlocked by the user using the Windows Hello unlock factor (biometrics or PIN).

FIDO protocols prioritize user privacy, as they're designed to prevent online services from sharing information or tracking users across different services. Additionally, any biometric information used in the authentication process remains on the user's device and isn't transmitted across the network or to the service.

### Passkeys compared to passwords

Passkeys have several advantages over passwords, including their ease of use and intuitive nature. Unlike passwords, passkeys are easy to create, don't need to be remembered, and don't need to be safeguarded. Additionally, passkeys are unique to each website or application, preventing their reuse. They're highly secure because they're only stored on the user's devices, with the service only storing public keys. Passkeys are designed to prevent attackers to guess or obtain them, which helps to make them resistant to phishing attempts where the attacker might try to trick the user into revealing the private key. Passkeys are enforced by the browsers or operating systems to only be used for the appropriate service, rather than relying on human verification. Finally, passkeys provide cross-device and cross-platform authentication, meaning that a passkey from one device can be used to sign in on another device.

[!INCLUDE [passkey](../../../../includes/licensing/passkeys.md)]

## User experiences

### Create a passkey

By default, Windows offers to save the passkey locally on the **Windows device**, in which case the passkey is protected by Windows Hello (biometrics and PIN). You can also choose to save the passkey in one of the following locations:

- **iPhone, iPad or Android device**: the passkey is saved on a phone or tablet, protected by the device's biometrics, if offered by the device. This option requires you to scan a QR code with your phone or tablet, which must be in proximity of the Windows device
- **Linked device**: the passkey is saved on a phone or tablet, protected by the device's biometrics, if offered by the device. This option requires the linked device to be in proximity of the Windows device, and it's only supported for Android devices
- **Security key**: the passkey is saved to a FIDO2 security key, protected by the key's unlock mechanism (for example, biometrics or PIN)

Pick one of the following options to learn how to save a passkey, based on where you want to store it.

#### [:::image type="icon" source="images/laptop.svg" border="false"::: **Windows device**](#tab/windows)

[!INCLUDE [use-passkey](includes/create-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select **This Windows device** > **Next**
  :::column-end:::
:::row-end:::
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

[!INCLUDE [use-passkey](includes/create-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select **iPhone, iPad or Android device** > **Next**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. Scan the QR code with your phone or tablet. Wait for the connection to the device to be established and follow the instructions to save the passkey

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

[!INCLUDE [use-passkey](includes/create-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select your linked device name (for example, **Pixel**) > **Next**
  :::column-end:::
:::row-end:::
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

[!INCLUDE [use-passkey](includes/create-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select **Security key** > **Next**
  :::column-end:::
:::row-end:::
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

When you open a website or app that supports passkeys, if a passkey is stored locally, you're automatically prompted to use Windows Hello to sign in. You can also choose to use a passkey from one of the following locations:

- **iPhone, iPad or Android device**: use this option if you want to sign in with a passkey stored on a phone or tablet. This option requires you to scan a QR code with your phone or tablet, which must be in proximity of the Windows device
- **Linked device**: use this option if you want to sign in with a passkey stored on a device that is in proximity of the Windows device. This option is only supported for Android devices
- **Security key**: use this option if you want to sign in with a passkey stored on a FIDO2 security key

Pick one of the following options to learn how to use a passkey, based on where you saved it.

#### [:::image type="icon" source="images/laptop.svg" border="false"::: **Windows device**](#tab/windows)

[!INCLUDE [use-passkey](includes/use-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select **This Windows device** > **Next**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. Select a Windows Hello unlock option

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/hello-use.png" alt-text="Screenshot showing the Windows Hello prompt for a verification method." lightbox="images/hello-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. Select **OK** to continue signing in

  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/qr-code.svg" border="false"::: **Phone or tablet**](#tab/mobile)

[!INCLUDE [use-passkey](includes/use-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select **iPhone, iPad or Android device** > **Next**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. Scan the QR code with your phone or tablet where you saved the passkey. Once the connection to the device is established, follow the instructions to use the passkey

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/device-use.png" alt-text="Screenshot showing the QR code to scan from your phone or tablet." lightbox="images/device-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::

  6. You're signed in to the website or app

  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/phone.svg" border="false"::: **Linked phone or tablet**](#tab/linked)

[!INCLUDE [use-passkey](includes/use-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select your linked device name (for example, **Pixel**) > **Next**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. Once the connection to the linked device is established, follow the instructions on the device to use the passkey

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/linked-device-use.png" alt-text="Screenshot showing that the linked device is connected to Windows." lightbox="images/linked-device-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. You're signed in to the website or app

  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::

#### [:::image type="icon" source="images/usb.svg" border="false"::: **Security key**](#tab/key)

[!INCLUDE [use-passkey](includes/use-passkey.md)]

:::row:::
  :::column span="4":::
  4. Select **Security key** > **Next**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  5. Unlock the security key using the key's unlock mechanism

  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/security-key-use.png" alt-text="Screenshot showing a prompt asking the user to unlock the security key." lightbox="images/security-key-use.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::

  6. You're signed in to the website or app

  :::column-end:::
  :::column span="1":::
  :::column-end:::
:::row-end:::

---

### Manage passkeys

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], you can use the Settings app to view and manage passkeys saved for apps or websites. Go to **Settings > Accounts > Passkeys**, or use the following shortcut:

> [!div class="nextstepaction"]
>
> [Manage passkeys][MSS-1]

- A list of saved passkeys is displayed and you can filter them by name
- To delete a passkey, select **... > Delete passkey** next to the passkey name

:::image type="content" source="images/delete-passkey.png" alt-text="Screenshot of the Settings app showing the delete option for a passkey." lightbox="images/delete-passkey.png" border="false":::

> [!NOTE]
> Some passkeys for *login.microsoft.com* can't be deleted, as they're used with Microsoft Entra ID and/or Microsoft Account for signing in to the device and Microsoft services.

## Passkeys in Bluetooth-restricted environments

For passkey cross-device authentication scenarios, both the Windows device and the mobile device must have Bluetooth enabled and connected to the Internet. This allows the user to authorize another device securely over Bluetooth without transferring or copying the passkey itself.

Some organizations restrict Bluetooth usage, which includes the use of passkeys. In such cases, organizations can allow passkeys by permitting Bluetooth pairing exclusively with passkey-enabled FIDO2 authenticators.

To limit the use of Bluetooth to only passkey use cases, use the [Bluetooth Policy CSP][CSP-8] and the [DeviceInstallation Policy CSP][CSP-7].

### Device configuration

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

To configure devices with Microsoft Intune, [you can use a custom policy][INT-2] with these settings:

| Setting |
|--|
| <li>OMA-URI: `./Device/Vendor/MSFT/Policy/Config/Bluetooth/`[AllowAdvertising][CSP-1] </li><li>Data type: **Integer** </li><li>Value: `0` </li><br>When set to `0`, the device doesn't send out advertisements. |
| <li>OMA-URI: `./Device/Vendor/MSFT/Policy/Config/Bluetooth/`[AllowDiscoverableMode][CSP-2] </li><li>Data type: **Integer** </li><li>Value: `0` </li><br>When set to `0`, other devices can't detect the device. |
| <li>OMA-URI: `./Device/Vendor/MSFT/Policy/Config/Bluetooth/`[AllowPrepairing][CSP-3]</li><li>Data type: **Integer** </li><li>Value: `0` </li><br>Prevents specific bundled Bluetooth peripherals from automatically pairing with the host device.</li> |
| <li>OMA-URI: `./Device/Vendor/MSFT/Policy/Config/Bluetooth/`[AllowPromptedProximalConnections][CSP-4] </li><li>Data type: **Integer** </li><li>Value: `0`</li><br>Prevents users from using Swift Pair and other proximity-based scenarios. |
| <li>OMA-URI: `./Device/Vendor/MSFT/Policy/Config/Bluetooth/`[ServicesAllowedList][CSP-5] </li></li><li>Data type: **String** </li><li>Value: `{0000FFFD-0000-1000-8000-00805F9B34FB};{0000FFF9-0000-1000-8000-00805F9B34FB}` <br><br> Set a list of allowable Bluetooth services and profiles: <br>- FIDO Alliance Universal Second Factor Authenticator service (`0000fffd-0000-1000-8000-00805f9b34fb`) <br>- FIDO2 secure client-to-authenticator transport service (`0000FFF9-0000-1000-8000-00805F9B34FB`)<br><br>For more information, see [FIDO CTAP 2.1 standard specification][BT-1] and [Bluetooth Assigned Numbers document][BT-2]. |
| <li>OMA-URI: `./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/`[PreventInstallationOfMatchingDeviceIDs][CSP-6]</li><li>Data type: **String** </li><li>Value: `<enabled/><data id="DeviceInstall_IDs_Deny_Retroactive" value="true"/><data id="DeviceInstall_IDs_Deny_List" value="1&#xF000;BTH\MS_BTHPAN"/>`</li><br>Disables the existing Bluetooth Personal Area Network (PAN) network adapter, preventing the installation of the Bluetooth Network Adapter that can be used for network connectivity or tethering. |

#### [:::image type="icon" source="../../images/icons/powershell.svg" border="false"::: **PowerShell**](#tab/powershell)

[!INCLUDE [powershell-wmi-bridge-1](../../../../includes/configure/powershell-wmi-bridge-1.md)]

```powershell
# Bluetooth configuration
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_Policy_Config01_Bluetooth02"
New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{
    ParentID="./Vendor/MSFT/Policy/Config";
    InstanceID="Bluetooth";
    AllowDiscoverableMode=0;
    AllowAdvertising=0;
    AllowPrepairing=0;
    AllowPromptedProximalConnections=0;
    ServicesAllowedList="{0000FFF9-0000-1000-8000-00805F9B34FB};{0000FFFD-0000-1000-8000-00805F9B34FB}"
}


# Device installation configuration
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_Policy_Config01_DeviceInstallation02"
New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{
    ParentID="./Vendor/MSFT/Policy/Config";
    InstanceID="DeviceInstallation";
    PreventInstallationOfMatchingDeviceIDs='<![CDATA[<Enabled/><Data id="DeviceInstall_IDs_Deny_List" value="1&#xF000;BTH\MS_BTHPAN"/><Data id="DeviceInstall_IDs_Deny_Retroactive" value="true"/>]]>'
}
```

[!INCLUDE [powershell-wmi-bridge-2](../../../../includes/configure/powershell-wmi-bridge-2.md)]

---

>[!NOTE]
>Once the settings are applied, if you try to pair a device via Bluetooth, it will initially pair and immediately disconnect. The Bluetooth device is blocked from loading and not available from Settings nor Device Manager.

## :::image type="icon" source="../../images/icons/feedback.svg" border="false"::: Provide feedback

To provide feedback for passkeys, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Passkey**.

<!--links used in this document-->

[BT-1]: https://fidoalliance.org/specs/fido-v2.1-ps-20210615/fido-client-to-authenticator-protocol-v2.1-ps-20210615.html#ble-fido-service
[BT-2]: https://www.bluetooth.com/wp-content/uploads/Files/Specification/HTML/Assigned_Numbers/out/en/Assigned_Numbers.pdf?v=1713387868258
[FHUB]: feedback-hub:?tabid=2&newFeedback=true
[KB-1]: https://support.microsoft.com/kb/5030310
[MSS-1]: ms-settings:savedpasskeys

[INT-2]: /mem/intune/configuration/custom-settings-configure

[CSP-1]: /windows/client-management/mdm/policy-csp-bluetooth#allowadvertising
[CSP-2]: /windows/client-management/mdm/policy-csp-bluetooth#allowdiscoverablemode
[CSP-3]: /windows/client-management/mdm/policy-csp-bluetooth#allowprepairing
[CSP-4]: /windows/client-management/mdm/policy-csp-bluetooth#allowpromptedproximalconnections
[CSP-5]: /windows/client-management/mdm/policy-csp-bluetooth#servicesallowedlist
[CSP-6]: /windows/client-management/mdm/policy-csp-deviceinstallation#preventinstallationofmatchingdeviceids
[CSP-7]: /windows/client-management/mdm/policy-csp-deviceinstallation
[CSP-8]: /windows/client-management/mdm/policy-csp-bluetooth