---
title: Scenario 2 Proxy Activation (Windows 10)
description: Scenario 2 Proxy Activation
ms.assetid: ed5a8a56-d9aa-4895-918f-dd1898cb2c1a
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# Scenario 2: Proxy Activation

In this scenario, the Volume Activation Management Tool (VAMT) is used to activate products that are installed on workgroup computers in an isolated lab environment. For workgroups which are isolated from the larger network, you can perform proxy activation of Multiple Activation Keys (MAKs), KMS Host keys (CSVLKs), Generic Volume License Keys (GVLKs) (or KMS client keys), or retail keys. Proxy activation is performed by installing a second instance of VAMT on a computer in the isolated workgroup. You can then use removable media to transfer VAMT Computer Information Lists (CILXs) between the instance of VAMT in the isolated workgroup and another VAMT host that has Internet access. The following diagram shows a Multiple Activation Key (MAK) proxy activation scenario:

![VAMT MAK proxy activation scenario](images/dep-win8-l-vamt-makproxyactivationscenario.jpg)

## Step 1: Install VAMT on a Workgroup Computer in the Isolated Lab

1.  Install VAMT on a host computer in the isolated lab workgroup. This computer can be running Windows 7, Windows 8, Windows 10, Windows Server 2008 R2, or Windows Server® 2012.
2.  Click the VAMT icon in the **Start** menu to open VAMT.

## Step 2: Configure the Windows Management Instrumentation Firewall Exception on Target Computers

-   Ensure that the Windows Management Instrumentation (WMI) firewall exception has been enabled for all target computers. For more information, see [Configure Client Computers](configure-client-computers-vamt.md).

    **Note**  
    To retrieve the license status on the selected computers, VAMT must have administrative permissions on the remote computers and WMI must be accessible through the Windows Firewall. In addition, for workgroup computers, a registry key must be created to enable remote administrative actions under User Account Control (UAC). For more information, see [Configure Client Computers](configure-client-computers-vamt.md).

## Step 3: Connect to a VAMT Database

1.  If the host computer in the isolated lab workgroup is not already connected to the database, the **Database Connection Settings** dialog box appears when you open VAMT. Select the server and database that contains the computers in the workgroup.
2.  Click **Connect**.
3.  If you are already connected to a database, in the center pane VAMT displays an inventory of the products and product keys, and a license overview of the computers in the database. If you need to connect to a different database, click **Successfully connected to the Server** to open the **Database Connection Settings** dialog box. For more information about how to create VAMT databases and adding VAMT data, see [Manage VAMT Data.](manage-vamt-data.md)

## Step 4: Discover Products

1.  In the left-side pane, in the **Products** node, click the product that you want to activate.
2.  To open the **Discover Products** dialog box, click **Discover products** in the right-side pane.
3.  In the **Discover Products** dialog box, click **Search for computers in the Active Directory** to display the search options, and then click the search options that you want to use. You can search for computers in an Active Directory domain, by individual computer name or IP address, in a workgroup, or by a general LDAP query:
    -   To search for computers in an Active Directory domain, click **Search for computers in the Active Directory**. Then under **Domain Filter Criteria**, in the list of domain names, click the name of the domain that you want to search. You can narrow the search further by typing a name in the **Filter by computer name** field to search for specific computers in the domain. This filter supports the asterisk (\*) wildcard. For example, typing "a\*" will display only computer names that start with the letter "a".
    -   To search by individual computer name or IP address, click **Manually enter name or IP address**. Then enter the full name or IP address in the **One or more computer names or IP addresses separated by commas** text box. Separate multiple entries with a comma. Note that both IPv4 and IPv6addressing are supported.
    -   To search for computers in a workgroup, click **Search for computers in the workgroup**. Then under **Workgroup Filter Criteria**, in the list of workgroup names, click the name of the workgroup that you want to search. You can narrow the search further by typing a name in the **Filter by computer name** field to search for a specific computer in the workgroup. This filter supports the asterisk (\*) wildcard. For example, typing "a\*" will display only those computer names that start with the letter "a".
    -   To search for computers by using a general LDAP query, click **Search with LDAP query** and enter your query in the text box that appears. VAMT will validate the LDAP query syntax, but will otherwise run the query without additional checks.
4.  Click **Search**.

    The **Finding Computers** window appears and displays the search progress as the computers are located.

When the search is complete, the products that VAMT discovers appear in the list view in the center pane.

## Step 5: Sort and Filter the List of Computers

You can sort the list of products so that it is easier to find the computers that require product keys to be activated:

1.  On the menu bar at the top of the center pane, click **Group by**, and then click **Product**, **Product Key Type**, or **License Status**.
2.  To sort the list further, you can click one of the column headings to sort by that column.
3.  You can also use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.
4.  In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.
    -   To filter the list by computer name, enter a name in the **Computer Name** box.
    -   To filter the list by product name, product key type, or license status, click the list you want to use for the filter and select an option. If necessary, click **clear all filters** to create a new filter.
5.  Click **Filter**. VAMT displays the filtered list in the product list view in the center pane.

