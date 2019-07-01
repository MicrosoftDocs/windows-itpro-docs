---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Learn about how to use a proxy auto-configuration (.pac) file to specify an automatic proxy URL.
author: lomayor
ms.prod: ie11
ms.assetid: 6c94708d-71bd-44bd-a445-7e6763b374ae
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Use proxy auto-configuration (.pac) files with IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use proxy auto-configuration (.pac) files with IEAK 11
These are various ways you can use a proxy auto-configuration (.pac) file to specify an automatic proxy URL. We've included some examples here to help guide you, but you'll need to change the proxy names, port numbers, and IP addresses to match your organization's info.

Included examples:
- [Example 1: Connect directly if the host is local](#example-1-connect-directly-if-the-host-is-local) 
- [Example 2: Connect directly if the host is inside the firewall](#example-2-connect-directly-if-the-host-is-inside-the-firewall)
- [Example 3: Connect directly if the host name is resolvable](#example-3-connect-directly-if-the-host-name-is-resolvable)
- [Example 4: Connect directly if the host is in specified subnet](#example-4-connect-directly-if-the-host-is-in-specified-subnet)
- [Example 5: Determine the connection type based on the host domain](#example-5-determine-the-connection-type-based-on-the-host-domain)
- [Example 6: Determine the connection type based on the protocol](#example-6-determine-the-connection-type-based-on-the-protocol)
- [Example 7: Determine the proxy server based on the host name matching the IP address](#example-7-determine-the-proxy-server-based-on-the-host-name-matching-the-ip-address)
- [Example 8: Connect using a proxy server if the host IP address matches the specified IP address](#example-8-connect-using-a-proxy-server-if-the-host-ip-address-matches-the-specified-ip-address)
- [Example 9: Connect using a proxy server if there are periods in the host name](#example-9-connect-using-a-proxy-server-if-there-are-periods-in-the-host-name)
- [Example 10: Connect using a proxy server based on specific days of the week](#example-10-connect-using-a-proxy-server-based-on-specific-days-of-the-week)


## Example 1: Connect directly if the host is local
In this example, if the host is local, it can connect directly. However, if the server isn't local, it must connect through a proxy server. Specifically, the `isPlainHostName` function looks to see if there are any periods (.) in the host name. If the function finds periods, it means the host isn’t local and it returns false. Otherwise, the function returns true.

``` javascript
function FindProxyForURL(url, host)
 {
 if (isPlainHostName(host))
 return "DIRECT";
 else
 return "PROXY proxy:80";
 }
```
## Example 2: Connect directly if the host is inside the firewall
In this example, if the host is inside the firewall, it can connect directly. However, if the server is outside the firewall, it must connect through a proxy server. Specifically, the `localHostOrDomainIs` function only runs for URLs in the local domain. If the host domain name matches the provided domain information, the `dnsDomainIs` function returns true.

``` javascript
function FindProxyForURL(url, host)
 {
 if ((isPlainHostName(host) ||
 dnsDomainIs(host, ".company.com")) &&
 !localHostOrDomainIs(host, "www.company.com") &&
 !localHostOrDoaminIs(host, "home.company.com"))
 return "DIRECT";
 else
 return "PROXY proxy:80";
}
```
## Example 3: Connect directly if the host name is resolvable
In this example, if the host name can be resolved, it can connect directly. However, if the name can’t be resolved, the server must connect through a proxy server. Specifically, this function requests the DNS server to resolve the host name it's passed. If the name can be resolved, a direct connection is made. If it can't, the connection is made using a proxy. This is particularly useful when an internal DNS server is used to resolve all internal host names.

**Important**<br>The `isResolvable` function queries a Domain Name System (DNS) server. References to Object Model objects, properties, or methods cause the proxy auto-configuration file to fail silently. For example, the references `window.open(...)`, `alert(...)`, and `password(...)` all cause the proxy auto-configuration file to fail.

``` javascript
function FindProxyForURL(url, host)
 {
 if (isResolvable(host))
 return "DIRECT";
 else
 return "PROXY proxy:80";
 }
```

## Example 4: Connect directly if the host is in specified subnet
In this example, if the host is in a specified subnet, it can connect directly. However, if the server is outside of the specified subnet, it must connect through a proxy server. Specifically, the `isInNet` (host, pattern, mask) function returns true if the host IP address matches the specified pattern. The mask indicates which part of the IP address to match (255=match, 0=ignore).

**Important**<br>The `isInNet` function queries a DNS server. References to Object Model objects, properties, or methods cause the proxy auto-configuration file to fail silently. For example, the references `window.open(...)`, `alert(...)`, and `password(...)` all cause the proxy auto-configuration file to fail.

``` javascript
function FindProxyForURL(url, host)
 {
 if (isInNet(host, "999.99.9.9", "255.0.255.0"))
 return "DIRECT";
 else
 return "PROXY proxy:80";
 }
```
## Example 5: Determine the connection type based on the host domain
In this example, if the host is local, the server can connect directly. However, if the host isn’t local, this function determines which proxy to use based on the host domain. Specifically, the `shExpMatch(str, shexp)` function returns true if `str` matches the `shexp` using shell expression patterns. This is particularly useful when the host domain name is one of the criteria for proxy selection.

``` javascript
function FindProxyForURL(url, host)
 {
 if (isPlainHostName(host))
 return "DIRECT";
 else if (shExpMatch(host, "*.com"))
 return "PROXY comproxy:80";
 else if (shExpMatch(host, "*.edu"))
 return "PROXY eduproxy:80";
 else
 return "PROXY proxy";
 }
```
## Example 6: Determine the connection type based on the protocol
In this example, the in-use protocol is extracted from the server and used to make a proxy selection. If no protocol match occurs, the server is directly connected. Specifically the `substring` function extracts the specified number of characters from a string. This is particularly useful when protocol is one of the criteria for proxy selection.

``` javascript
function FindProxyForURL(url, host)
 {
 if (url.substring(0, 5) == "http:") {
 return "PROXY proxy:80";
 }
 else if (url.substring(0, 4) == "ftp:") {
 return "PROXY fproxy:80";
 }
 else if (url.substring(0, 6) == "https:") {
 return "PROXY secproxy:8080";
 }
 else {
 return "DIRECT";
      }
 }
```
## Example 7: Determine the proxy server based on the host name matching the IP address
In this example, the proxy server is selected by translating the host name into an IP address and then comparing the address to a specified string.

**Important** <br>The `dnsResolve` function queries a DNS server. References to Object Model objects, properties, or methods cause the proxy auto-configuration file to fail silently. For example, the references `window.open(...)`, `alert(...)`, and `password(...)` all cause the proxy auto-configuration file to fail.

``` javascript
function FindProxyForURL(url, host)
 {
 if (dnsResolve(host) == "999.99.99.999") { // = https://secproxy
 return "PROXY secproxy:8080";
 }
 else {
 return "PROXY proxy:80";
 }
 }
```
## Example 8: Connect using a proxy server if the host IP address matches the specified IP address
In this example, the proxy server is selected by explicitly getting the IP address and then comparing it to a specified string. If no protocol match occurs, the server makes a direct connection. Specifically, the `myIpAddress` function returns the IP address (in integer-period format) for the host that the browser is running on.

``` javascript
function FindProxyForURL(url, host)
 {
 if (myIpAddress() == "999.99.999.99") { 
 return "PROXY proxy:80";
 }
 else {
 return "DIRECT";
 }
 }
```
## Example 9: Connect using a proxy server if there are periods in the host name
In this example, the function looks to see if there are periods (.) in the host name. If there are any periods, the connection occurs using a proxy server. If there are no periods, a direct connection occurs. Specifically, the `dnsDomainLevels` function returns an integer equal to the number of periods in the host name.

**Note**<br>This is another way to determine connection types based on host name characteristics.

``` javascript
function FindProxyForURL(url, host)
 {
 if (dnsDomainLevels(host) > 0) { // if the number of periods in host > 0
 return "PROXY proxy:80";
 }
 return "DIRECT";
 }
```
## Example 10: Connect using a proxy server based on specific days of the week
In this example, the function decides whether to connect to a proxy server, based on the days of the week. Connecting on days that don’t fall between the specified date parameters let the server make a direct connection. Specifically the `weekdayRange(day1 [,day2] [,GMT] )` function returns whether the current system time falls within the range specified by the parameters `day1`, `day2`, and `GMT`. Only the first parameter is required. The GMT parameter presumes time values are in Greenwich Mean Time rather than the local time zone. This function is particularly useful for situations where you want to use a proxy server for heavy traffic times, but allow a direct connection when traffic is light.

``` javascript
function FindProxyForURL(url, host)
 {
 if(weekdayRange("WED", "SAT", "GMT")) 
 return "PROXY proxy:80";
 else 
 return "DIRECT";
 }
```

