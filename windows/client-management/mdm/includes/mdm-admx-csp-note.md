---
author: vinaypamnani-msft
ms.author: vinpa
ms.prod: windows
ms.topic: include
ms.date: 05/09/2023
---

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as `<Format>chr</Format>`. For details, see [Understanding ADMX-backed policies](../../understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).
