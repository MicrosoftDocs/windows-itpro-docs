---
title: Configure S/MIME for Windows
description: S/MIME lets users encrypt outgoing messages and attachments so that only intended recipients with a digital ID, also known as a certificate, can read them. Learn how to configure S/MIME for Windows.
ms.topic: how-to
ms.date: 05/31/2023
---


# Configure S/MIME for Windows

Secure/Multipurpose Internet Mail Extensions (S/MIME) provides an added layer of security for email sent to and from an Exchange ActiveSync (EAS) account. S/MIME enables users to encrypt outgoing messages and attachments so that only intended recipients can read them. To read the messages, recipients must have a digital identification (ID), also known as a certificate.\
Users can digitally sign a message, which provides the recipients with a way to verify the identity of the sender and that the message hasn't been tampered with.

## Message encryption

Users can send encrypted message to recipients that have an encryption certificate.\
Users can only read encrypted messages if the message is received on their Exchange account, and they have corresponding decryption keys.

Encrypted messages can be read only by recipients who have a certificate. If you try to send an encrypted message to recipients whose encryption certificate isn't available, the app prompts you to remove these recipients before sending the email.

## Digital signatures

A digitally signed message reassures the recipient that the message hasn't been tampered with, and verifies the identity of the sender. Recipients can only verify the digital signature if they're using an email client that supports S/MIME.

[!INCLUDE [email-encryption-smime](../../../../includes/licensing/email-encryption-smime.md)]

## Prerequisites

- [S/MIME is enabled for Exchange accounts](/exchange/security-and-compliance/smime-exo/smime-exo) (on-premises and Exchange Online). Users can't use S/MIME signing and encryption with a personal account such as Outlook.com
- Valid Personal Information Exchange (PFX) certificates are installed on the device
  - [How to Create PFX Certificate Profiles in Configuration Manager](/previous-versions/system-center/system-center-2012-R2/mt131410(v=technet.10))
  - [Use certificates for authentication in Microsoft Intune](/mem/intune/protect/certificates-configure)

## Choose S/MIME settings

On the device, perform the following steps: (add select certificate)

1. Open the Mail app
1. Open **Settings > Email security**
   :::image type="content" alt-text="Screenshot of the Windows Mail app, security settings." source="images/email-security.png":::
1. In **Select an account**, select the account for which you want to configure S/MIME options
1. Make a certificate selection for digital signature and encryption
   - Select **Automatically** to let the app choose the certificate
   - Select **Manually** to specify the certificate yourself from the list of valid certificates on the device
1. (Optional) Select **Always sign with S/MIME**, **Always encrypt with S/MIME**, or both, to automatically digitally sign or encrypt all outgoing messages

   > [!NOTE]
   > The option to sign or encrypt can be changed for individual messages, unless EAS policies prevent it.

1. Select the back arrow

## Encrypt or sign individual messages

1. While composing a message, select **Options** from the ribbon
1. Use **Sign** and **Encrypt** icons to turn on digital signature and encryption for this message

    :::image type="content" alt-text="Screenshot of the Windows Mail app, showing the options to sign or encrypt message." source="images/sign-encrypt.png":::

## Read signed or encrypted messages

When you receive an encrypted message, the mail app checks whether there's a certificate available on your computer. If there's a certificate available, the message is decrypted when you open it. If your certificate is stored on a smartcard, you'll be prompted to insert the smartcard to read the message. Your smartcard may also require a PIN to access the certificate.

## Install certificates from a received message

When you receive a signed email, the app provides a feature to install corresponding encryption certificate on your device if the certificate is available. This certificate can then be used to send encrypted email to this person.

1. Open a signed email
1. Select the digital signature icon in the reading pane
1. Select **Install.**

  :::image type="content" alt-text="Screenshot of the Windows Mail app, showing a message to install the sender's encryption certificate." source="images/install-cert.png":::
