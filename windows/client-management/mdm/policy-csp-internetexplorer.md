---
title: InternetExplorer Policy CSP
description: Learn more about the InternetExplorer Area in Policy CSP.
ms.date: 06/21/2024
---

<!-- Auto-Generated CSP Document -->

<!-- InternetExplorer-Begin -->
# Policy CSP - InternetExplorer

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- InternetExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetExplorer-Editable-End -->

<!-- AddSearchProvider-Begin -->
## AddSearchProvider

<!-- AddSearchProvider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AddSearchProvider-Applicability-End -->

<!-- AddSearchProvider-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AddSearchProvider
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AddSearchProvider
```
<!-- AddSearchProvider-OmaUri-End -->

<!-- AddSearchProvider-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to add a specific list of search providers to the user's default list of search providers. Normally, search providers can be added from third-party toolbars or in Setup. The user can also add a search provider from the provider's website.

- If you enable this policy setting, the user can add and remove search providers, but only from the set of search providers specified in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]).

> [!NOTE]
> This list can be created from a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.

- If you disable or don't configure this policy setting, the user can configure their list of search providers unless another policy setting restricts such configuration.
<!-- AddSearchProvider-Description-End -->

<!-- AddSearchProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AddSearchProvider-Editable-End -->

<!-- AddSearchProvider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AddSearchProvider-DFProperties-End -->

<!-- AddSearchProvider-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AddSearchProvider |
| Friendly Name | Add a specific list of search providers to the user's list of search providers |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions |
| Registry Value Name | AddPolicySearchProviders |
| ADMX File Name | inetres.admx |
<!-- AddSearchProvider-AdmxBacked-End -->

<!-- AddSearchProvider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AddSearchProvider-Examples-End -->

<!-- AddSearchProvider-End -->

<!-- AllowActiveXFiltering-Begin -->
## AllowActiveXFiltering

<!-- AllowActiveXFiltering-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowActiveXFiltering-Applicability-End -->

<!-- AllowActiveXFiltering-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowActiveXFiltering
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowActiveXFiltering
```
<!-- AllowActiveXFiltering-OmaUri-End -->

<!-- AllowActiveXFiltering-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ActiveX Filtering feature for websites that are running ActiveX controls. The user can choose to turn off ActiveX Filtering for specific websites so that ActiveX controls can run properly.

- If you enable this policy setting, ActiveX Filtering is enabled by default for the user. The user can't turn off ActiveX Filtering, although they may add per-site exceptions.

- If you disable or don't configure this policy setting, ActiveX Filtering isn't enabled by default for the user. The user can turn ActiveX Filtering on or off.
<!-- AllowActiveXFiltering-Description-End -->

<!-- AllowActiveXFiltering-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowActiveXFiltering-Editable-End -->

<!-- AllowActiveXFiltering-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowActiveXFiltering-DFProperties-End -->

<!-- AllowActiveXFiltering-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOnActiveXFiltering |
| Friendly Name | Turn on ActiveX Filtering |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Safety\ActiveXFiltering |
| Registry Value Name | IsEnabled |
| ADMX File Name | inetres.admx |
<!-- AllowActiveXFiltering-AdmxBacked-End -->

<!-- AllowActiveXFiltering-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowActiveXFiltering-Examples-End -->

<!-- AllowActiveXFiltering-End -->

<!-- AllowAddOnList-Begin -->
## AllowAddOnList

<!-- AllowAddOnList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowAddOnList-Applicability-End -->

<!-- AllowAddOnList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowAddOnList
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowAddOnList
```
<!-- AllowAddOnList-OmaUri-End -->

<!-- AllowAddOnList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage a list of add-ons to be allowed or denied by Internet Explorer. Add-ons in this case are controls like ActiveX Controls, Toolbars, and Browser Helper Objects (BHOs) which are specifically written to extend or enhance the functionality of the browser or web pages.

This list can be used with the 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting, which defines whether add-ons not listed here are assumed to be denied.

- If you enable this policy setting, you can enter a list of add-ons to be allowed or denied by Internet Explorer. For each entry that you add to the list, enter the following information:

Name of the Value - the CLSID (class identifier) for the add-on you wish to add to the list. The CLSID should be in brackets for example, '{000000000-0000-0000-0000-0000000000000}'. The CLSID for an add-on can be obtained by reading the OBJECT tag from a Web page on which the add-on is referenced.

Value - A number indicating whether Internet Explorer should deny or allow the add-on to be loaded. To specify that an add-on should be denied enter a 0 (zero) into this field. To specify that an add-on should be allowed, enter a 1 (one) into this field. To specify that an add-on should be allowed and also permit the user to manage the add-on through Add-on Manager, enter a 2 (two) into this field.

- If you disable this policy setting, the list is deleted. The 'Deny all add-ons unless specifically allowed in the Add-on List' policy setting will still determine whether add-ons not in this list are assumed to be denied.
<!-- AllowAddOnList-Description-End -->

<!-- AllowAddOnList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAddOnList-Editable-End -->

<!-- AllowAddOnList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowAddOnList-DFProperties-End -->

<!-- AllowAddOnList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AddonManagement_AddOnList |
| Friendly Name | Add-on List |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Add-on Management |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Ext |
| Registry Value Name | ListBox_Support_CLSID |
| ADMX File Name | inetres.admx |
<!-- AllowAddOnList-AdmxBacked-End -->

<!-- AllowAddOnList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAddOnList-Examples-End -->

<!-- AllowAddOnList-End -->

<!-- AllowAutoComplete-Begin -->
## AllowAutoComplete

<!-- AllowAutoComplete-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowAutoComplete-Applicability-End -->

<!-- AllowAutoComplete-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowAutoComplete
```
<!-- AllowAutoComplete-OmaUri-End -->

<!-- AllowAutoComplete-Description-Begin -->
<!-- Description-Source-ADMX -->
This AutoComplete feature can remember and suggest User names and passwords on Forms.

- If you enable this setting, the user can't change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms will be turned on. You have to decide whether to select "prompt me to save passwords".

- If you disable this setting the user can't change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms is turned off. The user also can't opt to be prompted to save passwords.

- If you don't configure this setting, the user has the freedom of turning on Auto complete for User name and passwords on forms and the option of prompting to save passwords. To display this option, the users open the Internet Options dialog box, click the Contents Tab and click the Settings button.
<!-- AllowAutoComplete-Description-End -->

<!-- AllowAutoComplete-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAutoComplete-Editable-End -->

<!-- AllowAutoComplete-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowAutoComplete-DFProperties-End -->

<!-- AllowAutoComplete-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictFormSuggestPW |
| Friendly Name | Turn on the auto-complete feature for user names and passwords on forms |
| Location | User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| Registry Value Name | FormSuggest Passwords |
| ADMX File Name | inetres.admx |
<!-- AllowAutoComplete-AdmxBacked-End -->

<!-- AllowAutoComplete-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAutoComplete-Examples-End -->

<!-- AllowAutoComplete-End -->

<!-- AllowCertificateAddressMismatchWarning-Begin -->
## AllowCertificateAddressMismatchWarning

<!-- AllowCertificateAddressMismatchWarning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowCertificateAddressMismatchWarning-Applicability-End -->

<!-- AllowCertificateAddressMismatchWarning-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowCertificateAddressMismatchWarning
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowCertificateAddressMismatchWarning
```
<!-- AllowCertificateAddressMismatchWarning-OmaUri-End -->

<!-- AllowCertificateAddressMismatchWarning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on the certificate address mismatch security warning. When this policy setting is turned on, the user is warned when visiting Secure HTTP (HTTPS) websites that present certificates issued for a different website address. This warning helps prevent spoofing attacks.

- If you enable this policy setting, the certificate address mismatch warning always appears.

- If you disable or don't configure this policy setting, the user can choose whether the certificate address mismatch warning appears (by using the Advanced page in the Internet Control panel).
<!-- AllowCertificateAddressMismatchWarning-Description-End -->

<!-- AllowCertificateAddressMismatchWarning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCertificateAddressMismatchWarning-Editable-End -->

<!-- AllowCertificateAddressMismatchWarning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowCertificateAddressMismatchWarning-DFProperties-End -->

<!-- AllowCertificateAddressMismatchWarning-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyWarnCertMismatch |
| Friendly Name | Turn on certificate address mismatch warning |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| Registry Value Name | WarnOnBadCertRecving |
| ADMX File Name | inetres.admx |
<!-- AllowCertificateAddressMismatchWarning-AdmxBacked-End -->

<!-- AllowCertificateAddressMismatchWarning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCertificateAddressMismatchWarning-Examples-End -->

<!-- AllowCertificateAddressMismatchWarning-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-Begin -->
## AllowDeletingBrowsingHistoryOnExit

<!-- AllowDeletingBrowsingHistoryOnExit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowDeletingBrowsingHistoryOnExit-Applicability-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowDeletingBrowsingHistoryOnExit
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowDeletingBrowsingHistoryOnExit
```
<!-- AllowDeletingBrowsingHistoryOnExit-OmaUri-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the automatic deletion of specified items when the last browser window closes. The preferences selected in the Delete Browsing History dialog box (such as deleting temporary Internet files, cookies, history, form data, and passwords) are applied, and those items are deleted.

- If you enable this policy setting, deleting browsing history on exit's turned on.

- If you disable this policy setting, deleting browsing history on exit's turned off.

- If you don't configure this policy setting, it can be configured on the General tab in Internet Options.

If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting has no effect.
<!-- AllowDeletingBrowsingHistoryOnExit-Description-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDeletingBrowsingHistoryOnExit-Editable-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowDeletingBrowsingHistoryOnExit-DFProperties-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DBHDisableDeleteOnExit |
| Friendly Name | Allow deleting browsing history on exit |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Delete Browsing History |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Privacy |
| Registry Value Name | ClearBrowsingHistoryOnExit |
| ADMX File Name | inetres.admx |
<!-- AllowDeletingBrowsingHistoryOnExit-AdmxBacked-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeletingBrowsingHistoryOnExit-Examples-End -->

<!-- AllowDeletingBrowsingHistoryOnExit-End -->

<!-- AllowEnhancedProtectedMode-Begin -->
## AllowEnhancedProtectedMode

<!-- AllowEnhancedProtectedMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowEnhancedProtectedMode-Applicability-End -->

<!-- AllowEnhancedProtectedMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnhancedProtectedMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnhancedProtectedMode
```
<!-- AllowEnhancedProtectedMode-OmaUri-End -->

<!-- AllowEnhancedProtectedMode-Description-Begin -->
<!-- Description-Source-ADMX -->
Enhanced Protected Mode provides additional protection against malicious websites by using 64-bit processes on 64-bit versions of Windows. For computers running at least Windows 8, Enhanced Protected Mode also limits the locations Internet Explorer can read from in the registry and the file system.

- If you enable this policy setting, Enhanced Protected Mode will be turned on. Any zone that has Protected Mode enabled will use Enhanced Protected Mode. Users won't be able to disable Enhanced Protected Mode.

- If you disable this policy setting, Enhanced Protected Mode will be turned off. Any zone that has Protected Mode enabled will use the version of Protected Mode introduced in Internet Explorer 7 for Windows Vista.

- If you don't configure this policy, users will be able to turn on or turn off Enhanced Protected Mode on the Advanced tab of the Internet Options dialog.
<!-- AllowEnhancedProtectedMode-Description-End -->

<!-- AllowEnhancedProtectedMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEnhancedProtectedMode-Editable-End -->

<!-- AllowEnhancedProtectedMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowEnhancedProtectedMode-DFProperties-End -->

<!-- AllowEnhancedProtectedMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_EnableEnhancedProtectedMode |
| Friendly Name | Turn on Enhanced Protected Mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| Registry Value Name | Isolation |
| ADMX File Name | inetres.admx |
<!-- AllowEnhancedProtectedMode-AdmxBacked-End -->

<!-- AllowEnhancedProtectedMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEnhancedProtectedMode-Examples-End -->

<!-- AllowEnhancedProtectedMode-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-Begin -->
## AllowEnhancedSuggestionsInAddressBar

<!-- AllowEnhancedSuggestionsInAddressBar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowEnhancedSuggestionsInAddressBar-Applicability-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnhancedSuggestionsInAddressBar
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnhancedSuggestionsInAddressBar
```
<!-- AllowEnhancedSuggestionsInAddressBar-OmaUri-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows Internet Explorer to provide enhanced suggestions as the user types in the Address bar. To provide enhanced suggestions, the user's keystrokes are sent to Microsoft through Microsoft services.

- If you enable this policy setting, users receive enhanced suggestions while typing in the Address bar. In addition, users won't be able to change the Suggestions setting on the Settings charm.

- If you disable this policy setting, users won't receive enhanced suggestions while typing in the Address bar. In addition, users won't be able to change the Suggestions setting on the Settings charm.

- If you don't configure this policy setting, users can change the Suggestions setting on the Settings charm.
<!-- AllowEnhancedSuggestionsInAddressBar-Description-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEnhancedSuggestionsInAddressBar-Editable-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowEnhancedSuggestionsInAddressBar-DFProperties-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowServicePoweredQSA |
| Friendly Name | Allow Microsoft services to provide enhanced suggestions as the user types in the Address bar |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer |
| Registry Value Name | AllowServicePoweredQSA |
| ADMX File Name | inetres.admx |
<!-- AllowEnhancedSuggestionsInAddressBar-AdmxBacked-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEnhancedSuggestionsInAddressBar-Examples-End -->

<!-- AllowEnhancedSuggestionsInAddressBar-End -->

<!-- AllowEnterpriseModeFromToolsMenu-Begin -->
## AllowEnterpriseModeFromToolsMenu

<!-- AllowEnterpriseModeFromToolsMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowEnterpriseModeFromToolsMenu-Applicability-End -->

<!-- AllowEnterpriseModeFromToolsMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnterpriseModeFromToolsMenu
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnterpriseModeFromToolsMenu
```
<!-- AllowEnterpriseModeFromToolsMenu-OmaUri-End -->

<!-- AllowEnterpriseModeFromToolsMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.

If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.

If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.
<!-- AllowEnterpriseModeFromToolsMenu-Description-End -->

<!-- AllowEnterpriseModeFromToolsMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEnterpriseModeFromToolsMenu-Editable-End -->

<!-- AllowEnterpriseModeFromToolsMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowEnterpriseModeFromToolsMenu-DFProperties-End -->

<!-- AllowEnterpriseModeFromToolsMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseModeEnable |
| Friendly Name | Let users turn on and use Enterprise Mode from the Tools menu |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| ADMX File Name | inetres.admx |
<!-- AllowEnterpriseModeFromToolsMenu-AdmxBacked-End -->

<!-- AllowEnterpriseModeFromToolsMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEnterpriseModeFromToolsMenu-Examples-End -->

<!-- AllowEnterpriseModeFromToolsMenu-End -->

<!-- AllowEnterpriseModeSiteList-Begin -->
## AllowEnterpriseModeSiteList

<!-- AllowEnterpriseModeSiteList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowEnterpriseModeSiteList-Applicability-End -->

<!-- AllowEnterpriseModeSiteList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnterpriseModeSiteList
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowEnterpriseModeSiteList
```
<!-- AllowEnterpriseModeSiteList-OmaUri-End -->

<!-- AllowEnterpriseModeSiteList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you specify where to find the list of websites you want opened using Enterprise Mode IE, instead of Standard mode, because of compatibility issues. Users can't edit this list.

- If you enable this policy setting, Internet Explorer downloads the website list from your location (HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\Main\EnterpriseMode), opening all listed websites using Enterprise Mode IE.

- If you disable or don't configure this policy setting, Internet Explorer opens all websites using Standards mode.
<!-- AllowEnterpriseModeSiteList-Description-End -->

<!-- AllowEnterpriseModeSiteList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEnterpriseModeSiteList-Editable-End -->

<!-- AllowEnterpriseModeSiteList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowEnterpriseModeSiteList-DFProperties-End -->

<!-- AllowEnterpriseModeSiteList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseModeSiteList |
| Friendly Name | Use the Enterprise Mode IE website list |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| ADMX File Name | inetres.admx |
<!-- AllowEnterpriseModeSiteList-AdmxBacked-End -->

<!-- AllowEnterpriseModeSiteList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEnterpriseModeSiteList-Examples-End -->

<!-- AllowEnterpriseModeSiteList-End -->

<!-- AllowFallbackToSSL3-Begin -->
## AllowFallbackToSSL3

<!-- AllowFallbackToSSL3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowFallbackToSSL3-Applicability-End -->

<!-- AllowFallbackToSSL3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowFallbackToSSL3
```
<!-- AllowFallbackToSSL3-OmaUri-End -->

<!-- AllowFallbackToSSL3-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to block an insecure fallback to SSL 3.0. When this policy is enabled, Internet Explorer will attempt to connect to sites using SSL 3.0 or below when TLS 1.0 or greater fails.

We recommend that you don't allow insecure fallback in order to prevent a man-in-the-middle attack.

This policy doesn't affect which security protocols are enabled.

If you disable this policy, system defaults will be used.
<!-- AllowFallbackToSSL3-Description-End -->

<!-- AllowFallbackToSSL3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFallbackToSSL3-Editable-End -->

<!-- AllowFallbackToSSL3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowFallbackToSSL3-DFProperties-End -->

<!-- AllowFallbackToSSL3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_EnableSSL3Fallback |
| Friendly Name | Allow fallback to SSL 3.0 (Internet Explorer) |
| Location | Computer Configuration |
| Path | Windows Components > Internet Explorer > Security Features |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| ADMX File Name | inetres.admx |
<!-- AllowFallbackToSSL3-AdmxBacked-End -->

<!-- AllowFallbackToSSL3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFallbackToSSL3-Examples-End -->

<!-- AllowFallbackToSSL3-End -->

<!-- AllowInternetExplorer7PolicyList-Begin -->
## AllowInternetExplorer7PolicyList

<!-- AllowInternetExplorer7PolicyList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowInternetExplorer7PolicyList-Applicability-End -->

<!-- AllowInternetExplorer7PolicyList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowInternetExplorer7PolicyList
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowInternetExplorer7PolicyList
```
<!-- AllowInternetExplorer7PolicyList-OmaUri-End -->

<!-- AllowInternetExplorer7PolicyList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to add specific sites that must be viewed in Internet Explorer 7 Compatibility View.

- If you enable this policy setting, the user can add and remove sites from the list, but the user can't remove the entries that you specify.

- If you disable or don't configure this policy setting, the user can add and remove sites from the list.
<!-- AllowInternetExplorer7PolicyList-Description-End -->

<!-- AllowInternetExplorer7PolicyList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowInternetExplorer7PolicyList-Editable-End -->

<!-- AllowInternetExplorer7PolicyList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowInternetExplorer7PolicyList-DFProperties-End -->

<!-- AllowInternetExplorer7PolicyList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CompatView_UsePolicyList |
| Friendly Name | Use Policy List of Internet Explorer 7 sites |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Compatibility View |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\BrowserEmulation\PolicyList |
| ADMX File Name | inetres.admx |
<!-- AllowInternetExplorer7PolicyList-AdmxBacked-End -->

<!-- AllowInternetExplorer7PolicyList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowInternetExplorer7PolicyList-Examples-End -->

<!-- AllowInternetExplorer7PolicyList-End -->

<!-- AllowInternetExplorerStandardsMode-Begin -->
## AllowInternetExplorerStandardsMode

<!-- AllowInternetExplorerStandardsMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowInternetExplorerStandardsMode-Applicability-End -->

<!-- AllowInternetExplorerStandardsMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowInternetExplorerStandardsMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowInternetExplorerStandardsMode
```
<!-- AllowInternetExplorerStandardsMode-OmaUri-End -->

<!-- AllowInternetExplorerStandardsMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls how Internet Explorer displays local intranet content. Intranet content is defined as any webpage that belongs to the local intranet security zone.

- If you enable this policy setting, Internet Explorer uses the current user agent string for local intranet content. Additionally, all local intranet Standards Mode pages appear in the Standards Mode available with the latest version of Internet Explorer. The user can't change this behavior through the Compatibility View Settings dialog box.

- If you disable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. The user can't change this behavior through the Compatibility View Settings dialog box.

- If you don't configure this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. This option results in the greatest compatibility with existing webpages, but newer content written to common Internet standards may be displayed incorrectly. This option matches the default behavior of Internet Explorer.
<!-- AllowInternetExplorerStandardsMode-Description-End -->

<!-- AllowInternetExplorerStandardsMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowInternetExplorerStandardsMode-Editable-End -->

<!-- AllowInternetExplorerStandardsMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowInternetExplorerStandardsMode-DFProperties-End -->

<!-- AllowInternetExplorerStandardsMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CompatView_IntranetSites |
| Friendly Name | Turn on Internet Explorer Standards Mode for local intranet |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Compatibility View |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\BrowserEmulation |
| Registry Value Name | IntranetCompatibilityMode |
| ADMX File Name | inetres.admx |
<!-- AllowInternetExplorerStandardsMode-AdmxBacked-End -->

<!-- AllowInternetExplorerStandardsMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowInternetExplorerStandardsMode-Examples-End -->

<!-- AllowInternetExplorerStandardsMode-End -->

<!-- AllowInternetZoneTemplate-Begin -->
## AllowInternetZoneTemplate

<!-- AllowInternetZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowInternetZoneTemplate-Applicability-End -->

<!-- AllowInternetZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowInternetZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowInternetZoneTemplate
```
<!-- AllowInternetZoneTemplate-OmaUri-End -->

<!-- AllowInternetZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowInternetZoneTemplate-Description-End -->

<!-- AllowInternetZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowInternetZoneTemplate-Editable-End -->

<!-- AllowInternetZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowInternetZoneTemplate-DFProperties-End -->

<!-- AllowInternetZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyInternetZoneTemplate |
| Friendly Name | Internet Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Template Policies |
| Registry Value Name | InternetZoneTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowInternetZoneTemplate-AdmxBacked-End -->

<!-- AllowInternetZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowInternetZoneTemplate-Examples-End -->

<!-- AllowInternetZoneTemplate-End -->

<!-- AllowIntranetZoneTemplate-Begin -->
## AllowIntranetZoneTemplate

<!-- AllowIntranetZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowIntranetZoneTemplate-Applicability-End -->

<!-- AllowIntranetZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowIntranetZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowIntranetZoneTemplate
```
<!-- AllowIntranetZoneTemplate-OmaUri-End -->

<!-- AllowIntranetZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowIntranetZoneTemplate-Description-End -->

<!-- AllowIntranetZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowIntranetZoneTemplate-Editable-End -->

<!-- AllowIntranetZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowIntranetZoneTemplate-DFProperties-End -->

<!-- AllowIntranetZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyIntranetZoneTemplate |
| Friendly Name | Intranet Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Intranet Settings\Template Policies |
| Registry Value Name | IntranetZoneTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowIntranetZoneTemplate-AdmxBacked-End -->

<!-- AllowIntranetZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIntranetZoneTemplate-Examples-End -->

<!-- AllowIntranetZoneTemplate-End -->

<!-- AllowLegacyURLFields-Begin -->
## AllowLegacyURLFields

<!-- AllowLegacyURLFields-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- AllowLegacyURLFields-Applicability-End -->

<!-- AllowLegacyURLFields-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLegacyURLFields
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLegacyURLFields
```
<!-- AllowLegacyURLFields-OmaUri-End -->

<!-- AllowLegacyURLFields-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- AllowLegacyURLFields-Description-End -->

<!-- AllowLegacyURLFields-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLegacyURLFields-Editable-End -->

<!-- AllowLegacyURLFields-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLegacyURLFields-DFProperties-End -->

<!-- AllowLegacyURLFields-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowLegacyURLFields |
| ADMX File Name | inetres.admx |
<!-- AllowLegacyURLFields-AdmxBacked-End -->

<!-- AllowLegacyURLFields-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLegacyURLFields-Examples-End -->

<!-- AllowLegacyURLFields-End -->

<!-- AllowLocalMachineZoneTemplate-Begin -->
## AllowLocalMachineZoneTemplate

<!-- AllowLocalMachineZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowLocalMachineZoneTemplate-Applicability-End -->

<!-- AllowLocalMachineZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLocalMachineZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLocalMachineZoneTemplate
```
<!-- AllowLocalMachineZoneTemplate-OmaUri-End -->

<!-- AllowLocalMachineZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowLocalMachineZoneTemplate-Description-End -->

<!-- AllowLocalMachineZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLocalMachineZoneTemplate-Editable-End -->

<!-- AllowLocalMachineZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLocalMachineZoneTemplate-DFProperties-End -->

<!-- AllowLocalMachineZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLocalMachineZoneTemplate |
| Friendly Name | Local Machine Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Local Machine Zone Settings\Template Policies |
| Registry Value Name | LocalMachineZoneTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowLocalMachineZoneTemplate-AdmxBacked-End -->

<!-- AllowLocalMachineZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLocalMachineZoneTemplate-Examples-End -->

<!-- AllowLocalMachineZoneTemplate-End -->

<!-- AllowLockedDownInternetZoneTemplate-Begin -->
## AllowLockedDownInternetZoneTemplate

<!-- AllowLockedDownInternetZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowLockedDownInternetZoneTemplate-Applicability-End -->

<!-- AllowLockedDownInternetZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownInternetZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownInternetZoneTemplate
```
<!-- AllowLockedDownInternetZoneTemplate-OmaUri-End -->

<!-- AllowLockedDownInternetZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowLockedDownInternetZoneTemplate-Description-End -->

<!-- AllowLockedDownInternetZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLockedDownInternetZoneTemplate-Editable-End -->

<!-- AllowLockedDownInternetZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLockedDownInternetZoneTemplate-DFProperties-End -->

<!-- AllowLockedDownInternetZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyInternetZoneLockdownTemplate |
| Friendly Name | Locked-Down Internet Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Lockdown Settings\Template Policies |
| Registry Value Name | InternetZoneLockdownTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowLockedDownInternetZoneTemplate-AdmxBacked-End -->

<!-- AllowLockedDownInternetZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLockedDownInternetZoneTemplate-Examples-End -->

<!-- AllowLockedDownInternetZoneTemplate-End -->

<!-- AllowLockedDownIntranetZoneTemplate-Begin -->
## AllowLockedDownIntranetZoneTemplate

<!-- AllowLockedDownIntranetZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowLockedDownIntranetZoneTemplate-Applicability-End -->

<!-- AllowLockedDownIntranetZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownIntranetZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownIntranetZoneTemplate
```
<!-- AllowLockedDownIntranetZoneTemplate-OmaUri-End -->

<!-- AllowLockedDownIntranetZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowLockedDownIntranetZoneTemplate-Description-End -->

<!-- AllowLockedDownIntranetZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLockedDownIntranetZoneTemplate-Editable-End -->

<!-- AllowLockedDownIntranetZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLockedDownIntranetZoneTemplate-DFProperties-End -->

<!-- AllowLockedDownIntranetZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyIntranetZoneLockdownTemplate |
| Friendly Name | Locked-Down Intranet Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Intranet Lockdown Settings\Template Policies |
| Registry Value Name | IntranetZoneLockdownTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowLockedDownIntranetZoneTemplate-AdmxBacked-End -->

<!-- AllowLockedDownIntranetZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLockedDownIntranetZoneTemplate-Examples-End -->

<!-- AllowLockedDownIntranetZoneTemplate-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-Begin -->
## AllowLockedDownLocalMachineZoneTemplate

<!-- AllowLockedDownLocalMachineZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowLockedDownLocalMachineZoneTemplate-Applicability-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownLocalMachineZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownLocalMachineZoneTemplate
```
<!-- AllowLockedDownLocalMachineZoneTemplate-OmaUri-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowLockedDownLocalMachineZoneTemplate-Description-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLockedDownLocalMachineZoneTemplate-Editable-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLockedDownLocalMachineZoneTemplate-DFProperties-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLocalMachineZoneLockdownTemplate |
| Friendly Name | Locked-Down Local Machine Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Local Machine Zone Lockdown Settings\Template Policies |
| Registry Value Name | LocalMachineZoneLockdownTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowLockedDownLocalMachineZoneTemplate-AdmxBacked-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLockedDownLocalMachineZoneTemplate-Examples-End -->

<!-- AllowLockedDownLocalMachineZoneTemplate-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-Begin -->
## AllowLockedDownRestrictedSitesZoneTemplate

<!-- AllowLockedDownRestrictedSitesZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowLockedDownRestrictedSitesZoneTemplate-Applicability-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate
```
<!-- AllowLockedDownRestrictedSitesZoneTemplate-OmaUri-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowLockedDownRestrictedSitesZoneTemplate-Description-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLockedDownRestrictedSitesZoneTemplate-Editable-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLockedDownRestrictedSitesZoneTemplate-DFProperties-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyRestrictedSitesZoneLockdownTemplate |
| Friendly Name | Locked-Down Restricted Sites Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Restricted Sites Lockdown Settings\Template Policies |
| Registry Value Name | RestrictedSitesZoneLockdownTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowLockedDownRestrictedSitesZoneTemplate-AdmxBacked-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLockedDownRestrictedSitesZoneTemplate-Examples-End -->

<!-- AllowLockedDownRestrictedSitesZoneTemplate-End -->

<!-- AllowOneWordEntry-Begin -->
## AllowOneWordEntry

<!-- AllowOneWordEntry-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowOneWordEntry-Applicability-End -->

<!-- AllowOneWordEntry-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowOneWordEntry
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowOneWordEntry
```
<!-- AllowOneWordEntry-OmaUri-End -->

<!-- AllowOneWordEntry-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows the user to go directly to an intranet site for a one-word entry in the Address bar.

- If you enable this policy setting, Internet Explorer goes directly to an intranet site for a one-word entry in the Address bar, if it's available.

- If you disable or don't configure this policy setting, Internet Explorer doesn't go directly to an intranet site for a one-word entry in the Address bar.
<!-- AllowOneWordEntry-Description-End -->

<!-- AllowOneWordEntry-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowOneWordEntry-Editable-End -->

<!-- AllowOneWordEntry-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowOneWordEntry-DFProperties-End -->

<!-- AllowOneWordEntry-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UseIntranetSiteForOneWordEntry |
| Friendly Name | Go to an intranet site for a one-word entry in the Address bar |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Settings > Advanced settings > Browsing |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| Registry Value Name | GotoIntranetSiteForSingleWordEntry |
| ADMX File Name | inetres.admx |
<!-- AllowOneWordEntry-AdmxBacked-End -->

