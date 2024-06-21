---
title: DeclaredConfiguration DDF file
description: View the XML file containing the device description framework (DDF) for the DeclaredConfiguration configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# DeclaredConfiguration DDF file

The following XML file contains the device description framework (DDF) for the DeclaredConfiguration configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>DeclaredConfiguration</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The Declared Configuration CSP (Configuration Service Provider) allows the OMA-DM server to provide the device with the complete collection of setting names and associated values based on a specified scenario. The Declared Configuration stack on the device is responsible for handling the configuration request along with maintaining its state including updates to the scenario. It also provides the means to retrieve a scenario’s settings from the device. The configuration request and settings retrieval request are performed asynchronously, freeing up the server’s worker thread to do other useful work. The subsequent results can be retrieved through Declared Configuration’s result nodes.</Description>
      <DFFormat>
        <node />
      </DFFormat>
      <Occurrence>
        <One />
      </Occurrence>
      <Scope>
        <Permanent />
      </Scope>
      <DFType>
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
        <MSFT:CspVersion>9.9</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Host</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
        </AccessType>
        <Description>The Host internal node indicates that the target of the configuration request or inventory request is the host OS. This node is for scope in case enclaves are ever targeted for configuration.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>Complete</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>This internal node indicates that the configuration has discrete settings values and is self-contained with complete setting and value pairs that do not contain placeholders that need to be resolved later with additional data. The request is ready to be processed as is.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Documents</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>The Documents node indicates that the configuration is in the form of a document, which is a collection of settings used to configure a scenario by the Declared Configuration stack.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Uniquely identifies the configuration document. No other document can have this id. The Id should be a GUID.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>DocID</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ServerGeneratedUniqueIdentifier />
              </MSFT:DynamicNodeNaming>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
            <Node>
              <NodeName>Document</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The Document node's value is an XML based document containing a collection of settings and values to configure the specified scenario. The Declared Configuration stack verifies the syntax of the document, the stack marks the document to be processed asynchronously by the client. The stack then returns control back to the OMA-DM service. The stack, in turn, asynchronously processes the request. Below is an example of a specified desired state configuration using the Declared Configuration URI ./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Properties</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                </AccessType>
                <Description>The Properties node encapsulates the list of properties that apply to the specified document referenced by [DocID].</Description>
                <DFFormat>
                  <node />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <DDFName />
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>Abandoned</NodeName>
                <DFProperties>
                  <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>0</DefaultValue>
                  <Description>The Abandoned node allows the OMA-DM server to indicate that the document is no longer managed.</Description>
                  <DFFormat>
                    <int />
                  </DFFormat>
                  <Occurrence>
                    <One />
                  </Occurrence>
                  <Scope>
                    <Dynamic />
                  </Scope>
                  <DFType>
                    <MIME />
                  </DFType>
                  <MSFT:AllowedValues ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>0</MSFT:Value>
                      <MSFT:ValueDescription>The document is no longer managed.</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>1</MSFT:Value>
                      <MSFT:ValueDescription>The document is managed.</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
        <Node>
          <NodeName>Results</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The Results node indicates that this is part of the URI path that will return an XML document containing the results of the configuration request.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Uniquely identifies the configuration document in which results of the configuration request will be returned.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>DocID</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Document</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The Document node's value is an XML based document containing a collection of setting results from the configuration request specified by [DocId].</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME />
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>Inventory</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>The Inventory internal node indicates that this is an inventory request. The setting values to be retrieved are specified in an XML document through the Document leaf node.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Documents</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
            </AccessType>
            <Description>The Documents node indicates that the inventory request is in the form of a document, which is a collection of settings used to retrieve their values.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>Uniquely identifies the inventory document. No other document can have this id. The Id should be a GUID.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>DocID</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ServerGeneratedUniqueIdentifier />
              </MSFT:DynamicNodeNaming>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
            <Node>
              <NodeName>Document</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>The Document node's value is an XML based document containing a collection of settings that will be used to retrieve their values. The Declared Configuration stack verifies the syntax of the document, the stack marks the document to be processed asynchronously by the client. The stack then returns control back to the OMA-DM service. The stack, in turn, asynchronously processes the request. Below is an example of a specified desired state configuration using the Declared Configuration URI ./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
          </Node>
        </Node>
        <Node>
          <NodeName>Results</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>The Results node indicates that this is part of the URI path that will return an XML document containing the results of the inventory request.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>
            </NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Uniquely identifies the inventory document. No other document can have this id. The Id should be a GUID.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>DocID</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ClientInventory />
              </MSFT:DynamicNodeNaming>
            </DFProperties>
            <Node>
              <NodeName>Document</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>The Document node's value is an XML based document containing a collection of setting results from the inventory request specified by [DocId].</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFType>
                  <MIME />
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[DeclaredConfiguration configuration service provider reference](declaredconfiguration-csp.md)
