---
title: How To Use Dynamic Suite Composition
description: How To Use Dynamic Suite Composition
author: dansimp
ms.assetid: 24147feb-a0a8-4791-a8e5-cbe5fe13c762
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How To Use Dynamic Suite Composition


Dynamic Suite Composition in Application Virtualization enables you to define an application as being dependent on another application, such as middleware or a plug-in. This enables the application to interact with the middleware or plug-in in the virtual environment, where typically this is prevented. This is useful because a secondary application package can be used with several other applications, referred to as the *primary applications*, which enables each primary application to reference the same secondary package.

You can use Dynamic Suite Composition when you sequence applications that depend on plug-ins such as ActiveX controls or for applications that depend on middleware such as OLE DB or the Java Runtime Environment (JRE). If each application that used these dependent components required sequencing, including the components, updates to those components would require re-sequencing all the primary applications. If you sequence the primary applications without the components and then sequence the middleware or plug-in as a secondary package, then only the secondary package must be updated.

One advantage of this approach is that it reduces the size of the primary packages. Another advantage is that it provides you with better control of access permissions on the secondary applications. Note that the secondary application can be streamed in the regular way and does not have to be fully cached to run.

A primary package can have more than one secondary package. However, only one level of dependency is supported, so you cannot define a secondary package as dependent on another secondary package. Also the secondary application can only be middleware or a plug-in and cannot be another full software product.

If you plan to make several primary applications dependent on a single middleware product, make sure that you test this configuration to determine the potential effect on system performance before you deploy it.

**Important**  
Package dependencies can be specified as mandatory for a primary application. If a secondary package is flagged as mandatory and it cannot be accessed for some reason during loading, the load of the secondary package will fail. Also, the primary application will fail when the user tries to start it.

 

You can use the following procedures to create a secondary package, for either a plug-in or a middleware component, and then you can use the final procedure to define the dependency in the OSD file of the secondary package.

**To create a secondary package for a plug-in by using Dynamic Suite Composition**

1.  On a sequencing computer that is set up with a clean image, install Application Virtualization Sequencer and save the computer state.

2.  Sequence the primary application, and save the package to the Content folder on the server.

3.  Restore the sequencing computer to its saved state from step 1.

4.  Install and configure the primary application locally on the sequencing computer.

    **Important**  
    You must specify a new package root for the secondary package.

     

5.  Start the sequencer monitoring phase.

6.  Install the plug-in on the sequencing computer and configure it as needed.

7.  Open the primary application, and confirm that the plug-in is working correctly.

8.  In the sequencer console, create a dummy application to represent the secondary package that will contain the plug-in and select an icon.

9.  Save the package to the Content folder on the server.

    **Note**  
    To assist with management of secondary packages, it is recommended that the package name include the term “Secondary package” to emphasize that this is a package that will not function as a stand-alone application—for example, **\[Plug In Name\] Secondary package**.

     

**To create a secondary package for middleware by using Dynamic Suite Composition**

1.  On a sequencing computer that is set up with a clean image, install Application Virtualization Sequencer and save the computer state.

2.  Install the middleware locally on the sequencing computer, and configure it.

3.  Sequence the primary application, and save the package to the Content folder on the server.

4.  Restore the sequencing computer to its saved state from step 1.

5.  Start the sequencer to create a new package.

6.  Start the sequencer monitoring phase.

7.  Install the middleware application on the sequencing computer, and configure it as in a typical installation.

8.  Complete the sequencing process.

9.  Save the package to the Content folder on the server.

    **Note**  
    To assist with management of secondary packages, it is recommended that the package name include the term “Secondary package” to emphasize that this is a package that will not function as a stand-alone application—for example, **\[Middleware Name\] Secondary package**.

     

**To define the dependency in the primary package**

1. On the server, open the OSD file of the secondary package for editing. (It is a good idea to use an XML editor to make changes to the OSD file; however, you can use Notepad as an alternative.)

2. Copy the **CODEBASE HREF** line from that file.

3. Open the OSD file of the primary package for editing.

4. Insert the <strong>&lt;DEPENDENCIES&gt;</strong>tag after the close of **&lt;/ENVLIST&gt;** tag at the end of the **&lt;VIRTUALENV&gt;** section just before the **&lt;/VIRTUALENV&gt;** tag.

5. Paste the **CODEBASE HREF** line from the secondary package after the **&lt;DEPENDENCIES&gt;** tag you just created.

6. If the secondary package is a mandatory package, which means that it must be started before the primary package is started, add the **MANDATORY=”TRUE”** property inside the **CODEBASE** tag. If it is not mandatory, the property can be omitted.

7. Close the **&lt;DEPENDENCIES&gt;** tag by inserting the following:

   **&lt;/DEPENDENCIES&gt;**

8. Review the changes that you made to the OSD file, and then save and close the file. The following example shows how the added section should appear. The tag values shown here are for example only.

   **&lt;VIRTUALENV&gt;**

        **&lt;ENVLIST&gt;**

   **…**

        **&lt;/ENVLIST&gt;**

        **&lt;DEPENDENCIES&gt;**

             **&lt;CODEBASE HREF="rtsp://virt\_apps/package.1/package.1.sft" GUID="D54C80FA-9DFF-459D-AA33-DD852C9FBFBA" SYSGUARDFILE="package.1\\osguard.cp"/&gt;**

             **&lt;CODEBASE HREF="rtsp://sample\_apps/package.2/sample.sft" GUID="D54C80FA-9DFF-459D-AA33-DD852C9FBFBA" SYSGUARDFILE="package.2\\osguard.cp" MANDATORY="TRUE" /&gt;**

        **&lt;/DEPENDENCIES&gt;**

   **&lt;/VIRTUALENV&gt;**

9. If the secondary package has any entries in the **&lt;ENVLIST&gt;** section of the OSD file, you must copy those entries to the same section in the primary package.

## Related topics


[How to Create or Upgrade Virtual Applications Using the App-V Sequencer](how-to-create-or-upgrade-virtual-applications-using--the-app-v-sequencer.md)

 

 