<!-- AllowOneWordEntry-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowOneWordEntry-Examples-End -->

<!-- AllowOneWordEntry-End -->

<!-- AllowSaveTargetAsInIEMode-Begin -->
## AllowSaveTargetAsInIEMode

<!-- AllowSaveTargetAsInIEMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1350] and later <br> ✅ Windows 10, version 2004 [10.0.19041.789] and later |
<!-- AllowSaveTargetAsInIEMode-Applicability-End -->

<!-- AllowSaveTargetAsInIEMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSaveTargetAsInIEMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSaveTargetAsInIEMode
```
<!-- AllowSaveTargetAsInIEMode-OmaUri-End -->

<!-- AllowSaveTargetAsInIEMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows admins to enable "Save Target As" context menu in Internet Explorer mode.

- If you enable this policy, "Save Target As" will show up in the Internet Explorer mode context menu and work the same as Internet Explorer.

- If you disable or don't configure this policy setting, "Save Target As" won't show up in the Internet Explorer mode context menu.

For more information, see <https://go.microsoft.com/fwlink/?linkid=2102115>
<!-- AllowSaveTargetAsInIEMode-Description-End -->

<!-- AllowSaveTargetAsInIEMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSaveTargetAsInIEMode-Editable-End -->

<!-- AllowSaveTargetAsInIEMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSaveTargetAsInIEMode-DFProperties-End -->

<!-- AllowSaveTargetAsInIEMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSaveTargetAsInIEMode |
| Friendly Name | Allow "Save Target As" in Internet Explorer mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| Registry Value Name | AllowSaveTargetAsInIEMode |
| ADMX File Name | inetres.admx |
<!-- AllowSaveTargetAsInIEMode-AdmxBacked-End -->

<!-- AllowSaveTargetAsInIEMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
 <policy name="AllowSaveTargetAsInIEMode" class="Both" displayName="$(string.AllowSaveTargetAsInIEMode)" explainText="$(string.IE_ExplainAllowSaveTargetAsInIEMode)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" valueName="AllowSaveTargetAsInIEMode">
      <parentCategory ref="InternetExplorer" />
      <supportedOn ref="SUPPORTED_IE11" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
    </policy>
```
<!-- AllowSaveTargetAsInIEMode-Examples-End -->

<!-- AllowSaveTargetAsInIEMode-End -->

<!-- AllowSiteToZoneAssignmentList-Begin -->
## AllowSiteToZoneAssignmentList

<!-- AllowSiteToZoneAssignmentList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowSiteToZoneAssignmentList-Applicability-End -->

<!-- AllowSiteToZoneAssignmentList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSiteToZoneAssignmentList
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSiteToZoneAssignmentList
```
<!-- AllowSiteToZoneAssignmentList-OmaUri-End -->

<!-- AllowSiteToZoneAssignmentList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage a list of sites that you want to associate with a particular security zone. These zone numbers have associated security settings that apply to all of the sites in the zone.

Internet Explorer has 4 security zones, numbered 1-4, and these are used by this policy setting to associate sites to zones. They are: (1) Intranet zone, (2) Trusted Sites zone, (3) Internet zone, and (4) Restricted Sites zone. Security settings can be set for each of these zones through other policy settings, and their default settings are: Trusted Sites zone (Low template), Intranet zone (Medium-Low template), Internet zone (Medium template), and Restricted Sites zone (High template). (The Local Machine zone and its locked down equivalent have special security settings that protect your local computer).

- If you enable this policy setting, you can enter a list of sites and their related zone numbers. The association of a site with a zone will ensure that the security settings for the specified zone are applied to the site. For each entry that you add to the list, enter the following information:

Valuename - A host for an intranet site, or a fully qualified domain name for other sites. The valuename may also include a specific protocol. For example, if you enter <https://www.contoso.com> as the valuename, other protocols aren't affected. If you enter just www.contoso.com, then all protocols are affected for that site, including http, https, ftp, and so on. The site may also be expressed as an IP address (e.g., 127.0.0.1) or range (e.g., 127.0.0.1-10). To avoid creating conflicting policies, don't include additional characters after the domain such as trailing slashes or URL path. For example, policy settings for www.contoso.com and www.contoso.com/mail would be treated as the same policy setting by Internet Explorer, and would therefore be in conflict.

Value - A number indicating the zone with which this site should be associated for security settings. The Internet Explorer zones described above are 1-4.

- If you disable or don't configure this policy, users may choose their own site-to-zone assignments.
<!-- AllowSiteToZoneAssignmentList-Description-End -->

<!-- AllowSiteToZoneAssignmentList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy is a list that contains the site and index value.
<!-- AllowSiteToZoneAssignmentList-Editable-End -->

<!-- AllowSiteToZoneAssignmentList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSiteToZoneAssignmentList-DFProperties-End -->

<!-- AllowSiteToZoneAssignmentList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Zonemaps |
| Friendly Name | Site to Zone Assignment List |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| Registry Value Name | ListBox_Support_ZoneMapKey |
| ADMX File Name | inetres.admx |
<!-- AllowSiteToZoneAssignmentList-AdmxBacked-End -->

<!-- AllowSiteToZoneAssignmentList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
The list is a set of pairs of strings. Each string is separated by F000. Each pair of strings is stored as a registry name and value. The registry name is the site and the value is an index. The index has to be sequential. See an example below.

**Example**:

```xml
  <SyncBody>
      <Replace>
          <CmdID>2</CmdID>
           <Item>
               <Meta>
                  <Format>chr</Format>
                  <Type>text/plain</Type>
              </Meta>
              <Target>
                  <LocURI>./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSiteToZoneAssignmentList</LocURI>
              </Target>
               <Data>&lt;Enabled/&gt;&lt;Data id=&quot;IZ_ZonemapPrompt&quot; value=&quot;http://adfs.contoso.org&#xF000;1&#xF000;http://microsoft.com&#xF000;2&quot;/&gt;</Data>
          </Item>
      </Replace>
      <Final/>
  </SyncBody>
```

Value and index pairs in the SyncML example:
- `https://adfs.contoso.org 1`
- `https://microsoft.com 2`
<!-- AllowSiteToZoneAssignmentList-Examples-End -->

<!-- AllowSiteToZoneAssignmentList-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-Begin -->
## AllowsLockedDownTrustedSitesZoneTemplate

<!-- AllowsLockedDownTrustedSitesZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowsLockedDownTrustedSitesZoneTemplate-Applicability-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate
```
<!-- AllowsLockedDownTrustedSitesZoneTemplate-OmaUri-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowsLockedDownTrustedSitesZoneTemplate-Description-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowsLockedDownTrustedSitesZoneTemplate-Editable-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowsLockedDownTrustedSitesZoneTemplate-DFProperties-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyTrustedSitesZoneLockdownTemplate |
| Friendly Name | Locked-Down Trusted Sites Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Trusted Sites Lockdown Settings\Template Policies |
| Registry Value Name | TrustedSitesZoneLockdownTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowsLockedDownTrustedSitesZoneTemplate-AdmxBacked-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowsLockedDownTrustedSitesZoneTemplate-Examples-End -->

<!-- AllowsLockedDownTrustedSitesZoneTemplate-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-Begin -->
## AllowSoftwareWhenSignatureIsInvalid

<!-- AllowSoftwareWhenSignatureIsInvalid-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowSoftwareWhenSignatureIsInvalid-Applicability-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSoftwareWhenSignatureIsInvalid
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSoftwareWhenSignatureIsInvalid
```
<!-- AllowSoftwareWhenSignatureIsInvalid-OmaUri-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether software, such as ActiveX controls and file downloads, can be installed or run by the user even though the signature is invalid. An invalid signature might indicate that someone has tampered with the file.

- If you enable this policy setting, users will be prompted to install or run files with an invalid signature.

- If you disable this policy setting, users can't run or install files with an invalid signature.

- If you don't configure this policy, users can choose to run or install files with an invalid signature.
<!-- AllowSoftwareWhenSignatureIsInvalid-Description-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSoftwareWhenSignatureIsInvalid-Editable-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSoftwareWhenSignatureIsInvalid-DFProperties-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_InvalidSignatureBlock |
| Friendly Name | Allow software to run or install even if the signature is invalid |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Download |
| Registry Value Name | RunInvalidSignatures |
| ADMX File Name | inetres.admx |
<!-- AllowSoftwareWhenSignatureIsInvalid-AdmxBacked-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSoftwareWhenSignatureIsInvalid-Examples-End -->

<!-- AllowSoftwareWhenSignatureIsInvalid-End -->

<!-- AllowsRestrictedSitesZoneTemplate-Begin -->
## AllowsRestrictedSitesZoneTemplate

<!-- AllowsRestrictedSitesZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowsRestrictedSitesZoneTemplate-Applicability-End -->

<!-- AllowsRestrictedSitesZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowsRestrictedSitesZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowsRestrictedSitesZoneTemplate
```
<!-- AllowsRestrictedSitesZoneTemplate-OmaUri-End -->

<!-- AllowsRestrictedSitesZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowsRestrictedSitesZoneTemplate-Description-End -->

<!-- AllowsRestrictedSitesZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowsRestrictedSitesZoneTemplate-Editable-End -->

<!-- AllowsRestrictedSitesZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowsRestrictedSitesZoneTemplate-DFProperties-End -->

<!-- AllowsRestrictedSitesZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyRestrictedSitesZoneTemplate |
| Friendly Name | Restricted Sites Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Restricted Sites Settings\Template Policies |
| Registry Value Name | RestrictedSitesZoneTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowsRestrictedSitesZoneTemplate-AdmxBacked-End -->

<!-- AllowsRestrictedSitesZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowsRestrictedSitesZoneTemplate-Examples-End -->

<!-- AllowsRestrictedSitesZoneTemplate-End -->

<!-- AllowSuggestedSites-Begin -->
## AllowSuggestedSites

<!-- AllowSuggestedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowSuggestedSites-Applicability-End -->

<!-- AllowSuggestedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSuggestedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowSuggestedSites
```
<!-- AllowSuggestedSites-OmaUri-End -->

<!-- AllowSuggestedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the Suggested Sites feature, which recommends websites based on the user's browsing activity. Suggested Sites reports a user's browsing history to Microsoft to suggest sites that the user might want to visit.

- If you enable this policy setting, the user isn't prompted to enable Suggested Sites. The user's browsing history is sent to Microsoft to produce suggestions.

- If you disable this policy setting, the entry points and functionality associated with this feature are turned off.

- If you don't configure this policy setting, the user can turn on and turn off the Suggested Sites feature.
<!-- AllowSuggestedSites-Description-End -->

<!-- AllowSuggestedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSuggestedSites-Editable-End -->

<!-- AllowSuggestedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSuggestedSites-DFProperties-End -->

<!-- AllowSuggestedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableSuggestedSites |
| Friendly Name | Turn on Suggested Sites |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Suggested Sites |
| Registry Value Name | Enabled |
| ADMX File Name | inetres.admx |
<!-- AllowSuggestedSites-AdmxBacked-End -->

<!-- AllowSuggestedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSuggestedSites-Examples-End -->

<!-- AllowSuggestedSites-End -->

<!-- AllowTrustedSitesZoneTemplate-Begin -->
## AllowTrustedSitesZoneTemplate

<!-- AllowTrustedSitesZoneTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowTrustedSitesZoneTemplate-Applicability-End -->

<!-- AllowTrustedSitesZoneTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/AllowTrustedSitesZoneTemplate
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/AllowTrustedSitesZoneTemplate
```
<!-- AllowTrustedSitesZoneTemplate-OmaUri-End -->

<!-- AllowTrustedSitesZoneTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This template policy setting allows you to configure policy settings in this zone consistent with a selected security level, for example, Low, Medium Low, Medium, or High.

- If you enable this template policy setting and select a security level, all values for individual settings in the zone will be overwritten by the standard template defaults.

- If you disable this template policy setting, no security level is configured.

- If you don't configure this template policy setting, no security level is configured.

Note. Local Machine Zone Lockdown Security and Network Protocol Lockdown operate by comparing the settings in the active URL's zone against those in the Locked-Down equivalent zone. If you select a security level for any zone (including selecting no security), the same change should be made to the Locked-Down equivalent.

Note. It's recommended to configure template policy settings in one Group Policy object (GPO) and configure any related individual policy settings in a separate GPO. You can then use Group Policy management features (for example, precedence, inheritance, or enforce) to apply individual settings to specific targets.
<!-- AllowTrustedSitesZoneTemplate-Description-End -->

<!-- AllowTrustedSitesZoneTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTrustedSitesZoneTemplate-Editable-End -->

<!-- AllowTrustedSitesZoneTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowTrustedSitesZoneTemplate-DFProperties-End -->

<!-- AllowTrustedSitesZoneTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyTrustedSitesZoneTemplate |
| Friendly Name | Trusted Sites Zone Template |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Trusted Sites Settings\Template Policies |
| Registry Value Name | TrustedSitesZoneTemplate |
| ADMX File Name | inetres.admx |
<!-- AllowTrustedSitesZoneTemplate-AdmxBacked-End -->

<!-- AllowTrustedSitesZoneTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTrustedSitesZoneTemplate-Examples-End -->

<!-- AllowTrustedSitesZoneTemplate-End -->

<!-- CheckServerCertificateRevocation-Begin -->
## CheckServerCertificateRevocation

<!-- CheckServerCertificateRevocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- CheckServerCertificateRevocation-Applicability-End -->

<!-- CheckServerCertificateRevocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/CheckServerCertificateRevocation
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/CheckServerCertificateRevocation
```
<!-- CheckServerCertificateRevocation-OmaUri-End -->

<!-- CheckServerCertificateRevocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer will check revocation status of servers' certificates. Certificates are revoked when they've been compromised or are no longer valid, and this option protects users from submitting confidential data to a site that may be fraudulent or not secure.

- If you enable this policy setting, Internet Explorer will check to see if server certificates have been revoked.

- If you disable this policy setting, Internet Explorer won't check server certificates to see if they've been revoked.

- If you don't configure this policy setting, Internet Explorer won't check server certificates to see if they've been revoked.
<!-- CheckServerCertificateRevocation-Description-End -->

<!-- CheckServerCertificateRevocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CheckServerCertificateRevocation-Editable-End -->

<!-- CheckServerCertificateRevocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CheckServerCertificateRevocation-DFProperties-End -->

<!-- CheckServerCertificateRevocation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_CertificateRevocation |
| Friendly Name | Check for server certificate revocation |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| Registry Value Name | CertificateRevocation |
| ADMX File Name | inetres.admx |
<!-- CheckServerCertificateRevocation-AdmxBacked-End -->

<!-- CheckServerCertificateRevocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CheckServerCertificateRevocation-Examples-End -->

<!-- CheckServerCertificateRevocation-End -->

<!-- CheckSignaturesOnDownloadedPrograms-Begin -->
## CheckSignaturesOnDownloadedPrograms

<!-- CheckSignaturesOnDownloadedPrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- CheckSignaturesOnDownloadedPrograms-Applicability-End -->

<!-- CheckSignaturesOnDownloadedPrograms-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/CheckSignaturesOnDownloadedPrograms
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/CheckSignaturesOnDownloadedPrograms
```
<!-- CheckSignaturesOnDownloadedPrograms-OmaUri-End -->

<!-- CheckSignaturesOnDownloadedPrograms-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer checks for digital signatures (which identifies the publisher of signed software and verifies it hasn't been modified or tampered with) on user computers before downloading executable programs.

- If you enable this policy setting, Internet Explorer will check the digital signatures of executable programs and display their identities before downloading them to user computers.

- If you disable this policy setting, Internet Explorer won't check the digital signatures of executable programs or display their identities before downloading them to user computers.

- If you don't configure this policy, Internet Explorer won't check the digital signatures of executable programs or display their identities before downloading them to user computers.
<!-- CheckSignaturesOnDownloadedPrograms-Description-End -->

<!-- CheckSignaturesOnDownloadedPrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CheckSignaturesOnDownloadedPrograms-Editable-End -->

<!-- CheckSignaturesOnDownloadedPrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CheckSignaturesOnDownloadedPrograms-DFProperties-End -->

<!-- CheckSignaturesOnDownloadedPrograms-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_DownloadSignatures |
| Friendly Name | Check for signatures on downloaded programs |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Download |
| Registry Value Name | CheckExeSignatures |
| ADMX File Name | inetres.admx |
<!-- CheckSignaturesOnDownloadedPrograms-AdmxBacked-End -->

<!-- CheckSignaturesOnDownloadedPrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CheckSignaturesOnDownloadedPrograms-Examples-End -->

<!-- CheckSignaturesOnDownloadedPrograms-End -->

<!-- ConfigureEdgeRedirectChannel-Begin -->
## ConfigureEdgeRedirectChannel

<!-- ConfigureEdgeRedirectChannel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1350] and later <br> ✅ Windows 10, version 2004 [10.0.19041.789] and later |
<!-- ConfigureEdgeRedirectChannel-Applicability-End -->

<!-- ConfigureEdgeRedirectChannel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/ConfigureEdgeRedirectChannel
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/ConfigureEdgeRedirectChannel
```
<!-- ConfigureEdgeRedirectChannel-OmaUri-End -->

<!-- ConfigureEdgeRedirectChannel-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables you to configure up to three versions of Microsoft Edge to open a redirected site (in order of preference). Use this policy if your environment is configured to redirect sites from Internet Explorer 11 to Microsoft Edge. If any of the chosen versions aren't installed on the device, that preference will be bypassed.

If both the Windows Update for the next version of Microsoft Edge* and Microsoft Edge Stable channel are installed, the following behaviors occur:

- If you disable or don't configure this policy, Microsoft Edge Stable channel is used. This is the default behavior.

- If you enable this policy, you can configure redirected sites to open in up to three of the following channels where:

1 = Microsoft Edge Stable
2 = Microsoft Edge Beta version 77 or later
3 = Microsoft Edge Dev version 77 or later
4 = Microsoft Edge Canary version 77 or later.

If the Windows Update for the next version of Microsoft Edge* or Microsoft Edge Stable channel aren't installed, the following behaviors occur:

- If you disable or don't configure this policy, Microsoft Edge version 45 or earlier is automatically used. This is the default behavior.

- If you enable this policy, you can configure redirected sites to open in up to three of the following channels where:

0 = Microsoft Edge version 45 or earlier
1 = Microsoft Edge Stable
2 = Microsoft Edge Beta version 77 or later
3 = Microsoft Edge Dev version 77 or later
4 = Microsoft Edge Canary version 77 or later.

- For more information about the Windows update for the next version of Microsoft Edge including how to disable it, see< https://go.microsoft.com/fwlink/?linkid=2102115>. This update applies only to Windows 10 version 1709 and higher.
<!-- ConfigureEdgeRedirectChannel-Description-End -->

<!-- ConfigureEdgeRedirectChannel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureEdgeRedirectChannel-Editable-End -->

<!-- ConfigureEdgeRedirectChannel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureEdgeRedirectChannel-DFProperties-End -->

<!-- ConfigureEdgeRedirectChannel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NeedEdgeBrowser |
| Friendly Name | Configure which channel of Microsoft Edge to use for opening redirected sites |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| ADMX File Name | inetres.admx |
<!-- ConfigureEdgeRedirectChannel-AdmxBacked-End -->

<!-- ConfigureEdgeRedirectChannel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
 <policy name="NeedEdgeBrowser" class="Both" displayName="$(string.NeedEdgeBrowser)" explainText="$(string.IE_ExplainNeedEdgeBrowser)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" presentation="$(presentation.NeedEdgeBrowser)">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11" />

      <elements>

        <enum id="NeedEdgeBrowser" valueName="NeedEdgeBrowser">

          <item displayName="$(string.NeedEdgeBrowserChoice_None)">

            <value>

              <delete />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumStable)">

            <value>

              <decimal value="1" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumBeta)">

            <value>

              <decimal value="2" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumDev)">

            <value>

              <decimal value="3" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumCanary)">

            <value>

              <decimal value="4" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_EdgeHTML)">

            <value>

              <decimal value="0" />

            </value>

          </item>

        </enum>

        <enum id="NeedEdgeBrowser2" valueName="NeedEdgeBrowser2">

          <item displayName="$(string.NeedEdgeBrowserChoice_None)">

            <value>

              <delete />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumStable)">

            <value>

              <decimal value="1" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumBeta)">

            <value>

              <decimal value="2" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumDev)">

            <value>

              <decimal value="3" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumCanary)">

            <value>

              <decimal value="4" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_EdgeHTML)">

            <value>

              <decimal value="0" />

            </value>

          </item>

        </enum>

        <enum id="NeedEdgeBrowser3" valueName="NeedEdgeBrowser3">

          <item displayName="$(string.NeedEdgeBrowserChoice_None)">

            <value>

              <delete />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumStable)">

            <value>

              <decimal value="1" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumBeta)">

            <value>

              <decimal value="2" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumDev)">

            <value>

              <decimal value="3" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_ChromiumCanary)">

            <value>

              <decimal value="4" />

            </value>

          </item>

          <item displayName="$(string.NeedEdgeBrowserChoice_EdgeHTML)">

            <value>

              <decimal value="0" />

            </value>

          </item>

        </enum>

      </elements>

    </policy>
```
<!-- ConfigureEdgeRedirectChannel-Examples-End -->

<!-- ConfigureEdgeRedirectChannel-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-Begin -->
## ConsistentMimeHandlingInternetExplorerProcesses

<!-- ConsistentMimeHandlingInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ConsistentMimeHandlingInternetExplorerProcesses-Applicability-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/ConsistentMimeHandlingInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/ConsistentMimeHandlingInternetExplorerProcesses
```
<!-- ConsistentMimeHandlingInternetExplorerProcesses-OmaUri-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
Internet Explorer uses Multipurpose Internet Mail Extensions (MIME) data to determine file handling procedures for files received through a Web server.

This policy setting determines whether Internet Explorer requires that all file-type information provided by Web servers be consistent. For example, if the MIME type of a file is text/plain but the MIME sniff indicates that the file is really an executable file, Internet Explorer renames the file by saving it in the Internet Explorer cache and changing its extension.

- If you enable this policy setting, Internet Explorer requires consistent MIME data for all received files.

- If you disable this policy setting, Internet Explorer won't require consistent MIME data for all received files.

- If you don't configure this policy setting, Internet Explorer requires consistent MIME data for all received files.
<!-- ConsistentMimeHandlingInternetExplorerProcesses-Description-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConsistentMimeHandlingInternetExplorerProcesses-Editable-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConsistentMimeHandlingInternetExplorerProcesses-DFProperties-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_5 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Consistent Mime Handling |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING |
| ADMX File Name | inetres.admx |
<!-- ConsistentMimeHandlingInternetExplorerProcesses-AdmxBacked-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConsistentMimeHandlingInternetExplorerProcesses-Examples-End -->

<!-- ConsistentMimeHandlingInternetExplorerProcesses-End -->

<!-- DisableActiveXVersionListAutoDownload-Begin -->
## DisableActiveXVersionListAutoDownload

<!-- DisableActiveXVersionListAutoDownload-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DisableActiveXVersionListAutoDownload-Applicability-End -->

<!-- DisableActiveXVersionListAutoDownload-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableActiveXVersionListAutoDownload
```
<!-- DisableActiveXVersionListAutoDownload-OmaUri-End -->

<!-- DisableActiveXVersionListAutoDownload-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting determines whether IE automatically downloads updated versions of Microsoft's VersionList. XML. IE uses this file to determine whether an ActiveX control should be stopped from loading.

- If you enable this setting, IE stops downloading updated versions of VersionList. XML. Turning off this automatic download breaks the out-of-date ActiveX control blocking feature by not letting the version list update with newly outdated controls, potentially compromising the security of your computer.

- If you disable or don't configure this setting, IE continues to download updated versions of VersionList. XML.

For more information, see "Out-of-date ActiveX control blocking" in the Internet Explorer TechNet library.
<!-- DisableActiveXVersionListAutoDownload-Description-End -->

<!-- DisableActiveXVersionListAutoDownload-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableActiveXVersionListAutoDownload-Editable-End -->

<!-- DisableActiveXVersionListAutoDownload-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableActiveXVersionListAutoDownload-DFProperties-End -->

<!-- DisableActiveXVersionListAutoDownload-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | VersionListAutomaticDownloadDisable |
| Friendly Name | Turn off automatic download of the ActiveX VersionList |
| Location | User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Add-on Management |
| Registry Key Name | Software\Microsoft\Internet Explorer\VersionManager |
| Registry Value Name | DownloadVersionList |
| ADMX File Name | inetres.admx |
<!-- DisableActiveXVersionListAutoDownload-AdmxBacked-End -->

<!-- DisableActiveXVersionListAutoDownload-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableActiveXVersionListAutoDownload-Examples-End -->

<!-- DisableActiveXVersionListAutoDownload-End -->

<!-- DisableBypassOfSmartScreenWarnings-Begin -->
## DisableBypassOfSmartScreenWarnings

<!-- DisableBypassOfSmartScreenWarnings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableBypassOfSmartScreenWarnings-Applicability-End -->

<!-- DisableBypassOfSmartScreenWarnings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableBypassOfSmartScreenWarnings
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableBypassOfSmartScreenWarnings
```
<!-- DisableBypassOfSmartScreenWarnings-OmaUri-End -->

<!-- DisableBypassOfSmartScreenWarnings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter prevents the user from browsing to or downloading from sites that are known to host malicious content. SmartScreen Filter also prevents the execution of files that are known to be malicious.

- If you enable this policy setting, SmartScreen Filter warnings block the user.

- If you disable or don't configure this policy setting, the user can bypass SmartScreen Filter warnings.
<!-- DisableBypassOfSmartScreenWarnings-Description-End -->

<!-- DisableBypassOfSmartScreenWarnings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBypassOfSmartScreenWarnings-Editable-End -->

<!-- DisableBypassOfSmartScreenWarnings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBypassOfSmartScreenWarnings-DFProperties-End -->

<!-- DisableBypassOfSmartScreenWarnings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSafetyFilterOverride |
| Friendly Name | Prevent bypassing SmartScreen Filter warnings |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\PhishingFilter |
| Registry Value Name | PreventOverride |
| ADMX File Name | inetres.admx |
<!-- DisableBypassOfSmartScreenWarnings-AdmxBacked-End -->

<!-- DisableBypassOfSmartScreenWarnings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBypassOfSmartScreenWarnings-Examples-End -->

<!-- DisableBypassOfSmartScreenWarnings-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Begin -->
## DisableBypassOfSmartScreenWarningsAboutUncommonFiles

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Applicability-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles
```
<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-OmaUri-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter warns the user about executable files that Internet Explorer users don't commonly download from the Internet.

- If you enable this policy setting, SmartScreen Filter warnings block the user.

- If you disable or don't configure this policy setting, the user can bypass SmartScreen Filter warnings.
<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Description-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Editable-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-DFProperties-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSafetyFilterOverrideForAppRepUnknown |
| Friendly Name | Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\PhishingFilter |
| Registry Value Name | PreventOverrideAppRepUnknown |
| ADMX File Name | inetres.admx |
<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-AdmxBacked-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-Examples-End -->

<!-- DisableBypassOfSmartScreenWarningsAboutUncommonFiles-End -->

<!-- DisableCompatView-Begin -->
## DisableCompatView

<!-- DisableCompatView-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DisableCompatView-Applicability-End -->

<!-- DisableCompatView-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableCompatView
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableCompatView
```
<!-- DisableCompatView-OmaUri-End -->

<!-- DisableCompatView-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the Compatibility View feature, which allows the user to fix website display problems that he or she may encounter while browsing.

- If you enable this policy setting, the user can't use the Compatibility View button or manage the Compatibility View sites list.

- If you disable or don't configure this policy setting, the user can use the Compatibility View button and manage the Compatibility View sites list.
<!-- DisableCompatView-Description-End -->

<!-- DisableCompatView-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCompatView-Editable-End -->

<!-- DisableCompatView-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableCompatView-DFProperties-End -->

<!-- DisableCompatView-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CompatView_DisableList |
| Friendly Name | Turn off Compatibility View |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Compatibility View |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\BrowserEmulation |
| Registry Value Name | DisableSiteListEditing |
| ADMX File Name | inetres.admx |
<!-- DisableCompatView-AdmxBacked-End -->

<!-- DisableCompatView-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCompatView-Examples-End -->

<!-- DisableCompatView-End -->

<!-- DisableConfiguringHistory-Begin -->
## DisableConfiguringHistory

<!-- DisableConfiguringHistory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableConfiguringHistory-Applicability-End -->

<!-- DisableConfiguringHistory-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableConfiguringHistory
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableConfiguringHistory
```
<!-- DisableConfiguringHistory-OmaUri-End -->

<!-- DisableConfiguringHistory-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting specifies the number of days that Internet Explorer tracks views of pages in the History List. To access the Temporary Internet Files and History Settings dialog box, from the Menu bar, on the Tools menu, click Internet Options, click the General tab, and then click Settings under Browsing history.

- If you enable this policy setting, a user can't set the number of days that Internet Explorer tracks views of the pages in the History List. You must specify the number of days that Internet Explorer tracks views of pages in the History List. Users can't delete browsing history.

- If you disable or don't configure this policy setting, a user can set the number of days that Internet Explorer tracks views of pages in the History list. Users can delete browsing history.
<!-- DisableConfiguringHistory-Description-End -->

<!-- DisableConfiguringHistory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableConfiguringHistory-Editable-End -->

<!-- DisableConfiguringHistory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableConfiguringHistory-DFProperties-End -->

<!-- DisableConfiguringHistory-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictHistory |
| Friendly Name | Disable "Configuring History" |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Delete Browsing History |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Control Panel |
| Registry Value Name | History |
| ADMX File Name | inetres.admx |
<!-- DisableConfiguringHistory-AdmxBacked-End -->

<!-- DisableConfiguringHistory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableConfiguringHistory-Examples-End -->

<!-- DisableConfiguringHistory-End -->

<!-- DisableCrashDetection-Begin -->
## DisableCrashDetection

<!-- DisableCrashDetection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableCrashDetection-Applicability-End -->

<!-- DisableCrashDetection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableCrashDetection
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableCrashDetection
```
<!-- DisableCrashDetection-OmaUri-End -->

