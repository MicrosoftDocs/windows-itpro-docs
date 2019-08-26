---
title: Scenario 3 KMS Client Activation (Windows 10)
description: Scenario 3 KMS Client Activation
ms.assetid: 72b04e8f-cd35-490c-91ab-27ea799b05d0
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itproauthor: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# Scenario 3: KMS Client Activation

In this scenario, you use the Volume Activation Management Tool (VAMT) to activate Key Management Service (KMS) client keys or Generic Volume License Keys (GVLKs). This can be performed on either Core Network or Isolated Lab computers. By default, volume license editions of Windows Vista, Windows® 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, Windows Server® 2012, and Microsoft® Office 2010 use KMS for activation. GVLKs are already installed in volume license editions of these products. You do not have to enter a key to activate a product as a GVLK, unless you are converting a MAK-activated product to a KMS activation. For more information, see [Install a KMS Client Key](install-kms-client-key-vamt.md).

The procedure that is described below assumes the following:
-   The KMS Service is enabled and available to all KMS clients.
-   VAMT has been installed and computers have been added to the VAMT database. See Parts 1 through 4 in either [Scenario 1: Online Activation](scenario-online-activation-vamt.md) or [Scenario 2: Proxy Activation](scenario-proxy-activation-vamt.md) for more information.

## Activate KMS Clients

1.  Open VAMT.
2.  To set the KMS activation options, on the menu bar click **View**. Then click **Preferences** to open the **Volume Activation Management Tool Preferences** dialog box.
3.  In the **Volume Activation Management Tool Preferences** dialog box, under **KMS Management Services host selection** select from the following options:
    -   **Find a KMS host automatically using DNS**. This is the default setting. VAMT will instruct the computer to query the Domain Name Service (DNS) to locate a KMS host and perform activation. If the client contains a registry key with a valid KMS host, that value will be used instead.
    -   **Find a KMS host using DNS in this domain for supported products**. Select this option if you use a specific domain, and enter the name of the domain.
    -   **Use specific KMS host**. Select this option for environments which do not use DNS for KMS host identification, and manually enter the KMS host name and select the KMS host port. VAMT will set the specified KMS host name and KMS host port on the target computer, and then instruct the computer to perform activation with the specific KMS host.
4.  In the left-side pane, in the **Products** node, click the product that you want to activate.
5.  In the products list view in the center pane, sort the list if necessary. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.
6.  In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.
    -   To filter the list by computer name, enter a name in the **Computer Name** box.
    -   To filter the list by Product Name, Product Key Type, or License Status, click the list you want to use for the filter and select an option. If necessary, click **clear all filters** to create a new filter.
7.  Click **Filter**. VAMT displays the filtered list in the center pane.
8.  Select the products that you want to activate.
9.  Click **Activate** in the **Selected Items** menu in the right-side **Actions** pane, click **Activate**, point to **Volume activate**, and then click the appropriate credential option. If you click the **Alternate Credentials** option, you will be prompted to enter an alternate user name and password.
10. VAMT displays the **Activating products** dialog box until it completes the requested action. When activation is complete, the status appears in the **Action Status** column of the dialog box. Click **Close** to close the dialog box. You can also click the **Automatically close when done** check box when the dialog box appears.

The same status is shown under the **Status of Last Action** column in the products list view in the center pane.

## Related topics
- [VAMT Step-by-Step Scenarios](vamt-step-by-step.md)
 
 
