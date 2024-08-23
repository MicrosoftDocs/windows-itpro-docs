---
title: Scenario 2 - proxy activation
description: Use the Volume Activation Management Tool (VAMT) to activate products that are installed on workgroup computers in an isolated lab environment.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 11/07/2022
ms.topic: how-to
ms.service: windows-client
ms.subservice: activation
---

# Scenario 2: proxy activation

In this scenario, the Volume Activation Management Tool (VAMT) is used to activate products that are installed on workgroup computers in an isolated lab environment. For workgroups that are isolated from the larger network, you can perform proxy activation of Multiple Activation Keys (MAKs), KMS Host keys (CSVLKs), Generic Volume License Keys (GVLKs) (or KMS client keys), or retail keys. Proxy activation is performed by installing a second instance of VAMT on a computer in the isolated workgroup. You can then use removable media to transfer VAMT Computer Information Lists (CILXs) between the instance of VAMT in the isolated workgroup and another VAMT host that has internet access. The following diagram shows a Multiple Activation Key (MAK) proxy activation scenario:

![VAMT MAK proxy activation scenario.](images/dep-win8-l-vamt-makproxyactivationscenario.jpg)

## Step 1: Install VAMT on a workgroup computer in the isolated lab

1. Install VAMT on a host computer in the isolated lab workgroup. This computer can be running Windows 7, Windows 8, Windows 10, Windows Server 2008 R2, or Windows Server® 2012.

2. Select the VAMT icon in the **Start** menu to open VAMT.

## Step 2: Configure the Windows Management Instrumentation firewall exception on target computers

- Ensure that the Windows Management Instrumentation (WMI) firewall exception has been enabled for all target computers. For more information, see [Configure client computers](configure-client-computers-vamt.md).

    > [!NOTE]
    > To retrieve the license status on the selected computers, VAMT must have administrative permissions on the remote computers and WMI must be accessible through the Windows Firewall. In addition, for workgroup computers, a registry key must be created to enable remote administrative actions under User Account Control (UAC). For more information, see [Configure client computers](configure-client-computers-vamt.md).

## Step 3: Connect to a VAMT database

1. If the host computer in the isolated lab workgroup isn't already connected to the database, the **Database Connection Settings** dialog box appears when you open VAMT. Select the server and database that contains the computers in the workgroup.

2. Select **Connect**.

3. If you're already connected to a database, in the center pane VAMT displays an inventory of the products and product keys, and a license overview of the computers in the database. If you need to connect to a different database, select **Successfully connected to the Server** to open the **Database Connection Settings** dialog box. For more information about how to create VAMT databases and adding VAMT data, see [Import and export Volume Activation Management Tool data](import-export-vamt-data.md).

## Step 4: Discover products

1. In the left-side pane, in the **Products** node, select the product that you want to activate.

2. To open the **Discover Products** dialog box, select **Discover products** in the right-side pane.

3. In the **Discover Products** dialog box, select **Search for computers in the Active Directory** to display the search options, and then select the search options that you want to use. You can search for computers in an Active Directory domain, by individual computer name or IP address, in a workgroup, or by a general LDAP query:

    - To search for computers in an Active Directory domain, select **Search for computers in the Active Directory**. Then under **Domain Filter Criteria**, in the list of domain names, select the name of the domain that you want to search. You can narrow the search further by typing a name in the **Filter by computer name** field to search for specific computers in the domain. This filter supports the asterisk (`*`) wildcard. For example, typing `a*` will display only computer names that start with the letter "a".

    - To search by individual computer name or IP address, select **Manually enter name or IP address**. Then enter the full name or IP address in the **One or more computer names or IP addresses separated by commas** text box. Separate multiple entries with a comma. Both IPv4 and IPv6addressing are supported.

    - To search for computers in a workgroup, select **Search for computers in the workgroup**. Then under **Workgroup Filter Criteria**, in the list of workgroup names, select the name of the workgroup that you want to search. You can narrow the search further by typing a name in the **Filter by computer name** field to search for a specific computer in the workgroup. This filter supports the asterisk (`*`) wildcard. For example, typing `a*` will display only those computer names that start with the letter **a**.

    - To search for computers by using a general LDAP query, select **Search with LDAP query** and enter your query in the text box that appears. VAMT will validate the LDAP query syntax, but will otherwise run the query without extra checks.

4. Select **Search**.

    The **Finding Computers** window appears and displays the search progress as the computers are located.

When the search is complete, the products that VAMT discovers appear in the list view in the center pane.

## Step 5: Sort and filter the list of computers

You can sort the list of products so that it's easier to find the computers that require product keys to be activated:

1. On the menu bar at the top of the center pane, select **Group by**, and then select **Product**, **Product Key Type**, or **License Status**.

2. To sort the list further, you can select one of the column headings to sort by that column.

3. You can also use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.

4. In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.

    - To filter the list by computer name, enter a name in the **Computer Name** box.

    - To filter the list by product name, product key type, or license status, select the list you want to use for the filter and select an option. If necessary, select **clear all filters** to create a new filter.

