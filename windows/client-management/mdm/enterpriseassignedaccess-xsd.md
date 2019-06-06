---
title: EnterpriseAssignedAccess XSD
description: EnterpriseAssignedAccess XSD
ms.assetid: BB3B633E-E361-4B95-9D4A-CE6E08D67ADA
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# EnterpriseAssignedAccess XSD


This XSD can be used to validate that the lockdown XML in the \<Data\> block of the AssignedAccessXML node.

``` syntax
<?xml version="1.0" encoding="utf-16LE" ?>
<!-- 
     In-memory format is Little Endian and
     hence the encoding of this file has to be little endian
     to be in the native format. Make sure that this file's
     encoding is Unicode-16 LE (Unicode Codepage 1200)
 -->
<xs:schema
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  elementFormDefault="qualified"
>
  <!-- COMPLEX TYPE: ROLE LIST TYPE -->
  <xs:complexType name="role_list_t">
    <xs:sequence minOccurs="1" maxOccurs="1">
      <xs:element name="Role" type="role_t" minOccurs="1" maxOccurs="unbounded"/>
    </xs:sequence>
  </xs:complexType>
  <!-- COMPLEX TYPE: START SCREEN SIZE TYPE -->
  <xs:simpleType name="startscreen_size_t">
    <xs:restriction base="xs:string">
      <!-- Small: 4 columns-->
      <xs:enumeration value="Small"/>
      <!-- Large: 6 columns-->
      <xs:enumeration value="Large"/>
    </xs:restriction>
  </xs:simpleType>
  <!-- COMPLEX TYPE: APPLICATION LIST TYPE -->
  <xs:complexType name="application_list_t">
    <xs:sequence minOccurs="0" maxOccurs="1">
      <xs:element name="Application" type="application_t" minOccurs="0" maxOccurs="unbounded" >
        <xs:key name="productIdOrfolderId">
          <xs:selector xpath="."/>
          <xs:field xpath="@productId|@folderId"/>
        </xs:key>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <!-- COMPLEX TYPE: BUTTON LIST TYPE -->
  <xs:complexType name="button_list_t">
    <xs:sequence minOccurs="0" maxOccurs="1">
      <xs:element name="Button" minOccurs="0" maxOccurs="unbounded" type="button_t">
        <xs:unique name="ButtonEventUnique">
          <xs:selector xpath="ButtonEvent" />
          <xs:field xpath="@name" />
        </xs:unique>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <!-- COMPLEX TYPE: MENU ITEM LIST TYPE -->
  <xs:complexType name="menu_item_list_t">
    <xs:sequence minOccurs="0" maxOccurs="1">
      <xs:element name="DisableMenuItems" minOccurs="0" maxOccurs="1"/>
    </xs:sequence>
  </xs:complexType>
  <!-- COMPLEX TYPE: START SCREEN TILE MANIPULATION TYPE -->
  <xs:complexType name="tile_manipulation_t">
    <xs:sequence minOccurs="0" maxOccurs="1">
      <xs:element name="EnableTileManipulation" minOccurs="0" maxOccurs="1"/>
    </xs:sequence>
  </xs:complexType>

  <!-- COMPLEX TYPE: DEFAULT TYPE -->
  <xs:complexType name="default_basic_t">
    <xs:sequence minOccurs="1">
      <xs:element name="ActionCenter" type="actioncenter_t" minOccurs="1"/>
      <xs:element name="WLANSSID" type="wlanssid_t" minOccurs="0"/>
      <xs:element name="Apps" type="application_list_t" minOccurs="1">
        <xs:unique name="duplicateAppsForbidden">
          <xs:selector xpath="Application"/>
          <xs:field xpath="@productId"/>
          <xs:field xpath="@aumid"/>
        </xs:unique>
      </xs:element>
      <xs:element name="Buttons" minOccurs="1">
        <xs:complexType>
          <xs:all>
            <xs:element name="ButtonLockdownList" type="button_list_t" minOccurs="0">
              <xs:unique name="ButtonLockdownUnique">
                <xs:selector xpath="Button" />
                <xs:field xpath="@name" />
              </xs:unique>
            </xs:element>
            <xs:element name="ButtonRemapList" type="button_list_t" minOccurs="0">
              <xs:unique name="ButtonRemapUnique">
                <xs:selector xpath="Button" />
                <xs:field xpath="@name" />
              </xs:unique>
            </xs:element>
          </xs:all>
        </xs:complexType>
      </xs:element>
      <xs:element name="CSPRunner" minOccurs="0"/>
      <xs:element name="MenuItems" type="menu_item_list_t" minOccurs="1"/>
      <xs:element name="Settings" minOccurs="1">
        <xs:complexType>
          <xs:sequence>
            <xs:element name="System" type="setting_t" minOccurs="0" maxOccurs="unbounded" />
            <xs:element name="Application" type="setting_t" minOccurs="0" maxOccurs="unbounded" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element name="Tiles" type="tile_manipulation_t" minOccurs="0" ></xs:element>
    </xs:sequence>
  </xs:complexType>
  <!-- COMPLEX TYPE: ROLE TYPE -->
  <xs:complexType name="role_t">
    <xs:complexContent>
      <xs:extension base="default_basic_t">
        <xs:attribute name="guid" type="guid_t" use="required"/>
        <xs:attribute name="name" type="xs:string" use="required"/>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <!-- COMPLEX TYPE: DEFAULT ROLE TYPE -->
  <xs:complexType name="default_role_t">
    <xs:complexContent>
      <xs:extension base="default_basic_t">
        <xs:sequence minOccurs="1">
          <xs:element name="StartScreenSize" type="startscreen_size_t" minOccurs="1"/>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <!-- COMPLEX TYPE: Action Center -->
  <xs:complexType name="actioncenter_t">
    <xs:attribute type="xs:boolean" name="enabled" use="required"/>
    <xs:attribute type="xs:integer" name="actionCenterNotificationEnabled" use="optional"/>
    <xs:attribute type="xs:integer" name="aboveLockToastEnabled" use="optional"/>
  </xs:complexType>
  <!-- COMPLEX TYPE: APPLICATION TYPE -->
  <xs:complexType name="application_t">
    <xs:all minOccurs="0">
      <xs:element name="PinToStart" type="start_tile_t" />
    </xs:all>
    <xs:attribute name="productId" type="guid_t"/>
    <xs:attribute name="aumid" type="xs:string" use="optional"/>
    <xs:attribute name="folderName" type="xs:string" use="optional"/>
    <xs:attribute name="folderId" type="xs:integer"/>
    <xs:attribute name="parameters" type="xs:string" use="optional"/>
    <xs:attribute name="autoRun" type="xs:boolean" use="optional"/>
  </xs:complexType>
  <!-- COMPLEX TYPE: START SCREEN TILE CONFIGURATION TYPE-->
  <xs:complexType name="start_tile_t">
    <xs:all minOccurs="1" maxOccurs="1">
      <xs:element name="Size" type="tile_size_t" minOccurs="1" />
      <xs:element name="Location" type="tile_location_t" minOccurs="1" />
      <xs:element name="ParentFolderId" type="xs:unsignedLong" minOccurs="0" maxOccurs="1" />
    </xs:all>
  </xs:complexType>
  <!-- COMPLEX TYPE: SETTING TYPE -->
  <xs:complexType name="setting_t">
    <xs:attribute name="name" type="xs:string" use="required"/>
  </xs:complexType>
  <!-- COMPLEX TYPE: BUTTON TYPE -->
  <xs:complexType name="button_t">
    <xs:sequence minOccurs="0" maxOccurs="1">
      <xs:element name="ButtonEvent" type="button_event_t" minOccurs="0" maxOccurs="unbounded" />
    </xs:sequence>
    <xs:attribute name="name" type="supported_button_t" use="required"/>
  </xs:complexType>
  <!-- COMPLEX TYPE: BUTTON EVENT TYPE -->
  <xs:complexType name="button_event_t">
    <xs:all minOccurs="0" maxOccurs="1">
      <xs:element name="Application" type="application_t" minOccurs="0" maxOccurs="1" >
        <xs:key name="productIdOnly">
          <xs:selector xpath="."/>
          <xs:field xpath="@productId"/>
        </xs:key>
      </xs:element>
    </xs:all>
    <xs:attribute name="name" type="supported_button_event_t" use="required"/>
  </xs:complexType>

  <!--COMPLEX TYPE: START TILE TYPE-->
  <xs:complexType name="tile_location_t">
    <xs:sequence minOccurs="0" maxOccurs="1">
      <xs:element name="LocationX" type="xs:unsignedLong"/>
      <xs:element name="LocationY" type="xs:unsignedLong"/>
    </xs:sequence>
  </xs:complexType>

  <!-- SIMPLE TYPE: SUPPORTED BUTTON TYPE -->
  <xs:simpleType name="supported_button_t">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Back"/>
      <xs:enumeration value="Start"/>
      <xs:enumeration value="Search"/>
      <xs:enumeration value="Camera"/>
      <xs:enumeration value="Custom1"/>
      <xs:enumeration value="Custom2"/>
      <xs:enumeration value="Custom3"/>
    </xs:restriction>
  </xs:simpleType>
  <!-- SIMPLE TYPE: SUPPORTED BUTTON EVENT TYPE -->
  <xs:simpleType name="supported_button_event_t">
    <xs:restriction base="xs:string">
      <xs:enumeration value="All"/>
      <xs:enumeration value="Press"/>
      <xs:enumeration value="PressAndHold"/>
    </xs:restriction>
  </xs:simpleType>
  <!-- SIMPLE TYPE: GUID -->
  <xs:simpleType name="guid_t">
    <xs:restriction base="xs:string">
      <xs:pattern value="\{[0-9a-fA-F]{8}\-([0-9a-fA-F]{4}\-){3}[0-9a-fA-F]{12}\}"/>
    </xs:restriction>
  </xs:simpleType>
  <!--SIMPLE TYPE: TILE SIZE-->
  <xs:simpleType name="tile_size_t">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Small"/>
      <xs:enumeration value="Medium"/>
      <xs:enumeration value="Large"/>
    </xs:restriction>
  </xs:simpleType>
  <!-- COMPLEX TYPE: WLANSSID -->
  <xs:complexType name="wlanssid_t">
    <xs:sequence minOccurs="0" maxOccurs="1">
      <xs:element name="Data" type="xs:string"/>
      <xs:element name="Exclusive" type="xs:boolean"/>
    </xs:sequence>
  </xs:complexType>

  <!-- SCHEMA -->
  <xs:element name="HandheldLockdown">
    <xs:complexType>
      <xs:all minOccurs="1">
        <xs:element name="Default" type="default_role_t"/>
        <xs:element name="RoleList" type="role_list_t" minOccurs="0">
          <xs:unique name="duplicateRolesForbidden">
            <xs:selector xpath="Role"/>
            <xs:field xpath="@guid"/>
          </xs:unique>
        </xs:element>
      </xs:all>
      <xs:attribute name="version" use="required" type="xs:decimal"/>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

 

 






