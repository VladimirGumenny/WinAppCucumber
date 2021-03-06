# Windows Application Testing, cucumber
## Installation
	1. Install wix tools set: https://wixtoolset.org/releases/
	2. Install inspection tool https://accessibilityinsights.io/docs/en/windows/overview/
	3. Install windows application driver: https://github.com/microsoft/WinAppDriver.git => Releases => download WindowsApplicationDriver.msi and install it; store location where it is installed (like C:\Program Files (x86)\Windows Application Driver\)
	4. Enable developer mode in Windows: https://docs.microsoft.com/en-us/windows/apps/get-started/enable-your-device-for-development
	5. Go to the folder from above and Launch WinDriverApp.exe; will get listening address with port like http://127.0.0.1:4723/
	6. In case you got error about eventmachine: 
        1. gem uninstall eventmachine
        2. gem install eventmachine --platform=ruby


## Supported locators
| Client API                   	| Locator Strategy 	| Matched Attribute in inspector.exe      	| Example       	|
|------------------------------	|------------------	|-----------------------------------------	|---------------	|
| FindElementByAccessibilityId 	| accessibility id 	| AutomationId                            	| AppNameTitle  	|
| FindElementByClassName       	| class name       	| ClassName                               	| TextBlock     	|
| FindElementById              	| id               	| RuntimeId (decimal)                     	| 42.333896.3.1 	|
| FindElementByName            	| name             	| Name                                    	| Calculator    	|
| FindElementByTagName         	| tag name         	| LocalizedControlType (upper camel case) 	| Text          	|
| FindElementByXPath           	| xpath            	| Any                                     	| //Button[0]   	|

## Hints

- use `$driver.page_source`to retrieve UI hierarchy in XML format