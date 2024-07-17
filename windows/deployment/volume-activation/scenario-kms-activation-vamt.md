---
title: Scenario 3 KMS Client Activation (Windows 10)
description: Learn how to use the Volume Activation Management Tool (VAMT) to activate Key Management Service (KMS) client keys or Generic Volume License Keys (GVLKs).
ms.reviewer: nganguly
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 11/07/2022
ms.topic: conceptual
ms.subservice: itpro-fundamentals
---

# Scenario 3: KMS client activation

In this scenario, you use the Volume Activation Management Tool (VAMT) to activate Key Management Service (KMS) client keys or Generic Volume License Keys (GVLKs). This type of activation can be performed on either Core Network or Isolated Lab computers. By default, volume license editions of Windows Vista, Windows® 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, Windows Server® 2012, and Microsoft® Office 2010 use KMS for activation. GVLKs are already installed in volume license editions of these products. You don't have to enter a key to activate a product as a GVLK, unless you're converting a MAK-activated product to a KMS activation. For more information, see [Install a KMS Client Key](install-kms-client-key-vamt.md).

The procedure that is described below assumes the following configuration:

- The KMS Service is enabled and available to all KMS clients.

- VAMT has been installed and computers have been added to the VAMT database. See Parts 1 through 4 in either [Scenario 1: Online Activation](scenario-online-activation-vamt.md) or [Scenario 2: Proxy Activation](scenario-proxy-activation-vamt.md) for more information.

## Activate KMS clients

1. Open VAMT.

2. To set the KMS activation options, on the menu bar select **View**. Then select **Preferences** to open the **Volume Activation Management Tool Preferences** dialog box.

3. In the **Volume Activation Management Tool Preferences** dialog box, under **KMS Management Services host selection** select from the following options:

    - **Find a KMS host automatically using DNS**. This setting is the default setting. VAMT will instruct the computer to query the Domain Name Service (DNS) to locate a KMS host and perform activation. If the client contains a registry key with a valid KMS host, that value will be used instead.

    - **Find a KMS host using DNS in this domain for supported products**. Select this option if you use a specific domain, and enter the name of the domain.

    - **Use specific KMS host**. Select this option for environments that don't use DNS for KMS host identification, and manually enter the KMS host name and select the KMS host port. VAMT will set the specified KMS host name and KMS host port on the target computer, and then instruct the computer to perform activation with the specific KMS host.

4. In the left-side pane, in the **Products** node, select the product that you want to activate.

5. In the products list view in the center pane, sort the list if necessary. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.

6. In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.
    - To filter the list by computer name, enter a name in the **Computer Name** box.

    - To filter the list by Product Name, Product Key Type, or License Status, select the list you want to use for the filter and select an option. If necessary, select **clear all filters** to create a new filter.

7. Select **Filter**. VAMT displays the filtered list in the center pane.

8. Select the products that you want to activate.

9. Select **Activate** in the **Selected Items** menu in the right-side **Actions** pane, select **Activate**, point to **Volume activate**, and then select the appropriate credential option. If you select the **Alternate Credentials** option, you'll be prompted to enter an alternate user name and password.

10. VAMT displays the **Activating products** dialog box until it completes the requested action. When activation is complete, the status appears in the **Action Status** column of the dialog box. Select **Close** to close the dialog box. You can also select the **Automatically close when done** check box when the dialog box appears.

The same status is shown under the **Status of Last Action** column in the products list view in the center pane.

## Related articles

- [VAMT step-by-step scenarios](vamt-step-by-step.md)
