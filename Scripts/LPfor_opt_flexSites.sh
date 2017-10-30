!bin/bash

yum install git -y

git clone https://github.com/Sighillrob/DSFlexLanguagePacks.git /home/docushare/language


cp -r /home/docushare/language/lib/* opt/flex/tomcat/webapps/xcm/WEB-INF/lib
cp /home/docushare/language/lpv15/ScanServices/ftl/*.ftl /opt/flex/tomcat/webapps/ScanServices/ftl/locale/
cp /home/docushare/language/lpv15/ScanServices/properties/*.properties /opt/flex/tomcat/webapps/ScanServices/locale/
nano /opt/flex/config/amber.xml

cd /opt/flex/
source setup_ant

echo Stopping Flex
ant stopFalcon stop_solr stop_solrService
echo Starting Flex
ant startFalcon start_solrService