test:
	cp -R index.jsp ok.jsp META-INF WEB-INF $(TOMCAT_HOME)/webapps/TeamRoleSPI

deploy:
	ftp-ssl -p < metawerx-ftp-deploy-script
