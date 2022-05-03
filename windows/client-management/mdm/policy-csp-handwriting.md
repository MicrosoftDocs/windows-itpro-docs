---
title: Policy CSP - Handwriting
description: Use the Policy CSP - Handwriting setting to allow an enterprise to configure the default mode for the handwriting panel.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Handwriting



<hr/>

<!--Policies-->
## Handwriting policies  

<dl>
  <dd>
    <a href="#handwriting-paneldefaultmodedocked">Handwriting/PanelDefaultModeDocked</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="handwriting-paneldefaultmodedocked"></a>**Handwriting/PanelDefaultModeDocked**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows an enterprise to configure the default mode for the handwriting panel.

The handwriting panel has two modes - floats near the text box, or docked to the bottom of the screen. The default configuration is the one floating near text box. If you want the panel to be fixed or docked, use this policy to fix it to the bottom of the screen.

In floating mode, the content is hidden behind a flying-in panel and results in end-user dissatisfaction. The end-user will need to drag the flying-in panel to see the rest of the content. In the fixed mode, the flying-in panel is fixed to the bottom of the screen and doesn't require any user interaction.

The docked mode is especially useful in Kiosk mode where you don't expect the end-user to drag the flying-in panel out of the way.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Handwriting Panel Default Mode Docked*
-   GP name: *PanelDefaultModeDocked*
-   GP path: *Windows Components/Handwriting*
-   GP ADMX file name: *Handwriting.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disabled.
-   1 - Enabled.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

