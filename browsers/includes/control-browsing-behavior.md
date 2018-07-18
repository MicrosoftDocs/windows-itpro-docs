<!-- update the links with the Titles of the article  -->
# Control browsing behavior
This section explains how to contol the behavior of Microsoft Edge in certain circumstances.  Besides changing how sites deplay and the look and feel of the browser itself, you can also change how the browser behaves, for example, you can change the settings for security.



## Security settings

## Cookies 

[configure-cookies-include](../edge/includes/configure-cookies-include.md)

## Search engine settings
...shortdesc of search engines...how admins can control the default search engine...

### Allow address bar suggestions
[allow-address-bar-suggestions-include](../edge/includes/allow-address-bar-suggestions-include.md)

[configure-search-suggestions-address-bar-include](../edge/includes/configure-search-suggestions-address-bar-include.md)

[allow-search-engine-customization-include](../edge/includes/allow-search-engine-customization-include.md)

[configure-additional-search-engines-include](../edge/includes/configure-additional-search-engines-include.md)

[set-default-search-engine-include](../edge/includes/set-default-search-engine-include.md)




## Extensions
Extensions allow you to add features and functionality directly into the browser itself. Choose from a range of extensions from the Microsoft Store. 



[Allow Extensions](../edge/available-policies.md#allow-extensions)

[allow-sideloading-extensions-include](../edge/includes/allow-sideloading-extensions-include.md)

[prevent-turning-off-required-extensions-include](../edge/includes/prevent-turning-off-required-extensions-include.md)

## Home button settings
The Home page...


### Scenarios
You can specify www.bing.com or www.google.com as the startup pages for Microsoft Edge using "HomePages" (MDM) or Configure Start Pages (GP).  You can also enable the Disable Lockdown of Start pages (GP) policy or set the the DisableLockdownOfStartPages (MDM) setting to 1 allowing users to change the Microsoft Edge start options.  Additionally, you can enable the Disable Lockdown of Start Pages or set the DisableLockdownOfStartPages to 2 locking down the IT-provided URLs, but allowing users to add or remove additional URLs. Users cannot switch Startup setting to another, for example, to load New Tab page or "previous pages" at startup.
<!-- stem sentence to the table so that we can get rid of the ### Configuration combinations header. -->
### Configuration combinations

| **Configure Home Button**       | **Set Home Button URL** | **Unlock Home Button** | **Results**                     |
|---------------------------------|-------------------------|------------------------|---------------------------------|
| Not configured (0/Null default) | N/A                     | N/A                    | Shows home button and loads the Start page.     |
| Enabled (1)                     | N/A                     | Disabled (0 default)   | Shows home button, loads the New tab page, and prevent users from making changes to it. |
| Enabled (1)                     | N/A                     | Disabled (0 default)   | Shows home button, loads the New tab page, and let users from making changes to it. |
| Enabled (2)                     | Enabled                 | Disabled (0 default)   | Shows home button, loads custom URL defined in the Set Home Button URL policy, prevent users from changing what page loads.      |
| Enabled (2)                     | Enabled                 | Enabled                | Shows home button, loads custom URL defined in the Set Home Button URL policy, and allow users to change what page loads.    |
| Enabled (3)                     | N/A                     | N/A                    | Hides home button.           |
---

[configure-home-button-include](configure-home-button-include.md)

[set-home-button-url-include](set-home-button-url-include.md)

[unlock-home-button-include](unlock-home-button-include.md)

## Start page settings

[configure-start-pages-include](configure-start-pages-include.md)

[disable-lockdown-of-start-pages-include](disable-lockdown-of-start-pages-include.md)



## New Tab page settings

[set-new-tab-url-include](set-new-tab-url-include.md)

[allow-web-content-new-tab-page-include](allow-web-content-new-tab-page-include.md)


## Exit tasks

[allow-clearing-browsing-data-include](allow-clearing-browsing-data-include.md)


## Kiosk mode

[Configure kiosk mode](configure-microsoft-edge-kiosk-mode-include.md)

[Configure kiosk reset after idle timeout](configure-edge-kiosk-reset-idle-timeout-include.md)
