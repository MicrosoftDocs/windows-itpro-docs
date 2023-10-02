---
title: EMAIL2 CSP
description: Learn more about the EMAIL2 CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- EMAIL2-Begin -->
# EMAIL2 CSP

<!-- EMAIL2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The EMAIL2 configuration service provider (CSP) is used to configure Simple Mail Transfer Protocol (SMTP) email accounts.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_CSP\_MAIL capabilities to be accessed from a network configuration application.

> [!IMPORTANT]
> All Add and Replace commands need to be wrapped in an Atomic section.
<!-- EMAIL2-Editable-End -->

<!-- EMAIL2-Tree-Begin -->
The following list shows the EMAIL2 configuration service provider nodes:

- ./User/Vendor/MSFT/EMAIL2
  - [{Account GUID}](#account-guid)
    - [ACCOUNTICON](#account-guidaccounticon)
    - [ACCOUNTTYPE](#account-guidaccounttype)
    - [AUTHNAME](#account-guidauthname)
    - [AUTHREQUIRED](#account-guidauthrequired)
    - [AUTHSECRET](#account-guidauthsecret)
    - [CALENDARSERVER](#account-guidcalendarserver)
    - [CALENDARSERVERREQUIRESSL](#account-guidcalendarserverrequiressl)
    - [CALENDARSYNCSCHEDULE](#account-guidcalendarsyncschedule)
    - [CELLULARONLY](#account-guidcellularonly)
    - [CONTACTSSERVER](#account-guidcontactsserver)
    - [CONTACTSSERVERREQUIRESSL](#account-guidcontactsserverrequiressl)
    - [CONTACTSSYNCSCHEDULE](#account-guidcontactssyncschedule)
    - [DOMAIN](#account-guiddomain)
    - [DWNDAY](#account-guiddwnday)
    - [INSERVER](#account-guidinserver)
    - [KEEPMAX](#account-guidkeepmax)
    - [LINGER](#account-guidlinger)
    - [NAME](#account-guidname)
    - [OUTSERVER](#account-guidoutserver)
    - [REPLYADDR](#account-guidreplyaddr)
    - [RETRIEVE](#account-guidretrieve)
    - [SERVERDELETEACTION](#account-guidserverdeleteaction)
    - [SERVICENAME](#account-guidservicename)
    - [SERVICETYPE](#account-guidservicetype)
    - [SMTPALTAUTHNAME](#account-guidsmtpaltauthname)
    - [SMTPALTDOMAIN](#account-guidsmtpaltdomain)
    - [SMTPALTENABLED](#account-guidsmtpaltenabled)
    - [SMTPALTPASSWORD](#account-guidsmtpaltpassword)
    - [SYNCINGCONTENTTYPES](#account-guidsyncingcontenttypes)
    - [TAGPROPS](#account-guidtagprops)
      - [8128000B](#account-guidtagprops8128000b)
      - [812C000B](#account-guidtagprops812c000b)
<!-- EMAIL2-Tree-End -->

<!-- User-{Account GUID}-Begin -->
## {Account GUID}

<!-- User-{Account GUID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-Applicability-End -->

<!-- User-{Account GUID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}
```
<!-- User-{Account GUID}-OmaUri-End -->

<!-- User-{Account GUID}-Description-Begin -->
<!-- Description-Source-DDF -->
This is unique and identifies a particular account. Also, we can only have 6 additional email accounts. So, depending on how many are already there on the device, we can have from 1 to 6.
<!-- User-{Account GUID}-Description-End -->

<!-- User-{Account GUID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
A globally unique identifier (GUID) must be generated for each email account on the device. Provisioning with an account that has the same GUID as an existing one doesn't create the new account and Add command will fail in this case.

The braces {} around the GUID are required in the EMAIL2 configuration service provider.

- For OMA Client Provisioning, the braces can be sent literally. For example, `<characteristic type="{C556E16F-56C4-4edb-9C64-D9469EE1FBE0}"/>`
- For OMA DM, the braces must be sent using ASCII values of 0x7B and 0x7D respectively. For example, `<Target><LocURI>./Vendor/MSFT/EMAIL2/0x7BC556E16F-56C4-4edb-9C64-D9469EE1FBE0x7D</LocURI></Target>`
<!-- User-{Account GUID}-Editable-End -->

<!-- User-{Account GUID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- User-{Account GUID}-DFProperties-End -->

<!-- User-{Account GUID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-Examples-End -->

<!-- User-{Account GUID}-End -->

<!-- User-{Account GUID}-ACCOUNTICON-Begin -->
### {Account GUID}/ACCOUNTICON

<!-- User-{Account GUID}-ACCOUNTICON-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-ACCOUNTICON-Applicability-End -->

<!-- User-{Account GUID}-ACCOUNTICON-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/ACCOUNTICON
```
<!-- User-{Account GUID}-ACCOUNTICON-OmaUri-End -->

<!-- User-{Account GUID}-ACCOUNTICON-Description-Begin -->
<!-- Description-Source-DDF -->
The location of the icon associated with the account. The account icon can be used as a tile in the Start list or an icon in the applications list under Settings, email & accounts. Some icons are already provided on the device. The suggested icon for POP/IMAP or generic ActiveSync accounts is at res://AccountSettingsSharedRes{ScreenResolution}!%s.genericmail.png. The suggested icon for Exchange Accounts is at res://AccountSettingsSharedRes{ScreenResolution}!%s.office.outlook.png. Custom icons can be added if desired.
<!-- User-{Account GUID}-ACCOUNTICON-Description-End -->

<!-- User-{Account GUID}-ACCOUNTICON-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-ACCOUNTICON-Editable-End -->

<!-- User-{Account GUID}-ACCOUNTICON-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-ACCOUNTICON-DFProperties-End -->

<!-- User-{Account GUID}-ACCOUNTICON-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-ACCOUNTICON-Examples-End -->

<!-- User-{Account GUID}-ACCOUNTICON-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-Begin -->
### {Account GUID}/ACCOUNTTYPE

<!-- User-{Account GUID}-ACCOUNTTYPE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-ACCOUNTTYPE-Applicability-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/ACCOUNTTYPE
```
<!-- User-{Account GUID}-ACCOUNTTYPE-OmaUri-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the type of account. Valid values are: Email - normal email, VVM - visual voice mail.
<!-- User-{Account GUID}-ACCOUNTTYPE-Description-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-ACCOUNTTYPE-Editable-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-ACCOUNTTYPE-DFProperties-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Email | Normal email. |
| VVM | Visual voice mail. |
<!-- User-{Account GUID}-ACCOUNTTYPE-AllowedValues-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-ACCOUNTTYPE-Examples-End -->

<!-- User-{Account GUID}-ACCOUNTTYPE-End -->

<!-- User-{Account GUID}-AUTHNAME-Begin -->
### {Account GUID}/AUTHNAME

<!-- User-{Account GUID}-AUTHNAME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-AUTHNAME-Applicability-End -->

<!-- User-{Account GUID}-AUTHNAME-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/AUTHNAME
```
<!-- User-{Account GUID}-AUTHNAME-OmaUri-End -->

<!-- User-{Account GUID}-AUTHNAME-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the name used to authorize the user to a specific email account (also known as the user's logon name).
<!-- User-{Account GUID}-AUTHNAME-Description-End -->

<!-- User-{Account GUID}-AUTHNAME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-AUTHNAME-Editable-End -->

<!-- User-{Account GUID}-AUTHNAME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-AUTHNAME-DFProperties-End -->

<!-- User-{Account GUID}-AUTHNAME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-AUTHNAME-Examples-End -->

<!-- User-{Account GUID}-AUTHNAME-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-Begin -->
### {Account GUID}/AUTHREQUIRED

<!-- User-{Account GUID}-AUTHREQUIRED-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-AUTHREQUIRED-Applicability-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/AUTHREQUIRED
```
<!-- User-{Account GUID}-AUTHREQUIRED-OmaUri-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies whether the outgoing server requires authentication.

1 for TRUE
0 for FALSE(default).

> [!NOTE]
> If this isn't specified then SMTP authentication won't be done. Also, this is different from the SMTPALTENABLED. That is to specify different set of credentials for SMTP.
<!-- User-{Account GUID}-AUTHREQUIRED-Description-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-AUTHREQUIRED-Editable-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-AUTHREQUIRED-DFProperties-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Server authentication isn't required. |
| 1 | Server authentication is required. |
<!-- User-{Account GUID}-AUTHREQUIRED-AllowedValues-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-AUTHREQUIRED-Examples-End -->

<!-- User-{Account GUID}-AUTHREQUIRED-End -->

<!-- User-{Account GUID}-AUTHSECRET-Begin -->
### {Account GUID}/AUTHSECRET

<!-- User-{Account GUID}-AUTHSECRET-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-AUTHSECRET-Applicability-End -->

<!-- User-{Account GUID}-AUTHSECRET-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/AUTHSECRET
```
<!-- User-{Account GUID}-AUTHSECRET-OmaUri-End -->

<!-- User-{Account GUID}-AUTHSECRET-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the user's password. The same password is used for SMTP authentication.
<!-- User-{Account GUID}-AUTHSECRET-Description-End -->

<!-- User-{Account GUID}-AUTHSECRET-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-AUTHSECRET-Editable-End -->

<!-- User-{Account GUID}-AUTHSECRET-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-AUTHSECRET-DFProperties-End -->

<!-- User-{Account GUID}-AUTHSECRET-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-AUTHSECRET-Examples-End -->

<!-- User-{Account GUID}-AUTHSECRET-End -->

<!-- User-{Account GUID}-CALENDARSERVER-Begin -->
### {Account GUID}/CALENDARSERVER

<!-- User-{Account GUID}-CALENDARSERVER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-CALENDARSERVER-Applicability-End -->

<!-- User-{Account GUID}-CALENDARSERVER-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/CALENDARSERVER
```
<!-- User-{Account GUID}-CALENDARSERVER-OmaUri-End -->

<!-- User-{Account GUID}-CALENDARSERVER-Description-Begin -->
<!-- Description-Source-DDF -->
Server for calendar sync if it's different from the email server.
<!-- User-{Account GUID}-CALENDARSERVER-Description-End -->

<!-- User-{Account GUID}-CALENDARSERVER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-CALENDARSERVER-Editable-End -->

<!-- User-{Account GUID}-CALENDARSERVER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-CALENDARSERVER-DFProperties-End -->

<!-- User-{Account GUID}-CALENDARSERVER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-CALENDARSERVER-Examples-End -->

<!-- User-{Account GUID}-CALENDARSERVER-End -->

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Begin -->
### {Account GUID}/CALENDARSERVERREQUIRESSL

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Applicability-End -->

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/CALENDARSERVERREQUIRESSL
```
<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-OmaUri-End -->

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates if the connection to the calendar server requires SSL.
<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Description-End -->

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Editable-End -->

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-DFProperties-End -->

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-Examples-End -->

<!-- User-{Account GUID}-CALENDARSERVERREQUIRESSL-End -->

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Begin -->
### {Account GUID}/CALENDARSYNCSCHEDULE

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Applicability-End -->

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/CALENDARSYNCSCHEDULE
```
<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-OmaUri-End -->

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Description-Begin -->
<!-- Description-Source-DDF -->
Sets the schedule for syncing calendar items.
<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Description-End -->

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Editable-End -->

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-DFProperties-End -->

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-Examples-End -->

<!-- User-{Account GUID}-CALENDARSYNCSCHEDULE-End -->

<!-- User-{Account GUID}-CELLULARONLY-Begin -->
### {Account GUID}/CELLULARONLY

<!-- User-{Account GUID}-CELLULARONLY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-CELLULARONLY-Applicability-End -->

<!-- User-{Account GUID}-CELLULARONLY-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/CELLULARONLY
```
<!-- User-{Account GUID}-CELLULARONLY-OmaUri-End -->

<!-- User-{Account GUID}-CELLULARONLY-Description-Begin -->
<!-- Description-Source-DDF -->
If this flag is set, the account only uses the cellular network and not Wi-Fi.
<!-- User-{Account GUID}-CELLULARONLY-Description-End -->

<!-- User-{Account GUID}-CELLULARONLY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-CELLULARONLY-Editable-End -->

<!-- User-{Account GUID}-CELLULARONLY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-CELLULARONLY-DFProperties-End -->

<!-- User-{Account GUID}-CELLULARONLY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-CELLULARONLY-Examples-End -->

<!-- User-{Account GUID}-CELLULARONLY-End -->

<!-- User-{Account GUID}-CONTACTSSERVER-Begin -->
### {Account GUID}/CONTACTSSERVER

<!-- User-{Account GUID}-CONTACTSSERVER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-CONTACTSSERVER-Applicability-End -->

<!-- User-{Account GUID}-CONTACTSSERVER-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/CONTACTSSERVER
```
<!-- User-{Account GUID}-CONTACTSSERVER-OmaUri-End -->

<!-- User-{Account GUID}-CONTACTSSERVER-Description-Begin -->
<!-- Description-Source-DDF -->
Server for contact sync if it's different from the email server.
<!-- User-{Account GUID}-CONTACTSSERVER-Description-End -->

<!-- User-{Account GUID}-CONTACTSSERVER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-CONTACTSSERVER-Editable-End -->

<!-- User-{Account GUID}-CONTACTSSERVER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-CONTACTSSERVER-DFProperties-End -->

<!-- User-{Account GUID}-CONTACTSSERVER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-CONTACTSSERVER-Examples-End -->

<!-- User-{Account GUID}-CONTACTSSERVER-End -->

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Begin -->
### {Account GUID}/CONTACTSSERVERREQUIRESSL

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Applicability-End -->

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/CONTACTSSERVERREQUIRESSL
```
<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-OmaUri-End -->

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates if the connection to the contact server requires SSL.
<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Description-End -->

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Editable-End -->

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-DFProperties-End -->

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-Examples-End -->

<!-- User-{Account GUID}-CONTACTSSERVERREQUIRESSL-End -->

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Begin -->
### {Account GUID}/CONTACTSSYNCSCHEDULE

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Applicability-End -->

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/CONTACTSSYNCSCHEDULE
```
<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-OmaUri-End -->

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Description-Begin -->
<!-- Description-Source-DDF -->
Sets the schedule for syncing contact items.
<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Description-End -->

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Editable-End -->

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-DFProperties-End -->

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-Examples-End -->

<!-- User-{Account GUID}-CONTACTSSYNCSCHEDULE-End -->

<!-- User-{Account GUID}-DOMAIN-Begin -->
### {Account GUID}/DOMAIN

<!-- User-{Account GUID}-DOMAIN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-DOMAIN-Applicability-End -->

<!-- User-{Account GUID}-DOMAIN-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/DOMAIN
```
<!-- User-{Account GUID}-DOMAIN-OmaUri-End -->

<!-- User-{Account GUID}-DOMAIN-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the incoming server credentials domain. Limited to 255 characters.
<!-- User-{Account GUID}-DOMAIN-Description-End -->

<!-- User-{Account GUID}-DOMAIN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-DOMAIN-Editable-End -->

<!-- User-{Account GUID}-DOMAIN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-DOMAIN-DFProperties-End -->

<!-- User-{Account GUID}-DOMAIN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-DOMAIN-Examples-End -->

<!-- User-{Account GUID}-DOMAIN-End -->

<!-- User-{Account GUID}-DWNDAY-Begin -->
### {Account GUID}/DWNDAY

<!-- User-{Account GUID}-DWNDAY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-DWNDAY-Applicability-End -->

<!-- User-{Account GUID}-DWNDAY-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/DWNDAY
```
<!-- User-{Account GUID}-DWNDAY-OmaUri-End -->

<!-- User-{Account GUID}-DWNDAY-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies how many days' worth of email should be downloaded from the server.
<!-- User-{Account GUID}-DWNDAY-Description-End -->

<!-- User-{Account GUID}-DWNDAY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-DWNDAY-Editable-End -->

<!-- User-{Account GUID}-DWNDAY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-DWNDAY-DFProperties-End -->

<!-- User-{Account GUID}-DWNDAY-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| -1 | Specifies that all email currently on the server should be downloaded. |
| 7 | Specifies that 7 days’ worth of email should be downloaded. |
| 14 | Specifies that 14 days’ worth of email should be downloaded. |
| 30 | Specifies that 30 days’ worth of email should be downloaded. |
| 90 | Specifies that 90 days’ worth of email should be downloaded. |
<!-- User-{Account GUID}-DWNDAY-AllowedValues-End -->

<!-- User-{Account GUID}-DWNDAY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-DWNDAY-Examples-End -->

<!-- User-{Account GUID}-DWNDAY-End -->

<!-- User-{Account GUID}-INSERVER-Begin -->
### {Account GUID}/INSERVER

<!-- User-{Account GUID}-INSERVER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-INSERVER-Applicability-End -->

<!-- User-{Account GUID}-INSERVER-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/INSERVER
```
<!-- User-{Account GUID}-INSERVER-OmaUri-End -->

<!-- User-{Account GUID}-INSERVER-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies how many days' worth of email should be downloaded from the server. server name:port number.
<!-- User-{Account GUID}-INSERVER-Description-End -->

<!-- User-{Account GUID}-INSERVER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-INSERVER-Editable-End -->

<!-- User-{Account GUID}-INSERVER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-INSERVER-DFProperties-End -->

<!-- User-{Account GUID}-INSERVER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-INSERVER-Examples-End -->

<!-- User-{Account GUID}-INSERVER-End -->

<!-- User-{Account GUID}-KEEPMAX-Begin -->
### {Account GUID}/KEEPMAX

<!-- User-{Account GUID}-KEEPMAX-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-KEEPMAX-Applicability-End -->

<!-- User-{Account GUID}-KEEPMAX-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/KEEPMAX
```
<!-- User-{Account GUID}-KEEPMAX-OmaUri-End -->

<!-- User-{Account GUID}-KEEPMAX-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the maximum size for a message attachment. Attachments beyond this size won't be downloaded but it will remain on the server. The message itself will be downloaded. This value can be set only for IMAP4 accounts. The limit's specified in KB.
<!-- User-{Account GUID}-KEEPMAX-Description-End -->

<!-- User-{Account GUID}-KEEPMAX-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-KEEPMAX-Editable-End -->

<!-- User-{Account GUID}-KEEPMAX-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-KEEPMAX-DFProperties-End -->

<!-- User-{Account GUID}-KEEPMAX-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| -1 | No limit's enforced. |
| 0 | No attachment is downloaded. |
| 25 | 25 KB. |
| 50 | 50 KB. |
| 100 | 100 KB. |
| 250 | 250 KB. |
<!-- User-{Account GUID}-KEEPMAX-AllowedValues-End -->

<!-- User-{Account GUID}-KEEPMAX-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-KEEPMAX-Examples-End -->

<!-- User-{Account GUID}-KEEPMAX-End -->

<!-- User-{Account GUID}-LINGER-Begin -->
### {Account GUID}/LINGER

<!-- User-{Account GUID}-LINGER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-LINGER-Applicability-End -->

<!-- User-{Account GUID}-LINGER-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/LINGER
```
<!-- User-{Account GUID}-LINGER-OmaUri-End -->

<!-- User-{Account GUID}-LINGER-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the length of time between email send/receive updates in minutes. 0 indicates that updates must be performed manually.
<!-- User-{Account GUID}-LINGER-Description-End -->

<!-- User-{Account GUID}-LINGER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-LINGER-Editable-End -->

<!-- User-{Account GUID}-LINGER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[(-1)-2147483647]` |
| Default Value  | 15 |
<!-- User-{Account GUID}-LINGER-DFProperties-End -->

<!-- User-{Account GUID}-LINGER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-LINGER-Examples-End -->

<!-- User-{Account GUID}-LINGER-End -->

<!-- User-{Account GUID}-NAME-Begin -->
### {Account GUID}/NAME

<!-- User-{Account GUID}-NAME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-NAME-Applicability-End -->

<!-- User-{Account GUID}-NAME-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/NAME
```
<!-- User-{Account GUID}-NAME-OmaUri-End -->

<!-- User-{Account GUID}-NAME-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the name of the sender displayed on a sent email. It should be set to the user's name. Limited to 255 characters.
<!-- User-{Account GUID}-NAME-Description-End -->

<!-- User-{Account GUID}-NAME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-NAME-Editable-End -->

<!-- User-{Account GUID}-NAME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-NAME-DFProperties-End -->

<!-- User-{Account GUID}-NAME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-NAME-Examples-End -->

<!-- User-{Account GUID}-NAME-End -->

<!-- User-{Account GUID}-OUTSERVER-Begin -->
### {Account GUID}/OUTSERVER

<!-- User-{Account GUID}-OUTSERVER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-OUTSERVER-Applicability-End -->

<!-- User-{Account GUID}-OUTSERVER-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/OUTSERVER
```
<!-- User-{Account GUID}-OUTSERVER-OmaUri-End -->

<!-- User-{Account GUID}-OUTSERVER-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the name of the messaging service's outgoing email server. Limited to 62 characters. The value format is: server name:port number.
<!-- User-{Account GUID}-OUTSERVER-Description-End -->

<!-- User-{Account GUID}-OUTSERVER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-OUTSERVER-Editable-End -->

<!-- User-{Account GUID}-OUTSERVER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-OUTSERVER-DFProperties-End -->

<!-- User-{Account GUID}-OUTSERVER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-OUTSERVER-Examples-End -->

<!-- User-{Account GUID}-OUTSERVER-End -->

<!-- User-{Account GUID}-REPLYADDR-Begin -->
### {Account GUID}/REPLYADDR

<!-- User-{Account GUID}-REPLYADDR-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-REPLYADDR-Applicability-End -->

<!-- User-{Account GUID}-REPLYADDR-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/REPLYADDR
```
<!-- User-{Account GUID}-REPLYADDR-OmaUri-End -->

<!-- User-{Account GUID}-REPLYADDR-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the reply email address of the user (usually the same as the user email address). Sending email will fail without it. Limited to 255 characters.
<!-- User-{Account GUID}-REPLYADDR-Description-End -->

<!-- User-{Account GUID}-REPLYADDR-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-REPLYADDR-Editable-End -->

<!-- User-{Account GUID}-REPLYADDR-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-REPLYADDR-DFProperties-End -->

<!-- User-{Account GUID}-REPLYADDR-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-REPLYADDR-Examples-End -->

<!-- User-{Account GUID}-REPLYADDR-End -->

<!-- User-{Account GUID}-RETRIEVE-Begin -->
### {Account GUID}/RETRIEVE

<!-- User-{Account GUID}-RETRIEVE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-RETRIEVE-Applicability-End -->

<!-- User-{Account GUID}-RETRIEVE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/RETRIEVE
```
<!-- User-{Account GUID}-RETRIEVE-OmaUri-End -->

<!-- User-{Account GUID}-RETRIEVE-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the maximum size in bytes for messages retrieved from the incoming email server. Messages beyond this size are retrieved, but truncated.
<!-- User-{Account GUID}-RETRIEVE-Description-End -->

<!-- User-{Account GUID}-RETRIEVE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-RETRIEVE-Editable-End -->

<!-- User-{Account GUID}-RETRIEVE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[(-1)-2147483647]` |
<!-- User-{Account GUID}-RETRIEVE-DFProperties-End -->

<!-- User-{Account GUID}-RETRIEVE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-RETRIEVE-Examples-End -->

<!-- User-{Account GUID}-RETRIEVE-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-Begin -->
### {Account GUID}/SERVERDELETEACTION

<!-- User-{Account GUID}-SERVERDELETEACTION-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SERVERDELETEACTION-Applicability-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SERVERDELETEACTION
```
<!-- User-{Account GUID}-SERVERDELETEACTION-OmaUri-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies how message is deleted on server. The default action depends on the transport.
<!-- User-{Account GUID}-SERVERDELETEACTION-Description-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-SERVERDELETEACTION-Editable-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SERVERDELETEACTION-DFProperties-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Delete message on the server. |
| 2 | Keep the message on the server (delete to the Trash folder). |
<!-- User-{Account GUID}-SERVERDELETEACTION-AllowedValues-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-SERVERDELETEACTION-Examples-End -->

<!-- User-{Account GUID}-SERVERDELETEACTION-End -->

<!-- User-{Account GUID}-SERVICENAME-Begin -->
### {Account GUID}/SERVICENAME

<!-- User-{Account GUID}-SERVICENAME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SERVICENAME-Applicability-End -->

<!-- User-{Account GUID}-SERVICENAME-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SERVICENAME
```
<!-- User-{Account GUID}-SERVICENAME-OmaUri-End -->

<!-- User-{Account GUID}-SERVICENAME-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the name of the email service to create or edit (32 characters maximum).
<!-- User-{Account GUID}-SERVICENAME-Description-End -->

<!-- User-{Account GUID}-SERVICENAME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-SERVICENAME-Editable-End -->

<!-- User-{Account GUID}-SERVICENAME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SERVICENAME-DFProperties-End -->

<!-- User-{Account GUID}-SERVICENAME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
> [!NOTE]
> The EMAIL2 Configuration Service Provider doesn't support the OMA DM **Replace** command on the parameters **SERVICENAME** and **SERVICETYPE**. To replace either the email account name or the account service type, the existing email account must be deleted and then a new one must be created.
<!-- User-{Account GUID}-SERVICENAME-Examples-End -->

<!-- User-{Account GUID}-SERVICENAME-End -->

<!-- User-{Account GUID}-SERVICETYPE-Begin -->
### {Account GUID}/SERVICETYPE

<!-- User-{Account GUID}-SERVICETYPE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SERVICETYPE-Applicability-End -->

<!-- User-{Account GUID}-SERVICETYPE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SERVICETYPE
```
<!-- User-{Account GUID}-SERVICETYPE-OmaUri-End -->

<!-- User-{Account GUID}-SERVICETYPE-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the type of email service to create or edit (for example, "IMAP4" or "POP3").
<!-- User-{Account GUID}-SERVICETYPE-Description-End -->

<!-- User-{Account GUID}-SERVICETYPE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> The EMAIL2 Configuration Service Provider doesn't support the OMA DM **Replace** command on the parameters **SERVICENAME** and **SERVICETYPE**. To replace either the email account name or the account service type, the existing email account must be deleted and then a new one must be created.
<!-- User-{Account GUID}-SERVICETYPE-Editable-End -->

<!-- User-{Account GUID}-SERVICETYPE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SERVICETYPE-DFProperties-End -->

<!-- User-{Account GUID}-SERVICETYPE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-SERVICETYPE-Examples-End -->

<!-- User-{Account GUID}-SERVICETYPE-End -->

<!-- User-{Account GUID}-SMTPALTAUTHNAME-Begin -->
### {Account GUID}/SMTPALTAUTHNAME

<!-- User-{Account GUID}-SMTPALTAUTHNAME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SMTPALTAUTHNAME-Applicability-End -->

<!-- User-{Account GUID}-SMTPALTAUTHNAME-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SMTPALTAUTHNAME
```
<!-- User-{Account GUID}-SMTPALTAUTHNAME-OmaUri-End -->

<!-- User-{Account GUID}-SMTPALTAUTHNAME-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the display name associated with the user's alternative SMTP email account.
<!-- User-{Account GUID}-SMTPALTAUTHNAME-Description-End -->

<!-- User-{Account GUID}-SMTPALTAUTHNAME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTAUTHNAME-Editable-End -->

<!-- User-{Account GUID}-SMTPALTAUTHNAME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SMTPALTAUTHNAME-DFProperties-End -->

<!-- User-{Account GUID}-SMTPALTAUTHNAME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTAUTHNAME-Examples-End -->

<!-- User-{Account GUID}-SMTPALTAUTHNAME-End -->

<!-- User-{Account GUID}-SMTPALTDOMAIN-Begin -->
### {Account GUID}/SMTPALTDOMAIN

<!-- User-{Account GUID}-SMTPALTDOMAIN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SMTPALTDOMAIN-Applicability-End -->

<!-- User-{Account GUID}-SMTPALTDOMAIN-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SMTPALTDOMAIN
```
<!-- User-{Account GUID}-SMTPALTDOMAIN-OmaUri-End -->

<!-- User-{Account GUID}-SMTPALTDOMAIN-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the domain name for the user's alternative SMTP account.
<!-- User-{Account GUID}-SMTPALTDOMAIN-Description-End -->

<!-- User-{Account GUID}-SMTPALTDOMAIN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTDOMAIN-Editable-End -->

<!-- User-{Account GUID}-SMTPALTDOMAIN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SMTPALTDOMAIN-DFProperties-End -->

<!-- User-{Account GUID}-SMTPALTDOMAIN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTDOMAIN-Examples-End -->

<!-- User-{Account GUID}-SMTPALTDOMAIN-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-Begin -->
### {Account GUID}/SMTPALTENABLED

<!-- User-{Account GUID}-SMTPALTENABLED-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SMTPALTENABLED-Applicability-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SMTPALTENABLED
```
<!-- User-{Account GUID}-SMTPALTENABLED-OmaUri-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies if the user's alternate SMTP account is enabled.
<!-- User-{Account GUID}-SMTPALTENABLED-Description-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTENABLED-Editable-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SMTPALTENABLED-DFProperties-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | The user's alternate SMTP email account is disabled. |
| 1 | The user's alternate SMTP email account is enabled. |
<!-- User-{Account GUID}-SMTPALTENABLED-AllowedValues-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTENABLED-Examples-End -->

<!-- User-{Account GUID}-SMTPALTENABLED-End -->

<!-- User-{Account GUID}-SMTPALTPASSWORD-Begin -->
### {Account GUID}/SMTPALTPASSWORD

<!-- User-{Account GUID}-SMTPALTPASSWORD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SMTPALTPASSWORD-Applicability-End -->

<!-- User-{Account GUID}-SMTPALTPASSWORD-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SMTPALTPASSWORD
```
<!-- User-{Account GUID}-SMTPALTPASSWORD-OmaUri-End -->

<!-- User-{Account GUID}-SMTPALTPASSWORD-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies the password for the user's alternate SMTP account.
<!-- User-{Account GUID}-SMTPALTPASSWORD-Description-End -->

<!-- User-{Account GUID}-SMTPALTPASSWORD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTPASSWORD-Editable-End -->

<!-- User-{Account GUID}-SMTPALTPASSWORD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SMTPALTPASSWORD-DFProperties-End -->

<!-- User-{Account GUID}-SMTPALTPASSWORD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-SMTPALTPASSWORD-Examples-End -->

<!-- User-{Account GUID}-SMTPALTPASSWORD-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Begin -->
### {Account GUID}/SYNCINGCONTENTTYPES

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Applicability-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/SYNCINGCONTENTTYPES
```
<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-OmaUri-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies a bitmask for which content types are supported for syncing (eg: Mail, Contacts, Calendar).
<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Description-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Editable-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-DFProperties-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 0x0 | No data. |
| 0x1 | Contacts. |
| 0x2 | Mail. |
| 0x4 | Appointments. |
| 0x8 | Tasks. |
| 0x10 | Notes. |
| 0x60 | Feeds. |
| 0x180 | Network Photo. |
| 0x200 | Group and room. |
| 0x400 | Chat. |
| 0x800 | Email Recipient Email. |
| 0x1000 | Server Link. |
| 0xffffffff | All items. |
<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-AllowedValues-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-Examples-End -->

<!-- User-{Account GUID}-SYNCINGCONTENTTYPES-End -->

<!-- User-{Account GUID}-TAGPROPS-Begin -->
### {Account GUID}/TAGPROPS

<!-- User-{Account GUID}-TAGPROPS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-TAGPROPS-Applicability-End -->

<!-- User-{Account GUID}-TAGPROPS-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/TAGPROPS
```
<!-- User-{Account GUID}-TAGPROPS-OmaUri-End -->

<!-- User-{Account GUID}-TAGPROPS-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies that stated parameter element name attributes is nonstandard tag properties.
<!-- User-{Account GUID}-TAGPROPS-Description-End -->

<!-- User-{Account GUID}-TAGPROPS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-TAGPROPS-Editable-End -->

<!-- User-{Account GUID}-TAGPROPS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-TAGPROPS-DFProperties-End -->

<!-- User-{Account GUID}-TAGPROPS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-TAGPROPS-Examples-End -->

<!-- User-{Account GUID}-TAGPROPS-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-Begin -->
#### {Account GUID}/TAGPROPS/8128000B

<!-- User-{Account GUID}-TAGPROPS-8128000B-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-TAGPROPS-8128000B-Applicability-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/TAGPROPS/8128000B
```
<!-- User-{Account GUID}-TAGPROPS-8128000B-OmaUri-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies if the incoming email server requires SSL.
<!-- User-{Account GUID}-TAGPROPS-8128000B-Description-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-TAGPROPS-8128000B-Editable-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-TAGPROPS-8128000B-DFProperties-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | SSL isn't required. |
| 1 | SSL is required. |
<!-- User-{Account GUID}-TAGPROPS-8128000B-AllowedValues-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-TAGPROPS-8128000B-Examples-End -->

<!-- User-{Account GUID}-TAGPROPS-8128000B-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-Begin -->
#### {Account GUID}/TAGPROPS/812C000B

<!-- User-{Account GUID}-TAGPROPS-812C000B-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- User-{Account GUID}-TAGPROPS-812C000B-Applicability-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EMAIL2/{Account GUID}/TAGPROPS/812C000B
```
<!-- User-{Account GUID}-TAGPROPS-812C000B-OmaUri-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-Description-Begin -->
<!-- Description-Source-DDF -->
Character string that specifies if the outgoing email server requires SSL.
<!-- User-{Account GUID}-TAGPROPS-812C000B-Description-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{Account GUID}-TAGPROPS-812C000B-Editable-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{Account GUID}-TAGPROPS-812C000B-DFProperties-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | SSL isn't required. |
| 1 | SSL is required. |
<!-- User-{Account GUID}-TAGPROPS-812C000B-AllowedValues-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{Account GUID}-TAGPROPS-812C000B-Examples-End -->

<!-- User-{Account GUID}-TAGPROPS-812C000B-End -->

<!-- EMAIL2-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Remarks

When an application removal or configuration roll-back is provisioned, the EMAIL2 CSP passes the request to Configuration Manager, which handles the transaction externally. When a MAPI application is removed, the accounts that were created with it are deleted. All messages and other properties that the transport (like Short Message Service \[SMS\], Post Office Protocol \[POP\], or Simple Mail Transfer Protocol \[SMTP\]) might have stored, are lost. If an attempt to create a new email account is unsuccessful, the new account is automatically deleted. If an attempt to edit an existing account is unsuccessful, the original configuration is automatically rolled back (restored).

For OMA DM, the EMAIL2 CSP handles the Replace command differently from most other configuration service providers. For the EMAIL2 CSP, Configuration Manager implicitly adds the missing part of the node to be replaced or any segment in the path of the node if it's left out in the \<LocURI>\</LocURI\> block. There are separate parameters defined for the outgoing server logon credentials. The following are the usage rules for these credentials:

- The incoming server logon credentials are used (AUTHNAME, AUTHSECRET, and DOMAIN) unless the outgoing server credentials are set.
- If some of the outgoing server credentials parameters are present, then the EMAIL2 Configuration Service Provider will be considered in error.
- Account details can't be queried unless the account GUID is known. Currently, there's no way to perform a top-level query for account GUIDs.

If the connection to the mail server is initiated with deferred SSL, the mail server can send STARTTLS as a server capability and TLS will be enabled. The following steps show how to enable TLS.

1. The device attempts to connect to the mail server using SSL
2. If the SSL connection fails, the device attempts to connect using deferred SSL
3. If the connection fails over both SSL and deferred SSL, and the user selected **Server requires encrypted (SSL) connection**, the device doesn't attempt another connection
4. If the user didn't select **Server requires encrypted (SSL) connection**, the device attempts to establish a non-SSL connection
5. If the connection succeeds using any of the encryption protocols, the device requests the server capabilities.
6. If one of the capabilities sent by the mail server is STARTTLS and the connection is deferred SSL, then the device enables TLS. TLS isn't enabled on connections using SSL or non-SSL.
<!-- EMAIL2-CspMoreInfo-End -->

<!-- EMAIL2-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
