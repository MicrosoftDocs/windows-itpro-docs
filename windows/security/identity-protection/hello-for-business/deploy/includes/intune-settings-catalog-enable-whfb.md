---
ms.date: 12/15/2023
ms.topic: include
---

### Enable Windows Hello for Business

[!INCLUDE [intune-settings-catalog-1](../../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Windows Hello for Business** | Use Passport For Work | true |

[!INCLUDE [intune-settings-catalog-2](../../../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy](/mem/intune/configuration/custom-settings-configure) with the [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp).

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UsePassportForWork`<br>- **Data type:** `bool`<br>- **Value:** `True`|
