---
title: ActiveSync CSP
description: Learn more about the ActiveSync CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ActiveSync-Begin -->
# ActiveSync CSP

<!-- ActiveSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The ActiveSync configuration service provider is used to set up and change settings for Exchange ActiveSync. After an Exchange account has been updated over-the-air by the ActiveSync configuration service provider, the device must be powered off and then powered back on to see sync status.

Configuring Windows Live ActiveSync accounts through this configuration service provider isn't supported.

> [!NOTE]
> The target user must be logged in for the CSP to succeed. The correct way to configure an account is to use the `./User/Vendor/MSFT/ActiveSync` path. The `./Vendor/MSFT/ActiveSync` path is deprecated.
<!-- ActiveSync-Editable-End -->

<!-- ActiveSync-Tree-Begin -->
The following list shows the ActiveSync configuration service provider nodes:

- ./User/Vendor/MSFT/ActiveSync
  - [Accounts](#accounts)
    - [{Account GUID}](#accountsaccount-guid)
      - [AccountIcon](#accountsaccount-guidaccounticon)
      - [AccountName](#accountsaccount-guidaccountname)
      - [AccountType](#accountsaccount-guidaccounttype)
      - [Domain](#accountsaccount-guiddomain)
      - [EmailAddress](#accountsaccount-guidemailaddress)
      - [Options](#accountsaccount-guidoptions)
        - [CalendarAgeFilter](#accountsaccount-guidoptionscalendaragefilter)
        - [ContentTypes](#accountsaccount-guidoptionscontenttypes)
          - [{Content Type GUID}](#accountsaccount-guidoptionscontenttypescontent-type-guid)
            - [Enabled](#accountsaccount-guidoptionscontenttypescontent-type-guidenabled)
            - [Name](#accountsaccount-guidoptionscontenttypescontent-type-guidname)
        - [Logging](#accountsaccount-guidoptionslogging)
        - [MailAgeFilter](#accountsaccount-guidoptionsmailagefilter)
        - [MailBodyType](#accountsaccount-guidoptionsmailbodytype)
        - [MailHTMLTruncation](#accountsaccount-guidoptionsmailhtmltruncation)
        - [MailPlainTextTruncation](#accountsaccount-guidoptionsmailplaintexttruncation)
        - [Schedule](#accountsaccount-guidoptionsschedule)
        - [UseSSL](#accountsaccount-guidoptionsusessl)
      - [Password](#accountsaccount-guidpassword)
      - [Policies](#accountsaccount-guidpolicies)
        - [MailBodyType](#accountsaccount-guidpoliciesmailbodytype)
        - [MaxMailAgeFilter](#accountsaccount-guidpoliciesmaxmailagefilter)
      - [ServerName](#accountsaccount-guidservername)
      - [UserName](#accountsaccount-guidusername)
<!-- ActiveSync-Tree-End -->

<!-- User-Accounts-Begin -->
## Accounts

<!-- User-Accounts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-Applicability-End -->

<!-- User-Accounts-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts
```
<!-- User-Accounts-OmaUri-End -->

<!-- User-Accounts-Description-Begin -->
<!-- Description-Source-DDF -->
The parent node group all active sync accounts.
<!-- User-Accounts-Description-End -->

<!-- User-Accounts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-Editable-End -->

<!-- User-Accounts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Accounts-DFProperties-End -->

<!-- User-Accounts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-Examples-End -->

<!-- User-Accounts-End -->

<!-- User-Accounts-{Account GUID}-Begin -->
### Accounts/{Account GUID}

<!-- User-Accounts-{Account GUID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Applicability-End -->

<!-- User-Accounts-{Account GUID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}
```
<!-- User-Accounts-{Account GUID}-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines a specific ActiveSync account. A globally unique identifier (GUID) must be generated for each ActiveSync account on the device.
<!-- User-Accounts-{Account GUID}-Description-End -->

<!-- User-Accounts-{Account GUID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
When managing over OMA DM, make sure to always use a unique GUID. Provisioning with an account that has the same GUID as an existing one deletes the existing account and doesn't create the new account.
<!-- User-Accounts-{Account GUID}-Editable-End -->

<!-- User-Accounts-{Account GUID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- User-Accounts-{Account GUID}-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Braces `{}` are required around the GUID. In OMA Client Provisioning, you can type the braces. For example:

```xml
<characteristic type="{C556E16F-56C4-4EDB-9C64-D9469EE1FBE0}"/>
```

For OMA DM, you must use the ASCII values of %7B and %7D for the opening and closing braces, respectively. For example, if the GUID is "C556E16F-56C4-4EDB-9C64-D9469EE1FBE0", type:

```xml
<Target>
   <LocURI>
      ./Vendor/MSFT/ActiveSync/Accounts/%7BC556E16F-56C4-4EDB-9C64-D9469EE1FBE0%7D
   </LocURI>
</Target>
```
<!-- User-Accounts-{Account GUID}-Examples-End -->

<!-- User-Accounts-{Account GUID}-End -->

<!-- User-Accounts-{Account GUID}-AccountIcon-Begin -->
#### Accounts/{Account GUID}/AccountIcon

<!-- User-Accounts-{Account GUID}-AccountIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-AccountIcon-Applicability-End -->

<!-- User-Accounts-{Account GUID}-AccountIcon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/AccountIcon
```
<!-- User-Accounts-{Account GUID}-AccountIcon-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-AccountIcon-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the location of the icon associated with the account.
<!-- User-Accounts-{Account GUID}-AccountIcon-Description-End -->

<!-- User-Accounts-{Account GUID}-AccountIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The account icon can be used as a tile in the Start list or an icon in the applications list under **Settings** > **Email & accounts**. Some icons are already provided on the device. The suggested icon for POP/IMAP or generic ActiveSync accounts is at `res://AccountSettingsSharedRes{ScreenResolution}!%s.genericmail.png`. The suggested icon for Exchange Accounts is at `res://AccountSettingsSharedRes{ScreenResolution}!%s.office.outlook.png`. Custom icons can be added if desired.
<!-- User-Accounts-{Account GUID}-AccountIcon-Editable-End -->

<!-- User-Accounts-{Account GUID}-AccountIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-AccountIcon-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-AccountIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-AccountIcon-Examples-End -->

<!-- User-Accounts-{Account GUID}-AccountIcon-End -->

<!-- User-Accounts-{Account GUID}-AccountName-Begin -->
#### Accounts/{Account GUID}/AccountName

<!-- User-Accounts-{Account GUID}-AccountName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-AccountName-Applicability-End -->

<!-- User-Accounts-{Account GUID}-AccountName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/AccountName
```
<!-- User-Accounts-{Account GUID}-AccountName-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-AccountName-Description-Begin -->
<!-- Description-Source-DDF -->
The name that refers to the account on the device.
<!-- User-Accounts-{Account GUID}-AccountName-Description-End -->

<!-- User-Accounts-{Account GUID}-AccountName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-AccountName-Editable-End -->

<!-- User-Accounts-{Account GUID}-AccountName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-AccountName-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-AccountName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-AccountName-Examples-End -->

<!-- User-Accounts-{Account GUID}-AccountName-End -->

<!-- User-Accounts-{Account GUID}-AccountType-Begin -->
#### Accounts/{Account GUID}/AccountType

<!-- User-Accounts-{Account GUID}-AccountType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-AccountType-Applicability-End -->

<!-- User-Accounts-{Account GUID}-AccountType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/AccountType
```
<!-- User-Accounts-{Account GUID}-AccountType-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-AccountType-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the account type. This value is entered during setup and can't be modified once entered. An Exchange account is indicated by the string value "Exchange".
<!-- User-Accounts-{Account GUID}-AccountType-Description-End -->

<!-- User-Accounts-{Account GUID}-AccountType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-AccountType-Editable-End -->

<!-- User-Accounts-{Account GUID}-AccountType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-AccountType-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-AccountType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-AccountType-Examples-End -->

<!-- User-Accounts-{Account GUID}-AccountType-End -->

<!-- User-Accounts-{Account GUID}-Domain-Begin -->
#### Accounts/{Account GUID}/Domain

<!-- User-Accounts-{Account GUID}-Domain-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Domain-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Domain-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Domain
```
<!-- User-Accounts-{Account GUID}-Domain-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Domain-Description-Begin -->
<!-- Description-Source-DDF -->
Domain name of the Exchange server.
<!-- User-Accounts-{Account GUID}-Domain-Description-End -->

<!-- User-Accounts-{Account GUID}-Domain-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Domain-Editable-End -->

<!-- User-Accounts-{Account GUID}-Domain-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Domain-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Domain-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Domain-Examples-End -->

<!-- User-Accounts-{Account GUID}-Domain-End -->

<!-- User-Accounts-{Account GUID}-EmailAddress-Begin -->
#### Accounts/{Account GUID}/EmailAddress

<!-- User-Accounts-{Account GUID}-EmailAddress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-EmailAddress-Applicability-End -->

<!-- User-Accounts-{Account GUID}-EmailAddress-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/EmailAddress
```
<!-- User-Accounts-{Account GUID}-EmailAddress-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-EmailAddress-Description-Begin -->
<!-- Description-Source-DDF -->
The email address the user entered during setup. This is the email address that's associated with the Exchange ActiveSync account and it's required.
<!-- User-Accounts-{Account GUID}-EmailAddress-Description-End -->

<!-- User-Accounts-{Account GUID}-EmailAddress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This email address is entered by the user during setup and must be in the fully qualified email address format, for example, `someone@example.com`.
<!-- User-Accounts-{Account GUID}-EmailAddress-Editable-End -->

<!-- User-Accounts-{Account GUID}-EmailAddress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-EmailAddress-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-EmailAddress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-EmailAddress-Examples-End -->

<!-- User-Accounts-{Account GUID}-EmailAddress-End -->

<!-- User-Accounts-{Account GUID}-Options-Begin -->
#### Accounts/{Account GUID}/Options

<!-- User-Accounts-{Account GUID}-Options-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options
```
<!-- User-Accounts-{Account GUID}-Options-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether email, contacts, and calendar need to synchronize by default, and sets preference such as sync schedule, truncation sizes, and logging.
<!-- User-Accounts-{Account GUID}-Options-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Options-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-End -->

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Begin -->
##### Accounts/{Account GUID}/Options/CalendarAgeFilter

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/CalendarAgeFilter
```
<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the time window used for syncing calendar items to the phone.
<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-CalendarAgeFilter-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Begin -->
##### Accounts/{Account GUID}/Options/ContentTypes

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/ContentTypes
```
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for Content Types.
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Begin -->
###### Accounts/{Account GUID}/Options/ContentTypes/{Content Type GUID}

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/ContentTypes/{Content Type GUID}
```
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Description-Begin -->
<!-- Description-Source-DDF -->
Enables or disables syncing email, contacts, task, and calendar. Each is represented by a GUID. Email: {c6d47067-6e92-480e-b0fc-4ba82182fac7}. Contacts: {0dd8685c-e272-4fcb-9ecf-2ead7ea2497b}. Calendar: {4a5d9fe0-f139-4a63-a5a4-4f31ceea02ad}. Tasks:{783ae4f6-4c12-4423-8270-66361260d4f1}
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: The GUID values allowed are one of the following: Email: "{c6d47067-6e92-480e-b0fc-4ba82182fac7}". Contacts: "{0dd8685c-e272-4fcb-9ecf-2ead7ea2497b}". Calendar: "{4a5d9fe0-f139-4a63-a5a4-4f31ceea02ad}". Tasks: "{783ae4f6-4c12-4423-8270-66361260d4f1}". |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Begin -->
###### Accounts/{Account GUID}/Options/ContentTypes/{Content Type GUID}/Enabled

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/ContentTypes/{Content Type GUID}/Enabled
```
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
Enables or disables Sync for Email, contacts, calendar, and Tasks.
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Sync for email, contacts, calendar, or tasks is disabled. |
| 1 (Default) | Sync is enabled. |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-AllowedValues-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Enabled-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Begin -->
###### Accounts/{Account GUID}/Options/ContentTypes/{Content Type GUID}/Name

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/ContentTypes/{Content Type GUID}/Name
```
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the content type.
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-ContentTypes-{Content Type GUID}-Name-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-Begin -->
##### Accounts/{Account GUID}/Options/Logging

<!-- User-Accounts-{Account GUID}-Options-Logging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-Logging-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/Logging
```
<!-- User-Accounts-{Account GUID}-Options-Logging-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether diagnostic logging is enabled and at what level.
<!-- User-Accounts-{Account GUID}-Options-Logging-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-Logging-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-Accounts-{Account GUID}-Options-Logging-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Logging is off. |
| 1 | Basic logging is enabled. |
| 2 | Advanced logging is enabled. |
<!-- User-Accounts-{Account GUID}-Options-Logging-AllowedValues-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-Logging-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-Logging-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Begin -->
##### Accounts/{Account GUID}/Options/MailAgeFilter

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/MailAgeFilter
```
<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the time window used for syncing email items to the phone.
<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | No age filter is used, and all email items are synced to the device. |
| 1 | Only email up to one day old is synced to the device. |
| 2 | Only email up to three days old is synced to the device. |
| 3 (Default) | Email up to a week old is synced to the device. |
| 4 | Email up to two weeks old is synced to the device. |
| 5 | Email up to a month old is synced to the device. |
| 6 | Email up to three months old is synced to the device. |
<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-AllowedValues-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-MailAgeFilter-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Begin -->
##### Accounts/{Account GUID}/Options/MailBodyType

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/MailBodyType
```
<!-- User-Accounts-{Account GUID}-Options-MailBodyType-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates format type of the Email. Supported values are 0 (none), 1 (text), 2 (HTML), 3 (RTF), and 4 (MIME).
<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Options-MailBodyType-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | None. |
| 1 | Text. |
| 2 | HTML. |
| 3 | RTF. |
| 4 | MIME. |
<!-- User-Accounts-{Account GUID}-Options-MailBodyType-AllowedValues-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailBodyType-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-MailBodyType-End -->

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Begin -->
##### Accounts/{Account GUID}/Options/MailHTMLTruncation

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/MailHTMLTruncation
```
<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Description-Begin -->
<!-- Description-Source-DDF -->
This setting specifies the size beyond which HTML-formatted e-mail messages are truncated when they're synchronized to the mobile phone. The value is specified in KB. A value of -1 disables truncation.
<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-MailHTMLTruncation-End -->

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Begin -->
##### Accounts/{Account GUID}/Options/MailPlainTextTruncation

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/MailPlainTextTruncation
```
<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Description-Begin -->
<!-- Description-Source-DDF -->
This setting specifies the size beyond which text-formatted e-mail messages are truncated when they're synchronized to the mobile phone. The value is specified in KB. A value of -1 disables truncation.
<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-MailPlainTextTruncation-End -->

<!-- User-Accounts-{Account GUID}-Options-Schedule-Begin -->
##### Accounts/{Account GUID}/Options/Schedule

<!-- User-Accounts-{Account GUID}-Options-Schedule-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-Schedule-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-Schedule-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/Schedule
```
<!-- User-Accounts-{Account GUID}-Options-Schedule-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-Schedule-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the time until the next sync is performed in minutes. If -1 is chosen, a sync will occur as items are received. If a 0 is chosen, all syncs must be performed manually.
<!-- User-Accounts-{Account GUID}-Options-Schedule-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-Schedule-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-Schedule-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-Schedule-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[(-1)-4294967295]` |
| Default Value  | -1 |
<!-- User-Accounts-{Account GUID}-Options-Schedule-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-Schedule-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-Schedule-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-Schedule-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-Begin -->
##### Accounts/{Account GUID}/Options/UseSSL

<!-- User-Accounts-{Account GUID}-Options-UseSSL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Options-UseSSL-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Options/UseSSL
```
<!-- User-Accounts-{Account GUID}-Options-UseSSL-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether SSL is used.
<!-- User-Accounts-{Account GUID}-Options-UseSSL-Description-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-UseSSL-Editable-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- User-Accounts-{Account GUID}-Options-UseSSL-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | SSL isn't used. |
| 1 (Default) | SSL is used. |
<!-- User-Accounts-{Account GUID}-Options-UseSSL-AllowedValues-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Options-UseSSL-Examples-End -->

<!-- User-Accounts-{Account GUID}-Options-UseSSL-End -->

<!-- User-Accounts-{Account GUID}-Password-Begin -->
#### Accounts/{Account GUID}/Password

<!-- User-Accounts-{Account GUID}-Password-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Password-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Password-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Password
```
<!-- User-Accounts-{Account GUID}-Password-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Password-Description-Begin -->
<!-- Description-Source-DDF -->
A character string that specifies the password for the account. For the Get command, only asterisks are returned.
<!-- User-Accounts-{Account GUID}-Password-Description-End -->

<!-- User-Accounts-{Account GUID}-Password-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Password-Editable-End -->

<!-- User-Accounts-{Account GUID}-Password-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Password-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Password-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Password-Examples-End -->

<!-- User-Accounts-{Account GUID}-Password-End -->

<!-- User-Accounts-{Account GUID}-Policies-Begin -->
#### Accounts/{Account GUID}/Policies

<!-- User-Accounts-{Account GUID}-Policies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Policies-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Policies-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Policies
```
<!-- User-Accounts-{Account GUID}-Policies-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Policies-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the mail body type and email age filter.
<!-- User-Accounts-{Account GUID}-Policies-Description-End -->

<!-- User-Accounts-{Account GUID}-Policies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Policies-Editable-End -->

<!-- User-Accounts-{Account GUID}-Policies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Policies-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Policies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Policies-Examples-End -->

<!-- User-Accounts-{Account GUID}-Policies-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Begin -->
##### Accounts/{Account GUID}/Policies/MailBodyType

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Policies/MailBodyType
```
<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the email body type. HTML or plain.
<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Description-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Editable-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| HTML | HTML. |
| plain | Plain. |
<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-AllowedValues-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-Examples-End -->

<!-- User-Accounts-{Account GUID}-Policies-MailBodyType-End -->

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Begin -->
##### Accounts/{Account GUID}/Policies/MaxMailAgeFilter

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Applicability-End -->

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/Policies/MaxMailAgeFilter
```
<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the time window used for syncing mail items to the device.
<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Description-End -->

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Editable-End -->

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-Examples-End -->

<!-- User-Accounts-{Account GUID}-Policies-MaxMailAgeFilter-End -->

<!-- User-Accounts-{Account GUID}-ServerName-Begin -->
#### Accounts/{Account GUID}/ServerName

<!-- User-Accounts-{Account GUID}-ServerName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-ServerName-Applicability-End -->

<!-- User-Accounts-{Account GUID}-ServerName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/ServerName
```
<!-- User-Accounts-{Account GUID}-ServerName-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-ServerName-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the server name used by the account.
<!-- User-Accounts-{Account GUID}-ServerName-Description-End -->

<!-- User-Accounts-{Account GUID}-ServerName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-ServerName-Editable-End -->

<!-- User-Accounts-{Account GUID}-ServerName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-ServerName-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-ServerName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-ServerName-Examples-End -->

<!-- User-Accounts-{Account GUID}-ServerName-End -->

<!-- User-Accounts-{Account GUID}-UserName-Begin -->
#### Accounts/{Account GUID}/UserName

<!-- User-Accounts-{Account GUID}-UserName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-Accounts-{Account GUID}-UserName-Applicability-End -->

<!-- User-Accounts-{Account GUID}-UserName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ActiveSync/Accounts/{Account GUID}/UserName
```
<!-- User-Accounts-{Account GUID}-UserName-OmaUri-End -->

<!-- User-Accounts-{Account GUID}-UserName-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the user name for the account. The user name can't be changed after a sync has been successfully performed. The user name can be in the fully qualified format "`someone@example.com`", or just "username", depending on the type of account created. For most Exchange accounts, the user name format is just "username", whereas for Microsoft, Google, Yahoo, and most POP/IMAP accounts, the user name format is "`someone@example.com`".
<!-- User-Accounts-{Account GUID}-UserName-Description-End -->

<!-- User-Accounts-{Account GUID}-UserName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-UserName-Editable-End -->

<!-- User-Accounts-{Account GUID}-UserName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Accounts-{Account GUID}-UserName-DFProperties-End -->

<!-- User-Accounts-{Account GUID}-UserName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Accounts-{Account GUID}-UserName-Examples-End -->

<!-- User-Accounts-{Account GUID}-UserName-End -->

<!-- ActiveSync-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ActiveSync-CspMoreInfo-End -->

<!-- ActiveSync-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
