---
author: shortpatti
ms.author: pashort
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

By default, Microsoft Edge turns off Pop-up Blocker, which opens pop-up windows. Enabling this policy turns on Pop-up Blocker preventing pop-up windows from opening. If you want users to choose to use Pop-up Blocker, don’t configure this policy. 


|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured |Blank |Blank |Users can choose to use Pop-up Blocker. | |
|Disabled<br>**(default)** |0 |0 |Turned off. Allow pop-up windows to open. | |
|Enabled |1 |1 |Turned on. Prevent pop-up windows from opening. |![Most restricted value](../images/check-gn.png) |