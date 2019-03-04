## Enterprise Mode and the Enterprise Mode Site List XML file
The Enterprise Mode Site List is an XML document that specifies a list of sites, their compat mode, and their intended browser. Using [Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853), you can automatically start a webpage using a specific browser. In the case of IE11, the webpage can also be launched in a specific compat mode, so it always renders correctly. Your employees can easily view this site list by typing _about:compat_ in either Microsoft Edge or IE11.

Starting with Windows 10, version 1511 (also known as the Anniversary Update), you can also [restrict IE11 to only the legacy web apps that need it](https://blogs.windows.com/msedgedev/2016/05/19/edge14-ie11-better-together/), automatically sending sites not included in the Enterprise Mode Site List to Microsoft Edge.

### Site list xml file
<!-- rework this entire paragraph -->
This is a view of the [raw EMIE v2 schema.xml file](https://gist.github.com/kypflug/9e9961de771d2fcbd86b#file-emie-v2-schema-xml). There are equivalent Enterprise Mode Site List policies for both [Microsoft Edge](https://docs.microsoft.com/microsoft-edge/deploy/emie-to-improve-compatibility) and [Internet Explorer 11](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/turn-on-enterprise-mode-and-use-a-site-list). The Microsoft Edge list is used to determine which sites should open in IE11; while the IE11 list is used to determine the compat mode for a site, and which sites should open in Microsoft Edge. We recommend using one list for both browsers, where each policy points to the same XML file location.

```xml
<site-list version="205">
	<!--- File creation header --->
	<created-by>
		<tool>EnterpriseSiteListManager</tool>
		<version>10586</version>
		<date-created>20150728.135021</date-created>
	</created-by>
  	<!--- Begin Site List ---> 
	<site url="www.cpandl.com">
		<compat-mode>IE8Enterprise</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="www.woodgrovebank.com">
		<compat-mode>default</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="adatum.com">
		<compat-mode>IE7Enterprise</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="relecloud.com"/>  
	<!-- default for self-closing XML tag is 
		<compat-mode>default</compat-mode>
		<open-in>none</open-in>
	-->
	<site url="relecloud.com/products">  
		<compat-mode>IE8Enterprise"</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="contoso.com/travel">
		<compat-mode>IE7</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="fabrikam.com">
		 <compat-mode>IE7</compat-mode>
		 <open-in>IE11</open-in>
	</site>
</site-list>

```