<!-- DisableCrashDetection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the crash detection feature of add-on Management.

- If you enable this policy setting, a crash in Internet Explorer will exhibit behavior found in Windows XP Professional Service Pack 1 and earlier, namely to invoke Windows Error Reporting. All policy settings for Windows Error Reporting continue to apply.

- If you disable or don't configure this policy setting, the crash detection feature for add-on management will be functional.
<!-- DisableCrashDetection-Description-End -->

<!-- DisableCrashDetection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCrashDetection-Editable-End -->

<!-- DisableCrashDetection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableCrashDetection-DFProperties-End -->

<!-- DisableCrashDetection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AddonManagement_RestrictCrashDetection |
| Friendly Name | Turn off Crash Detection |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Restrictions |
| Registry Value Name | NoCrashDetection |
| ADMX File Name | inetres.admx |
<!-- DisableCrashDetection-AdmxBacked-End -->

<!-- DisableCrashDetection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCrashDetection-Examples-End -->

<!-- DisableCrashDetection-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-Begin -->
## DisableCustomerExperienceImprovementProgramParticipation

<!-- DisableCustomerExperienceImprovementProgramParticipation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableCustomerExperienceImprovementProgramParticipation-Applicability-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation
```
<!-- DisableCustomerExperienceImprovementProgramParticipation-OmaUri-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from participating in the Customer Experience Improvement Program (CEIP).

- If you enable this policy setting, the user can't participate in the CEIP, and the Customer Feedback Options command doesn't appear on the Help menu.

- If you disable this policy setting, the user must participate in the CEIP, and the Customer Feedback Options command doesn't appear on the Help menu.

- If you don't configure this policy setting, the user can choose to participate in the CEIP.
<!-- DisableCustomerExperienceImprovementProgramParticipation-Description-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCustomerExperienceImprovementProgramParticipation-Editable-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableCustomerExperienceImprovementProgramParticipation-DFProperties-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SQM_DisableCEIP |
| Friendly Name | Prevent participation in the Customer Experience Improvement Program |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\SQM |
| Registry Value Name | DisableCustomerImprovementProgram |
| ADMX File Name | inetres.admx |
<!-- DisableCustomerExperienceImprovementProgramParticipation-AdmxBacked-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCustomerExperienceImprovementProgramParticipation-Examples-End -->

<!-- DisableCustomerExperienceImprovementProgramParticipation-End -->

<!-- DisableDeletingUserVisitedWebsites-Begin -->
## DisableDeletingUserVisitedWebsites

<!-- DisableDeletingUserVisitedWebsites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableDeletingUserVisitedWebsites-Applicability-End -->

<!-- DisableDeletingUserVisitedWebsites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableDeletingUserVisitedWebsites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableDeletingUserVisitedWebsites
```
<!-- DisableDeletingUserVisitedWebsites-OmaUri-End -->

<!-- DisableDeletingUserVisitedWebsites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from deleting the history of websites that he or she has visited. This feature is available in the Delete Browsing History dialog box.

- If you enable this policy setting, websites that the user has visited are preserved when he or she clicks Delete.

- If you disable this policy setting, websites that the user has visited are deleted when he or she clicks Delete.

- If you don't configure this policy setting, the user can choose whether to delete or preserve visited websites when he or she clicks Delete.

If the "Prevent access to Delete Browsing History" policy setting is enabled, this policy setting is enabled by default.
<!-- DisableDeletingUserVisitedWebsites-Description-End -->

<!-- DisableDeletingUserVisitedWebsites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDeletingUserVisitedWebsites-Editable-End -->

<!-- DisableDeletingUserVisitedWebsites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableDeletingUserVisitedWebsites-DFProperties-End -->

<!-- DisableDeletingUserVisitedWebsites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DBHDisableDeleteHistory |
| Friendly Name | Prevent deleting websites that the user has visited |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Delete Browsing History |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Privacy |
| Registry Value Name | CleanHistory |
| ADMX File Name | inetres.admx |
<!-- DisableDeletingUserVisitedWebsites-AdmxBacked-End -->

<!-- DisableDeletingUserVisitedWebsites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDeletingUserVisitedWebsites-Examples-End -->

<!-- DisableDeletingUserVisitedWebsites-End -->

<!-- DisableEnclosureDownloading-Begin -->
## DisableEnclosureDownloading

<!-- DisableEnclosureDownloading-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableEnclosureDownloading-Applicability-End -->

<!-- DisableEnclosureDownloading-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableEnclosureDownloading
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableEnclosureDownloading
```
<!-- DisableEnclosureDownloading-OmaUri-End -->

<!-- DisableEnclosureDownloading-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from having enclosures (file attachments) downloaded from a feed to the user's computer.

- If you enable this policy setting, the user can't set the Feed Sync Engine to download an enclosure through the Feed property page. A developer can't change the download setting through the Feed APIs.

- If you disable or don't configure this policy setting, the user can set the Feed Sync Engine to download an enclosure through the Feed property page. A developer can change the download setting through the Feed APIs.
<!-- DisableEnclosureDownloading-Description-End -->

<!-- DisableEnclosureDownloading-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableEnclosureDownloading-Editable-End -->

<!-- DisableEnclosureDownloading-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableEnclosureDownloading-DFProperties-End -->

<!-- DisableEnclosureDownloading-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Disable_Downloading_of_Enclosures |
| Friendly Name | Prevent downloading of enclosures |
| Location | Computer and User Configuration |
| Path | Windows Components > RSS Feeds |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Feeds |
| Registry Value Name | DisableEnclosureDownload |
| ADMX File Name | inetres.admx |
<!-- DisableEnclosureDownloading-AdmxBacked-End -->

<!-- DisableEnclosureDownloading-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableEnclosureDownloading-Examples-End -->

<!-- DisableEnclosureDownloading-End -->

<!-- DisableEncryptionSupport-Begin -->
## DisableEncryptionSupport

<!-- DisableEncryptionSupport-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableEncryptionSupport-Applicability-End -->

<!-- DisableEncryptionSupport-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableEncryptionSupport
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableEncryptionSupport
```
<!-- DisableEncryptionSupport-OmaUri-End -->

<!-- DisableEncryptionSupport-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off support for Transport Layer Security (TLS) 1.0, TLS 1.1, TLS 1.2, Secure Sockets Layer (SSL) 2.0, or SSL 3.0 in the browser. TLS and SSL are protocols that help protect communication between the browser and the target server. When the browser attempts to set up a protected communication with the target server, the browser and server negotiate which protocol and version to use. The browser and server attempt to match each other's list of supported protocols and versions, and they select the most preferred match.

- If you enable this policy setting, the browser negotiates or doesn't negotiate an encryption tunnel by using the encryption methods that you select from the drop-down list.

- If you disable or don't configure this policy setting, the user can select which encryption method the browser supports.

> [!NOTE]
> SSL 2.0 is off by default and is no longer supported starting with Windows 10 Version 1607. SSL 2.0 is an outdated security protocol, and enabling SSL 2.0 impairs the performance and functionality of TLS 1.0.
<!-- DisableEncryptionSupport-Description-End -->

<!-- DisableEncryptionSupport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableEncryptionSupport-Editable-End -->

<!-- DisableEncryptionSupport-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableEncryptionSupport-DFProperties-End -->

<!-- DisableEncryptionSupport-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_SetWinInetProtocols |
| Friendly Name | Turn off encryption support |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| ADMX File Name | inetres.admx |
<!-- DisableEncryptionSupport-AdmxBacked-End -->

<!-- DisableEncryptionSupport-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableEncryptionSupport-Examples-End -->

<!-- DisableEncryptionSupport-End -->

<!-- DisableFeedsBackgroundSync-Begin -->
## DisableFeedsBackgroundSync

<!-- DisableFeedsBackgroundSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DisableFeedsBackgroundSync-Applicability-End -->

<!-- DisableFeedsBackgroundSync-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableFeedsBackgroundSync
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableFeedsBackgroundSync
```
<!-- DisableFeedsBackgroundSync-OmaUri-End -->

<!-- DisableFeedsBackgroundSync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether to have background synchronization for feeds and Web Slices.

- If you enable this policy setting, the ability to synchronize feeds and Web Slices in the background is turned off.

- If you disable or don't configure this policy setting, the user can synchronize feeds and Web Slices in the background.
<!-- DisableFeedsBackgroundSync-Description-End -->

<!-- DisableFeedsBackgroundSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableFeedsBackgroundSync-Editable-End -->

<!-- DisableFeedsBackgroundSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableFeedsBackgroundSync-DFProperties-End -->

<!-- DisableFeedsBackgroundSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Disable_Background_Syncing |
| Friendly Name | Turn off background synchronization for feeds and Web Slices |
| Location | Computer and User Configuration |
| Path | Windows Components > RSS Feeds |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Feeds |
| Registry Value Name | BackgroundSyncStatus |
| ADMX File Name | inetres.admx |
<!-- DisableFeedsBackgroundSync-AdmxBacked-End -->

<!-- DisableFeedsBackgroundSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableFeedsBackgroundSync-Examples-End -->

<!-- DisableFeedsBackgroundSync-End -->

<!-- DisableFirstRunWizard-Begin -->
## DisableFirstRunWizard

<!-- DisableFirstRunWizard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableFirstRunWizard-Applicability-End -->

<!-- DisableFirstRunWizard-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableFirstRunWizard
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableFirstRunWizard
```
<!-- DisableFirstRunWizard-OmaUri-End -->

<!-- DisableFirstRunWizard-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents Internet Explorer from running the First Run wizard the first time a user starts the browser after installing Internet Explorer or Windows.

- If you enable this policy setting, you must make one of the following choices:

- Skip the First Run wizard, and go directly to the user's home page.

- Skip the First Run wizard, and go directly to the "Welcome to Internet Explorer" webpage.

Starting with Windows 8, the "Welcome to Internet Explorer" webpage isn't available. The user's home page will display regardless of which option is chosen.

- If you disable or don't configure this policy setting, Internet Explorer may run the First Run wizard the first time the browser is started after installation.
<!-- DisableFirstRunWizard-Description-End -->

<!-- DisableFirstRunWizard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableFirstRunWizard-Editable-End -->

<!-- DisableFirstRunWizard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableFirstRunWizard-DFProperties-End -->

<!-- DisableFirstRunWizard-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoFirstRunCustomise |
| Friendly Name | Prevent running First Run wizard |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| ADMX File Name | inetres.admx |
<!-- DisableFirstRunWizard-AdmxBacked-End -->

<!-- DisableFirstRunWizard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableFirstRunWizard-Examples-End -->

<!-- DisableFirstRunWizard-End -->

<!-- DisableFlipAheadFeature-Begin -->
## DisableFlipAheadFeature

<!-- DisableFlipAheadFeature-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableFlipAheadFeature-Applicability-End -->

<!-- DisableFlipAheadFeature-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableFlipAheadFeature
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableFlipAheadFeature
```
<!-- DisableFlipAheadFeature-OmaUri-End -->

<!-- DisableFlipAheadFeature-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website.

Microsoft collects your browsing history to improve how flip ahead with page prediction works. This feature isn't available for Internet Explorer for the desktop.

- If you enable this policy setting, flip ahead with page prediction is turned off and the next webpage isn't loaded into the background.

- If you disable this policy setting, flip ahead with page prediction is turned on and the next webpage is loaded into the background.

- If you don't configure this setting, users can turn this behavior on or off, using the Settings charm.
<!-- DisableFlipAheadFeature-Description-End -->

<!-- DisableFlipAheadFeature-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableFlipAheadFeature-Editable-End -->

<!-- DisableFlipAheadFeature-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableFlipAheadFeature-DFProperties-End -->

<!-- DisableFlipAheadFeature-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_DisableFlipAhead |
| Friendly Name | Turn off the flip ahead with page prediction feature |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\FlipAhead |
| Registry Value Name | Enabled |
| ADMX File Name | inetres.admx |
<!-- DisableFlipAheadFeature-AdmxBacked-End -->

<!-- DisableFlipAheadFeature-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableFlipAheadFeature-Examples-End -->

<!-- DisableFlipAheadFeature-End -->

<!-- DisableGeolocation-Begin -->
## DisableGeolocation

<!-- DisableGeolocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DisableGeolocation-Applicability-End -->

<!-- DisableGeolocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableGeolocation
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableGeolocation
```
<!-- DisableGeolocation-OmaUri-End -->

<!-- DisableGeolocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to disable browser geolocation support. This will prevent websites from requesting location data about the user.

- If you enable this policy setting, browser geolocation support is turned off.

- If you disable this policy setting, browser geolocation support is turned on.

- If you don't configure this policy setting, browser geolocation support can be turned on or off in Internet Options on the Privacy tab.
<!-- DisableGeolocation-Description-End -->

<!-- DisableGeolocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableGeolocation-Editable-End -->

<!-- DisableGeolocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableGeolocation-DFProperties-End -->

<!-- DisableGeolocation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GeolocationDisable |
| Friendly Name | Turn off browser geolocation |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Geolocation |
| Registry Value Name | PolicyDisableGeolocation |
| ADMX File Name | inetres.admx |
<!-- DisableGeolocation-AdmxBacked-End -->

<!-- DisableGeolocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableGeolocation-Examples-End -->

<!-- DisableGeolocation-End -->

<!-- DisableHomePageChange-Begin -->
## DisableHomePageChange

<!-- DisableHomePageChange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableHomePageChange-Applicability-End -->

<!-- DisableHomePageChange-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableHomePageChange
```
<!-- DisableHomePageChange-OmaUri-End -->

<!-- DisableHomePageChange-Description-Begin -->
<!-- Description-Source-ADMX -->
The Home page specified on the General tab of the Internet Options dialog box is the default Web page that Internet Explorer loads whenever it's run.

- If you enable this policy setting, a user can't set a custom default home page. You must specify which default home page should load on the user machine. For machines with at least Internet Explorer 7, the home page can be set within this policy to override other home page policies.

- If you disable or don't configure this policy setting, the Home page box is enabled and users can choose their own home page.
<!-- DisableHomePageChange-Description-End -->

<!-- DisableHomePageChange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableHomePageChange-Editable-End -->

<!-- DisableHomePageChange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableHomePageChange-DFProperties-End -->

<!-- DisableHomePageChange-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictHomePage |
| Friendly Name | Disable changing home page settings |
| Location | User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Control Panel |
| Registry Value Name | HomePage |
| ADMX File Name | inetres.admx |
<!-- DisableHomePageChange-AdmxBacked-End -->

<!-- DisableHomePageChange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableHomePageChange-Examples-End -->

<!-- DisableHomePageChange-End -->

<!-- DisableHTMLApplication-Begin -->
## DisableHTMLApplication

<!-- DisableHTMLApplication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1060] and later <br> ✅ Windows 10, version 1809 [10.0.17763.3460] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2060] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1030] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- DisableHTMLApplication-Applicability-End -->

<!-- DisableHTMLApplication-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableHTMLApplication
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableHTMLApplication
```
<!-- DisableHTMLApplication-OmaUri-End -->

<!-- DisableHTMLApplication-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies if running the HTML Application (HTA file) is blocked or allowed.

- If you enable this policy setting, running the HTML Application (HTA file) will be blocked.

- If you disable or don't configure this policy setting, running the HTML Application (HTA file) is allowed.
<!-- DisableHTMLApplication-Description-End -->

<!-- DisableHTMLApplication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableHTMLApplication-Editable-End -->

<!-- DisableHTMLApplication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableHTMLApplication-DFProperties-End -->

<!-- DisableHTMLApplication-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableHTMLApplication |
| Friendly Name | Disable HTML Application |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Hta |
| Registry Value Name | DisableHTMLApplication |
| ADMX File Name | inetres.admx |
<!-- DisableHTMLApplication-AdmxBacked-End -->

<!-- DisableHTMLApplication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableHTMLApplication-Examples-End -->

<!-- DisableHTMLApplication-End -->

<!-- DisableIgnoringCertificateErrors-Begin -->
## DisableIgnoringCertificateErrors

<!-- DisableIgnoringCertificateErrors-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableIgnoringCertificateErrors-Applicability-End -->

<!-- DisableIgnoringCertificateErrors-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableIgnoringCertificateErrors
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableIgnoringCertificateErrors
```
<!-- DisableIgnoringCertificateErrors-OmaUri-End -->

<!-- DisableIgnoringCertificateErrors-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from ignoring Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificate errors that interrupt browsing (such as "expired", "revoked", or "name mismatch" errors) in Internet Explorer.

- If you enable this policy setting, the user can't continue browsing.

- If you disable or don't configure this policy setting, the user can choose to ignore certificate errors and continue browsing.
<!-- DisableIgnoringCertificateErrors-Description-End -->

<!-- DisableIgnoringCertificateErrors-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableIgnoringCertificateErrors-Editable-End -->

<!-- DisableIgnoringCertificateErrors-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableIgnoringCertificateErrors-DFProperties-End -->

<!-- DisableIgnoringCertificateErrors-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoCertError |
| Friendly Name | Prevent ignoring certificate errors |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| Registry Value Name | PreventIgnoreCertErrors |
| ADMX File Name | inetres.admx |
<!-- DisableIgnoringCertificateErrors-AdmxBacked-End -->

<!-- DisableIgnoringCertificateErrors-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableIgnoringCertificateErrors-Examples-End -->

<!-- DisableIgnoringCertificateErrors-End -->

<!-- DisableInPrivateBrowsing-Begin -->
## DisableInPrivateBrowsing

<!-- DisableInPrivateBrowsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableInPrivateBrowsing-Applicability-End -->

<!-- DisableInPrivateBrowsing-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableInPrivateBrowsing
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableInPrivateBrowsing
```
<!-- DisableInPrivateBrowsing-OmaUri-End -->

<!-- DisableInPrivateBrowsing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off the InPrivate Browsing feature.

InPrivate Browsing prevents Internet Explorer from storing data about a user's browsing session. This includes cookies, temporary Internet files, history, and other data.

- If you enable this policy setting, InPrivate Browsing is turned off.

- If you disable this policy setting, InPrivate Browsing is available for use.

- If you don't configure this policy setting, InPrivate Browsing can be turned on or off through the registry.
<!-- DisableInPrivateBrowsing-Description-End -->

<!-- DisableInPrivateBrowsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableInPrivateBrowsing-Editable-End -->

<!-- DisableInPrivateBrowsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableInPrivateBrowsing-DFProperties-End -->

<!-- DisableInPrivateBrowsing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableInPrivateBrowsing |
| Friendly Name | Turn off InPrivate Browsing |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Privacy |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Privacy |
| Registry Value Name | EnableInPrivateBrowsing |
| ADMX File Name | inetres.admx |
<!-- DisableInPrivateBrowsing-AdmxBacked-End -->

<!-- DisableInPrivateBrowsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableInPrivateBrowsing-Examples-End -->

<!-- DisableInPrivateBrowsing-End -->

<!-- DisableInternetExplorerApp-Begin -->
## DisableInternetExplorerApp

<!-- DisableInternetExplorerApp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1350] and later <br> ✅ Windows 10, version 2004 [10.0.19041.789] and later |
<!-- DisableInternetExplorerApp-Applicability-End -->

<!-- DisableInternetExplorerApp-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableInternetExplorerApp
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableInternetExplorerApp
```
<!-- DisableInternetExplorerApp-OmaUri-End -->

<!-- DisableInternetExplorerApp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy lets you restrict launching of Internet Explorer as a standalone browser.

If you enable this policy, it:

- Prevents Internet Explorer 11 from launching as a standalone browser.

- Restricts Internet Explorer's usage to Microsoft Edge's native 'Internet Explorer mode'.

- Redirects all attempts at launching Internet Explorer 11 to Microsoft Edge Stable Channel browser.

- Overrides any other policies that redirect to Internet Explorer 11.

If you disable, or don't configure this policy, all sites are opened using the current active browser settings.

> [!NOTE]
> Microsoft Edge Stable Channel must be installed for this policy to take effect.
<!-- DisableInternetExplorerApp-Description-End -->

<!-- DisableInternetExplorerApp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableInternetExplorerApp-Editable-End -->

<!-- DisableInternetExplorerApp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableInternetExplorerApp-DFProperties-End -->

<!-- DisableInternetExplorerApp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableInternetExplorerApp |
| Friendly Name | Disable Internet Explorer 11 as a standalone browser |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| ADMX File Name | inetres.admx |
<!-- DisableInternetExplorerApp-AdmxBacked-End -->

<!-- DisableInternetExplorerApp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
 <policy name="DisableInternetExplorerApp" class="Both" displayName="$(string.DisableInternetExplorerApp)" explainText="$(string.IE_ExplainDisableInternetExplorerApp)" key="Software\Policies\Microsoft\Internet Explorer\Main" valueName="DisableInternetExplorerApp">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11" />

      <enabledValue>

        <decimal value="1" />

      </enabledValue>

      <disabledValue>

        <decimal value="0" />

      </disabledValue>

    </policy>
```
<!-- DisableInternetExplorerApp-Examples-End -->

<!-- DisableInternetExplorerApp-End -->

<!-- DisableProcessesInEnhancedProtectedMode-Begin -->
## DisableProcessesInEnhancedProtectedMode

<!-- DisableProcessesInEnhancedProtectedMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableProcessesInEnhancedProtectedMode-Applicability-End -->

<!-- DisableProcessesInEnhancedProtectedMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableProcessesInEnhancedProtectedMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableProcessesInEnhancedProtectedMode
```
<!-- DisableProcessesInEnhancedProtectedMode-OmaUri-End -->

<!-- DisableProcessesInEnhancedProtectedMode-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- DisableProcessesInEnhancedProtectedMode-Description-End -->

<!-- DisableProcessesInEnhancedProtectedMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableProcessesInEnhancedProtectedMode-Editable-End -->

<!-- DisableProcessesInEnhancedProtectedMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableProcessesInEnhancedProtectedMode-DFProperties-End -->

<!-- DisableProcessesInEnhancedProtectedMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_EnableEnhancedProtectedMode64Bit |
| Friendly Name | Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| Registry Value Name | Isolation64Bit |
| ADMX File Name | inetres.admx |
<!-- DisableProcessesInEnhancedProtectedMode-AdmxBacked-End -->

<!-- DisableProcessesInEnhancedProtectedMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableProcessesInEnhancedProtectedMode-Examples-End -->

<!-- DisableProcessesInEnhancedProtectedMode-End -->

<!-- DisableProxyChange-Begin -->
## DisableProxyChange

<!-- DisableProxyChange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableProxyChange-Applicability-End -->

<!-- DisableProxyChange-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableProxyChange
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableProxyChange
```
<!-- DisableProxyChange-OmaUri-End -->

<!-- DisableProxyChange-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies if a user can change proxy settings.

- If you enable this policy setting, the user won't be able to configure proxy settings.

- If you disable or don't configure this policy setting, the user can configure proxy settings.
<!-- DisableProxyChange-Description-End -->

<!-- DisableProxyChange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableProxyChange-Editable-End -->

<!-- DisableProxyChange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableProxyChange-DFProperties-End -->

<!-- DisableProxyChange-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictProxy |
| Friendly Name | Prevent changing proxy settings |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Control Panel |
| Registry Value Name | Proxy |
| ADMX File Name | inetres.admx |
<!-- DisableProxyChange-AdmxBacked-End -->

<!-- DisableProxyChange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableProxyChange-Examples-End -->

<!-- DisableProxyChange-End -->

<!-- DisableSearchProviderChange-Begin -->
## DisableSearchProviderChange

<!-- DisableSearchProviderChange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableSearchProviderChange-Applicability-End -->

<!-- DisableSearchProviderChange-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableSearchProviderChange
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableSearchProviderChange
```
<!-- DisableSearchProviderChange-OmaUri-End -->

<!-- DisableSearchProviderChange-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from changing the default search provider for the Address bar and the toolbar Search box.

- If you enable this policy setting, the user can't change the default search provider.

- If you disable or don't configure this policy setting, the user can change the default search provider.
<!-- DisableSearchProviderChange-Description-End -->

<!-- DisableSearchProviderChange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSearchProviderChange-Editable-End -->

<!-- DisableSearchProviderChange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSearchProviderChange-DFProperties-End -->

<!-- DisableSearchProviderChange-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchProvider |
| Friendly Name | Prevent changing the default search provider |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions |
| Registry Value Name | NoChangeDefaultSearchProvider |
| ADMX File Name | inetres.admx |
<!-- DisableSearchProviderChange-AdmxBacked-End -->

<!-- DisableSearchProviderChange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSearchProviderChange-Examples-End -->

<!-- DisableSearchProviderChange-End -->

<!-- DisableSecondaryHomePageChange-Begin -->
## DisableSecondaryHomePageChange

<!-- DisableSecondaryHomePageChange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableSecondaryHomePageChange-Applicability-End -->

<!-- DisableSecondaryHomePageChange-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableSecondaryHomePageChange
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableSecondaryHomePageChange
```
<!-- DisableSecondaryHomePageChange-OmaUri-End -->

<!-- DisableSecondaryHomePageChange-Description-Begin -->
<!-- Description-Source-ADMX -->
Secondary home pages are the default Web pages that Internet Explorer loads in separate tabs from the home page whenever the browser is run. This policy setting allows you to set default secondary home pages.

- If you enable this policy setting, you can specify which default home pages should load as secondary home pages. The user can't set custom default secondary home pages.

- If you disable or don't configure this policy setting, the user can add secondary home pages.

> [!NOTE]
> If the "Disable Changing Home Page Settings" policy is enabled, the user can't add secondary home pages.
<!-- DisableSecondaryHomePageChange-Description-End -->

<!-- DisableSecondaryHomePageChange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSecondaryHomePageChange-Editable-End -->

<!-- DisableSecondaryHomePageChange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSecondaryHomePageChange-DFProperties-End -->

<!-- DisableSecondaryHomePageChange-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SecondaryHomePages |
| Friendly Name | Disable changing secondary home page settings |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\SecondaryStartPages |
| ADMX File Name | inetres.admx |
<!-- DisableSecondaryHomePageChange-AdmxBacked-End -->

<!-- DisableSecondaryHomePageChange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSecondaryHomePageChange-Examples-End -->

<!-- DisableSecondaryHomePageChange-End -->

<!-- DisableSecuritySettingsCheck-Begin -->
## DisableSecuritySettingsCheck

<!-- DisableSecuritySettingsCheck-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableSecuritySettingsCheck-Applicability-End -->

<!-- DisableSecuritySettingsCheck-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableSecuritySettingsCheck
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableSecuritySettingsCheck
```
<!-- DisableSecuritySettingsCheck-OmaUri-End -->

<!-- DisableSecuritySettingsCheck-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the Security Settings Check feature, which checks Internet Explorer security settings to determine when the settings put Internet Explorer at risk.

- If you enable this policy setting, the feature is turned off.

- If you disable or don't configure this policy setting, the feature is turned on.
<!-- DisableSecuritySettingsCheck-Description-End -->

<!-- DisableSecuritySettingsCheck-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSecuritySettingsCheck-Editable-End -->

<!-- DisableSecuritySettingsCheck-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSecuritySettingsCheck-DFProperties-End -->

<!-- DisableSecuritySettingsCheck-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Disable_Security_Settings_Check |
| Friendly Name | Turn off the Security Settings Check feature |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Security |
| Registry Value Name | DisableSecuritySettingsCheck |
| ADMX File Name | inetres.admx |
<!-- DisableSecuritySettingsCheck-AdmxBacked-End -->

<!-- DisableSecuritySettingsCheck-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSecuritySettingsCheck-Examples-End -->

<!-- DisableSecuritySettingsCheck-End -->

<!-- DisableUpdateCheck-Begin -->
## DisableUpdateCheck

<!-- DisableUpdateCheck-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableUpdateCheck-Applicability-End -->

<!-- DisableUpdateCheck-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableUpdateCheck
```
<!-- DisableUpdateCheck-OmaUri-End -->

<!-- DisableUpdateCheck-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents Internet Explorer from checking whether a new version of the browser is available.

- If you enable this policy, it prevents Internet Explorer from checking to see whether it's the latest available browser version and notifying users if a new version is available.

- If you disable this policy or don't configure it, Internet Explorer checks every 30 days by default, and then notifies users if a new version is available.

This policy is intended to help the administrator maintain version control for Internet Explorer by preventing users from being notified about new versions of the browser.
<!-- DisableUpdateCheck-Description-End -->

<!-- DisableUpdateCheck-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableUpdateCheck-Editable-End -->

<!-- DisableUpdateCheck-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableUpdateCheck-DFProperties-End -->

<!-- DisableUpdateCheck-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoUpdateCheck |
| Friendly Name | Disable Periodic Check for Internet Explorer software updates |
| Location | Computer Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions |
| Registry Value Name | NoUpdateCheck |
| ADMX File Name | inetres.admx |
<!-- DisableUpdateCheck-AdmxBacked-End -->

<!-- DisableUpdateCheck-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableUpdateCheck-Examples-End -->

<!-- DisableUpdateCheck-End -->

<!-- DisableWebAddressAutoComplete-Begin -->
## DisableWebAddressAutoComplete

<!-- DisableWebAddressAutoComplete-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DisableWebAddressAutoComplete-Applicability-End -->

