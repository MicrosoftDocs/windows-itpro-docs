---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Configure Start pins

This policy setting lets you specify a new list of pinned apps to override the default/current list of pinned apps in the Windows Start menu.

The policy setting accepts a JSON file that contains the list of items to pin, and their order.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-start#configurestartpins)<br><br>`./User/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-start#configurestartpins)|
| **GPO** | Not available |

For more information, see [Customize the Start layout](../layout.md).