5. Select **Filter**. VAMT displays the filtered list in the product list view in the center pane.

## Step 6: Collect status information from the computers in the Isolated lab

To collect the status from select computers in the database, you can select computers in the product list view by using one of the following methods:

- To select a block of consecutively listed computers, select the first computer that you want to select, and then select the last computer while pressing the **Shift** key.

- To select computers that aren't listed consecutively, hold down the **Ctrl** key and select each computer for which you want to collect the status information.
  **To collect status information from the selected computers**

- In the right-side **Actions** pane, select **Update license status** in the **Selected Items** menu and then select a credential option. Choose **Alternate Credentials** only if you're updating products that require administrator credentials that are different from the ones that you used to sign in to the computer. Otherwise, select **Current Credentials** and continue to step 2.If you're supplying alternate credentials, in the **Windows Security** dialog box type the appropriate user name and password and then select **OK**.

- VAMT displays the **Collecting product information** dialog box while it collects the license status of all supported products on the selected computers. When the process is finished, the updated license status of each product will appear in the product list view in the center pane.

  > [!NOTE]
  > If a computer has more than one supported product installed, VAMT adds an entry for each product. The entry appears under the appropriate product heading.

## Step 7: Add product keys

1. Select the **Product Keys** node in the left-side pane, and then select **Add Product Keys** in the right-side pane to open the **Add Product Keys** dialog box.

2. In the **Add Product Keys** dialog box, you can select from one of the following methods to add product keys:

    - To add a single product key, select **Enter product key(s) separated by line breaks**, enter one or more product keys, and then select **Add key(s)**.

    - To import a Comma Separated Values File (CSV) that contains a list of product keys, select **Select a product key to import**, browse to the file location, select **Open** to import the file, and then select **Add Key(s)**.

    The keys that you have added appear in the **Product Keys** list view in the center pane.

## Step 8: Install the product keys on the isolated lab computers

1. In the left-side pane, in the **Products** node select the product that you want to install keys onto.

2. If necessary, sort and filter the list of products so that it's easier to find the computers that must have a product key installed. See [Step 5: Sort and filter the list of computers](#step-5-sort-and-filter-the-list-of-computers).

3. In the **Products** list view pane, select the individual products that must have keys installed. You can use the **CTRL** key or the **SHIFT** key to select more than one product.

4. Select **Install product key** in the **Selected Items** menu in the right-side pane to display the **Install Product Key** dialog box.

5. The **Select Product Key** dialog box displays the keys that are available to be installed. Under **Recommended MAKs**, VAMT might display one or more recommended MAKs based on the selected products. If you're installing an MAK, you can select a recommended product key or any other MAK from the **All Product Keys List**. If you aren't installing a MAK, select a product key from the **All Product Keys** list. Use the scroll bar if you need to view the **Description** for each key. When you've selected the product key that you want to install, select **Install Key**. Only one key can be installed at a time.

6. VAMT displays the **Installing product key** dialog box while it attempts to install the product key for the selected products. When the process is finished, the status appears in the **Action Status** column of the dialog box. Select **Close** to close the dialog box. You can also select the **Automatically close when done** check box when the dialog box appears.

    The same status appears under the **Status of Last Action** column in the product list view in the center pane.

    > [!NOTE]
    > Product key installation will fail if VAMT finds mismatched key types or editions. VAMT displays the failure status and continues the installation for the next product in the list. For more information on choosing the correct product key, see [How to Choose the Right Volume License Key for Windows.](/previous-versions/tn-archive/ee939271(v=technet.10))

    > [!NOTE]
    > Installing a MAK and overwriting the GVLK on client products must be done with care. If the RTM version of Windows Vista has been installed on the computer for more than 30 days, then its initial grace period has expired. As a result, it will enter Reduced Functionality Mode (RFM) if online activation is not completed successfully before the next logon attempt. However, you can use online activation to recover properly configured computers from RFM, as long as the computers are available on the network. RFM only applies to the RTM version of Windows Vista or the retail editions of Microsoft Office 2010. Windows Vista with SP1 or later, Windows 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012, and volume editions of Office 2010 will not enter RFM.

## Step 9: Export VAMT data to a `.cilx` file

In this step, you export VAMT from the workgroup's host computer and save it in a `.cilx` file. Then you copy the `.cilx` file to removable media so that you can take it to a VAMT host computer that is connected to the internet. In MAK proxy activation, it's critical to retain this file, because VAMT uses it to apply the Confirmation IDs (CIDs) to the proper products.

1. Select the individual products that successfully received a product key in Step 8. If needed, sort and filter the list to find the products.

2. In the right-side **Actions** pane, select **Export list** to open the **Export List** dialog box.

3. In the **Export List** dialog box, select **Browse** to navigate to the `.cilx` file, or enter the name of the `.cilx` file to which you want to export the data.

