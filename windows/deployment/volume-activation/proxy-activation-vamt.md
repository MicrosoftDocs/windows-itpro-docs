---
title: Run proxy activation
description: Run proxy activation by using the Volume Activation Management Tool (VAMT) to activate client computers that don't have internet access.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 11/07/2022
ms.topic: how-to
ms.service: windows-client
ms.subservice: itpro-fundamentals
---

# Run proxy activation

You can use the Volume Activation Management Tool (VAMT) to run activation for client computers that don't have internet access. The client products can be installed with any type of product key that is eligible for proxy activation: Multiple activation Key (MAK), KMS Host key (CSVLK), or retail key.

In a typical proxy-activation scenario, the VAMT host computer distributes a MAK to one or more client computers and collects the installation ID (IID) from each computer. The VAMT host computer sends the IIDs to Microsoft on behalf of the client computers and obtains the corresponding Confirmation IDs (CIDs). The VAMT host computer then installs the CIDs on the client computer to complete the activation. Using this activation method, only the VAMT host computer needs internet access.

> [!NOTE]
> For workgroups that are completely isolated from any larger network, you can still run MAK, KMS Host key (CSVLK), or retail proxy activation. This requires installing a second instance of VAMT on a computer within the isolated group and using removable media to transfer activation data between that computer and another VAMT host computer that has internet access. For more information about this scenario, see [Scenario 2: Proxy Activation](scenario-proxy-activation-vamt.md). Similarly, you can proxy activate a KMS Host key (CSVLK) located in an isolated network. You can also proxy activate a KMS Host key (CSVLK) in the core network if you do not want the KMS host computer to connect to Microsoft over the internet.

## Requirements

Before running proxy activation, ensure that your network and the VAMT installation meet the following requirements:

- There's an instance of VAMT that is installed on a computer that has internet access. If you're running proxy activation for an isolated workgroup, you also need to have VAMT installed on one of the computers in the workgroup.

- The products to be activated have been added to VAMT and are installed with a retail product key, a KMS Host key (CSVLK) or a MAK. If the products haven't been installed with a proper product key, refer to the steps in the [Add and Remove a Product Key](add-remove-product-key-vamt.md) section for instructions on how to install a product key.

- VAMT has administrative permissions on all products to be activated and Windows Management Instrumentation (WMI) is accessible through the Windows firewall.

- For workgroup computers, a registry key must be created to enable remote administrative actions under User Account Control (UAC). For more information, see [Configure client computers](configure-client-computers-vamt.md).

    The product keys that are installed on the client products must have a sufficient number of remaining activations. If you're activating a MAK key, you can retrieve the remaining number of activations for that key by selecting the MAK in the product key list in the center pane and then clicking **Refresh product key data online** in the right-side pane. This action retrieves the number of remaining activations for the MAK from Microsoft. This step requires internet access and that the remaining activation count can only be retrieved for MAKs.

## To run proxy activation

1. Open VAMT.

2. If necessary, install product keys. For more information, see:

    - [Install a product key](install-product-key-vamt.md) to install retail, MAK, or KMS Host key (CSVLK).

    - [Install a KMS Client Key](install-kms-client-key-vamt.md) to install GVLK (KMS client) keys.

3. In the **Products** list in the center pane, select the individual products to be activated. You can use the **Filter** function to narrow your search for products by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.

4. In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.

    - To filter the list by computer name, enter a name in the **Computer Name** box.

    - To filter the list by Product Name, Product Key Type, or License Status, select the list you want to use for the filter and select an option. If necessary, select **clear all filters** to create a new filter.

5. Select **Filter**. VAMT displays the filtered list in the center pane.

6. In the right-side pane, select **Activate** and then select **Proxy activate** to open the **Proxy Activate** dialog box.

7. In the **Proxy Activate** dialog box select **Apply Confirmation ID, apply to selected machine(s) and activate**.

8. If you're activating products that require administrator credentials different from the ones you're currently using, select the **Use Alternate Credentials** checkbox.

9. Select **OK**.

10. VAMT displays the **Activating products** dialog box until it completes the requested action. If you selected the **Alternate Credentials** option, you'll be prompted to enter the credentials.

    > [!NOTE]
    You can use proxy activation to select products that have different key types and activate the products at the same time.

## Related articles

[Run online activation](online-activation-vamt.md)

[Run KMS activation](kms-activation-vamt.md)

[Run local reactivation](local-reactivation-vamt.md)
