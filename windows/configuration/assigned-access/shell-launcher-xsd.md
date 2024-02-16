---
title: Assigned Access XML Schema Definition (XSD)
description: Shell Launcher XSD reference article.
ms.topic: reference
ms.date: 02/15/2024
---

# Shell Launcher XML Schema Definition (XSD)

This reference article contains the XML schema definitions (XSD) for Shell Launcher and Shell Launcher v2.

## Shell Launcher XSD

```xml
<xs:schema elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
    xmlns:default="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
    xmlns:V2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration" targetNamespace="http://schemas.microsoft.com/ShellLauncher/2018/Configuration">

    <xs:import namespace="http://schemas.microsoft.com/ShellLauncher/2019/Configuration"/>

    <xs:complexType name="profile_list_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:choice minOccurs="1" maxOccurs="1">
                <xs:element name="DefaultProfile" type="default_profile_t"/>
                <xs:element name="Profile" type="profile_t"/>
            </xs:choice>
            <xs:element name="Profile" type="profile_t" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="default_profile_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="Shell" type="default_shell_t" minOccurs="1" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="default_shell_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="DefaultAction" type="default_action_t" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
        <xs:attribute name="Shell" type="xs:string" use="required"/>
        <xs:attribute ref="V2:AppType"/>
        <xs:attribute ref="V2:AllAppsFullScreen"/>
    </xs:complexType>

    <xs:complexType name="custom_shell_t">
        <xs:all minOccurs="1" maxOccurs="1">
            <xs:element name="ReturnCodeActions" type="return_code_action_list_t" minOccurs="0" maxOccurs="1">
                <xs:unique name="ForbidDuplicatedReturnCodes">
                    <xs:selector xpath="default:ReturnCodeAction"/>
                    <xs:field xpath="@ReturnCode"/>
                </xs:unique>
            </xs:element>
            <xs:element name="DefaultAction" type="default_action_t" minOccurs="0" maxOccurs="1"/>
        </xs:all>
        <xs:attribute name="Shell" type="xs:string" />
        <xs:attribute ref="V2:AppType"/>
        <xs:attribute ref="V2:AllAppsFullScreen"/>
    </xs:complexType>

    <xs:complexType name="default_action_t">
        <xs:attribute name="Action" type="system_action_t" use="required"/>
    </xs:complexType>

    <xs:simpleType name="system_action_t">
        <xs:restriction base="xs:string">
            <xs:enumeration value="RestartShell" />
            <xs:enumeration value="RestartDevice" />
            <xs:enumeration value="ShutdownDevice" />
            <xs:enumeration value="DoNothing" />
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="profile_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="Shell" type="custom_shell_t" minOccurs="1" maxOccurs="1"/>
        </xs:sequence>
        <xs:attribute name="Id" type="guid_t" use="required"/>
        <xs:attribute name="Name" type="xs:string" use="optional"/>
    </xs:complexType>

    <xs:simpleType name="guid_t">
        <xs:restriction base="xs:string">
            <xs:pattern value="\{[0-9a-fA-F]{8}\-([0-9a-fA-F]{4}\-){3}[0-9a-fA-F]{12}\}"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="return_code_action_list_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="ReturnCodeAction" type="return_code_action_t" minOccurs="1" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="return_code_action_t">
        <xs:attribute name="ReturnCode" type="xs:integer" use="required"/>
        <xs:attribute name="Action" type="system_action_t" use="required"/>
    </xs:complexType>

    <xs:complexType name="config_list_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="Config" type="config_t" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="config_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:choice minOccurs="1" maxOccurs="1">
                <xs:element name="Account" type="account_t" minOccurs="1" maxOccurs="1">
                    <xs:key name="mutexNameOrSID">
                        <xs:selector xpath="."/>
                        <xs:field xpath="@Name|@Sid"/>
                    </xs:key>
                </xs:element>
                <xs:element name="AutoLogonAccount" type="autologon_account_t" minOccurs="1" maxOccurs="1"/>
            </xs:choice>
            <xs:element name="Profile" type="profile_id_t" minOccurs="1" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="account_t">
        <xs:attribute name="Name" type="xs:string" use="optional"/>
        <xs:attribute name="Sid" type="xs:string" use="optional"/>
    </xs:complexType>

    <xs:complexType name="autologon_account_t">
        <xs:attribute name="HiddenId" type="guid_t" fixed="{50021E57-1CE4-49DF-99A9-8DB659E2C2DD}"/>
    </xs:complexType>

    <xs:complexType name="profile_id_t">
        <xs:attribute name="Id" type="guid_t" use="required"/>
    </xs:complexType>

    <!--below is the definition of the config xml content-->
    <xs:element name="ShellLauncherConfiguration">
        <xs:complexType>
            <xs:sequence minOccurs="1" maxOccurs="1">
                <xs:element name="Profiles" type="profile_list_t" minOccurs="1" maxOccurs="1">
                    <xs:unique name="ForbidDuplicatedProfiles">
                        <xs:selector xpath="default:Profile"/>
                        <xs:field xpath="@Id"/>
                    </xs:unique>
                </xs:element>
                <xs:element name="Configs" type="config_list_t" minOccurs="0" maxOccurs="1">
                    <xs:unique name="ForbidDuplicatedConfigs_Name">
                        <xs:selector xpath="default:Config/default:Account"/>
                        <xs:field xpath="@Name"/>
                    </xs:unique>
                    <xs:unique name="ForbidDuplicatedConfigs_Sid">
                        <xs:selector xpath="default:Config/default:Account"/>
                        <xs:field xpath="@Sid"/>
                    </xs:unique>
                    <xs:unique name="ForbidDuplicatedAutoLogonAccount">
                        <xs:selector xpath="default:Config/default:AutoLogonAccount"/>
                        <xs:field xpath="@HiddenId"/>
                    </xs:unique>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

## Shell Launcher v2 XSD

```xml
<xs:schema elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/ShellLauncher/2019/Configuration"
    xmlns:default="http://schemas.microsoft.com/ShellLauncher/2019/Configuration" targetNamespace="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">

    <xs:attribute name="AppType">
        <xs:simpleType>
            <xs:restriction base="xs:string">
                <xs:enumeration value="UWP"/>
                <xs:enumeration value="Desktop"/>
            </xs:restriction>
        </xs:simpleType>
    </xs:attribute>

    <xs:attribute name="AllAppsFullScreen" type="xs:boolean"/>

</xs:schema>
```