4. Under **Export options**, select one of the following data-type options:

    - Export products and product keys.

    - Export products only.

    - Export proxy activation data only. Selecting this option ensures that the export contains only the license information required for the proxy web service to obtain CIDs from Microsoft. No Personally Identifiable Information (PII) is contained in the exported `.cilx` file when this selection is selected. This option should be used when an enterprise's security policy states that no information that could identify a specific computer or user may be transferred out of the isolated lab and, therefore, this type of data must be excluded from the `.cilx` file that is transferred to the Core Network VAMT host.

5. If you have selected products to export, and not the entire set of data from the database, select the **Export selected product rows only** check box.

6. Select **Save**. VAMT displays a progress message while the data is being exported. Select **OK** when a message appears and confirms that the export has completed successfully.

7. If you exported the list to a file on the host computer's hard drive, copy the file to removable media, such as a disk drive, CD/DVD, or USB storage device.

    > [!IMPORTANT]
    > Choosing the **Export proxy activation data only** option excludes Personally Identifiable Information (PII) from being saved in the `.cilx` file. Therefore, the `.cilx` file must be re-imported into the SQL Server database on the isolated lab workgroup's VAMT host computer, so that the CIDs that are requested from Microsoft (discussed in Step 10) can be correctly assigned to the computers in the isolated lab group.

## Step 10: Acquire confirmation IDs from Microsoft on the internet connected host computer

1. Insert the removable media into the VAMT host that has internet access.

2. Open VAMT. Make sure you are on the root node, and that the **Volume Activation Management Tool** view is displayed in the center pane.

3. In the right-side **Actions** pane, select **Acquire confirmation IDs for CILX** to open the **Acquire confirmation IDs for file** dialog box.

4. In the **Acquire confirmation IDs for file** dialog box, browse to the location of the `.cilx` file that you exported from the isolated lab host computer, select the file, and then select **Open**. VAMT displays an **Acquiring Confirmation IDs** message while it contacts Microsoft and collects the CIDs.

5. When the CID collection process is complete, VAMT displays a **Volume Activation Management Tool** message that shows the number of confirmation IDs that were successfully acquired, and the name of the file where the IDs were saved. Select **OK** to close the message.

## Step 11: Import the `.cilx` file onto the VAMT host within the isolated lab workgroup

1. Remove the storage device that contains the `.cilx` file from the internet-connected VAMT host computer and insert it into the VAMT host computer in the isolated lab.

2. Open VAMT and verify that you're connected to the database that contains the computer with the product keys that you're activating.

3. In the right-side **Actions** pane, select **Import list** to open the **Import List** dialog box.

4. In the **Import list** dialog box, browse to the location of the `.cilx` file that contains the CIDs, select the file, and then select **Open**.

5. Select **OK** to import the file and to overwrite any conflicting data in the database with data from the file.

6. VAMT displays a progress message while the data is being imported. Select **OK** when a message appears and confirms that the data has been successfully imported.

## Step 12: Apply the CIDs and activate the isolated lab computers

1. Select the products to which you want to apply CIDs. If needed, sort and filter the list to find the products.

2. In the right-side **Selected Items** menu, select **Activate**, select **Apply Confirmation ID**, and then select the appropriate credential option. If you select the **Alternate Credentials** option, you'll be prompted to enter an alternate user name and password.

    VAMT displays the **Applying Confirmation Id** dialog box while it installs the CIDs on the selected products. When VAMT finishes installing the CIDs, the status appears in the **Action Status** column of the dialog box. Select **Close** to close the dialog box. You can also select the **Automatically close when done** check box when the dialog box appears.
    The same status appears under the **Status of Last Action** column in the product list view in the center pane.

## Step 13: (Optional) Reactivating reimaged computers in the isolated lab

If you have captured new images of the computers in the isolated lab, but the underlying hardware of those computers hasn't changed, VAMT can reactivate those computers using the CIDs that are stored in the database.

1. Redeploy products to each computer, using the same computer names as before.

2. Open VAMT.

3. In the right-side **Selected Items** menu, select **Activate**, select **Apply Confirmation ID**, and then select the appropriate credential option. If you select the **Alternate Credentials** option, you'll be prompted to enter an alternate user name and password.

    VAMT displays the **Applying Confirmation Id** dialog box while it installs the CIDs on the selected products. When VAMT finishes installing the CIDs, the status appears in the **Action Status** column of the dialog box. Select **Close** to close the dialog box. You can also select the **Automatically close when done** check box when the dialog box appears.
    The same status appears under the **Status of Last Action** column in the product list view in the center pane.

    > [!NOTE]
    > Installing a MAK and overwriting the GVLK on the client products must be done with care. If the Windows activation initial grace period has expired, Windows will enter Reduced Functionality Mode (RFM) if online activation is not completed successfully before the next logon attempt. However, you can use online activation to recover properly configured computers from RFM, as long as the computers are accessible on the network.

    RFM only applies to the RTM version of Windows Vista or the retail editions of Microsoft Office 2010. Windows Vista with SP1 or later, Windows 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012, and volume editions of Office 2010 won't enter RFM.

    > [!NOTE]
    > Reapplying the same CID conserves the remaining activations on the MAK.

## Related articles

[Run proxy activation](proxy-activation-vamt.md)
