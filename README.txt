Step 1:
    Extract contents of lib.zip to [FalconHome]/tomcat/webapps/xcm/WEB-INF/lib
	Things to check: 50 jar files need to be copied
	
Step 2:
    Copy contents under ScanServices/ftl/locale to [FalconHome]/tomcat/webapps/ScanServices/ftl/locale
	Files are named as messages_XX.ftl
	Includes 5 items

Step 3:
    Copy contents under ScanServices/locale to [FalconHome]/tomcat/webapps/ScanServices/locale
	Files are named as messages_XX.properties
	Includes 5 items

Step 4: 
    Update default locale of system:
    Go to [FalconHome]/dist/config/amber.xml and edit the <defalutLocale> tag inside the <site> tag as shown below
<site>
  <scheme>http</scheme>
  <port>80</port>
  <host>highwaygirl.na.xerox.org</host>
  <root>xcm</root>
  <defaultLocale>en or fr or...etc</defaultLocale>
</site>

Step 5:
    Restart server

Step 6:
    Re-index server 

