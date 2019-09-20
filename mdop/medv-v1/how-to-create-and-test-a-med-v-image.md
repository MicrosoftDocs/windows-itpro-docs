---
title: How to Create and Test a MED-V Image
description: How to Create and Test a MED-V Image
author: dansimp
ms.assetid: 40e4aba6-12cb-4794-967d-2c09dc20d808
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create and Test a MED-V Image


The MED-V administrator creates a MED-V image so that it can be uploaded, associated with a MED-V workspace, and then distributed to the client over the Web, added to a MED-V package, or downloaded to the client by using a third-party system. It is recommended to first create a test image and test it on MED-V client before deploying it.

When creating a MED-V image, it goes through the following stages:

1.  **Local test image**—A basic image that can be tested locally.

2.  **Local packed image**—After the image is tested, the image is packed as it existed prior to testing. No changes made during testing are included in the packed image.

3.  **Packed image on server**—The packed image is uploaded to the server.

## How to Create a MED-V Test Image


**To create a new MED-V test image**

1.  Click the **Images** management button.

    The **Images** module appears.

    -   The **Images** module consists of the following panes:

        -   **Local Test Images**—Local unpacked images.

        -   **Local Packed Images**—All packed images on the local computer.

        -   **Packed Images on Server**—All images that have been packed and uploaded to the server.

    -   In the **Local Packed Images** and **Packed Images on Server** panes, the most recent version of each image is displayed as the parent node. Click the parent node to view all other existing versions of the image.

2.  In the **Local Test Images** pane, click **New**.

3.  On the **Test Image Creation** dialog box, select the virtual machine image that you want to configure as a MED-V test image by doing one of the following:

    -   In the **Base image** file field, type the full path to the directory where the Microsoft Virtual PC image prepared for MED-V is located.

    -   Click **Browse** to browse to the directory where the Microsoft Virtual PC image prepared for MED-V is located.

4.  In the **Image name** field, type or select the desired name.

    **Note**  
    The following characters cannot be included in the image name: space " &lt; &gt; | \\ / : \* ?

     

5.  Click **OK**.

    A new MED-V test image is created on your host computer with the properties defined in the following table.

    For more information about configuring the MED-V workspace image, refer to [Configuring MED-V Workspace Policies](configuring-med-v-workspace-policies.md).

**Local Test Images Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Image Name</p></td>
<td align="left"><p>The name of the test image as it was defined when the administrator created the image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Image Path</p></td>
<td align="left"><p>The local path of the test image.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Created</p></td>
<td align="left"><p>The date the test image was created.</p></td>
</tr>
</tbody>
</table>

 

## How to Test a MED-V Image from the MED-V Client


After a MED-V test image is created, use the following procedure to test the image locally.

**To test a MED-V image**

1.  Click the **Policy** management button.

2.  In the **Policy** module, assign the MED-V test image to a MED-V workspace by doing the following:

    1.  Click the **Virtual Machine** tab.

    2.  In the **Assigned Image** field, select the MED-V test image you created. If your test image is not in the list, click **Refresh**.

    3.  On the toolbar, click **Save changes**.

3.  Configure any other MED-V workspace settings to be tested. For more information, see [Configuring MED-V Workspace Policies](configuring-med-v-workspace-policies.md).

4.  Start MED-V client.

5.  In the **Confirm Running Test** confirmation box, click **Use Test Image**.

6.  Test the MED-V workspace test image.

    For information about starting and running MED-V client, see [MED-V Client Operations](med-v-client-operations.md).

**Note**  
While testing an image, do not open VPC and make changes to the image.

 

**Note**  
When testing an image, no changes are saved to the image between sessions; instead, they are saved in a separate, temporary file. This is to ensure that when the image is packed and run on the production environment, it is the original, clean image.

 

## Related topics


[Creating a Virtual PC Image for MED-V](creating-a-virtual-pc-image-for-med-v.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

[Configuring MED-V Workspace Policies](configuring-med-v-workspace-policies.md)

[MED-V Client Operations](med-v-client-operations.md)

 

 