<!-- DisableWebAddressAutoComplete-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableWebAddressAutoComplete
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableWebAddressAutoComplete
```
<!-- DisableWebAddressAutoComplete-OmaUri-End -->

<!-- DisableWebAddressAutoComplete-Description-Begin -->
<!-- Description-Source-ADMX -->
This AutoComplete feature suggests possible matches when users are entering Web addresses in the browser address bar.

- If you enable this policy setting, user won't be suggested matches when entering Web addresses. The user can't change the auto-complete for web-address setting.

- If you disable this policy setting, user will be suggested matches when entering Web addresses. The user can't change the auto-complete for web-address setting.

- If you don't configure this policy setting, a user will have the freedom to choose to turn the auto-complete setting for web-addresses on or off.
<!-- DisableWebAddressAutoComplete-Description-End -->

<!-- DisableWebAddressAutoComplete-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWebAddressAutoComplete-Editable-End -->

<!-- DisableWebAddressAutoComplete-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWebAddressAutoComplete-DFProperties-End -->

<!-- DisableWebAddressAutoComplete-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictWebAddressSuggest |
| Friendly Name | Turn off the auto-complete feature for web addresses |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete |
| Registry Value Name | AutoSuggest |
| ADMX File Name | inetres.admx |
<!-- DisableWebAddressAutoComplete-AdmxBacked-End -->

<!-- DisableWebAddressAutoComplete-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWebAddressAutoComplete-Examples-End -->

<!-- DisableWebAddressAutoComplete-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-Begin -->
## DoNotAllowActiveXControlsInProtectedMode

<!-- DoNotAllowActiveXControlsInProtectedMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DoNotAllowActiveXControlsInProtectedMode-Applicability-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotAllowActiveXControlsInProtectedMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotAllowActiveXControlsInProtectedMode
```
<!-- DoNotAllowActiveXControlsInProtectedMode-OmaUri-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents ActiveX controls from running in Protected Mode when Enhanced Protected Mode is enabled. When a user has an ActiveX control installed that isn't compatible with Enhanced Protected Mode and a website attempts to load the control, Internet Explorer notifies the user and gives the option to run the website in regular Protected Mode. This policy setting disables this notification and forces all websites to run in Enhanced Protected Mode.

Enhanced Protected Mode provides additional protection against malicious websites by using 64-bit processes on 64-bit versions of Windows. For computers running at least Windows 8, Enhanced Protected Mode also limits the locations Internet Explorer can read from in the registry and the file system.

When Enhanced Protected Mode is enabled, and a user encounters a website that attempts to load an ActiveX control that isn't compatible with Enhanced Protected Mode, Internet Explorer notifies the user and gives the option to disable Enhanced Protected Mode for that particular website.

- If you enable this policy setting, Internet Explorer won't give the user the option to disable Enhanced Protected Mode. All Protected Mode websites will run in Enhanced Protected Mode.

- If you disable or don't configure this policy setting, Internet Explorer notifies users and provides an option to run websites with incompatible ActiveX controls in regular Protected Mode. This is the default behavior.
<!-- DoNotAllowActiveXControlsInProtectedMode-Description-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotAllowActiveXControlsInProtectedMode-Editable-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotAllowActiveXControlsInProtectedMode-DFProperties-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Advanced_DisableEPMCompat |
| Friendly Name | Do not allow ActiveX controls to run in Protected Mode when Enhanced Protected Mode is enabled |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Advanced Page |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| Registry Value Name | DisableEPMCompat |
| ADMX File Name | inetres.admx |
<!-- DoNotAllowActiveXControlsInProtectedMode-AdmxBacked-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotAllowActiveXControlsInProtectedMode-Examples-End -->

<!-- DoNotAllowActiveXControlsInProtectedMode-End -->

<!-- DoNotAllowUsersToAddSites-Begin -->
## DoNotAllowUsersToAddSites

<!-- DoNotAllowUsersToAddSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DoNotAllowUsersToAddSites-Applicability-End -->

<!-- DoNotAllowUsersToAddSites-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotAllowUsersToAddSites
```
<!-- DoNotAllowUsersToAddSites-OmaUri-End -->

<!-- DoNotAllowUsersToAddSites-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from adding or removing sites from security zones. A security zone is a group of Web sites with the same security level.

- If you enable this policy, the site management settings for security zones are disabled. (To see the site management settings for security zones, in the Internet Options dialog box, click the Security tab, and then click the Sites button).

- If you disable this policy or don't configure it, users can add Web sites to or remove sites from the Trusted Sites and Restricted Sites zones, and alter settings for the Local Intranet zone.

This policy prevents users from changing site management settings for security zones established by the administrator.

> [!NOTE]
> The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from the interface, takes precedence over this policy. If it's enabled, this policy is ignored.

Also, see the "Security zones: Use only machine settings" policy.
<!-- DoNotAllowUsersToAddSites-Description-End -->

<!-- DoNotAllowUsersToAddSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotAllowUsersToAddSites-Editable-End -->

<!-- DoNotAllowUsersToAddSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotAllowUsersToAddSites-DFProperties-End -->

<!-- DoNotAllowUsersToAddSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Security_zones_map_edit |
| Friendly Name | Security Zones: Do not allow users to add/delete sites |
| Location | Computer Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| Registry Value Name | Security_zones_map_edit |
| ADMX File Name | inetres.admx |
<!-- DoNotAllowUsersToAddSites-AdmxBacked-End -->

<!-- DoNotAllowUsersToAddSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotAllowUsersToAddSites-Examples-End -->

<!-- DoNotAllowUsersToAddSites-End -->

<!-- DoNotAllowUsersToChangePolicies-Begin -->
## DoNotAllowUsersToChangePolicies

<!-- DoNotAllowUsersToChangePolicies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DoNotAllowUsersToChangePolicies-Applicability-End -->

<!-- DoNotAllowUsersToChangePolicies-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotAllowUsersToChangePolicies
```
<!-- DoNotAllowUsersToChangePolicies-OmaUri-End -->

<!-- DoNotAllowUsersToChangePolicies-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing security zone settings. A security zone is a group of Web sites with the same security level.

- If you enable this policy, the Custom Level button and security-level slider on the Security tab in the Internet Options dialog box are disabled.

- If you disable this policy or don't configure it, users can change the settings for security zones.

This policy prevents users from changing security zone settings established by the administrator.

> [!NOTE]
> The "Disable the Security page" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel), which removes the Security tab from Internet Explorer in Control Panel, takes precedence over this policy. If it's enabled, this policy is ignored.

Also, see the "Security zones: Use only machine settings" policy.
<!-- DoNotAllowUsersToChangePolicies-Description-End -->

<!-- DoNotAllowUsersToChangePolicies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotAllowUsersToChangePolicies-Editable-End -->

<!-- DoNotAllowUsersToChangePolicies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotAllowUsersToChangePolicies-DFProperties-End -->

<!-- DoNotAllowUsersToChangePolicies-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Security_options_edit |
| Friendly Name | Security Zones: Do not allow users to change policies |
| Location | Computer Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| Registry Value Name | Security_options_edit |
| ADMX File Name | inetres.admx |
<!-- DoNotAllowUsersToChangePolicies-AdmxBacked-End -->

<!-- DoNotAllowUsersToChangePolicies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotAllowUsersToChangePolicies-Examples-End -->

<!-- DoNotAllowUsersToChangePolicies-End -->

<!-- DoNotBlockOutdatedActiveXControls-Begin -->
## DoNotBlockOutdatedActiveXControls

<!-- DoNotBlockOutdatedActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DoNotBlockOutdatedActiveXControls-Applicability-End -->

<!-- DoNotBlockOutdatedActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotBlockOutdatedActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotBlockOutdatedActiveXControls
```
<!-- DoNotBlockOutdatedActiveXControls-OmaUri-End -->

<!-- DoNotBlockOutdatedActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Internet Explorer blocks specific outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.

- If you enable this policy setting, Internet Explorer stops blocking outdated ActiveX controls.

- If you disable or don't configure this policy setting, Internet Explorer continues to block specific outdated ActiveX controls.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
<!-- DoNotBlockOutdatedActiveXControls-Description-End -->

<!-- DoNotBlockOutdatedActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotBlockOutdatedActiveXControls-Editable-End -->

<!-- DoNotBlockOutdatedActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotBlockOutdatedActiveXControls-DFProperties-End -->

<!-- DoNotBlockOutdatedActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | VerMgmtDisable |
| Friendly Name | Turn off blocking of outdated ActiveX controls for Internet Explorer |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Add-on Management |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Ext |
| Registry Value Name | VersionCheckEnabled |
| ADMX File Name | inetres.admx |
<!-- DoNotBlockOutdatedActiveXControls-AdmxBacked-End -->

<!-- DoNotBlockOutdatedActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotBlockOutdatedActiveXControls-Examples-End -->

<!-- DoNotBlockOutdatedActiveXControls-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Begin -->
## DoNotBlockOutdatedActiveXControlsOnSpecificDomains

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Applicability-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains
```
<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-OmaUri-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage a list of domains on which Internet Explorer will stop blocking outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.

- If you enable this policy setting, you can enter a custom list of domains for which outdated ActiveX controls won't be blocked in Internet Explorer. Each domain entry must be formatted like one of the following:

