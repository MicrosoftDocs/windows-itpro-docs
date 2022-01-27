---
title: DMProcessConfigXMLFiltered function
description: Learn how the DMProcessConfigXMLFiltered function configures phone settings by using OMA Client Provisioning XML.
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

> [!Important]
> The use of this function for automatic data configuration (ADC) is deprecated in Windows Phone 8.1. For more information about the new process for provisioning connectivity configuration, see [Connectivity configuration](/previous-versions//dn757424(v=vs.85)). However, this function is still supported for other OEM uses.


Configures phone settings by using OMA Client Provisioning XML. Use of this function is strictly limited to the following scenarios.

-   Adding dynamic credentials for OMA Client Provisioning.

-   Manufacturing test applications. These applications and the supporting drivers must be removed from the phones before they're sold.

Microsoft recommends that this function isn't used to configure the following types of settings:

-   Security settings that are configured using CertificateStore, SecurityPolicy, and RemoteWipe, unless they're related to OMA DM or OMA Client Provisioning security policies

-   Non-cellular data connection settings (such as Hotspot settings).

-   File system files and registry settings, unless they're used for OMA DM account management, mobile operator data connection settings, or manufacturing tests

-   Email settings

> [!Note]
> The **DMProcessConfigXMLFiltered** function has full functionality in Windows Phone 8.1, but it has a read-only functionality in Windows 10.

 

## Syntax

```C++
HRESULT STDAPICALLTYPE DMProcessConfigXMLFiltered(
         LPCWSTR pszXmlIn,
   const WCHAR   **rgszAllowedCspNode,
   const DWORD   dwNumAllowedCspNodes,
         BSTR    *pbstrXmlOut
);
```

## Parameters

*pszXmlIn*

- [in] The null–terminated input XML buffer containing the configuration data. The parameter holds the XML that will be used to configure the phone. **DMProcessConfigXMLFiltered** accepts only OMA Client Provisioning XML (also known as WAP provisioning). It doesn't accept OMA DM SyncML XML (also known as SyncML).

*rgszAllowedCspNode*

- [in] Array of `WCHAR` that specify which configuration service provider nodes can be invoked.

*dwNumAllowedCspNodes*

- [in] Number of elements passed in <em>rgszAllowedCspNode</em>.

*pbstrXmlOut*

- [out] The resulting null–terminated XML from configuration. The caller of **DMProcessConfigXMLFiltered** is responsible for cleanup of the output buffer that the <em>pbstrXmlOut</em> parameter references. Use <a href="/windows/win32/api/oleauto/nf-oleauto-sysfreestring" data-raw-source="[**SysFreeString**](/windows/win32/api/oleauto/nf-oleauto-sysfreestring)">**SysFreeString**</a> to free the memory.

If **DMProcessConfigXMLFiltered** retrieves a document, the *pbstrXmlOut* holds the XML output (in string form) of the provisioning operations. If **DMProcessConfigXMLFiltered** returns a failure, the XML output often contains "error nodes" that indicate which elements of the original XML failed. If the input document doesn't contain queries and is successfully processed, the output document should resemble the input document. In some error cases, no output is returned.

## Return value

Returns the standard **HRESULT** value **S\_OK** to indicate success. The following table shows more error codes that can be returned:

|Return code|Description|
|--- |--- |
|**CONFIG_E_OBJECTBUSY**|Another instance of the configuration management service is currently running.|
|**CONFIG_E_ENTRYNOTFOUND**|No metabase entry was found.|
|**CONFIG_E_CSPEXCEPTION**|An exception occurred in one of the configuration service providers.|
|**CONFIG_E_TRANSACTIONINGFAILURE**|A configuration service provider failed to roll back properly. The affected settings might be in an unknown state.|
|**CONFIG_E_BAD_XML**|The XML input is invalid or malformed.|

## Remarks

The processing of the XML is transactional. Either the entire document gets processed successfully, or none of the settings are processed. So, the **DMProcessConfigXMLFiltered** function processes only one XML configuration request at a time.

The usage of **DMProcessConfigXMLFiltered** depends on the configuration service providers that are used. For example, if the input `.provxml` contains the following two settings:

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

This array of configuration service provider names indicates which `.provxml` contents should be present. If the provxml contains "EMAIL2" provisioning but *rgszAllowedCspNodes* doesn't contain EMAIL2, then **DMProcessConfigXMLFiltered** fails with an **E\_ACCESSDENIED** error code.

The following code sample shows how this array would be passed in. The *szProvxmlContent* doesn't show the full XML contents for brevity. In actual usage, the "…" would contain the full XML string shown above.

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

|Requirement|Support|
|--- |--- |
|Minimum supported client|None supported|
|Minimum supported server|None supported|
|Minimum supported phone|Windows Phone 8.1|
|Header|Dmprocessxmlfiltered.h|
|Library|Dmprocessxmlfiltered.lib|
|DLL|Dmprocessxmlfiltered.dll|

## See also

[**SysFreeString**](/windows/win32/api/oleauto/nf-oleauto-sysfreestring)