## Step 6: Collect Status Information from the Computers in the Isolated Lab

To collect the status from select computers in the database, you can select computers in the product list view by using one of the following methods:
- To select a block of consecutively listed computers, click the first computer that you want to select, and then click the last computer while pressing the **Shift** key.
- To select computers which are not listed consecutively, hold down the **Ctrl** ley and select each computer for which you want to collect the status information.
  **To collect status information from the selected computers**
- In the right-side **Actions** pane, click **Update license status** in the **Selected Items** menu and then click a credential option. Choose **Alternate Credentials** only if you are updating products that require administrator credentials that are different from the ones that you used to log on to the computer. Otherwise, click **Current Credentials** and continue to step 2.If you are supplying alternate credentials, in the **Windows Security** dialog box type the appropriate user name and password and then click **OK**.
- VAMT displays the **Collecting product information** dialog box while it collects the license status of all supported products on the selected computers. When the process is finished, the updated license status of each product will appear in the product list view in the center pane.

  **Note**  
  If a computer has more than one supported product installed, VAMT adds an entry for each product. The entry appears under the appropriate product heading.

## Step 7: Add Product Keys

1.  Click the **Product Keys** node in the left-side pane, and then click **Add Product Keys** in the right-side pane to open the **Add Product Keys** dialog box.
2.  In the **Add Product Keys** dialog box, you can select from one of the following methods to add product keys:
    -   To add a single product key, click **Enter product key(s) separated by line breaks**, enter one or more product keys, and then click **Add key(s)**.
    -   To import a Comma Separated Values File (CSV) that contains a list of product keys, click **Select a product key to import**, browse to the file location, click **Open** to import the file, and then click **Add Key(s)**.

    The keys that you have added appear in the **Product Keys** list view in the center pane.

## Step 8: Install the Product Keys on the Isolated Lab Computers

