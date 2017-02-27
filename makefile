S=index.jsp ok.jsp META-INF WEB-INF belbinjs.html t.html

test:
	cp -R $S $(TOMCAT_HOME)/webapps/TeamRoleSPI

deploy:
	ftp-ssl -p < metawerx-ftp-deploy-script
