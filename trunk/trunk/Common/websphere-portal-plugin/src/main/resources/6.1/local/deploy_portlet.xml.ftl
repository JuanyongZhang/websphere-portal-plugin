<?xml version="1.0"  encoding="UTF-8"?>
<request xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:noNamespaceSchemaLocation="PortalConfig_6.0.1.xsd" type="update"
	create-oids="false">
	<portal action="locate">
		<web-app action="update" active="true" uniquename="<#if unique_name??>${unique_name}<#else>${portlet_uid}.webmod</#if>">
			<url>file://${installableApp}</url>
		</web-app>
	</portal>
</request>