1.  In the left-side pane, in the **Products** node click the product that you want to install keys onto.
2.  If necessary, sort and filter the list of products so that it is easier to find the computers that must have a product key installed. See [Step 5: Sort and Filter the List of Computers](#step-5-sort-and-filter-the-list-of-computers).
3.  In the **Products** list view pane, select the individual products which must have keys installed. You can use the **CTRL** key or the **SHIFT** key to select more than one product.
4.  Click **Install product key** in the **Selected Items** menu in the right-side pane to display the **Install Product Key** dialog box.
5.  The **Select Product Key** dialog box displays the keys that are available to be installed. Under **Recommended MAKs**, VAMT might display one or more recommended MAKs based on the selected products. If you are installing a MAK you can select a recommended product key or any other MAK from the **All Product Keys List**. If you are not installing a MAK, select a product key from the **All Product Keys** list. Use the scroll bar if you need to view the **Description** for each key. When you have selected the product key that you want to install, click **Install Key**. Note that only one key can be installed at a time.
6.  VAMT displays the **Installing product key** dialog box while it attempts to install the product key for the selected products. When the process is finished, the status appears in the **Action Status** column of the dialog box. Click **Close** to close the dialog box. You can also click the **Automatically close when done** check box when the dialog box appears.

    The same status appears under the **Status of Last Action** column in the product list view in the center pane.

    **Note**  
    Product key installation will fail if VAMT finds mismatched key types or editions. VAMT displays the failure status and continues the installation for the next product in the list. For more information on choosing the correct product key, see [How to Choose the Right Volume License Key for Windows.](https://go.microsoft.com/fwlink/p/?linkid=238382)

    **Note**  
    Installing a MAK and overwriting the GVLK on client products must be done with care. If the RTM version of Windows Vista has been installed on the computer for more than 30 days, then its initial grace period has expired. As a result, it will enter Reduced Functionality Mode (RFM) if online activation is not completed successfully before the next logon attempt. However, you can use online activation to recover properly configured computers from RFM, as long as the computers are available on the network. RFM only applies to the RTM version of Windows Vista or the retail editions of Microsoft Office 2010. Windows Vista with SP1 or later, Windows 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012, and volume editions of Office 2010 will not enter RFM.

## Step 9: Export VAMT Data to a .cilx File

In this step, you export VAMT from the workgroup’s host computer and save it in a .cilx file. Then you copy the .cilx file to removable media so that you can take it to a VAMT host computer that is connected to the Internet. In MAK proxy activation, it is critical to retain this file, because VAMT uses it to apply the Confirmation IDs (CIDs) to the proper products.

1.  Select the individual products that successfully received a product key in Step 8. If needed, sort and filter the list to find the products.
2.  In the right-side **Actions** pane, click **Export list** to open the **Export List** dialog box.
3.  In the **Export List** dialog box, click **Browse** to navigate to the .cilx file, or enter the name of the .cilx file to which you want to export the data.
4.  Under **Export options**, select one of the following data-type options:
    -   Export products and product keys.
    -   Export products only.
    -   Export proxy activation data only. Selecting this option ensures that the export contains only the license information required for the proxy web service to obtain CIDs from Microsoft. No Personally Identifiable Information (PII) is contained in the exported .cilx file when this selection is selected. This option should be used when an enterprise’s security policy states that no information that could identify a specific computer or user may be transferred out of the isolated lab and, therefore, this type of data must be excluded from the .cilx file that is transferred to the Core Network VAMT host.
5.  If you have selected products to export, and not the entire set of data from the database, select the **Export selected product rows only** check box.
6.  Click **Save**. VAMT displays a progress message while the data is being exported. Click **OK** when a message appears and confirms that the export has completed successfully.
7.  If you exported the list to a file on the host computer’s hard drive, copy the file to removable media, such as a disk drive, CD/DVD, or USB storage device.

    **Important**  
    Choosing the **Export proxy activation data only** option excludes Personally Identifiable Information (PII) from being saved in the .cilx file. Therefore, the .cilx file must be re-imported into the SQL Server database on the isolated lab workgroup’s VAMT host computer, so that the CIDs that are requested from Microsoft (discussed in Step 10) can be correctly assigned to the computers in the isolated lab group.

## Step 10: Acquire Confirmation IDs from Microsoft on the Internet-Connected Host Computer

1.  Insert the removable media into the VAMT host that has Internet access.
2.  Open VAMT. Make sure you are on the root node, and that the **Volume Activation Management Tool** view is displayed in the center pane.
3.  In the right-side **Actions** pane, click **Acquire confirmation IDs for CILX** to open the **Acquire confirmation IDs for file** dialog box.
4.  In the **Acquire confirmation IDs for file** dialog box, browse to the location of the .cilx file that you exported from the isolated lab host computer, select the file, and then click **Open**. VAMT displays an **Acquiring Confirmation IDs** message while it contacts Microsoft and collects the CIDs.
5.  When the CID collection process is complete, VAMT displays a **Volume Activation Management Tool** message that shows the number of confirmation IDs that were successfully acquired, and the name of the file where the IDs were saved. Click **OK** to close the message.

## Step 11: Import the .cilx File onto the VAMT Host within the Isolated Lab Workgroup

1.  Remove the storage device that contains the .cilx file from the Internet-connected VAMT host computer and insert it into the VAMT host computer in the isolated lab.
2.  Open VAMT and verify that you are connected to the database that contains the computer with the product keys that you are activating.
3.  In the right-side **Actions** pane, click **Import list** to open the **Import List** dialog box.
4.  In the **Import list** dialog box, browse to the location of the .cilx file that contains the CIDs, select the file, and then click **Open**.
5.  Click **OK** to import the file and to overwrite any conflicting data in the database with data from the file.
6.  VAMT displays a progress message while the data is being imported. Click **OK** when a message appears and confirms that the data has been successfully imported.

## Step 12: Apply the CIDs and Activate the Isolated Lab Computers

1.  Select the products to which you want to apply CIDs. If needed, sort and filter the list to find the products.
2.  In the right-side **Selected Items** menu, click **Activate**, click **Apply Confirmation ID**, and then select the appropriate credential option. If you click the **Alternate Credentials** option, you will be prompted to enter an alternate user name and password.

    VAMT displays the **Applying Confirmation Id** dialog box while it installs the CIDs on the selected products. When VAMT finishes installing the CIDs, the status appears in the **Action Status** column of the dialog box. Click **Close** to close the dialog box. You can also click the **Automatically close when done** check box when the dialog box appears.
    The same status appears under the **Status of Last Action** column in the product list view in the center pane.

## Step 13: (Optional) Reactivating Reimaged Computers in the Isolated Lab

If you have captured new images of the computers in the isolated lab, but the underlying hardware of those computers has not changed, VAMT can reactivate those computers using the CIDs that are stored in the database.
1.  Redeploy products to each computer, using the same computer names as before.
2.  Open VAMT.
3.  In the right-side **Selected Items** menu, click **Activate**, click **Apply Confirmation ID**, and then select the appropriate credential option. If you click the **Alternate Credentials** option, you will be prompted to enter an alternate user name and password.

    VAMT displays the **Applying Confirmation Id** dialog box while it installs the CIDs on the selected products. When VAMT finishes installing the CIDs, the status appears in the **Action Status** column of the dialog box. Click **Close** to close the dialog box. You can also click the **Automatically close when done** check box when the dialog box appears.
    The same status appears under the **Status of Last Action** column in the product list view in the center pane.

    **Note**  
    Installing a MAK and overwriting the GVLK on the client products must be done with care. If the Windows activation initial grace period has expired, Windows will enter Reduced Functionality Mode (RFM) if online activation is not completed successfully before the next logon attempt. However, you can use online activation to recover properly configured computers from RFM, as long as the computers are accessible on the network. 
    
    RFM only applies to the RTM version of Windows Vista or the retail editions of Microsoft Office 2010. Windows Vista with SP1 or later, Windows 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012, and volume editions of Office 2010 will not enter RFM.

    **Note**  
    Reapplying the same CID conserves the remaining activations on the MAK.

## Related topics
- [VAMT Step-by-Step Scenarios](vamt-step-by-step.md)
 
 
