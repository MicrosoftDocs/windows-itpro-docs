---
title: How to Configure VM Computer Name Pattern Properties
description: How to Configure VM Computer Name Pattern Properties
author: dansimp
ms.assetid: ddf79ace-8cc3-4ee6-be5a-5940b4df5c36
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure VM Computer Name Pattern Properties


A virtual machine computer name pattern can be assigned both for revertible and for persistent MED-V workspaces.

-   Revertible—Administrators can assign a unique name to each revertible MED-V workspace instance to differentiate between multiple computers using the same MED-V workspace.

-   Persistent—In a persistent MED-V workspace, administrators can set a computer to be renamed during a setup script.

## How to Assign a Virtual Machine Computer Name Pattern to a Revertible MED-V Workspace


**To assign a virtual machine computer name pattern to a revertible MED-V workspace**

1.  Click the revertible MED-V workspace to configure.

2.  In the **Revertible VM Setup** section, select the **Rename the VM based on the computer name pattern** check box.

3.  In the **VM Computer Name Pattern** section, enter the pattern to use for naming virtual machine images, using the following options:

    -   **Constant**—Enter free text that will be constant on all computers using the MED-V workspace.

    -   **Variable**—Enter a variable, by clicking **Insert Variable**, and select from one of the following:

        -   **User name**

        -   **Domain name**

        -   **Host name**

        -   **Workspace name**

        -   **Virtual machine name**

        The variable selected will be specific to the computer using the MED-V workspace. For example, if **Domain name** is selected, the unique name for each computer will include the computer's domain name.

    -   **Random characters**—Enter “\#” for each random character to include in the pattern. Each computer using the MED-V workspace will have a suffix of the length specified, which is generated randomly.

    **Note**  
    The computer name has a limit of 15 characters. If the pattern exceeds the limit, it will be truncated.



4.  On the **Policy** menu, select **Commit**.

    **Note**  
    A revertible VM computer name pattern can be assigned only when **Rename the VM based on the computer name patterns** (in the **Revertible VM Setup** section) is checked.



~~~
**Note**  
A unique computer name can be assigned only if it is configured prior to MED-V workspace setup. Changing the name will not affect MED-V workspaces that were already set up.
~~~



## How to Assign a Virtual Machine Computer Name Pattern to a Persistent MED-V Workspace


**To assign a virtual machine computer name pattern to a persistent MED-V workspace**

1.  Click the persistent MED-V workspace to configure.

2.  In the **Persistent VM Setup** section, click **Script Editor**.

3.  In the **Script Actions** dialog box, click **Add**, and on the submenu, click **Rename Computer**.

4.  Click **OK** to close the **Script Actions** dialog box.

5.  On the **VM Setup** tab, in the **VM Computer Name Pattern** section, enter the pattern to use for renaming the computer, using the following:

    -   **Constant**— Enter free text that will be included in the computer name.

    -   **Variable**—Enter a variable, by clicking **Insert Variable**, and select from one of the following:

        -   **User name**

        -   **Domain name**

        -   **Host name**

        -   **Workspace name**

        -   **Virtual machine name**

        The variable selected will be specific to the computer that is being renamed. For example, if **Domain name** is selected, the computer name will include the computer's domain name.

    -   **Random characters**— Enter “\#” for each random character to include in the pattern. The computer will have a suffix of the length specified, which is generated randomly.

    **Note**  
    The computer name has a limit of 15 characters. If the pattern exceeds the limit, it will be truncated.



6.  On the **Policy** menu, select **Commit**.

    **Note**  
    The computer will be renamed only if it is set as an action in the **Script Actions** dialog box. For detailed information, see [How to Set Up Script Actions](how-to-set-up-script-actions.md).



## Related topics


[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

[How to Set Up Script Actions](how-to-set-up-script-actions.md)

[Examples of Virtual Machine Configurations](examples-of-virtual-machine-configurationsv2.md)









