---
author: paolomatarazzo
ms.author: paoloma
ms.date: 02/05/2024
ms.topic: include
---

<!--UserGroup example-->

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config">

    <Profiles>
        <!-- Add configuration here as needed -->
    </Profiles>

    <Configs>
        <Config>
            <Account>contoso\user</Account>
            <DefaultProfile Id="{GUID}"/>
        </Config>
        <Config>
            <Account>AzureAD\user@contoso.onmicrosoft.com</Account>
            <DefaultProfile Id="{GUID}"/>
        </Config>
        <Config>
            <Account>user</Account>
            <DefaultProfile Id="{GUID}"/>
        </Config>
        <Config>
            <AutoLogonAccount rs5:DisplayName="Hello World"/>
            <DefaultProfile Id="{GUID}"/>
        </Config>
        <Config>
            <UserGroup Type="LocalGroup" Name="groupname" />
            <DefaultProfile Id="{GUID}"/>
        </Config>
        <Config>
            <UserGroup Type="ActiveDirectoryGroup" Name="contoso\groupname" />
            <DefaultProfile Id="{GUID}"/>
        </Config>
        <Config>
            <UserGroup Type="AzureActiveDirectoryGroup" Name="Group_GUID" />
            <DefaultProfile Id="{GUID}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```
