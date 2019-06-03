---
title: DMProcessConfigXMLFiltered function
description: Configures phone settings by using OMA Client Provisioning XML.
Search.Refinement.TopicID: 184
ms.assetid: 31D79901-6206-454C-AE78-9B85A3B3487F
ms.reviewer: 
manager: dansimp
keywords: ["DMProcessConfigXMLFiltered function"]
topic_type:
- apiref
api_name:
- DMProcessConfigXMLFiltered
api_location:
- dmprocessxmlfiltered.dll
api_type:
- DllExport
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 06/26/2017
---

# DMProcessConfigXMLFiltered function

> **Important**  
The use of this function for automatic data configuration (ADC) is deprecated in Windows Phone 8.1. Please see [Connectivity configuration](https://msdn.microsoft.com/library/windows/hardware/dn757424) for more information about the new process for provisioning connectivity configuration. However, this function is still supported for other OEM uses.


Configures phone settings by using OMA Client Provisioning XML. Use of this function is strictly limited to the following scenarios.

-   Adding dynamic credentials for OMA Client Provisioning.

-   Manufacturing test applications. These applications and the supporting drivers must be removed from the phones before they are sold.

Microsoft recommends that this function is not used to configure the following types of settings.

-   Security settings that are configured by using CertificateStore, SecurityPolicy, and RemoteWipe, unless they are related to OMA DM or OMA Client Provisioning security policies.

-   Non-cellular data connection settings (such as Hotspot settings).

-   File system files and registry settings, unless they are used for OMA DM account management, mobile operator data connection settings, or manufacturing tests.

-   Email settings.

> **Note**  The **DMProcessConfigXMLFiltered** function has full functionality in Windows 10 Mobile and Windows Phone 8.1, but it has a read-only functionality in Windows 10 desktop.

 

## Syntax

```C++
HRESULT STDAPICALLTYPE DMProcessConfigXMLFiltered(
         LPCWSTR pszXmlIn,
   const WCHAR   **rgszAllowedCspNode,
   const DWORD   dwNumAllowedCspNodes,
         BSTR    *pbstrXmlOut
);
```

## Parameters

*pszXmlIn*
<ul style="list-style-type:none">
<li>\[in\] The null–terminated input XML buffer containing the configuration data. The parameter holds the XML that will be used to configure the phone. **DMProcessConfigXMLFiltered** accepts only OMA Client Provisioning XML (also known as WAP provisioning). It does not accept OMA DM SyncML XML (also known as SyncML).</li>
</ul>
<br>

*rgszAllowedCspNode*
<ul style="list-style-type:none">
<li>\[in\] Array of **WCHAR\*** that specify which configuration service provider nodes are allowed to be invoked.</li>
</ul>
<br>

*dwNumAllowedCspNodes*
<ul style="list-style-type:none">
<li>\[in\] Number of elements passed in *rgszAllowedCspNode*.</li>
</ul>
<br> 

*pbstrXmlOut*
<ul style="list-style-type:none">
<li>\[out\] The resulting null–terminated XML from configuration. The caller of **DMProcessConfigXMLFiltered** is responsible for cleanup of the output buffer that the *pbstrXmlOut* parameter references. Use [**SysFreeString**](https://msdn.microsoft.com/library/windows/hardware/ms221481) to free the memory.</li>
</ul>
<br>

If **DMProcessConfigXMLFiltered** retrieves a document, the *pbstrXmlOut* holds the XML output (in string form) of the provisioning operations. If **DMProcessConfigXMLFiltered** returns a failure, the XML output often contains "error nodes" that indicate which elements of the original XML failed. If the input document does not contain queries and is successfully processed, the output document should resemble the input document. In some error cases, no output is returned.

## Return value

Returns the standard **HRESULT** value **S\_OK** to indicate success. The following table shows the additional error codes that may be returned.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Return code</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p><strong>CONFIG_E_OBJECTBUSY</strong></p></td>
<td style="vertical-align:top"><p>Another instance of the configuration management service is currently running.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><strong>CONFIG_E_ENTRYNOTFOUND</strong></p></td>
<td style="vertical-align:top"><p>No metabase entry was found.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p><strong>CONFIG_E_CSPEXCEPTION</strong></p></td>
<td style="vertical-align:top"><p>An exception occurred in one of the configuration service providers.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><strong>CONFIG_E_TRANSACTIONINGFAILURE</strong></p></td>
<td style="vertical-align:top"><p>A configuration service provider failed to roll back properly. The affected settings might be in an unknown state.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p><strong>CONFIG_E_BAD_XML</strong></p></td>
<td style="vertical-align:top"><p>The XML input is invalid or malformed.</p></td>
</tr>
</tbody>
</table>

 

## Remarks

The processing of the XML is transactional; either the entire document gets processed successfully or none of the settings are processed. Therefore, the **DMProcessConfigXMLFiltered** function processes only one XML configuration request at a time.

The usage of **DMProcessConfigXMLFiltered** depends on the configuration service providers that are used. For example, if the input .provxml contains the following two settings:

``` XML
<wap-provisioningdoc>
    <characteristic type="NAPDEF">
        <characteristic type="Internet" mwid="1">
            <parm name="NAME" value="Contoso Internet APN"/>
            <parm name="BEARER" value="GSM-GPRS"/>
            <parm name="NAP-ADDRESS" value="wap.contoso"/>
            <parm name="NAP-ADDRTYPE" value="APN"/>
            <parm name="INTERNET" value="1"/>
        </characteristic>
    </characteristic>
    <characteristic type="BrowserFavorite">
        <characteristic type="Contoso">
            <parm name="URL" value="http://www.contoso.com"/>
        </characteristic>
    </characteristic>
</wap-provisioningdoc>
```

Then, the second parameter in the call to **DMProcessConfigXMLFiltered** would have to have the following definition.

``` C++
LPCWSTR rgszAllowedCspNodes[] =
{
    L"NAPDEF",
    L"BrowserFavorite"
};
```

This array of configuration service provider names indicates which .provxml contents should be present. If the provxml contains "EMAIL2" provisioning but *rgszAllowedCspNodes* does not contain EMAIL2, then **DMProcessConfigXMLFiltered** fails with an **E\_ACCESSDENIED** error code.

The following code sample shows how this array would be passed in. Note that *szProvxmlContent* does not show the full XML contents for brevity. In actual usage, the "…" would contain the full XML string shown above.

``` C++
WCHAR szProvxmlContent[] = L"<wap-provisioningdoc>...</wap-provisioningdoc>"; 
BSTR bstr = NULL;

HRESULT hr = DMProcessConfigXMLFiltered(
                szProvxmlContent,
                rgszAllowedCspNodes,
                _countof(rgszAllowedCspNodes),
                &bstr
                );

/* check error */

if ( bstr != NULL )
{
    SysFreeString( bstr );
    bstr = NULL;
}
```

## Requirements

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Minimum supported client</p></td>
<td style="vertical-align:top"><p>None supported</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Minimum supported server</p></td>
<td style="vertical-align:top"><p>None supported</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Minimum supported phone</p></td>
<td style="vertical-align:top"><p>Windows Phone 8.1</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Header</p></td>
<td style="vertical-align:top"><p>Dmprocessxmlfiltered.h</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Library</p></td>
<td style="vertical-align:top"><p>Dmprocessxmlfiltered.lib</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>DLL</p></td>
<td style="vertical-align:top"><p>Dmprocessxmlfiltered.dll</p></td>
</tr>
</tbody>
</table>

## See also

[**SysFreeString**](https://msdn.microsoft.com/library/windows/hardware/ms221481)

 