1. "domain.name. TLD". For example, if you want to include *.contoso.com/*, use "contoso.com"
2. "hostname". For example, if you want to include https://example, use "example".

3. "file:///path/filename.htm". For example, use "file:///C:/Users/contoso/Desktop/index.htm".

- If you disable or don't configure this policy setting, the list is deleted and Internet Explorer continues to block specific outdated ActiveX controls on all domains in the Internet Zone.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Description-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Editable-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-DFProperties-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | VerMgmtDomainAllowlist |
| Friendly Name | Turn off blocking of outdated ActiveX controls for Internet Explorer on specific domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Add-on Management |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Ext |
| Registry Value Name | ListBox_DomainAllowlist |
| ADMX File Name | inetres.admx |
<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-AdmxBacked-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-Examples-End -->

<!-- DoNotBlockOutdatedActiveXControlsOnSpecificDomains-End -->

<!-- EnableExtendedIEModeHotkeys-Begin -->
## EnableExtendedIEModeHotkeys

<!-- EnableExtendedIEModeHotkeys-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.143] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1474] and later <br> ✅ Windows 10, version 2004 [10.0.19041.906] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableExtendedIEModeHotkeys-Applicability-End -->

<!-- EnableExtendedIEModeHotkeys-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/EnableExtendedIEModeHotkeys
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/EnableExtendedIEModeHotkeys
```
<!-- EnableExtendedIEModeHotkeys-OmaUri-End -->

<!-- EnableExtendedIEModeHotkeys-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets admins enable extended Microsoft Edge Internet Explorer mode hotkeys, such as "Ctrl+S" to have "Save as" functionality.

If you enable this policy, extended hotkey functionality is enabled in Internet Explorer mode and work the same as Internet Explorer.

If you disable, or don't configure this policy, extended hotkeys won't work in Internet Explorer mode.

For more information, see <https://go.microsoft.com/fwlink/?linkid=2102115>
<!-- EnableExtendedIEModeHotkeys-Description-End -->

<!-- EnableExtendedIEModeHotkeys-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableExtendedIEModeHotkeys-Editable-End -->

<!-- EnableExtendedIEModeHotkeys-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableExtendedIEModeHotkeys-DFProperties-End -->

<!-- EnableExtendedIEModeHotkeys-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableExtendedIEModeHotkeys |
| Friendly Name | Enable extended hot keys in Internet Explorer mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| Registry Value Name | EnableExtendedIEModeHotkeys |
| ADMX File Name | inetres.admx |
<!-- EnableExtendedIEModeHotkeys-AdmxBacked-End -->

<!-- EnableExtendedIEModeHotkeys-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableExtendedIEModeHotkeys-Examples-End -->

<!-- EnableExtendedIEModeHotkeys-End -->

<!-- EnableGlobalWindowListInIEMode-Begin -->
## EnableGlobalWindowListInIEMode

<!-- EnableGlobalWindowListInIEMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.558] and later <br> ✅ Windows 10, version 2004 [10.0.19041.1566] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.527] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableGlobalWindowListInIEMode-Applicability-End -->

<!-- EnableGlobalWindowListInIEMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/EnableGlobalWindowListInIEMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/EnableGlobalWindowListInIEMode
```
<!-- EnableGlobalWindowListInIEMode-OmaUri-End -->

<!-- EnableGlobalWindowListInIEMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows Internet Explorer mode to use the global window list that enables sharing state with other applications.

The setting will take effect only when Internet Explorer 11 is disabled as a standalone browser.

- If you enable this policy, Internet Explorer mode will use the global window list.

- If you disable or don't configure this policy, Internet Explorer mode will continue to maintain a separate window list.

To learn more about Internet Explorer mode, see <https://go.microsoft.com/fwlink/?linkid=2102921>
To learn more about disabling Internet Explorer 11 as a standalone browser, see <https://go.microsoft.com/fwlink/?linkid=2168340>
<!-- EnableGlobalWindowListInIEMode-Description-End -->

<!-- EnableGlobalWindowListInIEMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableGlobalWindowListInIEMode-Editable-End -->

<!-- EnableGlobalWindowListInIEMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableGlobalWindowListInIEMode-DFProperties-End -->

<!-- EnableGlobalWindowListInIEMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableGlobalWindowListInIEMode |
| Friendly Name | Enable global window list in Internet Explorer mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| Registry Value Name | EnableGlobalWindowListInIEMode |
| ADMX File Name | inetres.admx |
<!-- EnableGlobalWindowListInIEMode-AdmxBacked-End -->

<!-- EnableGlobalWindowListInIEMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableGlobalWindowListInIEMode-Examples-End -->

<!-- EnableGlobalWindowListInIEMode-End -->

<!-- IncludeAllLocalSites-Begin -->
## IncludeAllLocalSites

<!-- IncludeAllLocalSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IncludeAllLocalSites-Applicability-End -->

<!-- IncludeAllLocalSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IncludeAllLocalSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IncludeAllLocalSites
```
<!-- IncludeAllLocalSites-OmaUri-End -->

<!-- IncludeAllLocalSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether local sites which aren't explicitly mapped into any Security Zone are forced into the local Intranet security zone.

- If you enable this policy setting, local sites which aren't explicitly mapped into a zone are considered to be in the Intranet Zone.

- If you disable this policy setting, local sites which aren't explicitly mapped into a zone won't be considered to be in the Intranet Zone (so would typically be in the Internet Zone).

- If you don't configure this policy setting, users choose whether to force local sites into the Intranet Zone.
<!-- IncludeAllLocalSites-Description-End -->

<!-- IncludeAllLocalSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IncludeAllLocalSites-Editable-End -->

<!-- IncludeAllLocalSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IncludeAllLocalSites-DFProperties-End -->

<!-- IncludeAllLocalSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_IncludeUnspecifiedLocalSites |
| Friendly Name | Intranet Sites: Include all local (intranet) sites not listed in other zones |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap |
| Registry Value Name | IntranetName |
| ADMX File Name | inetres.admx |
<!-- IncludeAllLocalSites-AdmxBacked-End -->

<!-- IncludeAllLocalSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IncludeAllLocalSites-Examples-End -->

<!-- IncludeAllLocalSites-End -->

<!-- IncludeAllNetworkPaths-Begin -->
## IncludeAllNetworkPaths

<!-- IncludeAllNetworkPaths-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IncludeAllNetworkPaths-Applicability-End -->

<!-- IncludeAllNetworkPaths-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IncludeAllNetworkPaths
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IncludeAllNetworkPaths
```
<!-- IncludeAllNetworkPaths-OmaUri-End -->

<!-- IncludeAllNetworkPaths-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether URLs representing UNCs are mapped into the local Intranet security zone.

- If you enable this policy setting, all network paths are mapped into the Intranet Zone.

- If you disable this policy setting, network paths aren't necessarily mapped into the Intranet Zone (other rules might map one there).

- If you don't configure this policy setting, users choose whether network paths are mapped into the Intranet Zone.
<!-- IncludeAllNetworkPaths-Description-End -->

<!-- IncludeAllNetworkPaths-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IncludeAllNetworkPaths-Editable-End -->

<!-- IncludeAllNetworkPaths-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IncludeAllNetworkPaths-DFProperties-End -->

<!-- IncludeAllNetworkPaths-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_UNCAsIntranet |
| Friendly Name | Intranet Sites: Include all network paths (UNCs) |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap |
| Registry Value Name | UNCAsIntranet |
| ADMX File Name | inetres.admx |
<!-- IncludeAllNetworkPaths-AdmxBacked-End -->

<!-- IncludeAllNetworkPaths-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IncludeAllNetworkPaths-Examples-End -->

<!-- IncludeAllNetworkPaths-End -->

<!-- InternetZoneAllowAccessToDataSources-Begin -->
## InternetZoneAllowAccessToDataSources

<!-- InternetZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowAccessToDataSources-Applicability-End -->

<!-- InternetZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowAccessToDataSources
```
<!-- InternetZoneAllowAccessToDataSources-OmaUri-End -->

<!-- InternetZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- InternetZoneAllowAccessToDataSources-Description-End -->

<!-- InternetZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowAccessToDataSources-Editable-End -->

<!-- InternetZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowAccessToDataSources-DFProperties-End -->

<!-- InternetZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_1 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- InternetZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowAccessToDataSources-Examples-End -->

<!-- InternetZoneAllowAccessToDataSources-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## InternetZoneAllowAutomaticPromptingForActiveXControls

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls
```
<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_1 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- InternetZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## InternetZoneAllowAutomaticPromptingForFileDownloads

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads
```
<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, file downloads that aren't user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_1 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- InternetZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- InternetZoneAllowCopyPasteViaScript-Begin -->
## InternetZoneAllowCopyPasteViaScript

<!-- InternetZoneAllowCopyPasteViaScript-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowCopyPasteViaScript-Applicability-End -->

<!-- InternetZoneAllowCopyPasteViaScript-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowCopyPasteViaScript
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowCopyPasteViaScript
```
<!-- InternetZoneAllowCopyPasteViaScript-OmaUri-End -->

<!-- InternetZoneAllowCopyPasteViaScript-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether scripts can perform a clipboard operation (for example, cut, copy, and paste) in a specified region.

- If you enable this policy setting, a script can perform a clipboard operation.

If you select Prompt in the drop-down box, users are queried as to whether to perform clipboard operations.

- If you disable this policy setting, a script can't perform a clipboard operation.

- If you don't configure this policy setting, a script can perform a clipboard operation.
<!-- InternetZoneAllowCopyPasteViaScript-Description-End -->

<!-- InternetZoneAllowCopyPasteViaScript-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowCopyPasteViaScript-Editable-End -->

<!-- InternetZoneAllowCopyPasteViaScript-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowCopyPasteViaScript-DFProperties-End -->

<!-- InternetZoneAllowCopyPasteViaScript-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAllowPasteViaScript_1 |
| Friendly Name | Allow cut, copy or paste operations from the clipboard via script |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowCopyPasteViaScript-AdmxBacked-End -->

<!-- InternetZoneAllowCopyPasteViaScript-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowCopyPasteViaScript-Examples-End -->

<!-- InternetZoneAllowCopyPasteViaScript-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Begin -->
## InternetZoneAllowDragAndDropCopyAndPasteFiles

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Applicability-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowDragAndDropCopyAndPasteFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowDragAndDropCopyAndPasteFiles
```
<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-OmaUri-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether users can drag files or copy and paste files from a source within the zone.

- If you enable this policy setting, users can drag files or copy and paste files from this zone automatically. If you select Prompt in the drop-down box, users are queried to choose whether to drag or copy files from this zone.

- If you disable this policy setting, users are prevented from dragging files or copying and pasting files from this zone.

- If you don't configure this policy setting, users can drag files or copy and paste files from this zone automatically.
<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Description-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Editable-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-DFProperties-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDropOrPasteFiles_1 |
| Friendly Name | Allow drag and drop or copy and paste files |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-AdmxBacked-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-Examples-End -->

<!-- InternetZoneAllowDragAndDropCopyAndPasteFiles-End -->

<!-- InternetZoneAllowFontDownloads-Begin -->
## InternetZoneAllowFontDownloads

<!-- InternetZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowFontDownloads-Applicability-End -->

<!-- InternetZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowFontDownloads
```
<!-- InternetZoneAllowFontDownloads-OmaUri-End -->

<!-- InternetZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- InternetZoneAllowFontDownloads-Description-End -->

<!-- InternetZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowFontDownloads-Editable-End -->

<!-- InternetZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowFontDownloads-DFProperties-End -->

<!-- InternetZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_1 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowFontDownloads-AdmxBacked-End -->

<!-- InternetZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowFontDownloads-Examples-End -->

<!-- InternetZoneAllowFontDownloads-End -->

<!-- InternetZoneAllowLessPrivilegedSites-Begin -->
## InternetZoneAllowLessPrivilegedSites

<!-- InternetZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- InternetZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowLessPrivilegedSites
```
<!-- InternetZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- InternetZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.
<!-- InternetZoneAllowLessPrivilegedSites-Description-End -->

<!-- InternetZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowLessPrivilegedSites-Editable-End -->

<!-- InternetZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- InternetZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_1 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- InternetZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowLessPrivilegedSites-Examples-End -->

<!-- InternetZoneAllowLessPrivilegedSites-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-Begin -->
## InternetZoneAllowLoadingOfXAMLFiles

<!-- InternetZoneAllowLoadingOfXAMLFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowLoadingOfXAMLFiles-Applicability-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowLoadingOfXAMLFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowLoadingOfXAMLFiles
```
<!-- InternetZoneAllowLoadingOfXAMLFiles-OmaUri-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the loading of Extensible Application Markup Language (XAML) files. XAML is an XML-based declarative markup language commonly used for creating rich user interfaces and graphics that take advantage of the Windows Presentation Foundation.

- If you enable this policy setting and set the drop-down box to Enable, XAML files are automatically loaded inside Internet Explorer. The user can't change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XAML files.

- If you disable this policy setting, XAML files aren't loaded inside Internet Explorer. The user can't change this behavior.

- If you don't configure this policy setting, the user can decide whether to load XAML files inside Internet Explorer.
<!-- InternetZoneAllowLoadingOfXAMLFiles-Description-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowLoadingOfXAMLFiles-Editable-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowLoadingOfXAMLFiles-DFProperties-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_XAML_1 |
| Friendly Name | Allow loading of XAML files |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowLoadingOfXAMLFiles-AdmxBacked-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowLoadingOfXAMLFiles-Examples-End -->

<!-- InternetZoneAllowLoadingOfXAMLFiles-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-Begin -->
## InternetZoneAllowNETFrameworkReliantComponents

<!-- InternetZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents
```
<!-- InternetZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer will execute unsigned managed components.
<!-- InternetZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_1 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- InternetZoneAllowNETFrameworkReliantComponents-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Begin -->
## InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Applicability-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls
```
<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-OmaUri-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the user is prompted to allow ActiveX controls to run on websites other than the website that installed the ActiveX control.

- If you enable this policy setting, the user is prompted before ActiveX controls can run from websites in this zone. The user can choose to allow the control to run from the current site or from all sites.

- If you disable this policy setting, the user doesn't see the per-site ActiveX prompt, and ActiveX controls can run from all sites in this zone.
<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Description-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Editable-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-DFProperties-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyOnlyAllowApprovedDomainsToUseActiveXWithoutPrompt_Both_Internet |
| Friendly Name | Allow only approved domains to use ActiveX controls without prompt |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-AdmxBacked-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-Examples-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseActiveXControls-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Begin -->
## InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Applicability-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl
```
<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-OmaUri-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the user is allowed to run the TDC ActiveX control on websites.

- If you enable this policy setting, the TDC ActiveX control won't run from websites in this zone.

- If you disable this policy setting, the TDC Active X control will run from all sites in this zone.
<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Description-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Editable-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-DFProperties-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAllowTDCControl_Both_Internet |
| Friendly Name | Allow only approved domains to use the TDC ActiveX control |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-AdmxBacked-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Examples-End -->

<!-- InternetZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Begin -->
## InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Applicability-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls
```
<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-OmaUri-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether a page can control embedded WebBrowser controls via script.

- If you enable this policy setting, script access to the WebBrowser control is allowed.

- If you disable this policy setting, script access to the WebBrowser control isn't allowed.

- If you don't configure this policy setting, the user can enable or disable script access to the WebBrowser control. By default, script access to the WebBrowser control is allowed only in the Local Machine and Intranet zones.
<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Description-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Editable-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-DFProperties-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_WebBrowserControl_1 |
| Friendly Name | Allow scripting of Internet Explorer WebBrowser controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-AdmxBacked-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-Examples-End -->

<!-- InternetZoneAllowScriptingOfInternetExplorerWebBrowserControls-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-Begin -->
## InternetZoneAllowScriptInitiatedWindows

<!-- InternetZoneAllowScriptInitiatedWindows-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowScriptInitiatedWindows-Applicability-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowScriptInitiatedWindows
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowScriptInitiatedWindows
```
<!-- InternetZoneAllowScriptInitiatedWindows-OmaUri-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage restrictions on script-initiated pop-up windows and windows that include the title and status bars.

- If you enable this policy setting, Windows Restrictions security won't apply in this zone. The security zone runs without the added layer of security provided by this feature.

- If you disable this policy setting, the possible harmful actions contained in script-initiated pop-up windows and windows that include the title and status bars can't be run. This Internet Explorer security feature will be on in this zone as dictated by the Scripted Windows Security Restrictions feature control setting for the process.

- If you don't configure this policy setting, the possible harmful actions contained in script-initiated pop-up windows and windows that include the title and status bars can't be run. This Internet Explorer security feature will be on in this zone as dictated by the Scripted Windows Security Restrictions feature control setting for the process.
<!-- InternetZoneAllowScriptInitiatedWindows-Description-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowScriptInitiatedWindows-Editable-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowScriptInitiatedWindows-DFProperties-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyWindowsRestrictionsURLaction_1 |
| Friendly Name | Allow script-initiated windows without size or position constraints |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowScriptInitiatedWindows-AdmxBacked-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowScriptInitiatedWindows-Examples-End -->

<!-- InternetZoneAllowScriptInitiatedWindows-End -->

<!-- InternetZoneAllowScriptlets-Begin -->
## InternetZoneAllowScriptlets

<!-- InternetZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowScriptlets-Applicability-End -->

<!-- InternetZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowScriptlets
```
<!-- InternetZoneAllowScriptlets-OmaUri-End -->

<!-- InternetZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- InternetZoneAllowScriptlets-Description-End -->

<!-- InternetZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowScriptlets-Editable-End -->

<!-- InternetZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowScriptlets-DFProperties-End -->

<!-- InternetZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_1 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowScriptlets-AdmxBacked-End -->

<!-- InternetZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowScriptlets-Examples-End -->

<!-- InternetZoneAllowScriptlets-End -->

<!-- InternetZoneAllowSmartScreenIE-Begin -->
## InternetZoneAllowSmartScreenIE

<!-- InternetZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowSmartScreenIE-Applicability-End -->

<!-- InternetZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowSmartScreenIE
```
<!-- InternetZoneAllowSmartScreenIE-OmaUri-End -->

<!-- InternetZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- InternetZoneAllowSmartScreenIE-Description-End -->

<!-- InternetZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowSmartScreenIE-Editable-End -->

<!-- InternetZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowSmartScreenIE-DFProperties-End -->

<!-- InternetZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_1 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- InternetZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowSmartScreenIE-Examples-End -->

<!-- InternetZoneAllowSmartScreenIE-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Begin -->
## InternetZoneAllowUpdatesToStatusBarViaScript

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Applicability-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowUpdatesToStatusBarViaScript
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowUpdatesToStatusBarViaScript
```
<!-- InternetZoneAllowUpdatesToStatusBarViaScript-OmaUri-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether script is allowed to update the status bar within the zone.

- If you enable this policy setting, script is allowed to update the status bar.

- If you disable or don't configure this policy setting, script isn't allowed to update the status bar.
<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Description-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Editable-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowUpdatesToStatusBarViaScript-DFProperties-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_ScriptStatusBar_1 |
| Friendly Name | Allow updates to status bar via script |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowUpdatesToStatusBarViaScript-AdmxBacked-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowUpdatesToStatusBarViaScript-Examples-End -->

<!-- InternetZoneAllowUpdatesToStatusBarViaScript-End -->

<!-- InternetZoneAllowUserDataPersistence-Begin -->
## InternetZoneAllowUserDataPersistence

<!-- InternetZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneAllowUserDataPersistence-Applicability-End -->

<!-- InternetZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowUserDataPersistence
```
<!-- InternetZoneAllowUserDataPersistence-OmaUri-End -->

<!-- InternetZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- InternetZoneAllowUserDataPersistence-Description-End -->

<!-- InternetZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowUserDataPersistence-Editable-End -->

<!-- InternetZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowUserDataPersistence-DFProperties-End -->

<!-- InternetZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_1 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- InternetZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowUserDataPersistence-Examples-End -->

<!-- InternetZoneAllowUserDataPersistence-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Begin -->
## InternetZoneAllowVBScriptToRunInInternetExplorer

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Applicability-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowVBScriptToRunInInternetExplorer
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneAllowVBScriptToRunInInternetExplorer
```
<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-OmaUri-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether VBScript can be run on pages from the specified zone in Internet Explorer.

If you selected Enable in the drop-down box, VBScript can run without user intervention.

If you selected Prompt in the drop-down box, users are asked to choose whether to allow VBScript to run.

If you selected Disable in the drop-down box, VBScript is prevented from running.

If you don't configure or disable this policy setting, VBScript is prevented from running.
<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Description-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Editable-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-DFProperties-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAllowVBScript_1 |
| Friendly Name | Allow VBScript to run in Internet Explorer |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-AdmxBacked-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-Examples-End -->

<!-- InternetZoneAllowVBScriptToRunInInternetExplorer-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Begin -->
## InternetZoneDoNotRunAntimalwareAgainstActiveXControls

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneDoNotRunAntimalwareAgainstActiveXControls
```
<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

- If you enable this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you disable this policy setting, Internet Explorer always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you don't configure this policy setting, Internet Explorer always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.
<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Description-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAntiMalwareCheckingOfActiveXControls_1 |
| Friendly Name | Don't run antimalware programs against ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-End -->

<!-- InternetZoneDoNotRunAntimalwareAgainstActiveXControls-End -->

<!-- InternetZoneDownloadSignedActiveXControls-Begin -->
## InternetZoneDownloadSignedActiveXControls

<!-- InternetZoneDownloadSignedActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneDownloadSignedActiveXControls-Applicability-End -->

<!-- InternetZoneDownloadSignedActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneDownloadSignedActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneDownloadSignedActiveXControls
```
<!-- InternetZoneDownloadSignedActiveXControls-OmaUri-End -->

<!-- InternetZoneDownloadSignedActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether users may download signed ActiveX controls from a page in the zone.

- If you enable this policy, users can download signed controls without user intervention. If you select Prompt in the drop-down box, users are queried whether to download controls signed by publishers who aren't trusted. Code signed by trusted publishers is silently downloaded.

- If you disable the policy setting, signed controls can't be downloaded.

- If you don't configure this policy setting, users are queried whether to download controls signed by publishers who aren't trusted. Code signed by trusted publishers is silently downloaded.
<!-- InternetZoneDownloadSignedActiveXControls-Description-End -->

<!-- InternetZoneDownloadSignedActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneDownloadSignedActiveXControls-Editable-End -->

<!-- InternetZoneDownloadSignedActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneDownloadSignedActiveXControls-DFProperties-End -->

<!-- InternetZoneDownloadSignedActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDownloadSignedActiveX_1 |
| Friendly Name | Download signed ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneDownloadSignedActiveXControls-AdmxBacked-End -->

<!-- InternetZoneDownloadSignedActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneDownloadSignedActiveXControls-Examples-End -->

<!-- InternetZoneDownloadSignedActiveXControls-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-Begin -->
## InternetZoneDownloadUnsignedActiveXControls

<!-- InternetZoneDownloadUnsignedActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneDownloadUnsignedActiveXControls-Applicability-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneDownloadUnsignedActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneDownloadUnsignedActiveXControls
```
<!-- InternetZoneDownloadUnsignedActiveXControls-OmaUri-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether users may download unsigned ActiveX controls from the zone. Such code is potentially harmful, especially when coming from an untrusted zone.

- If you enable this policy setting, users can run unsigned controls without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to allow the unsigned control to run.

- If you disable this policy setting, users can't run unsigned controls.

- If you don't configure this policy setting, users can't run unsigned controls.
<!-- InternetZoneDownloadUnsignedActiveXControls-Description-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneDownloadUnsignedActiveXControls-Editable-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneDownloadUnsignedActiveXControls-DFProperties-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDownloadUnsignedActiveX_1 |
| Friendly Name | Download unsigned ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneDownloadUnsignedActiveXControls-AdmxBacked-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneDownloadUnsignedActiveXControls-Examples-End -->

<!-- InternetZoneDownloadUnsignedActiveXControls-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-Begin -->
## InternetZoneEnableCrossSiteScriptingFilter

<!-- InternetZoneEnableCrossSiteScriptingFilter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneEnableCrossSiteScriptingFilter-Applicability-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableCrossSiteScriptingFilter
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableCrossSiteScriptingFilter
```
<!-- InternetZoneEnableCrossSiteScriptingFilter-OmaUri-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether or not the Cross-Site Scripting (XSS) Filter will detect and prevent cross-site script injections into websites in this zone.

- If you enable this policy setting, the XSS Filter is turned on for sites in this zone, and the XSS Filter attempts to block cross-site script injections.

- If you disable this policy setting, the XSS Filter is turned off for sites in this zone, and Internet Explorer permits cross-site script injections.
<!-- InternetZoneEnableCrossSiteScriptingFilter-Description-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneEnableCrossSiteScriptingFilter-Editable-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneEnableCrossSiteScriptingFilter-DFProperties-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyTurnOnXSSFilter_Both_Internet |
| Friendly Name | Turn on Cross-Site Scripting Filter |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneEnableCrossSiteScriptingFilter-AdmxBacked-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneEnableCrossSiteScriptingFilter-Examples-End -->

<!-- InternetZoneEnableCrossSiteScriptingFilter-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Begin -->
## InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Applicability-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows
```
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-OmaUri-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set options for dragging content from one domain to a different domain when the source and destination are in different windows.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain when the source and destination are in different windows. Users can't change this setting.

If you enable this policy setting and click Disable, users can't drag content from one domain to a different domain when both the source and destination are in different windows. Users can't change this setting.

In Internet Explorer 10, if you disable this policy setting or don't configure it, users can't drag content from one domain to a different domain when the source and destination are in different windows. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy or don't configure it, users can drag content from one domain to a different domain when the source and destination are in different windows. Users can't change this setting.
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Description-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Editable-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-DFProperties-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDragDropAcrossDomainsAcrossWindows_Both_Internet |
| Friendly Name | Enable dragging of content from different domains across windows |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-AdmxBacked-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Examples-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Begin -->
## InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Applicability-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows
```
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-OmaUri-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set options for dragging content from one domain to a different domain when the source and destination are in the same window.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain when the source and destination are in the same window. Users can't change this setting.

If you enable this policy setting and click Disable, users can't drag content from one domain to a different domain when the source and destination are in the same window. Users can't change this setting in the Internet Options dialog.

In Internet Explorer 10, if you disable this policy setting or don't configure it, users can't drag content from one domain to a different domain when the source and destination are in the same window. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy setting or don't configure it, users can drag content from one domain to a different domain when the source and destination are in the same window. Users can't change this setting in the Internet Options dialog.
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Description-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Editable-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-DFProperties-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDragDropAcrossDomainsWithinWindow_Both_Internet |
| Friendly Name | Enable dragging of content from different domains within a window |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-AdmxBacked-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Examples-End -->

<!-- InternetZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-End -->

<!-- InternetZoneEnableMIMESniffing-Begin -->
## InternetZoneEnableMIMESniffing

<!-- InternetZoneEnableMIMESniffing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneEnableMIMESniffing-Applicability-End -->

<!-- InternetZoneEnableMIMESniffing-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableMIMESniffing
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableMIMESniffing
```
<!-- InternetZoneEnableMIMESniffing-OmaUri-End -->

<!-- InternetZoneEnableMIMESniffing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage MIME sniffing for file promotion from one type to another based on a MIME sniff. A MIME sniff is the recognition by Internet Explorer of the file type based on a bit signature.

- If you enable this policy setting, the MIME Sniffing Safety Feature won't apply in this zone. The security zone will run without the added layer of security provided by this feature.

- If you disable this policy setting, the actions that may be harmful can't run; this Internet Explorer security feature will be turned on in this zone, as dictated by the feature control setting for the process.

- If you don't configure this policy setting, the MIME Sniffing Safety Feature won't apply in this zone.
<!-- InternetZoneEnableMIMESniffing-Description-End -->

<!-- InternetZoneEnableMIMESniffing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneEnableMIMESniffing-Editable-End -->

<!-- InternetZoneEnableMIMESniffing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneEnableMIMESniffing-DFProperties-End -->

<!-- InternetZoneEnableMIMESniffing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyMimeSniffingURLaction_1 |
| Friendly Name | Enable MIME Sniffing |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneEnableMIMESniffing-AdmxBacked-End -->

<!-- InternetZoneEnableMIMESniffing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneEnableMIMESniffing-Examples-End -->

<!-- InternetZoneEnableMIMESniffing-End -->

<!-- InternetZoneEnableProtectedMode-Begin -->
## InternetZoneEnableProtectedMode

<!-- InternetZoneEnableProtectedMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneEnableProtectedMode-Applicability-End -->

<!-- InternetZoneEnableProtectedMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableProtectedMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneEnableProtectedMode
```
<!-- InternetZoneEnableProtectedMode-OmaUri-End -->

<!-- InternetZoneEnableProtectedMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on Protected Mode. Protected Mode helps protect Internet Explorer from exploited vulnerabilities by reducing the locations that Internet Explorer can write to in the registry and the file system.

- If you enable this policy setting, Protected Mode is turned on. The user can't turn off Protected Mode.

- If you disable this policy setting, Protected Mode is turned off. The user can't turn on Protected Mode.

- If you don't configure this policy setting, the user can turn on or turn off Protected Mode.
<!-- InternetZoneEnableProtectedMode-Description-End -->

<!-- InternetZoneEnableProtectedMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneEnableProtectedMode-Editable-End -->

<!-- InternetZoneEnableProtectedMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneEnableProtectedMode-DFProperties-End -->

<!-- InternetZoneEnableProtectedMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_TurnOnProtectedMode_1 |
| Friendly Name | Turn on Protected Mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneEnableProtectedMode-AdmxBacked-End -->

<!-- InternetZoneEnableProtectedMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneEnableProtectedMode-Examples-End -->

<!-- InternetZoneEnableProtectedMode-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Begin -->
## InternetZoneIncludeLocalPathWhenUploadingFilesToServer

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Applicability-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneIncludeLocalPathWhenUploadingFilesToServer
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneIncludeLocalPathWhenUploadingFilesToServer
```
<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-OmaUri-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not local path information is sent when the user is uploading a file via an HTML form. If the local path information is sent, some information may be unintentionally revealed to the server. For instance, files sent from the user's desktop may contain the user name as a part of the path.

- If you enable this policy setting, path information is sent when the user is uploading a file via an HTML form.

- If you disable this policy setting, path information is removed when the user is uploading a file via an HTML form.

- If you don't configure this policy setting, the user can choose whether path information is sent when he or she is uploading a file via an HTML form. By default, path information is sent.
<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Description-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Editable-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-DFProperties-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_LocalPathForUpload_1 |
| Friendly Name | Include local path when user is uploading files to a server |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-AdmxBacked-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-Examples-End -->

<!-- InternetZoneIncludeLocalPathWhenUploadingFilesToServer-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-Begin -->
## InternetZoneInitializeAndScriptActiveXControls

<!-- InternetZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneInitializeAndScriptActiveXControls
```
<!-- InternetZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- InternetZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_1 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- InternetZoneInitializeAndScriptActiveXControls-End -->

<!-- InternetZoneJavaPermissions-Begin -->
## InternetZoneJavaPermissions

<!-- InternetZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneJavaPermissions-Applicability-End -->

<!-- InternetZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneJavaPermissions
```
<!-- InternetZoneJavaPermissions-OmaUri-End -->

<!-- InternetZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, the permission is set to High Safety.
<!-- InternetZoneJavaPermissions-Description-End -->

<!-- InternetZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneJavaPermissions-Editable-End -->

<!-- InternetZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneJavaPermissions-DFProperties-End -->

<!-- InternetZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_1 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneJavaPermissions-AdmxBacked-End -->

<!-- InternetZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneJavaPermissions-Examples-End -->

<!-- InternetZoneJavaPermissions-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Begin -->
## InternetZoneLaunchingApplicationsAndFilesInIFRAME

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Applicability-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneLaunchingApplicationsAndFilesInIFRAME
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneLaunchingApplicationsAndFilesInIFRAME
```
<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-OmaUri-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether applications may be run and files may be downloaded from an IFRAME reference in the HTML of the pages in this zone.

- If you enable this policy setting, users can run applications and download files from IFRAMEs on the pages in this zone without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.

- If you disable this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.

- If you don't configure this policy setting, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.
<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Description-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Editable-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-DFProperties-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLaunchAppsAndFilesInIFRAME_1 |
| Friendly Name | Launching applications and files in an IFRAME |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-AdmxBacked-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-Examples-End -->

<!-- InternetZoneLaunchingApplicationsAndFilesInIFRAME-End -->

<!-- InternetZoneLogonOptions-Begin -->
## InternetZoneLogonOptions

<!-- InternetZoneLogonOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneLogonOptions-Applicability-End -->

<!-- InternetZoneLogonOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneLogonOptions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneLogonOptions
```
<!-- InternetZoneLogonOptions-OmaUri-End -->

<!-- InternetZoneLogonOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage settings for logon options.

- If you enable this policy setting, you can choose from the following logon options.

Anonymous logon to disable HTTP authentication and use the guest account only for the Common Internet File System (CIFS) protocol.

Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response isn't supported by the server, the user is queried to provide the user name and password.

- If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.

- If you don't configure this policy setting, logon is set to Automatic logon only in Intranet zone.
<!-- InternetZoneLogonOptions-Description-End -->

<!-- InternetZoneLogonOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneLogonOptions-Editable-End -->

<!-- InternetZoneLogonOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneLogonOptions-DFProperties-End -->

<!-- InternetZoneLogonOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLogon_1 |
| Friendly Name | Logon options |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneLogonOptions-AdmxBacked-End -->

<!-- InternetZoneLogonOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneLogonOptions-Examples-End -->

<!-- InternetZoneLogonOptions-End -->

<!-- InternetZoneNavigateWindowsAndFrames-Begin -->
## InternetZoneNavigateWindowsAndFrames

<!-- InternetZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- InternetZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- InternetZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneNavigateWindowsAndFrames
```
<!-- InternetZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- InternetZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- InternetZoneNavigateWindowsAndFrames-Description-End -->

<!-- InternetZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneNavigateWindowsAndFrames-Editable-End -->

<!-- InternetZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- InternetZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_1 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- InternetZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneNavigateWindowsAndFrames-Examples-End -->

<!-- InternetZoneNavigateWindowsAndFrames-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Begin -->
## InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Applicability-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode
```
<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-OmaUri-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that are signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute signed managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute signed managed components.

- If you disable this policy setting, Internet Explorer won't execute signed managed components.

- If you don't configure this policy setting, Internet Explorer will execute signed managed components.
<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Description-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Editable-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-DFProperties-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicySignedFrameworkComponentsURLaction_1 |
| Friendly Name | Run .NET Framework-reliant components signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-AdmxBacked-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Examples-End -->

<!-- InternetZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Begin -->
## InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Applicability-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles
```
<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-OmaUri-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the "Open File - Security Warning" message appears when the user tries to open executable files or other potentially unsafe files (from an intranet file share by using File Explorer, for example).

- If you enable this policy setting and set the drop-down box to Enable, these files open without a security warning. If you set the drop-down box to Prompt, a security warning appears before the files open.

- If you disable this policy setting, these files don't open.

- If you don't configure this policy setting, the user can configure how the computer handles these files. By default, these files are blocked in the Restricted zone, enabled in the Intranet and Local Computer zones, and set to prompt in the Internet and Trusted zones.
<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Description-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Editable-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-DFProperties-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_UnsafeFiles_1 |
| Friendly Name | Show security warning for potentially unsafe files |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-AdmxBacked-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-Examples-End -->

<!-- InternetZoneShowSecurityWarningForPotentiallyUnsafeFiles-End -->

<!-- InternetZoneUsePopupBlocker-Begin -->
## InternetZoneUsePopupBlocker

<!-- InternetZoneUsePopupBlocker-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InternetZoneUsePopupBlocker-Applicability-End -->

<!-- InternetZoneUsePopupBlocker-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneUsePopupBlocker
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/InternetZoneUsePopupBlocker
```
<!-- InternetZoneUsePopupBlocker-OmaUri-End -->

<!-- InternetZoneUsePopupBlocker-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether unwanted pop-up windows appear. Pop-up windows that are opened when the end user clicks a link aren't blocked.

- If you enable this policy setting, most unwanted pop-up windows are prevented from appearing.

- If you disable this policy setting, pop-up windows aren't prevented from appearing.

- If you don't configure this policy setting, most unwanted pop-up windows are prevented from appearing.
<!-- InternetZoneUsePopupBlocker-Description-End -->

<!-- InternetZoneUsePopupBlocker-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetZoneUsePopupBlocker-Editable-End -->

<!-- InternetZoneUsePopupBlocker-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetZoneUsePopupBlocker-DFProperties-End -->

<!-- InternetZoneUsePopupBlocker-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyBlockPopupWindows_1 |
| Friendly Name | Use Pop-up Blocker |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| ADMX File Name | inetres.admx |
<!-- InternetZoneUsePopupBlocker-AdmxBacked-End -->

<!-- InternetZoneUsePopupBlocker-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetZoneUsePopupBlocker-Examples-End -->

<!-- InternetZoneUsePopupBlocker-End -->

<!-- IntranetZoneAllowAccessToDataSources-Begin -->
## IntranetZoneAllowAccessToDataSources

<!-- IntranetZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowAccessToDataSources-Applicability-End -->

<!-- IntranetZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowAccessToDataSources
```
<!-- IntranetZoneAllowAccessToDataSources-OmaUri-End -->

<!-- IntranetZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- IntranetZoneAllowAccessToDataSources-Description-End -->

<!-- IntranetZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowAccessToDataSources-Editable-End -->

<!-- IntranetZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowAccessToDataSources-DFProperties-End -->

<!-- IntranetZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_3 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- IntranetZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowAccessToDataSources-Examples-End -->

<!-- IntranetZoneAllowAccessToDataSources-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## IntranetZoneAllowAutomaticPromptingForActiveXControls

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls
```
<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.
<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_3 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- IntranetZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## IntranetZoneAllowAutomaticPromptingForFileDownloads

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads
```
<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, users will receive a file download dialog for automatic download attempts.
<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_3 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- IntranetZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- IntranetZoneAllowFontDownloads-Begin -->
## IntranetZoneAllowFontDownloads

<!-- IntranetZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowFontDownloads-Applicability-End -->

<!-- IntranetZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowFontDownloads
```
<!-- IntranetZoneAllowFontDownloads-OmaUri-End -->

<!-- IntranetZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- IntranetZoneAllowFontDownloads-Description-End -->

<!-- IntranetZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowFontDownloads-Editable-End -->

<!-- IntranetZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowFontDownloads-DFProperties-End -->

<!-- IntranetZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_3 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowFontDownloads-AdmxBacked-End -->

<!-- IntranetZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowFontDownloads-Examples-End -->

<!-- IntranetZoneAllowFontDownloads-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-Begin -->
## IntranetZoneAllowLessPrivilegedSites

<!-- IntranetZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowLessPrivilegedSites
```
<!-- IntranetZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone.
<!-- IntranetZoneAllowLessPrivilegedSites-Description-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowLessPrivilegedSites-Editable-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_3 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowLessPrivilegedSites-Examples-End -->

<!-- IntranetZoneAllowLessPrivilegedSites-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-Begin -->
## IntranetZoneAllowNETFrameworkReliantComponents

<!-- IntranetZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents
```
<!-- IntranetZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer will execute unsigned managed components.
<!-- IntranetZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_3 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- IntranetZoneAllowNETFrameworkReliantComponents-End -->

<!-- IntranetZoneAllowScriptlets-Begin -->
## IntranetZoneAllowScriptlets

<!-- IntranetZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowScriptlets-Applicability-End -->

<!-- IntranetZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowScriptlets
```
<!-- IntranetZoneAllowScriptlets-OmaUri-End -->

<!-- IntranetZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- IntranetZoneAllowScriptlets-Description-End -->

<!-- IntranetZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowScriptlets-Editable-End -->

<!-- IntranetZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowScriptlets-DFProperties-End -->

<!-- IntranetZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_3 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowScriptlets-AdmxBacked-End -->

<!-- IntranetZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowScriptlets-Examples-End -->

<!-- IntranetZoneAllowScriptlets-End -->

<!-- IntranetZoneAllowSmartScreenIE-Begin -->
## IntranetZoneAllowSmartScreenIE

<!-- IntranetZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowSmartScreenIE-Applicability-End -->

<!-- IntranetZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowSmartScreenIE
```
<!-- IntranetZoneAllowSmartScreenIE-OmaUri-End -->

<!-- IntranetZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- IntranetZoneAllowSmartScreenIE-Description-End -->

<!-- IntranetZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowSmartScreenIE-Editable-End -->

<!-- IntranetZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowSmartScreenIE-DFProperties-End -->

<!-- IntranetZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_3 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- IntranetZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowSmartScreenIE-Examples-End -->

<!-- IntranetZoneAllowSmartScreenIE-End -->

<!-- IntranetZoneAllowUserDataPersistence-Begin -->
## IntranetZoneAllowUserDataPersistence

<!-- IntranetZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneAllowUserDataPersistence-Applicability-End -->

<!-- IntranetZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneAllowUserDataPersistence
```
<!-- IntranetZoneAllowUserDataPersistence-OmaUri-End -->

<!-- IntranetZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- IntranetZoneAllowUserDataPersistence-Description-End -->

<!-- IntranetZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneAllowUserDataPersistence-Editable-End -->

<!-- IntranetZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneAllowUserDataPersistence-DFProperties-End -->

<!-- IntranetZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_3 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- IntranetZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneAllowUserDataPersistence-Examples-End -->

<!-- IntranetZoneAllowUserDataPersistence-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Begin -->
## IntranetZoneDoNotRunAntimalwareAgainstActiveXControls

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneDoNotRunAntimalwareAgainstActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneDoNotRunAntimalwareAgainstActiveXControls
```
<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

- If you enable this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you disable this policy setting, Internet Explorer always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you don't configure this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.
<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Description-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAntiMalwareCheckingOfActiveXControls_3 |
| Friendly Name | Don't run antimalware programs against ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-End -->

<!-- IntranetZoneDoNotRunAntimalwareAgainstActiveXControls-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-Begin -->
## IntranetZoneInitializeAndScriptActiveXControls

<!-- IntranetZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls
```
<!-- IntranetZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- IntranetZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_3 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- IntranetZoneInitializeAndScriptActiveXControls-End -->

<!-- IntranetZoneJavaPermissions-Begin -->
## IntranetZoneJavaPermissions

<!-- IntranetZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- IntranetZoneJavaPermissions-Applicability-End -->

<!-- IntranetZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneJavaPermissions
```
<!-- IntranetZoneJavaPermissions-OmaUri-End -->

<!-- IntranetZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, the permission is set to Medium Safety.
<!-- IntranetZoneJavaPermissions-Description-End -->

<!-- IntranetZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneJavaPermissions-Editable-End -->

<!-- IntranetZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneJavaPermissions-DFProperties-End -->

<!-- IntranetZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_3 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneJavaPermissions-AdmxBacked-End -->

<!-- IntranetZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneJavaPermissions-Examples-End -->

<!-- IntranetZoneJavaPermissions-End -->

<!-- IntranetZoneLogonOptions-Begin -->
## IntranetZoneLogonOptions

<!-- IntranetZoneLogonOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.2227] and later <br> ✅ [10.0.25398.643] and later <br> ✅ [10.0.25965] and later <br> ✅ Windows 10, version 2004 [10.0.19041.3758] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2792] and later |
<!-- IntranetZoneLogonOptions-Applicability-End -->

<!-- IntranetZoneLogonOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneLogonOptions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneLogonOptions
```
<!-- IntranetZoneLogonOptions-OmaUri-End -->

<!-- IntranetZoneLogonOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage settings for logon options.

- If you enable this policy setting, you can choose from the following logon options.

Anonymous logon to disable HTTP authentication and use the guest account only for the Common Internet File System (CIFS) protocol.

Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response isn't supported by the server, the user is queried to provide the user name and password.

- If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.

- If you don't configure this policy setting, logon is set to Automatic logon only in Intranet zone.
<!-- IntranetZoneLogonOptions-Description-End -->

<!-- IntranetZoneLogonOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneLogonOptions-Editable-End -->

<!-- IntranetZoneLogonOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneLogonOptions-DFProperties-End -->

<!-- IntranetZoneLogonOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLogon_3 |
| Friendly Name | Logon options |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneLogonOptions-AdmxBacked-End -->

<!-- IntranetZoneLogonOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneLogonOptions-Examples-End -->

<!-- IntranetZoneLogonOptions-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-Begin -->
## IntranetZoneNavigateWindowsAndFrames

<!-- IntranetZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntranetZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/IntranetZoneNavigateWindowsAndFrames
```
<!-- IntranetZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- IntranetZoneNavigateWindowsAndFrames-Description-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntranetZoneNavigateWindowsAndFrames-Editable-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntranetZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_3 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| ADMX File Name | inetres.admx |
<!-- IntranetZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntranetZoneNavigateWindowsAndFrames-Examples-End -->

<!-- IntranetZoneNavigateWindowsAndFrames-End -->

<!-- JScriptReplacement-Begin -->
## JScriptReplacement

<!-- JScriptReplacement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- JScriptReplacement-Applicability-End -->

<!-- JScriptReplacement-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/JScriptReplacement
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/JScriptReplacement
```
<!-- JScriptReplacement-OmaUri-End -->

<!-- JScriptReplacement-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether JScript or JScript9Legacy is loaded for MSHTML/WebOC/MSXML/Cscript based invocations.

- If you enable this policy setting, JScript9Legacy will be loaded in situations where JScript is instantiated.

- If you disable this policy, then JScript will be utilized.

- If this policy is left unconfigured, then MSHTML will use JScript9Legacy and MSXML/Cscript will use JScript.
<!-- JScriptReplacement-Description-End -->

<!-- JScriptReplacement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- JScriptReplacement-Editable-End -->

<!-- JScriptReplacement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- JScriptReplacement-DFProperties-End -->

<!-- JScriptReplacement-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | JScriptReplacement |
| Friendly Name | Replace JScript by loading JScript9Legacy in place of JScript via MSHTML/WebOC. |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main |
| Registry Value Name | JScriptReplacement |
| ADMX File Name | inetres.admx |
<!-- JScriptReplacement-AdmxBacked-End -->

<!-- JScriptReplacement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- JScriptReplacement-Examples-End -->

<!-- JScriptReplacement-End -->

<!-- KeepIntranetSitesInInternetExplorer-Begin -->
## KeepIntranetSitesInInternetExplorer

<!-- KeepIntranetSitesInInternetExplorer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1350] and later <br> ✅ Windows 10, version 2004 [10.0.19041.789] and later |
<!-- KeepIntranetSitesInInternetExplorer-Applicability-End -->

<!-- KeepIntranetSitesInInternetExplorer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/KeepIntranetSitesInInternetExplorer
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/KeepIntranetSitesInInternetExplorer
```
<!-- KeepIntranetSitesInInternetExplorer-OmaUri-End -->

<!-- KeepIntranetSitesInInternetExplorer-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents intranet sites from being opened in any browser except Internet Explorer. But note that If the 'Send all sites not included in the Enterprise Mode Site List to Microsoft Edge' ('RestrictIE') policy isn't enabled, this policy has no effect.

- If you enable this policy, all intranet sites are opened in Internet Explorer 11. The only exceptions are sites listed in your Enterprise Mode Site List.

- If you disable or don't configure this policy, all intranet sites are automatically opened in Microsoft Edge.

We strongly recommend keeping this policy in sync with the 'Send all intranet sites to Internet Explorer' ('SendIntranetToInternetExplorer') policy. Additionally, it's best to enable this policy only if your intranet sites have known compatibility problems with Microsoft Edge.

Related policies:

- Send all intranet sites to Internet Explorer ('SendIntranetToInternetExplorer')
- Send all sites not included in the Enterprise Mode Site List to Microsoft Edge ('RestrictIE')

For more info about how to use this policy together with other related policies to create the optimal configuration for your organization, see< https://go.microsoft.com/fwlink/?linkid=2094210>.
<!-- KeepIntranetSitesInInternetExplorer-Description-End -->

<!-- KeepIntranetSitesInInternetExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- KeepIntranetSitesInInternetExplorer-Editable-End -->

<!-- KeepIntranetSitesInInternetExplorer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- KeepIntranetSitesInInternetExplorer-DFProperties-End -->

<!-- KeepIntranetSitesInInternetExplorer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | KeepIntranetSitesInInternetExplorer |
| Friendly Name | Keep all intranet sites in Internet Explorer |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| Registry Value Name | KeepIntranetSitesInInternetExplorer |
| ADMX File Name | inetres.admx |
<!-- KeepIntranetSitesInInternetExplorer-AdmxBacked-End -->

<!-- KeepIntranetSitesInInternetExplorer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
 <policy name="KeepIntranetSitesInInternetExplorer" class="Both" displayName="$(string.KeepIntranetSitesInInternetExplorer)" explainText="$(string.IE_ExplainKeepIntranetSitesInInternetExplorer)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" valueName="KeepIntranetSitesInInternetExplorer">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11" />

      <enabledValue>

        <decimal value="1" />

      </enabledValue>

      <disabledValue>

        <decimal value="0" />

      </disabledValue>

    </policy>
```
<!-- KeepIntranetSitesInInternetExplorer-Examples-End -->

<!-- KeepIntranetSitesInInternetExplorer-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-Begin -->
## LocalMachineZoneAllowAccessToDataSources

<!-- LocalMachineZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowAccessToDataSources-Applicability-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowAccessToDataSources
```
<!-- LocalMachineZoneAllowAccessToDataSources-OmaUri-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- LocalMachineZoneAllowAccessToDataSources-Description-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowAccessToDataSources-Editable-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowAccessToDataSources-DFProperties-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_9 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowAccessToDataSources-Examples-End -->

<!-- LocalMachineZoneAllowAccessToDataSources-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## LocalMachineZoneAllowAutomaticPromptingForActiveXControls

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls
```
<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.
<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_9 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## LocalMachineZoneAllowAutomaticPromptingForFileDownloads

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads
```
<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, users will receive a file download dialog for automatic download attempts.
<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_9 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- LocalMachineZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- LocalMachineZoneAllowFontDownloads-Begin -->
## LocalMachineZoneAllowFontDownloads

<!-- LocalMachineZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowFontDownloads-Applicability-End -->

<!-- LocalMachineZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowFontDownloads
```
<!-- LocalMachineZoneAllowFontDownloads-OmaUri-End -->

<!-- LocalMachineZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- LocalMachineZoneAllowFontDownloads-Description-End -->

<!-- LocalMachineZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowFontDownloads-Editable-End -->

<!-- LocalMachineZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowFontDownloads-DFProperties-End -->

<!-- LocalMachineZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_9 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowFontDownloads-AdmxBacked-End -->

<!-- LocalMachineZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowFontDownloads-Examples-End -->

<!-- LocalMachineZoneAllowFontDownloads-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-Begin -->
## LocalMachineZoneAllowLessPrivilegedSites

<!-- LocalMachineZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites
```
<!-- LocalMachineZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
<!-- LocalMachineZoneAllowLessPrivilegedSites-Description-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowLessPrivilegedSites-Editable-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_9 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowLessPrivilegedSites-Examples-End -->

<!-- LocalMachineZoneAllowLessPrivilegedSites-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Begin -->
## LocalMachineZoneAllowNETFrameworkReliantComponents

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents
```
<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer won't execute unsigned managed components.
<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_9 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- LocalMachineZoneAllowNETFrameworkReliantComponents-End -->

<!-- LocalMachineZoneAllowScriptlets-Begin -->
## LocalMachineZoneAllowScriptlets

<!-- LocalMachineZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowScriptlets-Applicability-End -->

<!-- LocalMachineZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowScriptlets
```
<!-- LocalMachineZoneAllowScriptlets-OmaUri-End -->

<!-- LocalMachineZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- LocalMachineZoneAllowScriptlets-Description-End -->

<!-- LocalMachineZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowScriptlets-Editable-End -->

<!-- LocalMachineZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowScriptlets-DFProperties-End -->

<!-- LocalMachineZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_9 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowScriptlets-AdmxBacked-End -->

<!-- LocalMachineZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowScriptlets-Examples-End -->

<!-- LocalMachineZoneAllowScriptlets-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-Begin -->
## LocalMachineZoneAllowSmartScreenIE

<!-- LocalMachineZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowSmartScreenIE-Applicability-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowSmartScreenIE
```
<!-- LocalMachineZoneAllowSmartScreenIE-OmaUri-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- LocalMachineZoneAllowSmartScreenIE-Description-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowSmartScreenIE-Editable-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowSmartScreenIE-DFProperties-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_9 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowSmartScreenIE-Examples-End -->

<!-- LocalMachineZoneAllowSmartScreenIE-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-Begin -->
## LocalMachineZoneAllowUserDataPersistence

<!-- LocalMachineZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneAllowUserDataPersistence-Applicability-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneAllowUserDataPersistence
```
<!-- LocalMachineZoneAllowUserDataPersistence-OmaUri-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- LocalMachineZoneAllowUserDataPersistence-Description-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowUserDataPersistence-Editable-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneAllowUserDataPersistence-DFProperties-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_9 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneAllowUserDataPersistence-Examples-End -->

<!-- LocalMachineZoneAllowUserDataPersistence-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Begin -->
## LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls
```
<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

- If you enable this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you disable this policy setting, Internet Explorer always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you don't configure this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.
<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Description-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAntiMalwareCheckingOfActiveXControls_9 |
| Friendly Name | Don't run antimalware programs against ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-End -->

<!-- LocalMachineZoneDoNotRunAntimalwareAgainstActiveXControls-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Begin -->
## LocalMachineZoneInitializeAndScriptActiveXControls

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls
```
<!-- LocalMachineZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.
<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_9 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- LocalMachineZoneInitializeAndScriptActiveXControls-End -->

<!-- LocalMachineZoneJavaPermissions-Begin -->
## LocalMachineZoneJavaPermissions

<!-- LocalMachineZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LocalMachineZoneJavaPermissions-Applicability-End -->

<!-- LocalMachineZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneJavaPermissions
```
<!-- LocalMachineZoneJavaPermissions-OmaUri-End -->

<!-- LocalMachineZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, the permission is set to Medium Safety.
<!-- LocalMachineZoneJavaPermissions-Description-End -->

<!-- LocalMachineZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneJavaPermissions-Editable-End -->

<!-- LocalMachineZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneJavaPermissions-DFProperties-End -->

<!-- LocalMachineZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_9 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneJavaPermissions-AdmxBacked-End -->

<!-- LocalMachineZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneJavaPermissions-Examples-End -->

<!-- LocalMachineZoneJavaPermissions-End -->

<!-- LocalMachineZoneLogonOptions-Begin -->
## LocalMachineZoneLogonOptions

<!-- LocalMachineZoneLogonOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.2227] and later <br> ✅ [10.0.25398.643] and later <br> ✅ [10.0.25965] and later <br> ✅ Windows 10, version 2004 [10.0.19041.3758] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2792] and later |
<!-- LocalMachineZoneLogonOptions-Applicability-End -->

<!-- LocalMachineZoneLogonOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneLogonOptions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneLogonOptions
```
<!-- LocalMachineZoneLogonOptions-OmaUri-End -->

<!-- LocalMachineZoneLogonOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage settings for logon options.

- If you enable this policy setting, you can choose from the following logon options.

Anonymous logon to disable HTTP authentication and use the guest account only for the Common Internet File System (CIFS) protocol.

Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response isn't supported by the server, the user is queried to provide the user name and password.

- If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.

- If you don't configure this policy setting, logon is set to Automatic logon with current username and password.
<!-- LocalMachineZoneLogonOptions-Description-End -->

<!-- LocalMachineZoneLogonOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneLogonOptions-Editable-End -->

<!-- LocalMachineZoneLogonOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneLogonOptions-DFProperties-End -->

<!-- LocalMachineZoneLogonOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLogon_9 |
| Friendly Name | Logon options |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneLogonOptions-AdmxBacked-End -->

<!-- LocalMachineZoneLogonOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneLogonOptions-Examples-End -->

<!-- LocalMachineZoneLogonOptions-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-Begin -->
## LocalMachineZoneNavigateWindowsAndFrames

<!-- LocalMachineZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LocalMachineZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames
```
<!-- LocalMachineZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- LocalMachineZoneNavigateWindowsAndFrames-Description-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalMachineZoneNavigateWindowsAndFrames-Editable-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalMachineZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_9 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LocalMachineZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalMachineZoneNavigateWindowsAndFrames-Examples-End -->

<!-- LocalMachineZoneNavigateWindowsAndFrames-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-Begin -->
## LockedDownInternetZoneAllowAccessToDataSources

<!-- LockedDownInternetZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowAccessToDataSources-Applicability-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources
```
<!-- LockedDownInternetZoneAllowAccessToDataSources-OmaUri-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- LockedDownInternetZoneAllowAccessToDataSources-Description-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowAccessToDataSources-Editable-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowAccessToDataSources-DFProperties-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_2 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowAccessToDataSources-Examples-End -->

<!-- LockedDownInternetZoneAllowAccessToDataSources-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls
```
<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_2 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads
```
<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, file downloads that aren't user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_2 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-Begin -->
## LockedDownInternetZoneAllowFontDownloads

<!-- LockedDownInternetZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowFontDownloads-Applicability-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowFontDownloads
```
<!-- LockedDownInternetZoneAllowFontDownloads-OmaUri-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- LockedDownInternetZoneAllowFontDownloads-Description-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowFontDownloads-Editable-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowFontDownloads-DFProperties-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_2 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowFontDownloads-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowFontDownloads-Examples-End -->

<!-- LockedDownInternetZoneAllowFontDownloads-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Begin -->
## LockedDownInternetZoneAllowLessPrivilegedSites

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites
```
<!-- LockedDownInternetZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Description-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Editable-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_2 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowLessPrivilegedSites-Examples-End -->

<!-- LockedDownInternetZoneAllowLessPrivilegedSites-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Begin -->
## LockedDownInternetZoneAllowNETFrameworkReliantComponents

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents
```
<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer won't execute unsigned managed components.
<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_2 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- LockedDownInternetZoneAllowNETFrameworkReliantComponents-End -->

<!-- LockedDownInternetZoneAllowScriptlets-Begin -->
## LockedDownInternetZoneAllowScriptlets

<!-- LockedDownInternetZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowScriptlets-Applicability-End -->

<!-- LockedDownInternetZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowScriptlets
```
<!-- LockedDownInternetZoneAllowScriptlets-OmaUri-End -->

<!-- LockedDownInternetZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- LockedDownInternetZoneAllowScriptlets-Description-End -->

<!-- LockedDownInternetZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowScriptlets-Editable-End -->

<!-- LockedDownInternetZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowScriptlets-DFProperties-End -->

<!-- LockedDownInternetZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_2 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowScriptlets-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowScriptlets-Examples-End -->

<!-- LockedDownInternetZoneAllowScriptlets-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-Begin -->
## LockedDownInternetZoneAllowSmartScreenIE

<!-- LockedDownInternetZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowSmartScreenIE-Applicability-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE
```
<!-- LockedDownInternetZoneAllowSmartScreenIE-OmaUri-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- LockedDownInternetZoneAllowSmartScreenIE-Description-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowSmartScreenIE-Editable-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowSmartScreenIE-DFProperties-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_2 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowSmartScreenIE-Examples-End -->

<!-- LockedDownInternetZoneAllowSmartScreenIE-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-Begin -->
## LockedDownInternetZoneAllowUserDataPersistence

<!-- LockedDownInternetZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneAllowUserDataPersistence-Applicability-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence
```
<!-- LockedDownInternetZoneAllowUserDataPersistence-OmaUri-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- LockedDownInternetZoneAllowUserDataPersistence-Description-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowUserDataPersistence-Editable-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneAllowUserDataPersistence-DFProperties-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_2 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneAllowUserDataPersistence-Examples-End -->

<!-- LockedDownInternetZoneAllowUserDataPersistence-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Begin -->
## LockedDownInternetZoneInitializeAndScriptActiveXControls

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls
```
<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_2 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- LockedDownInternetZoneInitializeAndScriptActiveXControls-End -->

<!-- LockedDownInternetZoneJavaPermissions-Begin -->
## LockedDownInternetZoneJavaPermissions

<!-- LockedDownInternetZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LockedDownInternetZoneJavaPermissions-Applicability-End -->

<!-- LockedDownInternetZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneJavaPermissions
```
<!-- LockedDownInternetZoneJavaPermissions-OmaUri-End -->

<!-- LockedDownInternetZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, Java applets are disabled.
<!-- LockedDownInternetZoneJavaPermissions-Description-End -->

<!-- LockedDownInternetZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneJavaPermissions-Editable-End -->

<!-- LockedDownInternetZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneJavaPermissions-DFProperties-End -->

<!-- LockedDownInternetZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_2 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneJavaPermissions-AdmxBacked-End -->

<!-- LockedDownInternetZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneJavaPermissions-Examples-End -->

<!-- LockedDownInternetZoneJavaPermissions-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Begin -->
## LockedDownInternetZoneNavigateWindowsAndFrames

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames
```
<!-- LockedDownInternetZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Description-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Editable-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownInternetZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_2 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| ADMX File Name | inetres.admx |
<!-- LockedDownInternetZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownInternetZoneNavigateWindowsAndFrames-Examples-End -->

<!-- LockedDownInternetZoneNavigateWindowsAndFrames-End -->

<!-- LockedDownIntranetJavaPermissions-Begin -->
## LockedDownIntranetJavaPermissions

<!-- LockedDownIntranetJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- LockedDownIntranetJavaPermissions-Applicability-End -->

<!-- LockedDownIntranetJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetJavaPermissions
```
<!-- LockedDownIntranetJavaPermissions-OmaUri-End -->

<!-- LockedDownIntranetJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, Java applets are disabled.
<!-- LockedDownIntranetJavaPermissions-Description-End -->

<!-- LockedDownIntranetJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetJavaPermissions-Editable-End -->

<!-- LockedDownIntranetJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetJavaPermissions-DFProperties-End -->

<!-- LockedDownIntranetJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_4 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetJavaPermissions-AdmxBacked-End -->

<!-- LockedDownIntranetJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetJavaPermissions-Examples-End -->

<!-- LockedDownIntranetJavaPermissions-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-Begin -->
## LockedDownIntranetZoneAllowAccessToDataSources

<!-- LockedDownIntranetZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowAccessToDataSources-Applicability-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources
```
<!-- LockedDownIntranetZoneAllowAccessToDataSources-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- LockedDownIntranetZoneAllowAccessToDataSources-Description-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowAccessToDataSources-Editable-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowAccessToDataSources-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_4 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowAccessToDataSources-Examples-End -->

<!-- LockedDownIntranetZoneAllowAccessToDataSources-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls
```
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_4 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads
```
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, file downloads that aren't user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_4 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-Begin -->
## LockedDownIntranetZoneAllowFontDownloads

<!-- LockedDownIntranetZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowFontDownloads-Applicability-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowFontDownloads
```
<!-- LockedDownIntranetZoneAllowFontDownloads-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- LockedDownIntranetZoneAllowFontDownloads-Description-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowFontDownloads-Editable-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowFontDownloads-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_4 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowFontDownloads-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowFontDownloads-Examples-End -->

<!-- LockedDownIntranetZoneAllowFontDownloads-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Begin -->
## LockedDownIntranetZoneAllowLessPrivilegedSites

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites
```
<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Description-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Editable-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_4 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-Examples-End -->

<!-- LockedDownIntranetZoneAllowLessPrivilegedSites-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Begin -->
## LockedDownIntranetZoneAllowNETFrameworkReliantComponents

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents
```
<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer won't execute unsigned managed components.
<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_4 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- LockedDownIntranetZoneAllowNETFrameworkReliantComponents-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-Begin -->
## LockedDownIntranetZoneAllowScriptlets

<!-- LockedDownIntranetZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowScriptlets-Applicability-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowScriptlets
```
<!-- LockedDownIntranetZoneAllowScriptlets-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- LockedDownIntranetZoneAllowScriptlets-Description-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowScriptlets-Editable-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowScriptlets-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_4 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowScriptlets-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowScriptlets-Examples-End -->

<!-- LockedDownIntranetZoneAllowScriptlets-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-Begin -->
## LockedDownIntranetZoneAllowSmartScreenIE

<!-- LockedDownIntranetZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowSmartScreenIE-Applicability-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE
```
<!-- LockedDownIntranetZoneAllowSmartScreenIE-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- LockedDownIntranetZoneAllowSmartScreenIE-Description-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowSmartScreenIE-Editable-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowSmartScreenIE-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_4 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowSmartScreenIE-Examples-End -->

<!-- LockedDownIntranetZoneAllowSmartScreenIE-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-Begin -->
## LockedDownIntranetZoneAllowUserDataPersistence

<!-- LockedDownIntranetZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneAllowUserDataPersistence-Applicability-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence
```
<!-- LockedDownIntranetZoneAllowUserDataPersistence-OmaUri-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- LockedDownIntranetZoneAllowUserDataPersistence-Description-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowUserDataPersistence-Editable-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneAllowUserDataPersistence-DFProperties-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_4 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneAllowUserDataPersistence-Examples-End -->

<!-- LockedDownIntranetZoneAllowUserDataPersistence-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Begin -->
## LockedDownIntranetZoneInitializeAndScriptActiveXControls

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls
```
<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_4 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- LockedDownIntranetZoneInitializeAndScriptActiveXControls-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Begin -->
## LockedDownIntranetZoneNavigateWindowsAndFrames

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames
```
<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Description-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Editable-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_4 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| ADMX File Name | inetres.admx |
<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-Examples-End -->

<!-- LockedDownIntranetZoneNavigateWindowsAndFrames-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Begin -->
## LockedDownLocalMachineZoneAllowAccessToDataSources

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources
```
<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Description-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_10 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowAccessToDataSources-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls
```
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_10 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads
```
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, file downloads that aren't user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_10 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-Begin -->
## LockedDownLocalMachineZoneAllowFontDownloads

<!-- LockedDownLocalMachineZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowFontDownloads-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads
```
<!-- LockedDownLocalMachineZoneAllowFontDownloads-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- LockedDownLocalMachineZoneAllowFontDownloads-Description-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowFontDownloads-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowFontDownloads-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_10 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowFontDownloads-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowFontDownloads-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowFontDownloads-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Begin -->
## LockedDownLocalMachineZoneAllowLessPrivilegedSites

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites
```
<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Description-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_10 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowLessPrivilegedSites-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Begin -->
## LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents
```
<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer won't execute unsigned managed components.
<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_10 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-Begin -->
## LockedDownLocalMachineZoneAllowScriptlets

<!-- LockedDownLocalMachineZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowScriptlets-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets
```
<!-- LockedDownLocalMachineZoneAllowScriptlets-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- LockedDownLocalMachineZoneAllowScriptlets-Description-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowScriptlets-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowScriptlets-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_10 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowScriptlets-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowScriptlets-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowScriptlets-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Begin -->
## LockedDownLocalMachineZoneAllowSmartScreenIE

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE
```
<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Description-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_10 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowSmartScreenIE-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Begin -->
## LockedDownLocalMachineZoneAllowUserDataPersistence

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Applicability-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence
```
<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-OmaUri-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Description-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Editable-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-DFProperties-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_10 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-Examples-End -->

<!-- LockedDownLocalMachineZoneAllowUserDataPersistence-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Begin -->
## LockedDownLocalMachineZoneInitializeAndScriptActiveXControls

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls
```
<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_10 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- LockedDownLocalMachineZoneInitializeAndScriptActiveXControls-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-Begin -->
## LockedDownLocalMachineZoneJavaPermissions

<!-- LockedDownLocalMachineZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LockedDownLocalMachineZoneJavaPermissions-Applicability-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneJavaPermissions
```
<!-- LockedDownLocalMachineZoneJavaPermissions-OmaUri-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, Java applets are disabled.
<!-- LockedDownLocalMachineZoneJavaPermissions-Description-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneJavaPermissions-Editable-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneJavaPermissions-DFProperties-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_10 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneJavaPermissions-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneJavaPermissions-Examples-End -->

<!-- LockedDownLocalMachineZoneJavaPermissions-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Begin -->
## LockedDownLocalMachineZoneNavigateWindowsAndFrames

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames
```
<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Description-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Editable-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_10 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| ADMX File Name | inetres.admx |
<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-Examples-End -->

<!-- LockedDownLocalMachineZoneNavigateWindowsAndFrames-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Begin -->
## LockedDownRestrictedSitesZoneAllowAccessToDataSources

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources
```
<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_8 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowAccessToDataSources-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls
```
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_8 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads
```
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, file downloads that aren't user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_8 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Begin -->
## LockedDownRestrictedSitesZoneAllowFontDownloads

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads
```
<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, users are queried whether to allow HTML fonts to download.
<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_8 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowFontDownloads-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Begin -->
## LockedDownRestrictedSitesZoneAllowLessPrivilegedSites

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites
```
<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_8 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowLessPrivilegedSites-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Begin -->
## LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents
```
<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer won't execute unsigned managed components.
<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_8 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Begin -->
## LockedDownRestrictedSitesZoneAllowScriptlets

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets
```
<!-- LockedDownRestrictedSitesZoneAllowScriptlets-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowScriptlets-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_8 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowScriptlets-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowScriptlets-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowScriptlets-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Begin -->
## LockedDownRestrictedSitesZoneAllowSmartScreenIE

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE
```
<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_8 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowSmartScreenIE-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Begin -->
## LockedDownRestrictedSitesZoneAllowUserDataPersistence

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence
```
<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Description-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Editable-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_8 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-Examples-End -->

<!-- LockedDownRestrictedSitesZoneAllowUserDataPersistence-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Begin -->
## LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls
```
<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_8 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-Begin -->
## LockedDownRestrictedSitesZoneJavaPermissions

<!-- LockedDownRestrictedSitesZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LockedDownRestrictedSitesZoneJavaPermissions-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneJavaPermissions
```
<!-- LockedDownRestrictedSitesZoneJavaPermissions-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, Java applets are disabled.
<!-- LockedDownRestrictedSitesZoneJavaPermissions-Description-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneJavaPermissions-Editable-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneJavaPermissions-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_8 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneJavaPermissions-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneJavaPermissions-Examples-End -->

<!-- LockedDownRestrictedSitesZoneJavaPermissions-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Begin -->
## LockedDownRestrictedSitesZoneNavigateWindowsAndFrames

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames
```
<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open additional windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open other windows and frames from other domains or access applications from different domains.

- If you don't configure this policy setting, users can't open other windows and frames from different domains or access applications from different domains.
<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Description-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Editable-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_8 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| ADMX File Name | inetres.admx |
<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-Examples-End -->

<!-- LockedDownRestrictedSitesZoneNavigateWindowsAndFrames-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Begin -->
## LockedDownTrustedSitesZoneAllowAccessToDataSources

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources
```
<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_6 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowAccessToDataSources-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls
```
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_6 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads
```
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, file downloads that aren't user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_6 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Begin -->
## LockedDownTrustedSitesZoneAllowFontDownloads

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads
```
<!-- LockedDownTrustedSitesZoneAllowFontDownloads-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowFontDownloads-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_6 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowFontDownloads-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowFontDownloads-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowFontDownloads-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Begin -->
## LockedDownTrustedSitesZoneAllowLessPrivilegedSites

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites
```
<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_6 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowLessPrivilegedSites-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Begin -->
## LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents
```
<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer won't execute unsigned managed components.
<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_6 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-Begin -->
## LockedDownTrustedSitesZoneAllowScriptlets

<!-- LockedDownTrustedSitesZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowScriptlets-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets
```
<!-- LockedDownTrustedSitesZoneAllowScriptlets-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- LockedDownTrustedSitesZoneAllowScriptlets-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowScriptlets-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowScriptlets-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_6 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowScriptlets-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowScriptlets-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowScriptlets-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Begin -->
## LockedDownTrustedSitesZoneAllowSmartScreenIE

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE
```
<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_6 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowSmartScreenIE-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Begin -->
## LockedDownTrustedSitesZoneAllowUserDataPersistence

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Applicability-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence
```
<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Description-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Editable-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_6 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-Examples-End -->

<!-- LockedDownTrustedSitesZoneAllowUserDataPersistence-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Begin -->
## LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls
```
<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_6 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-Begin -->
## LockedDownTrustedSitesZoneJavaPermissions

<!-- LockedDownTrustedSitesZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LockedDownTrustedSitesZoneJavaPermissions-Applicability-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneJavaPermissions
```
<!-- LockedDownTrustedSitesZoneJavaPermissions-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, Java applets are disabled.
<!-- LockedDownTrustedSitesZoneJavaPermissions-Description-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneJavaPermissions-Editable-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneJavaPermissions-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_6 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneJavaPermissions-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneJavaPermissions-Examples-End -->

<!-- LockedDownTrustedSitesZoneJavaPermissions-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Begin -->
## LockedDownTrustedSitesZoneNavigateWindowsAndFrames

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames
```
<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Description-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Editable-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_6 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| ADMX File Name | inetres.admx |
<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-Examples-End -->

<!-- LockedDownTrustedSitesZoneNavigateWindowsAndFrames-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Begin -->
## MimeSniffingSafetyFeatureInternetExplorerProcesses

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Applicability-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/MimeSniffingSafetyFeatureInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/MimeSniffingSafetyFeatureInternetExplorerProcesses
```
<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-OmaUri-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Internet Explorer MIME sniffing will prevent promotion of a file of one type to a more dangerous file type.

- If you enable this policy setting, MIME sniffing will never promote a file of one type to a more dangerous file type.

- If you disable this policy setting, Internet Explorer processes will allow a MIME sniff promoting a file of one type to a more dangerous file type.

- If you don't configure this policy setting, MIME sniffing will never promote a file of one type to a more dangerous file type.
<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Description-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Editable-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-DFProperties-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_6 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Mime Sniffing Safety Feature |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING |
| ADMX File Name | inetres.admx |
<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-AdmxBacked-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-Examples-End -->

<!-- MimeSniffingSafetyFeatureInternetExplorerProcesses-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Begin -->
## MKProtocolSecurityRestrictionInternetExplorerProcesses

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Applicability-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/MKProtocolSecurityRestrictionInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/MKProtocolSecurityRestrictionInternetExplorerProcesses
```
<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-OmaUri-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
The MK Protocol Security Restriction policy setting reduces attack surface area by preventing the MK protocol. Resources hosted on the MK protocol will fail.

- If you enable this policy setting, the MK Protocol is prevented for File Explorer and Internet Explorer, and resources hosted on the MK protocol will fail.

- If you disable this policy setting, applications can use the MK protocol API. Resources hosted on the MK protocol will work for the File Explorer and Internet Explorer processes.

- If you don't configure this policy setting, the MK Protocol is prevented for File Explorer and Internet Explorer, and resources hosted on the MK protocol will fail.
<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Description-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Editable-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-DFProperties-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_3 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > MK Protocol Security Restriction |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL |
| ADMX File Name | inetres.admx |
<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-AdmxBacked-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-Examples-End -->

<!-- MKProtocolSecurityRestrictionInternetExplorerProcesses-End -->

<!-- NewTabDefaultPage-Begin -->
## NewTabDefaultPage

<!-- NewTabDefaultPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- NewTabDefaultPage-Applicability-End -->

<!-- NewTabDefaultPage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/NewTabDefaultPage
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/NewTabDefaultPage
```
<!-- NewTabDefaultPage-OmaUri-End -->

<!-- NewTabDefaultPage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify what's displayed when the user opens a new tab.

- If you enable this policy setting, you can choose which page to display when the user opens a new tab: blank page (about:blank), the first home page, the new tab page or the new tab page with my news feed.

- If you disable or don't configure this policy setting, the user can select his or her preference for this behavior.
<!-- NewTabDefaultPage-Description-End -->

<!-- NewTabDefaultPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NewTabDefaultPage-Editable-End -->

<!-- NewTabDefaultPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NewTabDefaultPage-DFProperties-End -->

<!-- NewTabDefaultPage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NewTabAction |
| Friendly Name | Specify default behavior for a new tab |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\TabbedBrowsing |
| ADMX File Name | inetres.admx |
<!-- NewTabDefaultPage-AdmxBacked-End -->

<!-- NewTabDefaultPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NewTabDefaultPage-Examples-End -->

<!-- NewTabDefaultPage-End -->

<!-- NotificationBarInternetExplorerProcesses-Begin -->
## NotificationBarInternetExplorerProcesses

<!-- NotificationBarInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- NotificationBarInternetExplorerProcesses-Applicability-End -->

<!-- NotificationBarInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/NotificationBarInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/NotificationBarInternetExplorerProcesses
```
<!-- NotificationBarInternetExplorerProcesses-OmaUri-End -->

<!-- NotificationBarInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Notification bar is displayed for Internet Explorer processes when file or code installs are restricted. By default, the Notification bar is displayed for Internet Explorer processes.

- If you enable this policy setting, the Notification bar will be displayed for Internet Explorer Processes.

- If you disable this policy setting, the Notification bar won't be displayed for Internet Explorer processes.

- If you don't configure this policy setting, the Notification bar will be displayed for Internet Explorer Processes.
<!-- NotificationBarInternetExplorerProcesses-Description-End -->

<!-- NotificationBarInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NotificationBarInternetExplorerProcesses-Editable-End -->

<!-- NotificationBarInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NotificationBarInternetExplorerProcesses-DFProperties-End -->

<!-- NotificationBarInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_10 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Notification bar |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND |
| ADMX File Name | inetres.admx |
<!-- NotificationBarInternetExplorerProcesses-AdmxBacked-End -->

<!-- NotificationBarInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NotificationBarInternetExplorerProcesses-Examples-End -->

<!-- NotificationBarInternetExplorerProcesses-End -->

<!-- PreventManagingSmartScreenFilter-Begin -->
## PreventManagingSmartScreenFilter

<!-- PreventManagingSmartScreenFilter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- PreventManagingSmartScreenFilter-Applicability-End -->

<!-- PreventManagingSmartScreenFilter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/PreventManagingSmartScreenFilter
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/PreventManagingSmartScreenFilter
```
<!-- PreventManagingSmartScreenFilter-OmaUri-End -->

<!-- PreventManagingSmartScreenFilter-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from managing SmartScreen Filter, which warns the user if the website being visited is known for fraudulent attempts to gather personal information through "phishing," or is known to host malware.

- If you enable this policy setting, the user isn't prompted to turn on SmartScreen Filter. All website addresses that aren't on the filter's allow list are sent automatically to Microsoft without prompting the user.

- If you disable or don't configure this policy setting, the user is prompted to decide whether to turn on SmartScreen Filter during the first-run experience.
<!-- PreventManagingSmartScreenFilter-Description-End -->

<!-- PreventManagingSmartScreenFilter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventManagingSmartScreenFilter-Editable-End -->

<!-- PreventManagingSmartScreenFilter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventManagingSmartScreenFilter-DFProperties-End -->

<!-- PreventManagingSmartScreenFilter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Disable_Managing_Safety_Filter_IE9 |
| Friendly Name | Prevent managing SmartScreen Filter |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\PhishingFilter |
| ADMX File Name | inetres.admx |
<!-- PreventManagingSmartScreenFilter-AdmxBacked-End -->

<!-- PreventManagingSmartScreenFilter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventManagingSmartScreenFilter-Examples-End -->

<!-- PreventManagingSmartScreenFilter-End -->

<!-- PreventPerUserInstallationOfActiveXControls-Begin -->
## PreventPerUserInstallationOfActiveXControls

<!-- PreventPerUserInstallationOfActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- PreventPerUserInstallationOfActiveXControls-Applicability-End -->

<!-- PreventPerUserInstallationOfActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/PreventPerUserInstallationOfActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/PreventPerUserInstallationOfActiveXControls
```
<!-- PreventPerUserInstallationOfActiveXControls-OmaUri-End -->

<!-- PreventPerUserInstallationOfActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent the installation of ActiveX controls on a per-user basis.

- If you enable this policy setting, ActiveX controls can't be installed on a per-user basis.

- If you disable or don't configure this policy setting, ActiveX controls can be installed on a per-user basis.
<!-- PreventPerUserInstallationOfActiveXControls-Description-End -->

<!-- PreventPerUserInstallationOfActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventPerUserInstallationOfActiveXControls-Editable-End -->

<!-- PreventPerUserInstallationOfActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventPerUserInstallationOfActiveXControls-DFProperties-End -->

<!-- PreventPerUserInstallationOfActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePerUserActiveXInstall |
| Friendly Name | Prevent per-user installation of ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Security\ActiveX |
| Registry Value Name | BlockNonAdminActiveXInstall |
| ADMX File Name | inetres.admx |
<!-- PreventPerUserInstallationOfActiveXControls-AdmxBacked-End -->

<!-- PreventPerUserInstallationOfActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventPerUserInstallationOfActiveXControls-Examples-End -->

<!-- PreventPerUserInstallationOfActiveXControls-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Begin -->
## ProtectionFromZoneElevationInternetExplorerProcesses

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Applicability-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/ProtectionFromZoneElevationInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/ProtectionFromZoneElevationInternetExplorerProcesses
```
<!-- ProtectionFromZoneElevationInternetExplorerProcesses-OmaUri-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
Internet Explorer places restrictions on each Web page it opens. The restrictions are dependent upon the location of the Web page (Internet, Intranet, Local Machine zone, etc.). Web pages on the local computer have the fewest security restrictions and reside in the Local Machine zone, making the Local Machine security zone a prime target for malicious users. Zone Elevation also disables JavaScript navigation if there is no security context.

- If you enable this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.

- If you disable this policy setting, no zone receives such protection for Internet Explorer processes.

- If you don't configure this policy setting, any zone can be protected from zone elevation by Internet Explorer processes.
<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Description-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Editable-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProtectionFromZoneElevationInternetExplorerProcesses-DFProperties-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_9 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Protection From Zone Elevation |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION |
| ADMX File Name | inetres.admx |
<!-- ProtectionFromZoneElevationInternetExplorerProcesses-AdmxBacked-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProtectionFromZoneElevationInternetExplorerProcesses-Examples-End -->

<!-- ProtectionFromZoneElevationInternetExplorerProcesses-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Begin -->
## RemoveRunThisTimeButtonForOutdatedActiveXControls

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Applicability-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RemoveRunThisTimeButtonForOutdatedActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RemoveRunThisTimeButtonForOutdatedActiveXControls
```
<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-OmaUri-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to stop users from seeing the "Run this time" button and from running specific outdated ActiveX controls in Internet Explorer.

- If you enable this policy setting, users won't see the "Run this time" button on the warning message that appears when Internet Explorer blocks an outdated ActiveX control.

- If you disable or don't configure this policy setting, users will see the "Run this time" button on the warning message that appears when Internet Explorer blocks an outdated ActiveX control. Clicking this button lets the user run the outdated ActiveX control once.

For more information, see "Outdated ActiveX Controls" in the Internet Explorer TechNet library.
<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Description-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Editable-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-DFProperties-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | VerMgmtDisableRunThisTime |
| Friendly Name | Remove "Run this time" button for outdated ActiveX controls in Internet Explorer  |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Add-on Management |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Ext |
| Registry Value Name | RunThisTimeEnabled |
| ADMX File Name | inetres.admx |
<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-AdmxBacked-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-Examples-End -->

<!-- RemoveRunThisTimeButtonForOutdatedActiveXControls-End -->

<!-- ResetZoomForDialogInIEMode-Begin -->
## ResetZoomForDialogInIEMode

<!-- ResetZoomForDialogInIEMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.261] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1832] and later <br> ✅ Windows 10, version 2004 [10.0.19041.1266] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.282] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ResetZoomForDialogInIEMode-Applicability-End -->

<!-- ResetZoomForDialogInIEMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/ResetZoomForDialogInIEMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/ResetZoomForDialogInIEMode
```
<!-- ResetZoomForDialogInIEMode-OmaUri-End -->

<!-- ResetZoomForDialogInIEMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets admins reset zoom to default for HTML dialogs in Internet Explorer mode.

If you enable this policy, the zoom of an HTML dialog in Internet Explorer mode won't get propagated from its parent page.

If you disable, or don't configure this policy, the zoom of an HTML dialog in Internet Explorer mode will be set based on the zoom of it's parent page.

For more information, see <https://go.microsoft.com/fwlink/?linkid=2102115>
<!-- ResetZoomForDialogInIEMode-Description-End -->

<!-- ResetZoomForDialogInIEMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ResetZoomForDialogInIEMode-Editable-End -->

<!-- ResetZoomForDialogInIEMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ResetZoomForDialogInIEMode-DFProperties-End -->

<!-- ResetZoomForDialogInIEMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ResetZoomForDialogInIEMode |
| Friendly Name | Reset zoom to default for HTML dialogs in Internet Explorer mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| Registry Value Name | ResetZoomForDialogInIEMode |
| ADMX File Name | inetres.admx |
<!-- ResetZoomForDialogInIEMode-AdmxBacked-End -->

<!-- ResetZoomForDialogInIEMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ResetZoomForDialogInIEMode-Examples-End -->

<!-- ResetZoomForDialogInIEMode-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-Begin -->
## RestrictActiveXInstallInternetExplorerProcesses

<!-- RestrictActiveXInstallInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictActiveXInstallInternetExplorerProcesses-Applicability-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictActiveXInstallInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictActiveXInstallInternetExplorerProcesses
```
<!-- RestrictActiveXInstallInternetExplorerProcesses-OmaUri-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables blocking of ActiveX control installation prompts for Internet Explorer processes.

- If you enable this policy setting, prompting for ActiveX control installations will be blocked for Internet Explorer processes.

- If you disable this policy setting, prompting for ActiveX control installations won't be blocked for Internet Explorer processes.

- If you don't configure this policy setting, the user's preference will be used to determine whether to block ActiveX control installations for Internet Explorer processes.
<!-- RestrictActiveXInstallInternetExplorerProcesses-Description-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictActiveXInstallInternetExplorerProcesses-Editable-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictActiveXInstallInternetExplorerProcesses-DFProperties-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_11 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Restrict ActiveX Install |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL |
| ADMX File Name | inetres.admx |
<!-- RestrictActiveXInstallInternetExplorerProcesses-AdmxBacked-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictActiveXInstallInternetExplorerProcesses-Examples-End -->

<!-- RestrictActiveXInstallInternetExplorerProcesses-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-Begin -->
## RestrictedSitesZoneAllowAccessToDataSources

<!-- RestrictedSitesZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowAccessToDataSources-Applicability-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources
```
<!-- RestrictedSitesZoneAllowAccessToDataSources-OmaUri-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- RestrictedSitesZoneAllowAccessToDataSources-Description-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowAccessToDataSources-Editable-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowAccessToDataSources-DFProperties-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_7 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowAccessToDataSources-Examples-End -->

<!-- RestrictedSitesZoneAllowAccessToDataSources-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-Begin -->
## RestrictedSitesZoneAllowActiveScripting

<!-- RestrictedSitesZoneAllowActiveScripting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowActiveScripting-Applicability-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowActiveScripting
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowActiveScripting
```
<!-- RestrictedSitesZoneAllowActiveScripting-OmaUri-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether script code on pages in the zone is run.

- If you enable this policy setting, script code on pages in the zone can run automatically. If you select Prompt in the drop-down box, users are queried to choose whether to allow script code on pages in the zone to run.

- If you disable this policy setting, script code on pages in the zone is prevented from running.

- If you don't configure this policy setting, script code on pages in the zone is prevented from running.
<!-- RestrictedSitesZoneAllowActiveScripting-Description-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowActiveScripting-Editable-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowActiveScripting-DFProperties-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyActiveScripting_7 |
| Friendly Name | Allow active scripting |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowActiveScripting-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowActiveScripting-Examples-End -->

<!-- RestrictedSitesZoneAllowActiveScripting-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls
```
<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_7 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads
```
<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, file downloads that aren't user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_7 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Begin -->
## RestrictedSitesZoneAllowBinaryAndScriptBehaviors

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Applicability-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowBinaryAndScriptBehaviors
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowBinaryAndScriptBehaviors
```
<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-OmaUri-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage dynamic binary and script behaviors: components that encapsulate specific functionality for HTML elements to which they were attached.

- If you enable this policy setting, binary and script behaviors are available. If you select Administrator approved in the drop-down box, only behaviors listed in the Admin-approved Behaviors under Binary Behaviors Security Restriction policy are available.

- If you disable this policy setting, binary and script behaviors aren't available unless applications have implemented a custom security manager.

- If you don't configure this policy setting, binary and script behaviors aren't available unless applications have implemented a custom security manager.
<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Description-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Editable-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-DFProperties-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyBinaryBehaviors_7 |
| Friendly Name | Allow binary and script behaviors |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-Examples-End -->

<!-- RestrictedSitesZoneAllowBinaryAndScriptBehaviors-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Begin -->
## RestrictedSitesZoneAllowCopyPasteViaScript

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Applicability-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowCopyPasteViaScript
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowCopyPasteViaScript
```
<!-- RestrictedSitesZoneAllowCopyPasteViaScript-OmaUri-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether scripts can perform a clipboard operation (for example, cut, copy, and paste) in a specified region.

- If you enable this policy setting, a script can perform a clipboard operation.

If you select Prompt in the drop-down box, users are queried as to whether to perform clipboard operations.

- If you disable this policy setting, a script can't perform a clipboard operation.

- If you don't configure this policy setting, a script can't perform a clipboard operation.
<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Description-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Editable-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowCopyPasteViaScript-DFProperties-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAllowPasteViaScript_7 |
| Friendly Name | Allow cut, copy or paste operations from the clipboard via script |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowCopyPasteViaScript-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowCopyPasteViaScript-Examples-End -->

<!-- RestrictedSitesZoneAllowCopyPasteViaScript-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Begin -->
## RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Applicability-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles
```
<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-OmaUri-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether users can drag files or copy and paste files from a source within the zone.

- If you enable this policy setting, users can drag files or copy and paste files from this zone automatically. If you select Prompt in the drop-down box, users are queried to choose whether to drag or copy files from this zone.

- If you disable this policy setting, users are prevented from dragging files or copying and pasting files from this zone.

- If you don't configure this policy setting, users are queried to choose whether to drag or copy files from this zone.
<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Description-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Editable-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-DFProperties-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDropOrPasteFiles_7 |
| Friendly Name | Allow drag and drop or copy and paste files |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-Examples-End -->

<!-- RestrictedSitesZoneAllowDragAndDropCopyAndPasteFiles-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-Begin -->
## RestrictedSitesZoneAllowFileDownloads

<!-- RestrictedSitesZoneAllowFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowFileDownloads-Applicability-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowFileDownloads
```
<!-- RestrictedSitesZoneAllowFileDownloads-OmaUri-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether file downloads are permitted from the zone. This option is determined by the zone of the page with the link causing the download, not the zone from which the file is delivered.

- If you enable this policy setting, files can be downloaded from the zone.

- If you disable this policy setting, files are prevented from being downloaded from the zone.

- If you don't configure this policy setting, files are prevented from being downloaded from the zone.
<!-- RestrictedSitesZoneAllowFileDownloads-Description-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowFileDownloads-Editable-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowFileDownloads-DFProperties-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFileDownload_7 |
| Friendly Name | Allow file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowFileDownloads-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowFileDownloads-Examples-End -->

<!-- RestrictedSitesZoneAllowFileDownloads-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-Begin -->
## RestrictedSitesZoneAllowFontDownloads

<!-- RestrictedSitesZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowFontDownloads-Applicability-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowFontDownloads
```
<!-- RestrictedSitesZoneAllowFontDownloads-OmaUri-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, users are queried whether to allow HTML fonts to download.
<!-- RestrictedSitesZoneAllowFontDownloads-Description-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowFontDownloads-Editable-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowFontDownloads-DFProperties-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_7 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowFontDownloads-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowFontDownloads-Examples-End -->

<!-- RestrictedSitesZoneAllowFontDownloads-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Begin -->
## RestrictedSitesZoneAllowLessPrivilegedSites

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites
```
<!-- RestrictedSitesZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Description-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Editable-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_7 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowLessPrivilegedSites-Examples-End -->

<!-- RestrictedSitesZoneAllowLessPrivilegedSites-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Begin -->
## RestrictedSitesZoneAllowLoadingOfXAMLFiles

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Applicability-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowLoadingOfXAMLFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowLoadingOfXAMLFiles
```
<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-OmaUri-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the loading of Extensible Application Markup Language (XAML) files. XAML is an XML-based declarative markup language commonly used for creating rich user interfaces and graphics that take advantage of the Windows Presentation Foundation.

- If you enable this policy setting and set the drop-down box to Enable, XAML files are automatically loaded inside Internet Explorer. The user can't change this behavior. If you set the drop-down box to Prompt, the user is prompted for loading XAML files.

- If you disable this policy setting, XAML files aren't loaded inside Internet Explorer. The user can't change this behavior.

- If you don't configure this policy setting, the user can decide whether to load XAML files inside Internet Explorer.
<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Description-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Editable-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-DFProperties-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_XAML_7 |
| Friendly Name | Allow loading of XAML files |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-Examples-End -->

<!-- RestrictedSitesZoneAllowLoadingOfXAMLFiles-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-Begin -->
## RestrictedSitesZoneAllowMETAREFRESH

<!-- RestrictedSitesZoneAllowMETAREFRESH-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowMETAREFRESH-Applicability-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowMETAREFRESH
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowMETAREFRESH
```
<!-- RestrictedSitesZoneAllowMETAREFRESH-OmaUri-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user's browser can be redirected to another Web page if the author of the Web page uses the Meta Refresh setting (tag) to redirect browsers to another Web page.

- If you enable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting can be redirected to another Web page.

- If you disable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting can't be redirected to another Web page.

- If you don't configure this policy setting, a user's browser that loads a page containing an active Meta Refresh setting can't be redirected to another Web page.
<!-- RestrictedSitesZoneAllowMETAREFRESH-Description-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowMETAREFRESH-Editable-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowMETAREFRESH-DFProperties-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAllowMETAREFRESH_7 |
| Friendly Name | Allow META REFRESH |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowMETAREFRESH-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowMETAREFRESH-Examples-End -->

<!-- RestrictedSitesZoneAllowMETAREFRESH-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Begin -->
## RestrictedSitesZoneAllowNETFrameworkReliantComponents

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents
```
<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer won't execute unsigned managed components.
<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_7 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- RestrictedSitesZoneAllowNETFrameworkReliantComponents-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Begin -->
## RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Applicability-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls
```
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-OmaUri-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the user is prompted to allow ActiveX controls to run on websites other than the website that installed the ActiveX control.

- If you enable this policy setting, the user is prompted before ActiveX controls can run from websites in this zone. The user can choose to allow the control to run from the current site or from all sites.

- If you disable this policy setting, the user doesn't see the per-site ActiveX prompt, and ActiveX controls can run from all sites in this zone.
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Description-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Editable-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-DFProperties-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyOnlyAllowApprovedDomainsToUseActiveXWithoutPrompt_Both_Restricted |
| Friendly Name | Allow only approved domains to use ActiveX controls without prompt |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-Examples-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseActiveXControls-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Begin -->
## RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Applicability-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl
```
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-OmaUri-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the user is allowed to run the TDC ActiveX control on websites.

- If you enable this policy setting, the TDC ActiveX control won't run from websites in this zone.

- If you disable this policy setting, the TDC Active X control will run from all sites in this zone.
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Description-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Editable-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-DFProperties-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAllowTDCControl_Both_Restricted |
| Friendly Name | Allow only approved domains to use the TDC ActiveX control |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-Examples-End -->

<!-- RestrictedSitesZoneAllowOnlyApprovedDomainsToUseTDCActiveXControl-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Begin -->
## RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Applicability-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls
```
<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-OmaUri-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether a page can control embedded WebBrowser controls via script.

- If you enable this policy setting, script access to the WebBrowser control is allowed.

- If you disable this policy setting, script access to the WebBrowser control isn't allowed.

- If you don't configure this policy setting, the user can enable or disable script access to the WebBrowser control. By default, script access to the WebBrowser control is allowed only in the Local Machine and Intranet zones.
<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Description-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Editable-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-DFProperties-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_WebBrowserControl_7 |
| Friendly Name | Allow scripting of Internet Explorer WebBrowser controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-Examples-End -->

<!-- RestrictedSitesZoneAllowScriptingOfInternetExplorerWebBrowserControls-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Begin -->
## RestrictedSitesZoneAllowScriptInitiatedWindows

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Applicability-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowScriptInitiatedWindows
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowScriptInitiatedWindows
```
<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-OmaUri-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage restrictions on script-initiated pop-up windows and windows that include the title and status bars.

- If you enable this policy setting, Windows Restrictions security won't apply in this zone. The security zone runs without the added layer of security provided by this feature.

- If you disable this policy setting, the possible harmful actions contained in script-initiated pop-up windows and windows that include the title and status bars can't be run. This Internet Explorer security feature will be on in this zone as dictated by the Scripted Windows Security Restrictions feature control setting for the process.

- If you don't configure this policy setting, the possible harmful actions contained in script-initiated pop-up windows and windows that include the title and status bars can't be run. This Internet Explorer security feature will be on in this zone as dictated by the Scripted Windows Security Restrictions feature control setting for the process.
<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Description-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Editable-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-DFProperties-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyWindowsRestrictionsURLaction_7 |
| Friendly Name | Allow script-initiated windows without size or position constraints |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-Examples-End -->

<!-- RestrictedSitesZoneAllowScriptInitiatedWindows-End -->

<!-- RestrictedSitesZoneAllowScriptlets-Begin -->
## RestrictedSitesZoneAllowScriptlets

<!-- RestrictedSitesZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowScriptlets-Applicability-End -->

<!-- RestrictedSitesZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowScriptlets
```
<!-- RestrictedSitesZoneAllowScriptlets-OmaUri-End -->

<!-- RestrictedSitesZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- RestrictedSitesZoneAllowScriptlets-Description-End -->

<!-- RestrictedSitesZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowScriptlets-Editable-End -->

<!-- RestrictedSitesZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowScriptlets-DFProperties-End -->

<!-- RestrictedSitesZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_7 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowScriptlets-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowScriptlets-Examples-End -->

<!-- RestrictedSitesZoneAllowScriptlets-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-Begin -->
## RestrictedSitesZoneAllowSmartScreenIE

<!-- RestrictedSitesZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowSmartScreenIE-Applicability-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE
```
<!-- RestrictedSitesZoneAllowSmartScreenIE-OmaUri-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- RestrictedSitesZoneAllowSmartScreenIE-Description-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowSmartScreenIE-Editable-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowSmartScreenIE-DFProperties-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_7 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowSmartScreenIE-Examples-End -->

<!-- RestrictedSitesZoneAllowSmartScreenIE-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Begin -->
## RestrictedSitesZoneAllowUpdatesToStatusBarViaScript

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Applicability-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowUpdatesToStatusBarViaScript
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowUpdatesToStatusBarViaScript
```
<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-OmaUri-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether script is allowed to update the status bar within the zone.

- If you enable this policy setting, script is allowed to update the status bar.

- If you disable or don't configure this policy setting, script isn't allowed to update the status bar.
<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Description-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Editable-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-DFProperties-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_ScriptStatusBar_7 |
| Friendly Name | Allow updates to status bar via script |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-Examples-End -->

<!-- RestrictedSitesZoneAllowUpdatesToStatusBarViaScript-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-Begin -->
## RestrictedSitesZoneAllowUserDataPersistence

<!-- RestrictedSitesZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneAllowUserDataPersistence-Applicability-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence
```
<!-- RestrictedSitesZoneAllowUserDataPersistence-OmaUri-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- RestrictedSitesZoneAllowUserDataPersistence-Description-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowUserDataPersistence-Editable-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowUserDataPersistence-DFProperties-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_7 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowUserDataPersistence-Examples-End -->

<!-- RestrictedSitesZoneAllowUserDataPersistence-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Begin -->
## RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Applicability-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer
```
<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-OmaUri-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether VBScript can be run on pages from the specified zone in Internet Explorer.

If you selected Enable in the drop-down box, VBScript can run without user intervention.

If you selected Prompt in the drop-down box, users are asked to choose whether to allow VBScript to run.

If you selected Disable in the drop-down box, VBScript is prevented from running.

If you don't configure or disable this policy setting, VBScript is prevented from running.
<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Description-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Editable-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-DFProperties-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAllowVBScript_7 |
| Friendly Name | Allow VBScript to run in Internet Explorer |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-AdmxBacked-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-Examples-End -->

<!-- RestrictedSitesZoneAllowVBScriptToRunInInternetExplorer-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Begin -->
## RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls
```
<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

- If you enable this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you disable this policy setting, Internet Explorer always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you don't configure this policy setting, Internet Explorer always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.
<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Description-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAntiMalwareCheckingOfActiveXControls_7 |
| Friendly Name | Don't run antimalware programs against ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-End -->

<!-- RestrictedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Begin -->
## RestrictedSitesZoneDownloadSignedActiveXControls

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Applicability-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneDownloadSignedActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneDownloadSignedActiveXControls
```
<!-- RestrictedSitesZoneDownloadSignedActiveXControls-OmaUri-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether users may download signed ActiveX controls from a page in the zone.

- If you enable this policy, users can download signed controls without user intervention. If you select Prompt in the drop-down box, users are queried whether to download controls signed by publishers who aren't trusted. Code signed by trusted publishers is silently downloaded.

- If you disable the policy setting, signed controls can't be downloaded.

- If you don't configure this policy setting, signed controls can't be downloaded.
<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Description-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Editable-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneDownloadSignedActiveXControls-DFProperties-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDownloadSignedActiveX_7 |
| Friendly Name | Download signed ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneDownloadSignedActiveXControls-AdmxBacked-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneDownloadSignedActiveXControls-Examples-End -->

<!-- RestrictedSitesZoneDownloadSignedActiveXControls-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Begin -->
## RestrictedSitesZoneDownloadUnsignedActiveXControls

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Applicability-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneDownloadUnsignedActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneDownloadUnsignedActiveXControls
```
<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-OmaUri-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether users may download unsigned ActiveX controls from the zone. Such code is potentially harmful, especially when coming from an untrusted zone.

- If you enable this policy setting, users can run unsigned controls without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to allow the unsigned control to run.

- If you disable this policy setting, users can't run unsigned controls.

- If you don't configure this policy setting, users can't run unsigned controls.
<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Description-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Editable-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-DFProperties-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDownloadUnsignedActiveX_7 |
| Friendly Name | Download unsigned ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-AdmxBacked-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-Examples-End -->

<!-- RestrictedSitesZoneDownloadUnsignedActiveXControls-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Begin -->
## RestrictedSitesZoneEnableCrossSiteScriptingFilter

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Applicability-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableCrossSiteScriptingFilter
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableCrossSiteScriptingFilter
```
<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-OmaUri-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether or not the Cross-Site Scripting (XSS) Filter will detect and prevent cross-site script injections into websites in this zone.

- If you enable this policy setting, the XSS Filter is turned on for sites in this zone, and the XSS Filter attempts to block cross-site script injections.

- If you disable this policy setting, the XSS Filter is turned off for sites in this zone, and Internet Explorer permits cross-site script injections.
<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Description-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Editable-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-DFProperties-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyTurnOnXSSFilter_Both_Restricted |
| Friendly Name | Turn on Cross-Site Scripting Filter |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-AdmxBacked-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-Examples-End -->

<!-- RestrictedSitesZoneEnableCrossSiteScriptingFilter-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Begin -->
## RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Applicability-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows
```
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-OmaUri-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set options for dragging content from one domain to a different domain when the source and destination are in different windows.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain when the source and destination are in different windows. Users can't change this setting.

If you enable this policy setting and click Disable, users can't drag content from one domain to a different domain when both the source and destination are in different windows. Users can't change this setting.

In Internet Explorer 10, if you disable this policy setting or don't configure it, users can't drag content from one domain to a different domain when the source and destination are in different windows. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy or don't configure it, users can drag content from one domain to a different domain when the source and destination are in different windows. Users can't change this setting.
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Description-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Editable-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-DFProperties-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDragDropAcrossDomainsAcrossWindows_Both_Restricted |
| Friendly Name | Enable dragging of content from different domains across windows |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-AdmxBacked-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-Examples-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsAcrossWindows-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Begin -->
## RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Applicability-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows
```
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-OmaUri-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set options for dragging content from one domain to a different domain when the source and destination are in the same window.

If you enable this policy setting and click Enable, users can drag content from one domain to a different domain when the source and destination are in the same window. Users can't change this setting.

If you enable this policy setting and click Disable, users can't drag content from one domain to a different domain when the source and destination are in the same window. Users can't change this setting in the Internet Options dialog.

In Internet Explorer 10, if you disable this policy setting or don't configure it, users can't drag content from one domain to a different domain when the source and destination are in the same window. Users can change this setting in the Internet Options dialog.

In Internet Explorer 9 and earlier versions, if you disable this policy setting or don't configure it, users can drag content from one domain to a different domain when the source and destination are in the same window. Users can't change this setting in the Internet Options dialog.
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Description-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Editable-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-DFProperties-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyDragDropAcrossDomainsWithinWindow_Both_Restricted |
| Friendly Name | Enable dragging of content from different domains within a window |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-AdmxBacked-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-Examples-End -->

<!-- RestrictedSitesZoneEnableDraggingOfContentFromDifferentDomainsWithinWindows-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-Begin -->
## RestrictedSitesZoneEnableMIMESniffing

<!-- RestrictedSitesZoneEnableMIMESniffing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneEnableMIMESniffing-Applicability-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableMIMESniffing
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneEnableMIMESniffing
```
<!-- RestrictedSitesZoneEnableMIMESniffing-OmaUri-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage MIME sniffing for file promotion from one type to another based on a MIME sniff. A MIME sniff is the recognition by Internet Explorer of the file type based on a bit signature.

- If you enable this policy setting, the MIME Sniffing Safety Feature won't apply in this zone. The security zone will run without the added layer of security provided by this feature.

- If you disable this policy setting, the actions that may be harmful can't run; this Internet Explorer security feature will be turned on in this zone, as dictated by the feature control setting for the process.

- If you don't configure this policy setting, the actions that may be harmful can't run; this Internet Explorer security feature will be turned on in this zone, as dictated by the feature control setting for the process.
<!-- RestrictedSitesZoneEnableMIMESniffing-Description-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableMIMESniffing-Editable-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneEnableMIMESniffing-DFProperties-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyMimeSniffingURLaction_7 |
| Friendly Name | Enable MIME Sniffing |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneEnableMIMESniffing-AdmxBacked-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneEnableMIMESniffing-Examples-End -->

<!-- RestrictedSitesZoneEnableMIMESniffing-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Begin -->
## RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Applicability-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer
```
<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-OmaUri-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not local path information is sent when the user is uploading a file via an HTML form. If the local path information is sent, some information may be unintentionally revealed to the server. For instance, files sent from the user's desktop may contain the user name as a part of the path.

- If you enable this policy setting, path information is sent when the user is uploading a file via an HTML form.

- If you disable this policy setting, path information is removed when the user is uploading a file via an HTML form.

- If you don't configure this policy setting, the user can choose whether path information is sent when he or she is uploading a file via an HTML form. By default, path information is sent.
<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Description-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Editable-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-DFProperties-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_LocalPathForUpload_7 |
| Friendly Name | Include local path when user is uploading files to a server |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-AdmxBacked-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-Examples-End -->

<!-- RestrictedSitesZoneIncludeLocalPathWhenUploadingFilesToServer-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Begin -->
## RestrictedSitesZoneInitializeAndScriptActiveXControls

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls
```
<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.
<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_7 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- RestrictedSitesZoneInitializeAndScriptActiveXControls-End -->

<!-- RestrictedSitesZoneJavaPermissions-Begin -->
## RestrictedSitesZoneJavaPermissions

<!-- RestrictedSitesZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneJavaPermissions-Applicability-End -->

<!-- RestrictedSitesZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneJavaPermissions
```
<!-- RestrictedSitesZoneJavaPermissions-OmaUri-End -->

<!-- RestrictedSitesZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, Java applets are disabled.
<!-- RestrictedSitesZoneJavaPermissions-Description-End -->

<!-- RestrictedSitesZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneJavaPermissions-Editable-End -->

<!-- RestrictedSitesZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneJavaPermissions-DFProperties-End -->

<!-- RestrictedSitesZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_7 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneJavaPermissions-AdmxBacked-End -->

<!-- RestrictedSitesZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneJavaPermissions-Examples-End -->

<!-- RestrictedSitesZoneJavaPermissions-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Begin -->
## RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Applicability-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME
```
<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-OmaUri-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether applications may be run and files may be downloaded from an IFRAME reference in the HTML of the pages in this zone.

- If you enable this policy setting, users can run applications and download files from IFRAMEs on the pages in this zone without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to run applications and download files from IFRAMEs on the pages in this zone.

- If you disable this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.

- If you don't configure this policy setting, users are prevented from running applications and downloading files from IFRAMEs on the pages in this zone.
<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Description-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Editable-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-DFProperties-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLaunchAppsAndFilesInIFRAME_7 |
| Friendly Name | Launching applications and files in an IFRAME |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-AdmxBacked-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-Examples-End -->

<!-- RestrictedSitesZoneLaunchingApplicationsAndFilesInIFRAME-End -->

<!-- RestrictedSitesZoneLogonOptions-Begin -->
## RestrictedSitesZoneLogonOptions

<!-- RestrictedSitesZoneLogonOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneLogonOptions-Applicability-End -->

<!-- RestrictedSitesZoneLogonOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneLogonOptions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneLogonOptions
```
<!-- RestrictedSitesZoneLogonOptions-OmaUri-End -->

<!-- RestrictedSitesZoneLogonOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage settings for logon options.

- If you enable this policy setting, you can choose from the following logon options.

Anonymous logon to disable HTTP authentication and use the guest account only for the Common Internet File System (CIFS) protocol.

Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response isn't supported by the server, the user is queried to provide the user name and password.

- If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.

- If you don't configure this policy setting, logon is set to Prompt for username and password.
<!-- RestrictedSitesZoneLogonOptions-Description-End -->

<!-- RestrictedSitesZoneLogonOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneLogonOptions-Editable-End -->

<!-- RestrictedSitesZoneLogonOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneLogonOptions-DFProperties-End -->

<!-- RestrictedSitesZoneLogonOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLogon_7 |
| Friendly Name | Logon options |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneLogonOptions-AdmxBacked-End -->

<!-- RestrictedSitesZoneLogonOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneLogonOptions-Examples-End -->

<!-- RestrictedSitesZoneLogonOptions-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Begin -->
## RestrictedSitesZoneNavigateWindowsAndFrames

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames
```
<!-- RestrictedSitesZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open additional windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open other windows and frames from other domains or access applications from different domains.

- If you don't configure this policy setting, users can't open other windows and frames from different domains or access applications from different domains.
<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Description-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Editable-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_7 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneNavigateWindowsAndFrames-Examples-End -->

<!-- RestrictedSitesZoneNavigateWindowsAndFrames-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Begin -->
## RestrictedSitesZoneRunActiveXControlsAndPlugins

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Applicability-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneRunActiveXControlsAndPlugins
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneRunActiveXControlsAndPlugins
```
<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-OmaUri-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether ActiveX controls and plug-ins can be run on pages from the specified zone.

- If you enable this policy setting, controls and plug-ins can run without user intervention.

If you selected Prompt in the drop-down box, users are asked to choose whether to allow the controls or plug-in to run.

- If you disable this policy setting, controls and plug-ins are prevented from running.

- If you don't configure this policy setting, controls and plug-ins are prevented from running.
<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Description-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Editable-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-DFProperties-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyRunActiveXControls_7 |
| Friendly Name | Run ActiveX controls and plugins |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-AdmxBacked-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-Examples-End -->

<!-- RestrictedSitesZoneRunActiveXControlsAndPlugins-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Begin -->
## RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Applicability-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode
```
<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-OmaUri-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that are signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute signed managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute signed managed components.

- If you disable this policy setting, Internet Explorer won't execute signed managed components.

- If you don't configure this policy setting, Internet Explorer won't execute signed managed components.
<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Description-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Editable-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-DFProperties-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicySignedFrameworkComponentsURLaction_7 |
| Friendly Name | Run .NET Framework-reliant components signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-AdmxBacked-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-Examples-End -->

<!-- RestrictedSitesZoneRunNETFrameworkReliantComponentsSignedWithAuthenticode-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Begin -->
## RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Applicability-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting
```
<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-OmaUri-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether an ActiveX control marked safe for scripting can interact with a script.

- If you enable this policy setting, script interaction can occur automatically without user intervention.

If you select Prompt in the drop-down box, users are queried to choose whether to allow script interaction.

- If you disable this policy setting, script interaction is prevented from occurring.

- If you don't configure this policy setting, script interaction is prevented from occurring.
<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Description-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Editable-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-DFProperties-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXMarkedSafe_7 |
| Friendly Name | Script ActiveX controls marked safe for scripting |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-AdmxBacked-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-Examples-End -->

<!-- RestrictedSitesZoneScriptActiveXControlsMarkedSafeForScripting-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-Begin -->
## RestrictedSitesZoneScriptingOfJavaApplets

<!-- RestrictedSitesZoneScriptingOfJavaApplets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneScriptingOfJavaApplets-Applicability-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneScriptingOfJavaApplets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneScriptingOfJavaApplets
```
<!-- RestrictedSitesZoneScriptingOfJavaApplets-OmaUri-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether applets are exposed to scripts within the zone.

- If you enable this policy setting, scripts can access applets automatically without user intervention.

If you select Prompt in the drop-down box, users are queried to choose whether to allow scripts to access applets.

- If you disable this policy setting, scripts are prevented from accessing applets.

- If you don't configure this policy setting, scripts are prevented from accessing applets.
<!-- RestrictedSitesZoneScriptingOfJavaApplets-Description-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneScriptingOfJavaApplets-Editable-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneScriptingOfJavaApplets-DFProperties-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptingOfJavaApplets_7 |
| Friendly Name | Scripting of Java applets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneScriptingOfJavaApplets-AdmxBacked-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneScriptingOfJavaApplets-Examples-End -->

<!-- RestrictedSitesZoneScriptingOfJavaApplets-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Begin -->
## RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Applicability-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles
```
<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-OmaUri-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the "Open File - Security Warning" message appears when the user tries to open executable files or other potentially unsafe files (from an intranet file share by using File Explorer, for example).

- If you enable this policy setting and set the drop-down box to Enable, these files open without a security warning. If you set the drop-down box to Prompt, a security warning appears before the files open.

- If you disable this policy setting, these files don't open.

- If you don't configure this policy setting, the user can configure how the computer handles these files. By default, these files are blocked in the Restricted zone, enabled in the Intranet and Local Computer zones, and set to prompt in the Internet and Trusted zones.
<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Description-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Editable-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-DFProperties-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_UnsafeFiles_7 |
| Friendly Name | Show security warning for potentially unsafe files |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-AdmxBacked-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-Examples-End -->

<!-- RestrictedSitesZoneShowSecurityWarningForPotentiallyUnsafeFiles-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-Begin -->
## RestrictedSitesZoneTurnOnProtectedMode

<!-- RestrictedSitesZoneTurnOnProtectedMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneTurnOnProtectedMode-Applicability-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneTurnOnProtectedMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneTurnOnProtectedMode
```
<!-- RestrictedSitesZoneTurnOnProtectedMode-OmaUri-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on Protected Mode. Protected Mode helps protect Internet Explorer from exploited vulnerabilities by reducing the locations that Internet Explorer can write to in the registry and the file system.

- If you enable this policy setting, Protected Mode is turned on. The user can't turn off Protected Mode.

- If you disable this policy setting, Protected Mode is turned off. The user can't turn on Protected Mode.

- If you don't configure this policy setting, the user can turn on or turn off Protected Mode.
<!-- RestrictedSitesZoneTurnOnProtectedMode-Description-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneTurnOnProtectedMode-Editable-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneTurnOnProtectedMode-DFProperties-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_TurnOnProtectedMode_7 |
| Friendly Name | Turn on Protected Mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneTurnOnProtectedMode-AdmxBacked-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneTurnOnProtectedMode-Examples-End -->

<!-- RestrictedSitesZoneTurnOnProtectedMode-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-Begin -->
## RestrictedSitesZoneUsePopupBlocker

<!-- RestrictedSitesZoneUsePopupBlocker-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictedSitesZoneUsePopupBlocker-Applicability-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneUsePopupBlocker
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictedSitesZoneUsePopupBlocker
```
<!-- RestrictedSitesZoneUsePopupBlocker-OmaUri-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether unwanted pop-up windows appear. Pop-up windows that are opened when the end user clicks a link aren't blocked.

- If you enable this policy setting, most unwanted pop-up windows are prevented from appearing.

- If you disable this policy setting, pop-up windows aren't prevented from appearing.

- If you don't configure this policy setting, most unwanted pop-up windows are prevented from appearing.
<!-- RestrictedSitesZoneUsePopupBlocker-Description-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedSitesZoneUsePopupBlocker-Editable-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedSitesZoneUsePopupBlocker-DFProperties-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyBlockPopupWindows_7 |
| Friendly Name | Use Pop-up Blocker |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| ADMX File Name | inetres.admx |
<!-- RestrictedSitesZoneUsePopupBlocker-AdmxBacked-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedSitesZoneUsePopupBlocker-Examples-End -->

<!-- RestrictedSitesZoneUsePopupBlocker-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-Begin -->
## RestrictFileDownloadInternetExplorerProcesses

<!-- RestrictFileDownloadInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RestrictFileDownloadInternetExplorerProcesses-Applicability-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictFileDownloadInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/RestrictFileDownloadInternetExplorerProcesses
```
<!-- RestrictFileDownloadInternetExplorerProcesses-OmaUri-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables blocking of file download prompts that aren't user initiated.

- If you enable this policy setting, file download prompts that aren't user initiated will be blocked for Internet Explorer processes.

- If you disable this policy setting, prompting will occur for file downloads that aren't user initiated for Internet Explorer processes.

- If you don't configure this policy setting, the user's preference determines whether to prompt for file downloads that aren't user initiated for Internet Explorer processes.
<!-- RestrictFileDownloadInternetExplorerProcesses-Description-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictFileDownloadInternetExplorerProcesses-Editable-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictFileDownloadInternetExplorerProcesses-DFProperties-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_12 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Restrict File Download |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD |
| ADMX File Name | inetres.admx |
<!-- RestrictFileDownloadInternetExplorerProcesses-AdmxBacked-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictFileDownloadInternetExplorerProcesses-Examples-End -->

<!-- RestrictFileDownloadInternetExplorerProcesses-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Begin -->
## ScriptedWindowSecurityRestrictionsInternetExplorerProcesses

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Applicability-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/ScriptedWindowSecurityRestrictionsInternetExplorerProcesses
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/ScriptedWindowSecurityRestrictionsInternetExplorerProcesses
```
<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-OmaUri-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
Internet Explorer allows scripts to programmatically open, resize, and reposition windows of various types. The Window Restrictions security feature restricts popup windows and prohibits scripts from displaying windows in which the title and status bars aren't visible to the user or obfuscate other Windows' title and status bars.

- If you enable this policy setting, popup windows and other restrictions apply for File Explorer and Internet Explorer processes.

- If you disable this policy setting, scripts can continue to create popup windows and windows that obfuscate other windows.

- If you don't configure this policy setting, popup windows and other restrictions apply for File Explorer and Internet Explorer processes.
<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Description-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Editable-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-DFProperties-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IESF_PolicyExplorerProcesses_8 |
| Friendly Name | Internet Explorer Processes |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Security Features > Scripted Window Security Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS |
| ADMX File Name | inetres.admx |
<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-AdmxBacked-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-Examples-End -->

<!-- ScriptedWindowSecurityRestrictionsInternetExplorerProcesses-End -->

<!-- SearchProviderList-Begin -->
## SearchProviderList

<!-- SearchProviderList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SearchProviderList-Applicability-End -->

<!-- SearchProviderList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/SearchProviderList
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/SearchProviderList
```
<!-- SearchProviderList-OmaUri-End -->

<!-- SearchProviderList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to restrict the search providers that appear in the Search box in Internet Explorer to those defined in the list of policy keys for search providers (found under [HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\SearchScopes]). Normally, search providers can be added from third-party toolbars or in Setup, but the user can also add them from a search provider's website.

- If you enable this policy setting, the user can't configure the list of search providers on his or her computer, and any default providers installed don't appear (including providers installed from other applications). The only providers that appear are those in the list of policy keys for search providers.

> [!NOTE]
> This list can be created through a custom administrative template file. For information about creating this custom administrative template file, see the Internet Explorer documentation on search providers.

- If you disable or don't configure this policy setting, the user can configure his or her list of search providers.
<!-- SearchProviderList-Description-End -->

<!-- SearchProviderList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SearchProviderList-Editable-End -->

<!-- SearchProviderList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SearchProviderList-DFProperties-End -->

<!-- SearchProviderList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SpecificSearchProvider |
| Friendly Name | Restrict search providers to a specific list |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions |
| Registry Value Name | UsePolicySearchProvidersOnly |
| ADMX File Name | inetres.admx |
<!-- SearchProviderList-AdmxBacked-End -->

<!-- SearchProviderList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SearchProviderList-Examples-End -->

<!-- SearchProviderList-End -->

<!-- SecurityZonesUseOnlyMachineSettings-Begin -->
## SecurityZonesUseOnlyMachineSettings

<!-- SecurityZonesUseOnlyMachineSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- SecurityZonesUseOnlyMachineSettings-Applicability-End -->

<!-- SecurityZonesUseOnlyMachineSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/SecurityZonesUseOnlyMachineSettings
```
<!-- SecurityZonesUseOnlyMachineSettings-OmaUri-End -->

<!-- SecurityZonesUseOnlyMachineSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
Applies security zone information to all users of the same computer. A security zone is a group of Web sites with the same security level.

- If you enable this policy, changes that the user makes to a security zone will apply to all users of that computer.

- If you disable this policy or don't configure it, users of the same computer can establish their own security zone settings.

This policy is intended to ensure that security zone settings apply uniformly to the same computer and don't vary from user to user.

Also, see the "Security zones: Don't allow users to change policies" policy.
<!-- SecurityZonesUseOnlyMachineSettings-Description-End -->

<!-- SecurityZonesUseOnlyMachineSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SecurityZonesUseOnlyMachineSettings-Editable-End -->

<!-- SecurityZonesUseOnlyMachineSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SecurityZonesUseOnlyMachineSettings-DFProperties-End -->

<!-- SecurityZonesUseOnlyMachineSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Security_HKLM_only |
| Friendly Name | Security Zones: Use only machine settings  |
| Location | Computer Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings |
| Registry Value Name | Security_HKLM_only |
| ADMX File Name | inetres.admx |
<!-- SecurityZonesUseOnlyMachineSettings-AdmxBacked-End -->

<!-- SecurityZonesUseOnlyMachineSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SecurityZonesUseOnlyMachineSettings-Examples-End -->

<!-- SecurityZonesUseOnlyMachineSettings-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-Begin -->
## SendSitesNotInEnterpriseSiteListToEdge

<!-- SendSitesNotInEnterpriseSiteListToEdge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1350] and later <br> ✅ Windows 10, version 2004 [10.0.19041.789] and later |
<!-- SendSitesNotInEnterpriseSiteListToEdge-Applicability-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/SendSitesNotInEnterpriseSiteListToEdge
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/SendSitesNotInEnterpriseSiteListToEdge
```
<!-- SendSitesNotInEnterpriseSiteListToEdge-OmaUri-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting lets you decide whether to open all sites not included in the Enterprise Mode Site List in Microsoft Edge. If you use this setting, you must also turn on the Administrative Templates\Windows Components\Internet Explorer\Use the Enterprise Mode IE website list policy setting and you must include at least one site in the Enterprise Mode Site List.

Enabling this setting automatically opens all sites not included in the Enterprise Mode Site List in Microsoft Edge.

Disabling, or not configuring this setting, opens all sites based on the currently active browser.

> [!NOTE]
> If you've also enabled the Administrative Templates\Windows Components\Microsoft Edge\Send all intranet sites to Internet Explorer 11 policy setting, then all intranet sites will continue to open in Internet Explorer 11.
<!-- SendSitesNotInEnterpriseSiteListToEdge-Description-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This MDM policy is still outstanding.
<!-- SendSitesNotInEnterpriseSiteListToEdge-Editable-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SendSitesNotInEnterpriseSiteListToEdge-DFProperties-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictInternetExplorer |
| Friendly Name | Send all sites not included in the Enterprise Mode Site List to Microsoft Edge |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode |
| Registry Value Name | RestrictIE |
| ADMX File Name | inetres.admx |
<!-- SendSitesNotInEnterpriseSiteListToEdge-AdmxBacked-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
  <policy name="RestrictInternetExplorer" class="Both" displayName="$(string.RestrictInternetExplorer)" explainText="$(string.IE_ExplainRestrictInternetExplorer)" key="Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode" valueName="RestrictIE">

      <parentCategory ref="InternetExplorer" />

      <supportedOn ref="SUPPORTED_IE11WIN10_1607" />

      <enabledValue>

        <decimal value="1" />

      </enabledValue>

      <disabledValue>

        <decimal value="0" />

      </disabledValue>

    </policy>
```
<!-- SendSitesNotInEnterpriseSiteListToEdge-Examples-End -->

<!-- SendSitesNotInEnterpriseSiteListToEdge-End -->

<!-- SpecifyUseOfActiveXInstallerService-Begin -->
## SpecifyUseOfActiveXInstallerService

<!-- SpecifyUseOfActiveXInstallerService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- SpecifyUseOfActiveXInstallerService-Applicability-End -->

<!-- SpecifyUseOfActiveXInstallerService-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/SpecifyUseOfActiveXInstallerService
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/SpecifyUseOfActiveXInstallerService
```
<!-- SpecifyUseOfActiveXInstallerService-OmaUri-End -->

<!-- SpecifyUseOfActiveXInstallerService-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify how ActiveX controls are installed.

- If you enable this policy setting, ActiveX controls are installed only if the ActiveX Installer Service is present and has been configured to allow the installation of ActiveX controls.

- If you disable or don't configure this policy setting, ActiveX controls, including per-user controls, are installed through the standard installation process.
<!-- SpecifyUseOfActiveXInstallerService-Description-End -->

<!-- SpecifyUseOfActiveXInstallerService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyUseOfActiveXInstallerService-Editable-End -->

<!-- SpecifyUseOfActiveXInstallerService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyUseOfActiveXInstallerService-DFProperties-End -->

<!-- SpecifyUseOfActiveXInstallerService-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | OnlyUseAXISForActiveXInstall |
| Friendly Name | Specify use of ActiveX Installer Service for installation of ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AxInstaller |
| Registry Value Name | OnlyUseAXISForActiveXInstall |
| ADMX File Name | inetres.admx |
<!-- SpecifyUseOfActiveXInstallerService-AdmxBacked-End -->

<!-- SpecifyUseOfActiveXInstallerService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyUseOfActiveXInstallerService-Examples-End -->

<!-- SpecifyUseOfActiveXInstallerService-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-Begin -->
## TrustedSitesZoneAllowAccessToDataSources

<!-- TrustedSitesZoneAllowAccessToDataSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowAccessToDataSources-Applicability-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowAccessToDataSources
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowAccessToDataSources
```
<!-- TrustedSitesZoneAllowAccessToDataSources-OmaUri-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Internet Explorer can access data from another security zone using the Microsoft XML Parser (MSXML) or ActiveX Data Objects (ADO).

- If you enable this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone. If you select Prompt in the drop-down box, users are queried to choose whether to allow a page to be loaded in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you disable this policy setting, users can't load a page in the zone that uses MSXML or ADO to access data from another site in the zone.

- If you don't configure this policy setting, users can load a page in the zone that uses MSXML or ADO to access data from another site in the zone.
<!-- TrustedSitesZoneAllowAccessToDataSources-Description-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowAccessToDataSources-Editable-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowAccessToDataSources-DFProperties-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAccessDataSourcesAcrossDomains_5 |
| Friendly Name | Access data sources across domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowAccessToDataSources-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowAccessToDataSources-Examples-End -->

<!-- TrustedSitesZoneAllowAccessToDataSources-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Begin -->
## TrustedSitesZoneAllowAutomaticPromptingForActiveXControls

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Applicability-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls
```
<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-OmaUri-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether users will be automatically prompted for ActiveX control installations.

- If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.

- If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.

- If you don't configure this policy setting, users will receive a prompt when a site instantiates an ActiveX control they don't have installed.
<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Description-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Editable-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-DFProperties-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarActiveXURLaction_5 |
| Friendly Name | Automatic prompting for ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-Examples-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForActiveXControls-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Begin -->
## TrustedSitesZoneAllowAutomaticPromptingForFileDownloads

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Applicability-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads
```
<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-OmaUri-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.

- If you enable this setting, users will receive a file download dialog for automatic download attempts.

- If you disable or don't configure this setting, users will receive a file download dialog for automatic download attempts.
<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Description-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Editable-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-DFProperties-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNotificationBarDownloadURLaction_5 |
| Friendly Name | Automatic prompting for file downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-Examples-End -->

<!-- TrustedSitesZoneAllowAutomaticPromptingForFileDownloads-End -->

<!-- TrustedSitesZoneAllowFontDownloads-Begin -->
## TrustedSitesZoneAllowFontDownloads

<!-- TrustedSitesZoneAllowFontDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowFontDownloads-Applicability-End -->

<!-- TrustedSitesZoneAllowFontDownloads-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowFontDownloads
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowFontDownloads
```
<!-- TrustedSitesZoneAllowFontDownloads-OmaUri-End -->

<!-- TrustedSitesZoneAllowFontDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether pages of the zone may download HTML fonts.

- If you enable this policy setting, HTML fonts can be downloaded automatically.

- If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.

- If you disable this policy setting, HTML fonts are prevented from downloading.

- If you don't configure this policy setting, HTML fonts can be downloaded automatically.
<!-- TrustedSitesZoneAllowFontDownloads-Description-End -->

<!-- TrustedSitesZoneAllowFontDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowFontDownloads-Editable-End -->

<!-- TrustedSitesZoneAllowFontDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowFontDownloads-DFProperties-End -->

<!-- TrustedSitesZoneAllowFontDownloads-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyFontDownload_5 |
| Friendly Name | Allow font downloads |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowFontDownloads-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowFontDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowFontDownloads-Examples-End -->

<!-- TrustedSitesZoneAllowFontDownloads-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-Begin -->
## TrustedSitesZoneAllowLessPrivilegedSites

<!-- TrustedSitesZoneAllowLessPrivilegedSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowLessPrivilegedSites-Applicability-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites
```
<!-- TrustedSitesZoneAllowLessPrivilegedSites-OmaUri-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Web sites from less privileged zones, such as Restricted Sites, can navigate into this zone.

- If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that's provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.

- If you disable this policy setting, the possibly harmful navigations is prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.

- If you don't configure this policy setting, a warning is issued to the user that potentially risky navigation is about to occur.
<!-- TrustedSitesZoneAllowLessPrivilegedSites-Description-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowLessPrivilegedSites-Editable-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowLessPrivilegedSites-DFProperties-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyZoneElevationURLaction_5 |
| Friendly Name | Web sites in less privileged Web content zones can navigate into this zone |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowLessPrivilegedSites-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowLessPrivilegedSites-Examples-End -->

<!-- TrustedSitesZoneAllowLessPrivilegedSites-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Begin -->
## TrustedSitesZoneAllowNETFrameworkReliantComponents

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Applicability-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents
```
<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-OmaUri-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether . NET Framework components that aren't signed with Authenticode can be executed from Internet Explorer. These components include managed controls referenced from an object tag and managed executables referenced from a link.

- If you enable this policy setting, Internet Explorer will execute unsigned managed components. If you select Prompt in the drop-down box, Internet Explorer will prompt the user to determine whether to execute unsigned managed components.

- If you disable this policy setting, Internet Explorer won't execute unsigned managed components.

- If you don't configure this policy setting, Internet Explorer will execute unsigned managed components.
<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Description-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Editable-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-DFProperties-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUnsignedFrameworkComponentsURLaction_5 |
| Friendly Name | Run .NET Framework-reliant components not signed with Authenticode |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-Examples-End -->

<!-- TrustedSitesZoneAllowNETFrameworkReliantComponents-End -->

<!-- TrustedSitesZoneAllowScriptlets-Begin -->
## TrustedSitesZoneAllowScriptlets

<!-- TrustedSitesZoneAllowScriptlets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowScriptlets-Applicability-End -->

<!-- TrustedSitesZoneAllowScriptlets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowScriptlets
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowScriptlets
```
<!-- TrustedSitesZoneAllowScriptlets-OmaUri-End -->

<!-- TrustedSitesZoneAllowScriptlets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the user can run scriptlets.

- If you enable this policy setting, the user can run scriptlets.

- If you disable this policy setting, the user can't run scriptlets.

- If you don't configure this policy setting, the user can enable or disable scriptlets.
<!-- TrustedSitesZoneAllowScriptlets-Description-End -->

<!-- TrustedSitesZoneAllowScriptlets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowScriptlets-Editable-End -->

<!-- TrustedSitesZoneAllowScriptlets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowScriptlets-DFProperties-End -->

<!-- TrustedSitesZoneAllowScriptlets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_AllowScriptlets_5 |
| Friendly Name | Allow scriptlets |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowScriptlets-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowScriptlets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowScriptlets-Examples-End -->

<!-- TrustedSitesZoneAllowScriptlets-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-Begin -->
## TrustedSitesZoneAllowSmartScreenIE

<!-- TrustedSitesZoneAllowSmartScreenIE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowSmartScreenIE-Applicability-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowSmartScreenIE
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowSmartScreenIE
```
<!-- TrustedSitesZoneAllowSmartScreenIE-OmaUri-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether SmartScreen Filter scans pages in this zone for malicious content.

- If you enable this policy setting, SmartScreen Filter scans pages in this zone for malicious content.

- If you disable this policy setting, SmartScreen Filter doesn't scan pages in this zone for malicious content.

- If you don't configure this policy setting, the user can choose whether SmartScreen Filter scans pages in this zone for malicious content.

> [!NOTE]
> In Internet Explorer 7, this policy setting controls whether Phishing Filter scans pages in this zone for malicious content.
<!-- TrustedSitesZoneAllowSmartScreenIE-Description-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowSmartScreenIE-Editable-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowSmartScreenIE-DFProperties-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_Phishing_5 |
| Friendly Name | Turn on SmartScreen Filter scan |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowSmartScreenIE-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowSmartScreenIE-Examples-End -->

<!-- TrustedSitesZoneAllowSmartScreenIE-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-Begin -->
## TrustedSitesZoneAllowUserDataPersistence

<!-- TrustedSitesZoneAllowUserDataPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneAllowUserDataPersistence-Applicability-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowUserDataPersistence
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneAllowUserDataPersistence
```
<!-- TrustedSitesZoneAllowUserDataPersistence-OmaUri-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the preservation of information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk. When a user returns to a persisted page, the state of the page can be restored if this policy setting is appropriately configured.

- If you enable this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you disable this policy setting, users can't preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.

- If you don't configure this policy setting, users can preserve information in the browser's history, in favorites, in an XML store, or directly within a Web page saved to disk.
<!-- TrustedSitesZoneAllowUserDataPersistence-Description-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowUserDataPersistence-Editable-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneAllowUserDataPersistence-DFProperties-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyUserdataPersistence_5 |
| Friendly Name | Userdata persistence |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneAllowUserDataPersistence-AdmxBacked-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneAllowUserDataPersistence-Examples-End -->

<!-- TrustedSitesZoneAllowUserDataPersistence-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Begin -->
## TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Applicability-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls
```
<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-OmaUri-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Internet Explorer runs antimalware programs against ActiveX controls, to check if they're safe to load on pages.

- If you enable this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you disable this policy setting, Internet Explorer always checks with your antimalware program to see if it's safe to create an instance of the ActiveX control.

- If you don't configure this policy setting, Internet Explorer won't check with your antimalware program to see if it's safe to create an instance of the ActiveX control. Users can turn this behavior on or off, using Internet Explorer Security settings.
<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Description-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Editable-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-DFProperties-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyAntiMalwareCheckingOfActiveXControls_5 |
| Friendly Name | Don't run antimalware programs against ActiveX controls |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-AdmxBacked-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-Examples-End -->

<!-- TrustedSitesZoneDoNotRunAntimalwareAgainstActiveXControls-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Begin -->
## TrustedSitesZoneInitializeAndScriptActiveXControls

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Applicability-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls
```
<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-OmaUri-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage ActiveX controls not marked as safe.

- If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting isn't recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.

- If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.

- If you disable this policy setting, ActiveX controls that can't be made safe aren't loaded with parameters or scripted.

- If you don't configure this policy setting, users are queried whether to allow the control to be loaded with parameters or scripted.
<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Description-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Editable-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-DFProperties-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyScriptActiveXNotMarkedSafe_5 |
| Friendly Name | Initialize and script ActiveX controls not marked as safe |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-AdmxBacked-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-Examples-End -->

<!-- TrustedSitesZoneInitializeAndScriptActiveXControls-End -->

<!-- TrustedSitesZoneJavaPermissions-Begin -->
## TrustedSitesZoneJavaPermissions

<!-- TrustedSitesZoneJavaPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- TrustedSitesZoneJavaPermissions-Applicability-End -->

<!-- TrustedSitesZoneJavaPermissions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneJavaPermissions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneJavaPermissions
```
<!-- TrustedSitesZoneJavaPermissions-OmaUri-End -->

<!-- TrustedSitesZoneJavaPermissions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage permissions for Java applets.

- If you enable this policy setting, you can choose options from the drop-down box. Custom, to control permissions settings individually.

Low Safety enables applets to perform all operations.

Medium Safety enables applets to run in their sandbox (an area in memory outside of which the program can't make calls), plus capabilities like scratch space (a safe and secure storage area on the client computer) and user-controlled file I/O.

High Safety enables applets to run in their sandbox. Disable Java to prevent any applets from running.

- If you disable this policy setting, Java applets can't run.

- If you don't configure this policy setting, the permission is set to Low Safety.
<!-- TrustedSitesZoneJavaPermissions-Description-End -->

<!-- TrustedSitesZoneJavaPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneJavaPermissions-Editable-End -->

<!-- TrustedSitesZoneJavaPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneJavaPermissions-DFProperties-End -->

<!-- TrustedSitesZoneJavaPermissions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyJavaPermissions_5 |
| Friendly Name | Java permissions |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneJavaPermissions-AdmxBacked-End -->

<!-- TrustedSitesZoneJavaPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneJavaPermissions-Examples-End -->

<!-- TrustedSitesZoneJavaPermissions-End -->

<!-- TrustedSitesZoneLogonOptions-Begin -->
## TrustedSitesZoneLogonOptions

<!-- TrustedSitesZoneLogonOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.2227] and later <br> ✅ [10.0.25398.643] and later <br> ✅ [10.0.25965] and later <br> ✅ Windows 10, version 2004 [10.0.19041.3758] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2792] and later |
<!-- TrustedSitesZoneLogonOptions-Applicability-End -->

<!-- TrustedSitesZoneLogonOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneLogonOptions
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneLogonOptions
```
<!-- TrustedSitesZoneLogonOptions-OmaUri-End -->

<!-- TrustedSitesZoneLogonOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage settings for logon options.

- If you enable this policy setting, you can choose from the following logon options.

Anonymous logon to disable HTTP authentication and use the guest account only for the Common Internet File System (CIFS) protocol.

Prompt for user name and password to query users for user IDs and passwords. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon only in Intranet zone to query users for user IDs and passwords in other zones. After a user is queried, these values can be used silently for the remainder of the session.

Automatic logon with current user name and password to attempt logon using Windows NT Challenge Response (also known as NTLM authentication). If Windows NT Challenge Response is supported by the server, the logon uses the user's network user name and password for logon. If Windows NT Challenge Response isn't supported by the server, the user is queried to provide the user name and password.

- If you disable this policy setting, logon is set to Automatic logon only in Intranet zone.

- If you don't configure this policy setting, logon is set to Automatic logon with current username and password.
<!-- TrustedSitesZoneLogonOptions-Description-End -->

<!-- TrustedSitesZoneLogonOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneLogonOptions-Editable-End -->

<!-- TrustedSitesZoneLogonOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneLogonOptions-DFProperties-End -->

<!-- TrustedSitesZoneLogonOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyLogon_5 |
| Friendly Name | Logon options |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneLogonOptions-AdmxBacked-End -->

<!-- TrustedSitesZoneLogonOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneLogonOptions-Examples-End -->

<!-- TrustedSitesZoneLogonOptions-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-Begin -->
## TrustedSitesZoneNavigateWindowsAndFrames

<!-- TrustedSitesZoneNavigateWindowsAndFrames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TrustedSitesZoneNavigateWindowsAndFrames-Applicability-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames
```

```Device
./Device/Vendor/MSFT/Policy/Config/InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames
```
<!-- TrustedSitesZoneNavigateWindowsAndFrames-OmaUri-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.

- If you enable this policy setting, users can open windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.

- If you disable this policy setting, users can't open windows and frames to access applications from different domains.

- If you don't configure this policy setting, users can open windows and frames from other domains and access applications from other domains.
<!-- TrustedSitesZoneNavigateWindowsAndFrames-Description-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedSitesZoneNavigateWindowsAndFrames-Editable-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedSitesZoneNavigateWindowsAndFrames-DFProperties-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_PolicyNavigateSubframesAcrossDomains_5 |
| Friendly Name | Navigate windows and frames across different domains |
| Location | Computer and User Configuration |
| Path | Windows Components > Internet Explorer > Internet Control Panel > Security Page > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| ADMX File Name | inetres.admx |
<!-- TrustedSitesZoneNavigateWindowsAndFrames-AdmxBacked-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedSitesZoneNavigateWindowsAndFrames-Examples-End -->

<!-- TrustedSitesZoneNavigateWindowsAndFrames-End -->

<!-- InternetExplorer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- InternetExplorer-CspMoreInfo-End -->

<!-- InternetExplorer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
