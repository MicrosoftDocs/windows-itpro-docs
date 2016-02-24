---
Description: 'Proxy auto-configuration examples'
MS-HAID: 'p\_ieak\_ie11.proxy\_auto\_configuration\_examples'
MSHAttr: 'PreferredLib:/library'
title: 'Proxy auto-configuration examples'
---

# Proxy auto-configuration examples


These are examples of the various ways you can use a proxy auto-configuration (.pac) file to specify an automatic proxy URL. To use these examples, you must change the proxy names, port numbers, and IP addresses to match your corporate information.

## Connect directly if the host is local


For this example, if the host is local, it can connect directly. However, if the server isn’t local, it must connect through a proxy server. Specifically, the `isPlainHostName` function looks to see if there are any periods (or dots) in the host name. If the function finds dots, it means the host isn’t local and it returns false. Otherwise, the function returns true.

``` syntax
function FindProxyForURL(url, host)
 {
 if (isPlainHostName(host))
 return "DIRECT";
 else
 return "PROXY proxy:80";
 }
```

## Connect directly if the host is inside the firewall


For this example, if the host is inside the firewall, it can connect directly. However, if the server is outside the firewall, it must connect through a proxy server. Specifically, `localHostOrDomainIs` function will only run for URLs in the local domain. If the host domain name matches the provided domain information, the `dnsDomainIs` function returns true.

``` syntax
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

## Connect directly if the host name is resolvable


For this example, if the host name can be resolved, it can connect directly. However, if the name can’t be resolved, the server must connect through a proxy server. Specifically, this function requests the DNS server to resolve the host name passed to it. If it can, then a direct connection is made. If it cannot, the connection is made using a proxy.

This is useful when an internal DNS server is used to resolve all internal host names.

**Important**  
The `isResolvable` function queries a Domain Name System (DNS) server. References to Object Model objects, properties, or methods cause the proxy auto-configuration file to fail silently. For example, the references `window.open(...)`, `alert(...)`, and `password(...)` all cause the proxy auto-configuration file to fail.

 

``` syntax
function FindProxyForURL(url, host)
 {
 if (isResolvable(host))
 return "DIRECT";
 else
 return "PROXY proxy:80";
 }
```

## Connect directly if the host is in specified subnet


For this example, if the host is in a specified subnet, it can connect directly. However, if the server is outside of the specified subnet, it must connect through a proxy server. Specifically, the `isInNet` (host, pattern, mask) function returns true if the host IP address matches the specified pattern. The mask indicates which part of the IP address to match (255=match, 0=ignore).

**Important**  
The `isInNet` function queries a DNS server. References to Object Model objects, properties, or methods cause the proxy auto-configuration file to fail silently. For example, the references `window.open(...)`, `alert(...)`, and `password(...)` all cause the proxy auto-configuration file to fail.

 

``` syntax
function FindProxyForURL(url, host)
 {
 if (isInNet(host, "999.99.9.9", "255.0.255.0"))
 return "DIRECT";
 else
 return "PROXY proxy:80";
 }
```

## Determine the connection type based on the host domain


For this example, if the host is local, the server can connect directly. However, if the host isn’t local, this function determines which proxy to use based on the host domain. Specifically, the `shExpMatch(str, shexp)` function returns true if `str` matches the `shexp` using shell expression patterns.

This is useful when the host domain name is one of the criteria for proxy selection.

``` syntax
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

## Determine the connection type based on the protocol


For this example, the in-use protocol is extracted from the server and used to make a proxy selection. If no protocol match occurs, the server is directly connected. Specifically the `substring` function extracts the specified number of characters from a string.

This is useful when protocol is one of the criteria for proxy selection.

``` syntax
function FindProxyForURL(url, host)
 {
 if (url.substring(0, 5) == "http:") {
 return "PROXY proxy:80";
 }
 else if (url.substring(0, 4) == "ftp:") {
 return "PROXY fproxy:80";
 }
 else if (url.substring(0, 7) == "gopher:") {
 return "PROXY gproxy";
 }
 else if (url.substring(0, 6) == "https:") {
 return "PROXY secproxy:8080";
 }
 else {
 return "DIRECT";
      }
 }
```

## Determine the proxy server based on the host name matching the IP address


For this example, the proxy server is selected by translating the host name into an IP address and then comparing the address to a specified string.

**Important**  
The `dnsResolve` function queries a DNS server. References to Object Model objects, properties, or methods cause the proxy auto-configuration file to fail silently. For example, the references `window.open(...)`, `alert(...)`, and `password(...)` all cause the proxy auto-configuration file to fail.

 

``` syntax
function FindProxyForURL(url, host)
 {
 if (dnsResolve(host) == "999.99.99.999") { // = http://secproxy
 return "PROXY secproxy:8080";
 }
 else {
 return "PROXY proxy:80";
 }
 }
```

## Connect using a proxy server if the host IP address matches the specified IP address


For this example, the proxy server is selected by explicitly getting the IP address and then comparing it to a specified string. If no protocol match occurs, the server makes a direct connection. Specifically, the `myIpAddress` function returns the IP address (in integer-dot format) for the host that the browser is running on.

``` syntax
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

## Connect using a proxy server if there are dots in the host name


For this example, the function looks to see if there are periods (or dots) in the host name. If there are any dots, the connection occurs using a proxy server. If there are no dots, a direct connection occurs. Specifically, the `dnsDomainLevels` function returns an integer equal to the number of dots in the host name.

**Note**  
This is another way to determine connection types based on host name characteristics.

 

``` syntax
function FindProxyForURL(url, host)
 {
 if (dnsDomainLevels(host) > 0) { // if the number of dots in host > 0
 return "PROXY proxy:80";
 }
 return "DIRECT";
 }
```

## Connect using a proxy server based on specific days of the week


For this example, the function decides whether to connect to a proxy server, based on the days of the week. Connecting on days that don’t fall between the specified date parameters let the server make a direct connection. Specifically the `weekdayRange(day1 [,day2] [,GMT] )` function returns whether the current system time falls within the range specified by the parameters `day1`, `day2`, and `GMT`. Only the first parameter is required. The GMT parameter presumes time values are in Greenwich Mean Time rather than the local time zone.

This function is useful for situations where you want to use a proxy server for heavy traffic times, but allow a direct connection when traffic is light.

``` syntax
function FindProxyForURL(url, host)
 {
 if(weekdayRange("WED", "SAT", "GMT")) 
 return "PROXY proxy:80";
 else 
 return "DIRECT";
 }
```

 

 



