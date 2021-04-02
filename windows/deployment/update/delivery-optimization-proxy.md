---
title: Using a proxy with Delivery Optimization
manager: laurawi
description: Settings to use with various proxy configurations to allow Delivery Optimization to work
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.collection: M365-modern-desktop
ms.topic: article
---

# Using a proxy with Delivery Optimization

**Applies to**: Windows 10

When Delivery Optimization downloads content from HTTP sources, it uses the automatic proxy discovery capability of WinHttp to streamline and maximize the support for complex proxy configurations as it makes range requests from the content server. It does this by setting the **WINHTTP_ACCESS_TYPE_AUTOMATIC_PROXY** flag in all HTTP calls. 

Delivery Optimization provides a token to WinHttp that corresponds to the user that is signed in currently. In turn, WinHttp automatically authenticates the user against the proxy server set either in Internet Explorer or in the **Proxy Settings** menu in Windows.  

For downloads that use Delivery Optimization to successfully use the proxy, you should set the proxy via Windows **Proxy Settings** or the Internet Explorer proxy settings.

Setting the Internet Explorer proxy to apply device-wide will ensure that the device can access the proxy server even when no user is signed in. In this case, the proxy is accessed with the “NetworkService” context if proxy authentication is required. 

> [!NOTE]
> We don't recommend that you use `netsh winhttp set proxy ProxyServerName:PortNumber`. Using this offers no auto-detection of the proxy, no support for an explicit PAC URL, and no authentication to the proxy. This setting is ignored by WinHTTP for requests that use auto-discovery (if an interactive user token is used).

If a user is signed in, the system uses the Internet Explorer proxy.

If no user is signed in, even if both the Internet Explorer proxy and netsh configuration are set, the netsh configuration will take precedence over the Internet Explorer proxy. This can result in download failures. For example, you might receive HTTP_E_STATUS_PROXY_AUTH_REQ or HTTP_E_STATUS_DENIED errors. 

You can still use netsh to import the proxy setting from Internet Explorer (`netsh winhttp import proxy source=ie `) if your proxy configuration is a static *proxyServerName:Port*. However, the same limitations mentioned previously apply. 

### Summary of settings behavior

These tables summarize the behavior for various combinations of settings:

With an interactive user signed in:

|Named proxy set by using:  |Delivery Optimization successfully uses proxy  |
|---------|---------|
|Internet Explorer proxy, current user     |  Yes       |
|Internet Explorer proxy, device-wide     |   Yes   | 
|netsh proxy     |  No       |
|Both Internet Explorer proxy (current user) *and* netsh proxy     | Yes, Internet Explorer proxy is used        |
|Both Internet Explorer proxy (device-wide) *and* netsh proxy     | Yes, Internet Explorer proxy is used        |

With NetworkService (if unable to obtain a user token from a signed-in user):

|Named proxy set by using:  |Delivery Optimization successfully uses proxy  |
|---------|---------|
|Internet Explorer proxy, current user     |  No       |
|Internet Explorer proxy, device-wide     |   Yes   | 
|netsh proxy     |  Yes      |
|Both Internet Explorer proxy (current user) *and* netsh proxy     | Yes, netsh proxy is used        |
|Both Internet Explorer proxy (device-wide) *and* netsh proxy     | Yes, netsh proxy is used        |

## Setting a device-wide Internet Explorer proxy

You can set a device-wide proxy that will apply to all users including an interactive user, LocalSystem, and NetworkService by using the [Network Proxy CSP](/windows/client-management/mdm/networkproxy-csp).

Or, if you use Group Policy, you can apply proxy settings to all users of the same device by enabling the **Computer Configuration\ Administrative Templates\ Windows Components\ Internet Explorer\ Make proxy settings per-machine (rather than per-user)** policy.

This policy is meant to ensure that proxy settings apply uniformly to the same computer and do not vary from user to user, so if you enable this policy, users cannot set user-specific proxy settings. They must use the zones created for all users of the computer. If you disable this policy or do not configure it, users of the same computer can establish their own proxy settings.

## Using a proxy with Microsoft Connected Cache

Starting with Windows 10, version 2004, you can use Connected Cache behind a proxy. In older versions, when you set Delivery Optimization to download from Connected Cache, it will bypass the proxy and try to connect directly to the Connected Cache server. This can cause failure to download.

However, you can set the Connected Cache server to use an unauthenticated proxy. For more information, see [Microsoft Connected Cache in Configuration Manager](/mem/configmgr/core/plan-design/hierarchy/microsoft-connected-cache#prerequisites-and-limitations). 

 ## Related articles

- [How can I configure Proxy AutoConfigURL Setting using Group Policy Preference (GPP)?](/archive/blogs/askie/how-can-i-configure-proxy-autoconfigurl-setting-using-group-policy-preference-gpp) 
- [How to use GPP Registry to uncheck automatically detect settings? ](/archive/blogs/askie/how-to-use-gpp-registry-to-uncheck-automatically-detect-settings)
- [How to configure a proxy server URL and Port using GPP Registry?](/archive/blogs/askie/how-to-configure-a-proxy-server-url-and-port-using-gpp-registry)