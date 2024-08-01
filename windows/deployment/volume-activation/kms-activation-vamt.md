---
title: Run KMS activation
description: The Volume Activation Management Tool (VAMT) can be used to run volume activation using the Key Management Service (KMS).
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 11/07/2022
ms.topic: how-to
ms.service: windows-client
ms.subservice: itpro-fundamentals
---

# Run KMS activation

The Volume Activation Management Tool (VAMT) can be used to run volume activation using the Key Management Service (KMS). You can use VAMT to activate Generic Volume Licensing Keys, or KMS client keys, on products accessible to VAMT. GVLKs are the default product keys used by the volume-license editions of Windows Vista, Windows 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, Windows Server® 2012, and Microsoft Office 2010. GVLKs are already installed in volume-license editions of these products.

## Requirements

Before configuring KMS activation, ensure that your network and VAMT installation meet the following requirements:

- KMS host is set up and enabled.

- KMS clients can access the KMS host.

- VAMT is installed on a central computer with network access to all client computers.

- The products to be activated have been added to VAMT. For more information on adding product keys, see [Install a KMS Client Key](install-kms-client-key-vamt.md).

- VAMT has administrative permissions on all computers to be activated, and Windows Management Instrumentation (WMI) is accessible through the Windows Firewall. For more information, see [Configure client computers](configure-client-computers-vamt.md).

## To configure devices for KMS activation

1. Open VAMT.

2. If necessary, set up the KMS activation preferences. If you don't need to set up the preferences, skip to step 6 in this procedure. Otherwise, continue to step 2.

3. To set up the preferences, on the menu bar select **View**, then select **Preferences** to open the **Volume Activation Management Tool Preferences** dialog box.

4. Under **Key Management Services host selection**, select one of the following options:

    - **Find a KMS host automatically using DNS (default)**. If you choose this option, VAMT first clears any previously configured KMS host on the target computer, and instructs the computer to query the Domain Name Service (DNS) to locate a KMS host and attempt activation.

    - **Find a KMS host using DNS in this domain for supported products**. Enter the domain name. If you choose this option, VAMT first clears any previously configured KMS host on the target computer, and instructs the computer to query the DNS in the specified domain to locate a KMS host and attempt activation.

    - **Use specific KMS host**. Enter the KMS host name and KMS host port. For environments that don't use DNS for KMS host identification, VAMT sets the specified KMS host name and KMS host port on the target computer, and then instructs the computer to attempt activation with the specific KMS host.

5. Select **Apply**, and then select **OK** to close the **Volume Activation Management Tool Preferences** dialog box.

6. Select the products to be activated by selecting individual products in the product list view in the center pane. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box. In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.

    - To filter the list by computer name, enter a name in the **Computer Name** box.

    - To filter the list by Product Name, Product Key Type, or License Status, select the list you want to use for the filter and select an option. If necessary, select **clear all filters** to create a new filter.

7. Select **Filter**. VAMT displays the filtered list in the center pane.

8. In the right-side pane, select **Activate** in the **Selected Items** menu, and then select **Volume activate**.

9. Select a credential option. Choose **Alternate credentials** only if you're activating products that require administrator credentials different from the ones you're currently using.

10. If you're supplying alternate credentials, at the prompt, type the appropriate user name and password and select **OK**.
VAMT displays the **Volume Activation** dialog box until it completes the requested action. When the process is finished, the updated activation status of each product appears in the product list view in the center pane.

## Related articles

[Run online activation](online-activation-vamt.md)

[Run proxy activation](proxy-activation-vamt.md)

[Run local reactivation](local-reactivation-vamt.md)
