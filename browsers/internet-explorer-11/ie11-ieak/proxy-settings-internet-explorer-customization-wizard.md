---
Description: 'Proxy Settings: Internet Explorer Customization Wizard'
MS-HAID: 'p\_ieak\_ie11.proxy\_settings\_internet\_explorer\_customization\_wizard'
MSHAttr: 'PreferredLib:/library'
title: 'Proxy Settings: Internet Explorer Customization Wizard'
---

# Proxy Settings: Internet Explorer Customization Wizard


The **Proxy Settings** page of the Internet Explorer Customization Wizard 11 lets you pick which proxy servers your employees use to connect for services required by the custom install package.

Using a proxy server lets you limit access to the Internet. You can also use the **Additional Settings** page of the wizard to further restrict your employees from changing the proxy settings.

![](../common/wedge.gif)**To use the Proxy Settings page**

1.  Check the **Enable proxy settings** box if you want to use proxy servers for any of your services.

2.  Type the address of the proxy server you want to use for your services into the **Address of proxy** box. In most cases, a single proxy server is used for all of your services.

    Proxy locations that don’t begin with a protocol (like, http:// or ftp://) are assumed to be a CERN-type HTTP proxy. For example, the entry *proxy* is treated the same as the entry *http://proxy*.

3.  Type the port for each service. The default value is *80*.

4.  Check the **Use the same proxy server for all addresses** box to use the same proxy server settings for all of your services.

5.  Type any services that shouldn’t use a proxy server into the **Do not use proxy server for addresses beginning with** box.

    When filling out your exceptions, keep in mind:

    -   Proxy bypass entries can begin with a protocol type, such as http://, https://, or ftp://. However, if a protocol type is used, the exception entry applies only to requests for that protocol.

    -   Protocol values are not case sensitive and you can use a wildcard character ( \* ) in place of zero or more characters.

    -   You must use a semicolon between your entries.

    -   This list is limited to **2064** characters.

6.  Check the **Do not use proxy server for local (intranet) addresses** to bypass your proxy servers for all addresses on your intranet.

7.  Click **Next** to go to the [Security and Privacy Settings: Internet Explorer Customization Wizard](security_and_privacy_settings_internet_explorer_customization_wizard.htm) page or **Back** to go to the [Automatic Configuration: Internet Explorer Customization Wizard](automatic_configuration_internet_explorer_customization_wizard.md) page.

 

 



