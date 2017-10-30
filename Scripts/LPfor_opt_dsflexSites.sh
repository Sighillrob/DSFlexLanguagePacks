!bin/bash

yum install git -y

git clone https://github.com/Sighillrob/DSFlexLanguagePacks.git /home/docushare/language


cp -r /home/docushare/language/lib/* opt/dsflex/tomcat/webapps/xcm/WEB-INF/lib
cp /home/docushare/language/lpv15/ScanServices/ftl/*.ftl /opt/dsflex/tomcat/webapps/ScanServices/ftl/locale/
cp /home/docushare/language/lpv15/ScanServices/properties/*.properties /opt/dsflex/tomcat/webapps/ScanServices/locale/
nano /opt/dsflex/config/amber.xml

cd /opt/dsflex/
source setup_ant

echo Stopping Flex
ant stopFalcon stop_solr stop_solrService
echo Starting Flex
ant startFalcon start_solrService
