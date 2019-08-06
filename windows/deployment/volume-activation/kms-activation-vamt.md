---
title: Perform KMS Activation (Windows 10)
description: Perform KMS Activation
ms.assetid: 5a3ae8e6-083e-4153-837e-ab0a225c1d10
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

# Perform KMS Activation

The Volume Activation Management Tool (VAMT) can be used to perform volume activation using the Key Management Service (KMS). You can use VAMT to activate Generic Volume Licensing Keys, or KMS client keys, on products accessible to VAMT. GVLKs are the default product keys used by the volume-license editions of Windows Vista, Windows 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, Windows Server® 2012, and Microsoft Office 2010. GVLKs are already installed in volume-license editions of these products.

## Requirements

Before configuring KMS activation, ensure that your network and VAMT installation meet the following requirements:
-   KMS host is set up and enabled.
-   KMS clients can access the KMS host.
-   VAMT is installed on a central computer with network access to all client computers.
-   The products to be activated have been added to VAMT. For more information on adding product keys, see [Install a KMS Client Key](install-kms-client-key-vamt.md).
-   VAMT has administrative permissions on all computers to be activated, and Windows Management Instrumentation (WMI) is accessible through the Windows Firewall. For more information, see [Configure Client Computers](configure-client-computers-vamt.md).

## To configure devices for KMS activation

**To configure devices for KMS activation**
1.  Open VAMT.
2.  If necessary, set up the KMS activation preferences. If you don’t need to set up the preferences, skip to step 6 in this procedure. Otherwise, continue to step 2.
3.  To set up the preferences, on the menu bar click **View**, then click **Preferences** to open the **Volume Activation Management Tool Preferences** dialog box.
4.  Under **Key Management Services host selection**, select one of the following options:
    -   **Find a KMS host automatically using DNS (default)**. If you choose this option, VAMT first clears any previously configured KMS host on the target computer and instructs the computer to query the Domain Name Service (DNS) to locate a KMS host and attempt activation.
    -   **Find a KMS host using DNS in this domain for supported products**. Enter the domain name. If you choose this option, VAMT first clears any previously configured KMS host on the target computer and instructs the computer to query the DNS in the specified domain to locate a KMS host and attempt activation.
    -   **Use specific KMS host**. Enter the KMS host name and KMS host port. For environments which do not use DNS for KMS host identification, VAMT sets the specified KMS host name and KMS host port on the target computer, and then instructs the computer to attempt activation with the specific KMS host.
5.  Click **Apply**, and then click **OK** to close the **Volume Activation Management Tool Preferences** dialog box.
6.  Select the products to be activated by selecting individual products in the product list view in the center pane. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.
    -   To filter the list by computer name, enter a name in the **Computer Name** box.
    -   To filter the list by Product Name, Product Key Type, or License Status, click the list you want to use for the filter and select an option. If necessary, click **clear all filters** to create a new filter.
7.  Click **Filter**. VAMT displays the filtered list in the center pane.
8.  In the right-side pane, click **Activate** in the **Selected Items** menu, and then click **Volume activate**.
9.  Click a credential option. Choose **Alternate credentials** only if you are activating products that require administrator credentials different from the ones you are currently using.
10. If you are supplying alternate credentials, at the prompt, type the appropriate user name and password and click **OK**.
VAMT displays the **Volume Activation** dialog box until it completes the requested action. When the process is finished, the updated activation status of each product appears in the product list view in the center pane.
 
