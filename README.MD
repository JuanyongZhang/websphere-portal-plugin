
<p>
	WebSphere<a href="/p/websphere-portal-plugin/w/edit/WebSphere">?</a>
	Portal Plugin provides the functional of deploying WAR, EAR, THEME,
	PORTLETS, EXPORT/IMPORT XMLACCESS for WebSphere<a
		href="/p/websphere-portal-plugin/w/edit/WebSphere">?</a> Portal.
	Underneath it is utilizing the WebSphere<a
		href="/p/websphere-portal-plugin/w/edit/WebSphere">?</a> ANT and
	WebSphere<a href="/p/websphere-portal-plugin/w/edit/WebSphere">?</a>
	XMLAccess.
</p>
<h3>
	<a name="Configure_pom.xml"></a>Configure pom.xml<a
		href="#Configure_pom.xml" class="section_anchor"></a>
</h3>
<p>
	<a
		href="https://oss.sonatype.org/#nexus-search;quick~websphere-portal-plugin"
		rel="nofollow">https://oss.sonatype.org/#nexus-search;quick~websphere-portal-plugin</a>
</p>
<pre class="prettyprint">
	<span class="tag">&lt;build&gt;</span><span class="pln"><br>&nbsp; &nbsp; </span><span
		class="tag">&lt;pluginManagement&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;plugins&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;plugin&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;groupId&gt;</span><span class="pln">com.googlecode.websphere-portal-plugin</span><span
		class="tag">&lt;/groupId&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;artifactId&gt;</span><span class="pln">websphere-portal-plugin</span><span
		class="tag">&lt;/artifactId&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;version&gt;</span><span class="pln">1.0.0</span><span
		class="tag">&lt;/version&gt;</span><span class="pln"><br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;/plugin&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;/plugins&gt;</span><span class="pln"><br>&nbsp; &nbsp; </span><span
		class="tag">&lt;/pluginManagement&gt;</span><span class="pln"><br></span><span
		class="tag">&lt;/build&gt;</span>
</pre>
<h3>
	<a name="Configure_WebSphere_Portal_Server_Profile_in_Settings.xml"></a>Configure
	WebSphere Portal Server Profile in Settings.xml<a
		href="#Configure_WebSphere_Portal_Server_Profile_in_Settings.xml"
		class="section_anchor"></a>
</h3>
<pre class="prettyprint">
	<span class="tag">&lt;settings</span><span class="pln"> </span><span
		class="atn">xmlns</span><span class="pun">=</span><span class="atv">"http://maven.apache.org/SETTINGS/1.0.0"</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="atn">xmlns:xsi</span><span class="pun">=</span><span
		class="atv">"http://www.w3.org/2001/XMLSchema-instance"</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="atn">xsi:schemaLocation</span><span class="pun">=</span><span
		class="atv">"http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd"</span><span
		class="tag">&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;servers&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ...<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;server&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;id&gt;</span><span class="pln">was_box1</span><span
		class="tag">&lt;/id&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The username attribute is FTP User Name, used for deploy portlet <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; remotely --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;username&gt;</span><span class="pln">ftpUserName</span><span
		class="tag">&lt;/username&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The password attribute is FTP User password, used for deploy remotely <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; portlet --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;password&gt;</span><span class="pln">ftpPassword</span><span
		class="tag">&lt;/password&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;configuration&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The ftp_url is used for deploy portlet remotely --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;ftp_url&gt;</span><span class="pln">ftp://was_box1</span><span
		class="tag">&lt;/ftp_url&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- Options of was_conntype: SOAP, RMI, and NONE, NONE means that no <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; server connection is made --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_conntype&gt;</span><span class="pln">SOAP</span><span
		class="tag">&lt;/was_conntype&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The host attribute is optional and only specified if the conntype <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; is specified. It contains the hostname of the machine to connect to --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_host&gt;</span><span class="pln">was_box1</span><span
		class="tag">&lt;/was_host&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The port attribute is optional and only specified if the conntype <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; is specified. It contains the port on the host to connect to --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_port&gt;</span><span class="pln">20025</span><span
		class="tag">&lt;/was_port&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- WebSphere Version, available for 6 or 8 --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_version&gt;</span><span class="pln">8</span><span
		class="tag">&lt;/was_version&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The wasHome attribute is optional and contains the location of the <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WebSphere Installation Directory. --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_home&gt;</span><span class="pln">/usr/WebSphere85/AppServer</span><span
		class="tag">&lt;/was_home&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The node option specifies the node name to install or update an <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; entire application or to update an application in order to add a new module. <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; If you want to update an entire application, this option only applies if <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the application contains a new module that does not exist in the installed <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; application. --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_node&gt;</span><span class="pln">was_box1Node</span><span
		class="tag">&lt;/was_node&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The server option specifies the name of the server on which you <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; want to perform one of the following actions: 1) Install a new application. <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2) Replace an existing application with an updated version of that application. <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In this situation, the server option is meaningful only if the updated version <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; of the application contains a new module that does not exist in the already <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; installed version of the application. --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_profile&gt;</span><span class="pln">WebSphere_Portal</span><span
		class="tag">&lt;/was_profile&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The cell option specifies the cell name to install or update an <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; entire application, or to update an application in order to add a new module. <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; If you want to update an entire application, this option only applies if <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the application contains a new module that does not exist in the installed <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; application. --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_cell&gt;</span><span class="pln">was_box1Cell</span><span
		class="tag">&lt;/was_cell&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The user attribute is optional and contains the user ID to authenticate <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; with --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_username&gt;</span><span class="pln">wasAdm</span><span
		class="tag">&lt;/was_username&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The password attribute is optional and contains the password to <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; authenticate with --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;was_password&gt;</span><span class="pln">wasAdmPwd</span><span
		class="tag">&lt;/was_password&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The config url is used for !WebSphere Portal XML Access Operations --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;wps_config_url&gt;</span><span class="pln">http ://was_box1:10039/wpsp/config</span><span
		class="tag">&lt;/wps_config_url&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The !WebSphere Portal Admin username, which is used for !WebSphere <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Portal XML Access Operations --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;wps_config_username&gt;</span><span class="pln">wpsAdm</span><span
		class="tag">&lt;/wps_config_username&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="com">&lt;!-- The !WebSphere Portal Admin password, which is used for !WebSphere <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Portal XML Access Operations --&gt;</span><span
		class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;wps_config_password&gt;</span><span class="pln">wpsAdmPwd</span><span
		class="tag">&lt;/wps_config_password&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;/configuration&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;/server&gt;</span><span class="pln"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ...<br>&nbsp; &nbsp; &nbsp; &nbsp; </span><span
		class="tag">&lt;/servers&gt;</span><span class="pln"><br></span><span
		class="tag">&lt;/settings&gt;</span>
</pre>
<h3>
	<a name="Set_IBM_JDK_in_classpath"></a>Set IBM JDK in classpath<a
		href="#Set_IBM_JDK_in_classpath" class="section_anchor"></a>
</h3>
<p>For windows(e.g.):</p>
<pre class="prettyprint">
	<span class="kwd">set</span><span class="pln"> JAVA_HOME</span><span
		class="pun">=</span><span class="str">"C:\Program Files (x86)\IBM\SDP85\jdk"</span>
</pre>
<p>For UNIX(e.g.):</p>
<pre class="prettyprint">
	<span class="kwd">export</span><span class="pln"> JAVA_HOME</span><span
		class="pun">=</span><span class="str">/usr/</span><span class="typ">WebSphere</span><span
		class="pun">/</span><span class="typ">AppServer</span><span
		class="pun">/</span><span class="pln">java</span>
</pre>
<p>P.S: For using WebSphere Goals, you need create at least 1
	WebSphere Server Profile under your WAS home.</p>
<h3>
	<a name="Available_goals_for_WebSphere_:"></a>Available goals for
	WebSphere:<a href="#Available_goals_for_WebSphere_:"
		class="section_anchor"></a>
</h3>
<ul>
	<li><strong>deploy-ear</strong></li>
</ul>
<p>The deploy-ear task enables you to install a new application into
	a WebSphere Server or Cell.This task is a wrapper for the
	AdminApp.install() command of the wsadmin tool. Refer to the wsadmin
	documentation for information on the valid options available during
	application installation.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Build</span><span
		class="pln"> </span><span class="kwd">and</span><span class="pln"> </span><span
		class="typ">Deploy</span><span class="pln"> EAR </span><span
		class="typ">Application</span><span class="pln"> <br>mvn clean </span><span
		class="kwd">package</span><span class="pln"> websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">ear </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DwasHome</span><span class="pun">=</span><span
		class="pln">C</span><span class="pun">:\</span><span class="pln">IBM</span><span
		class="pun">\</span><span class="typ">WebSphere</span><span
		class="pun">\</span><span class="typ">AppServer</span><span
		class="pln"> <br></span><span class="lit">2.</span><span
		class="pln"> </span><span class="typ">Deploy</span><span class="pln"> an existing EAR </span><span
		class="typ">Application</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">ear </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DwasHome</span><span class="pun">=</span><span
		class="pln">C</span><span class="pun">:\</span><span class="pln">IBM</span><span
		class="pun">\</span><span class="typ">WebSphere</span><span
		class="pun">\</span><span class="typ">AppServer</span><span
		class="pln"> </span><span class="pun">-</span><span class="typ">DinstallableApp</span><span
		class="pun">=</span><span class="pln">C</span><span class="pun">:\</span><span
		class="pln">dist</span><span class="pun">\</span><span class="typ">BusinessDomainServices</span><span
		class="pun">.</span><span class="pln">ear <br></span><span
		class="lit">3.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> an EAR </span><span class="typ">Application</span><span
		class="pln"> </span><span class="kwd">from</span><span class="pln"> </span><span
		class="typ">Nexus</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">ear </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DwasHome</span><span class="pun">=</span><span
		class="pln">C</span><span class="pun">:\</span><span class="pln">IBM</span><span
		class="pun">\</span><span class="typ">WebSphere</span><span
		class="pun">\</span><span class="typ">AppServer</span><span
		class="pln"> </span><span class="pun">-</span><span class="typ">DinstallableApp</span><span
		class="pln"> </span><span class="pun">=</span><span class="pln">http</span><span
		class="pun">:</span><span class="com">//stype-nexus:8081/nexus/content/repositories/releases/com/xyz/BusinessDomainServices/9.34.87/BusinessDomainServices-9.34.87.ear -DappName=BusinessDomainServices </span>
</pre>
<ul>
	<li><strong>deploy-war</strong></li>
</ul>
<p>The deploy-war task enables you to install a Web Application into
	a WebSphere Server or Cell.This task is a wrapper for the
	AdminApp.install() command of the wsadmin tool. Refer to the wsadmin
	documentation for information on the valid options available during
	application installation.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Build</span><span
		class="pln"> </span><span class="kwd">and</span><span class="pln"> </span><span
		class="typ">Deploy</span><span class="pln"> a WAR <br>mvn clean </span><span
		class="kwd">package</span><span class="pln"> websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">war </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DcontextRoot</span><span
		class="pun">=</span><span class="str">/wpsp/</span><span class="pln">themes</span><span
		class="pun">/</span><span class="typ">HomePageTheme</span><span
		class="pln"> </span><span class="pun">-</span><span class="typ">DwasHome</span><span
		class="pun">=</span><span class="pln">C</span><span class="pun">:</span><span
		class="str">/IBM/</span><span class="typ">WebSphere</span><span
		class="pun">/</span><span class="typ">AppServer</span><span
		class="pln"> <br></span><span class="lit">2.</span><span
		class="pln"> </span><span class="typ">Deploy</span><span class="pln"> an existing WAR <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">war </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DcontextRoot</span><span
		class="pun">=</span><span class="str">/wpsp/</span><span class="pln">themes</span><span
		class="pun">/</span><span class="typ">HomePageTheme</span><span
		class="pln"> </span><span class="pun">-</span><span class="typ">DwasHome</span><span
		class="pun">=</span><span class="pln">C</span><span class="pun">:</span><span
		class="str">/IBM/</span><span class="typ">WebSphere</span><span
		class="pun">/</span><span class="typ">AppServer</span><span
		class="pln"> </span><span class="pun">-</span><span class="typ">DinstallableApp</span><span
		class="pun">=</span><span class="pln">C</span><span class="pun">:</span><span
		class="str">/dist/</span><span class="pln">theme1</span><span
		class="pun">.</span><span class="pln">war <br></span><span
		class="lit">3.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> a WAR </span><span class="kwd">from</span><span
		class="pln"> </span><span class="typ">Nexus</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">war </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DinstallableApp</span><span
		class="pun">=</span><span class="pln">http </span><span class="pun">:</span><span
		class="com">//stype-nexus:8081/nexus/content/repositories/releases/com/xyz/theme1/9.34.87/theme1-9.34.87.war </span>
</pre>
<ul>
	<li><strong>wsdl-to-java</strong></li>
</ul>
<p>The wsdl-to-java task creates Java classes and deployment
	descriptor templates from a Web Services Description Language (WSDL)
	file. This task is a wrapper the com.ibm.websphere.ant.tasks.WSDL2Java,
	Refer to the IBM documentation for information on the valid options
	available.</p>
<pre class="prettyprint">
	<span class="tag">&lt;wsdl2javatask</span><span class="pln"> </span><span
		class="atn">url</span><span class="pun">=</span><span class="atv">"location of input WSDL document"</span><span
		class="pln"> <br></span><span class="atn">output</span><span
		class="pun">=</span><span class="atv">"root directory for emitted files"</span><span
		class="pln"> <br></span><span class="atn">role</span><span
		class="pun">=</span><span class="atv">"J2EE development role"</span><span
		class="pln"> <br></span><span class="atn">container</span><span
		class="pun">=</span><span class="atv">"j2ee container"</span><span
		class="pln"> <br></span><span class="atn">genjava</span><span
		class="pun">=</span><span class="atv">"generate java files"</span><span
		class="tag">/&gt;</span><span class="pln"> </span>
</pre>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Generate</span><span
		class="pln"> </span><span class="typ">Java</span><span class="pln"> classes </span><span
		class="kwd">base</span><span class="pln"> </span><span class="kwd">by</span><span
		class="pln"> WSDL <br>mvn clean websphere</span><span class="pun">:</span><span
		class="pln">wsdl</span><span class="pun">-</span><span class="pln">to</span><span
		class="pun">-</span><span class="pln">java </span><span class="kwd">package</span><span
		class="pln"> </span><span class="pun">-</span><span class="typ">DwasHome</span><span
		class="pun">=</span><span class="pln">C</span><span class="pun">:</span><span
		class="str">/IBM/</span><span class="typ">WebSphere</span><span
		class="pun">/</span><span class="typ">AppServer</span><span
		class="pln"> </span><span class="pun">-</span><span class="typ">Durl</span><span
		class="pun">=</span><span class="pln">http</span><span class="pun">:</span><span
		class="com">//memsvcuser:M3msvcus3r@dveweb1/ secure/mws/services/UserAccess.wsdl -Doutput=${project.basedir}/src/main/generated </span>
</pre>
<h3>
	<a name="Available_goals_for_WebSphere_Portal:"></a>Available goals for
	WebSphere Portal:<a href="#Available_goals_for_WebSphere_Portal:"
		class="section_anchor"></a>
</h3>
<ul>
	<li><strong>deploy-portlet</strong></li>
</ul>
<p>The deploy-portlet task enables you to install portlet into a
	WebSphere Portal Server. This task is a wrapper for the XMLAccess
	command of the WebSphere Portal. Refer to the WebSphere Portal
	documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Build</span><span
		class="pln"> </span><span class="kwd">and</span><span class="pln"> deploy a portlet <br>mvn clean </span><span
		class="kwd">package</span><span class="pln"> websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">portlet </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> an existing portlet</span><span class="pun">:</span><span
		class="pln"> <br>mvn clean websphere</span><span class="pun">:</span><span
		class="pln">deploy</span><span class="pun">-</span><span class="pln">portlet </span><span
		class="pun">-</span><span class="typ">Dserver</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">DinstallableApp</span><span class="pun">=</span><span
		class="pln">C</span><span class="pun">:</span><span class="str">/dist/</span><span
		class="pln">portlet1</span><span class="pun">.</span><span class="pln">war <br></span><span
		class="lit">3.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> portlet </span><span class="kwd">with</span><span
		class="pln"> customer uniqueNames <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">portlet </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DinstallableApp</span><span
		class="pun">=</span><span class="pln">C</span><span class="pun">:</span><span
		class="str">/dist/</span><span class="pln">portlet1</span><span
		class="pun">.</span><span class="pln">war </span><span class="pun">-</span><span
		class="typ">DuniqueNames</span><span class="pun">=</span><span
		class="pln">com</span><span class="pun">.</span><span class="pln">xyz</span><span
		class="pun">.</span><span class="pln">plt1 <br></span><span
		class="lit">4.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> portlet </span><span class="kwd">from</span><span
		class="pln"> </span><span class="typ">Nexus</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">portlet </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DinstallableApp</span><span
		class="pln"> </span><span class="pun">=</span><span class="pln">http</span><span
		class="pun">:</span><span class="com">//stype-nexus:8081/nexus/content/repositories/releases/com/xyz/ptl1/9.34.87/ptl1-9.34.87.war </span>
</pre>
<ul>
	<li><strong>deploy-multi-portlet</strong></li>
</ul>
<p>The deploy-multi-portlet task enables you to install multiable
	portlets into a WebSphere Portal Server. This task is a wrapper for the
	XMLAccess command of the WebSphere Portal. Refer to the WebSphere
	Portal documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> multi portlets</span><span class="pun">:</span><span
		class="pln"> <br>mvn clean websphere</span><span class="pun">:</span><span
		class="pln">deploy</span><span class="pun">-</span><span class="pln">multi</span><span
		class="pun">-</span><span class="pln">portlet </span><span class="pun">-</span><span
		class="typ">Dserver</span><span class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DinstallableApps</span><span
		class="pun">=</span><span class="pln">C</span><span class="pun">:</span><span
		class="str">/dist/</span><span class="pln">portlet1</span><span
		class="pun">.</span><span class="pln">war</span><span class="pun">,</span><span
		class="pln">C</span><span class="pun">:</span><span class="str">/dist/</span><span
		class="pln">portlet2</span><span class="pun">.</span><span class="pln">war <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> multi portlets </span><span class="kwd">with</span><span
		class="pln"> customer uniqueNames</span><span class="pun">,</span><span
		class="pln"> </span><span class="kwd">with</span><span class="pln"> comma seperated uniqueNames args</span><span
		class="pun">:</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">multi</span><span class="pun">-</span><span class="pln">portlet </span><span
		class="pun">-</span><span class="typ">Dserver</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">DinstallableApps</span><span class="pun">=</span><span
		class="pln">C</span><span class="pun">:</span><span class="str">/dist/</span><span
		class="pln">portlet1</span><span class="pun">.</span><span class="pln">war</span><span
		class="pun">,</span><span class="pln">C</span><span class="pun">:</span><span
		class="str">/dist/</span><span class="pln">portlet2</span><span
		class="pun">.</span><span class="pln">war </span><span class="pun">-</span><span
		class="typ">DuniqueNames</span><span class="pun">=</span><span
		class="pln">com</span><span class="pun">.</span><span class="pln">xyz</span><span
		class="pun">.</span><span class="pln">plt1</span><span class="pun">,</span><span
		class="pln">com</span><span class="pun">.</span><span class="pln">xyz</span><span
		class="pun">.</span><span class="pln">plt1 <br></span><span
		class="lit">3.</span><span class="pln"> </span><span class="typ">Deploy</span><span
		class="pln"> multi portlets </span><span class="kwd">from</span><span
		class="pln"> </span><span class="typ">Nexus</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">deploy</span><span class="pun">-</span><span
		class="pln">multi</span><span class="pun">-</span><span class="pln">portlet </span><span
		class="pun">-</span><span class="typ">Dserver</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">DinstallableApps</span><span class="pln"> </span><span
		class="pun">=</span><span class="pln">http</span><span class="pun">:</span><span
		class="com">//stype-nexus:8081/nexus/content/repositories/releases/com/xyz/ptl1/9.34.87/ptl1-9.34.87.war,http://stype-nexus:8081/nexus/content/repositories/releases/com/xyz/ptl2/9.34.87/ptl2-9.34.87.war </span>
</pre>
<ul>
	<li><strong>export-page</strong></li>
</ul>
<p>The export-page task enables you to export the WebSphere Portal
	Page based on UniqueName. This task is a wrapper for the XMLAccess
	command of the WebSphere Portal. Refer to the WebSphere Portal
	documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Export</span><span
		class="pln"> </span><span class="typ">Page</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="kwd">export</span><span class="pun">-</span><span
		class="pln">page </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">page</span><span
		class="pun">.</span><span class="pln">home1 <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Export</span><span
		class="pln"> </span><span class="typ">Page</span><span class="pln"> without </span><span
		class="typ">Children</span><span class="pln"> <br>mvn clean websphere</span><span
		class="pun">:</span><span class="kwd">export</span><span class="pun">-</span><span
		class="pln">page </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">page</span><span
		class="pun">.</span><span class="pln">home1 </span><span class="pun">-</span><span
		class="typ">Drecursion</span><span class="pun">=</span><span
		class="kwd">false</span><span class="pln"> </span>
</pre>
<ul>
	<li><strong>export-portlet</strong></li>
</ul>
<p>The export-portlet task enables you to export the WebSphere
	portlet(s) based on UniqueName(s). This task is a wrapper for the
	XMLAccess command of the WebSphere Portal. Refer to the WebSphere
	Portal documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Export</span><span
		class="pln"> single portlet <br>mvn clean websphere</span><span
		class="pun">:</span><span class="kwd">export</span><span class="pun">-</span><span
		class="pln">portlet </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">ptlt1 <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Export</span><span
		class="pln"> multi portlets <br>mvn clean websphere</span><span
		class="pun">:</span><span class="kwd">export</span><span class="pun">-</span><span
		class="pln">portlet </span><span class="pun">-</span><span class="typ">Dserver</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">ptlt1</span><span
		class="pun">,</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">ptlt2 </span>
</pre>
<p></p>
<ul>
	<li><strong>export-theme</strong></li>
</ul>
The export-theme task enables you to export the WebSphere Theme based on
Theme. This task is a wrapper for the XMLAccess command of the WebSphere
Portal. Refer to the WebSphere Portal documentation for more
information.
<p></p>
<p>Usages: 1. Export theme</p>
<pre class="prettyprint">
	<span class="pln">mvn clean websphere</span><span class="pun">:</span><span
		class="kwd">export</span><span class="pun">-</span><span class="pln">theme </span><span
		class="pun">-</span><span class="typ">Dserver</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">DuniqueName</span><span class="pun">=</span><span
		class="pln">com</span><span class="pun">.</span><span class="pln">xyz</span><span
		class="pun">.</span><span class="pln">theme1 </span>
</pre>
<ul>
	<li><strong>export-urlmapping</strong></li>
</ul>
<p>The export-urlmapping task enables you to export the WebSphere
	urlmapping based on UniqueName or label. This task is a wrapper for the
	XMLAccess command of the WebSphere Portal. Refer to the WebSphere
	Portal documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Export</span><span
		class="pln"> URL </span><span class="typ">Mapping</span><span
		class="pln"> </span><span class="kwd">by</span><span class="pln"> uniqueName <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">urlmapping </span><span
		class="pun">-</span><span class="typ">Dserver</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">DuniqueName</span><span class="pun">=</span><span
		class="pln">com</span><span class="pun">.</span><span class="pln">xyz</span><span
		class="pun">.</span><span class="pln">urlmapping</span><span
		class="pun">.</span><span class="pln">friend1 <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Export</span><span
		class="pln"> URL </span><span class="typ">Mapping</span><span
		class="pln"> </span><span class="kwd">by</span><span class="pln"> label <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">urlmapping </span><span
		class="pun">-</span><span class="typ">Dserver</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">Dlabel</span><span class="pun">=</span><span class="pln">friend1 </span>
</pre>
<p></p>
<ul>
	<li><strong>import</strong></li>
</ul>
The import task enables you to import a XMLAccess XML into WebSphere
Portal. This task is a wrapper for the XMLAccess command of the
WebSphere Portal. Refer to the WebSphere Portal documentation for more
information.
<p></p>
<p>Usages: 1. Import a XMLAccess XML</p>
<pre class="prettyprint">
	<span class="pln">mvn clean websphere</span><span class="pun">:</span><span
		class="kwd">import</span><span class="pln"> </span><span class="pun">-</span><span
		class="typ">DimportXML</span><span class="pun">=</span><span
		class="pln">c</span><span class="pun">:</span><span class="str">/xmls/</span><span
		class="pln">pages_portal1</span><span class="pun">.</span><span
		class="pln">xml </span>
</pre>
<ul>
	<li><strong>migrate-page</strong></li>
</ul>
<p>The migrate-page task enables you to migrate XMLAccess Page XML
	from source WPS server to target WPS server. This task is a wrapper for
	the XMLAccess command of the WebSphere Portal. Refer to the WebSphere
	Portal documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Migrate</span><span
		class="pln"> a specified page </span><span class="kwd">from</span><span
		class="pln"> was_box1 to was_box2 <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">migrate</span><span class="pun">-</span><span
		class="pln">page </span><span class="pun">-</span><span class="typ">DsourceServer</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DtargetServer</span><span
		class="pun">=</span><span class="pln">was_box2 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">page</span><span
		class="pun">.</span><span class="pln">home1 <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Migrate</span><span
		class="pln"> a specified page </span><span class="kwd">from</span><span
		class="pln"> was_box1 to was_box2 without child pages <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">migrate</span><span class="pun">-</span><span
		class="pln">page </span><span class="pun">-</span><span class="typ">DsourceServer</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DtargetServer</span><span
		class="pun">=</span><span class="pln">was_box2 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">page</span><span
		class="pun">.</span><span class="pln">home1 </span><span class="pun">-</span><span
		class="typ">Drecursion</span><span class="pun">=</span><span
		class="kwd">false</span>
</pre>
<p></p>
<ul>
	<li><strong>migrate-portlet</strong></li>
</ul>
The migrate-portlet task enables you to migrate XMLAccess Portlet XML(s)
from source WPS server to target WPS server. This task is a wrapper for
the XMLAccess command of the WebSphere Portal. Refer to the WebSphere
Portal documentation for more information.
<p></p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Migrate</span><span
		class="pln"> single portlet </span><span class="kwd">from</span><span
		class="pln"> was_box1 to was_box2 <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">migrate</span><span class="pun">-</span><span
		class="pln">portlet </span><span class="pun">-</span><span class="typ">DsourceServer</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DtargetServer</span><span
		class="pun">=</span><span class="pln">was_box2 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">ptlt1 <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Migrate</span><span
		class="pln"> multi portlets </span><span class="kwd">from</span><span
		class="pln"> was_box1 to was_box2 <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">migrate</span><span class="pun">-</span><span
		class="pln">portlet </span><span class="pun">-</span><span class="typ">DsourceServer</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DtargetServer</span><span
		class="pun">=</span><span class="pln">was_box2 </span><span
		class="pun">-</span><span class="typ">DuniqueNames</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">ptlt1</span><span
		class="pun">,</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">ptlt2 </span>
</pre>
<ul>
	<li><strong>migrate-theme</strong></li>
</ul>
<p>The migrate-theme task enables you to migrate XMLAccess theme XML
	from source WPS server to target WPS server. This task is a wrapper for
	the XMLAccess command of the WebSphere Portal. Refer to the WebSphere
	Portal documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Migrate</span><span
		class="pln"> </span><span class="typ">Theme</span><span class="pln"> XML </span><span
		class="kwd">from</span><span class="pln"> was_box1 to was_box2 <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">migrate</span><span class="pun">-</span><span
		class="pln">theme </span><span class="pun">-</span><span class="typ">DsourceServer</span><span
		class="pun">=</span><span class="pln">was_box1 </span><span
		class="pun">-</span><span class="typ">DtargetServer</span><span
		class="pun">=</span><span class="pln">was_box2 </span><span
		class="pun">-</span><span class="typ">DuniqueName</span><span
		class="pun">=</span><span class="pln">com</span><span class="pun">.</span><span
		class="pln">xyz</span><span class="pun">.</span><span class="pln">theme1 </span>
</pre>
<ul>
	<li><strong>migrate-urlmapping</strong></li>
</ul>
<p>The migrate-urlmapping task enables you to migrate XMLAccess
	Urlmapping XML from source WPS server to target WPS server. This task
	is a wrapper for the XMLAccess command of the WebSphere Portal. Refer
	to the WebSphere Portal documentation for more information.</p>
<p>Usages:</p>
<pre class="prettyprint">
	<span class="lit">1.</span><span class="pln"> </span><span class="typ">Migrate</span><span
		class="pln"> urlmapping </span><span class="kwd">from</span><span
		class="pln"> was_box1 to was_box2 </span><span class="kwd">by</span><span
		class="pln"> uniqueName <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">migrate</span><span class="pun">-</span><span
		class="pln">urlmapping </span><span class="pun">-</span><span
		class="typ">DsourceServer</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">DtargetServer</span><span class="pun">=</span><span
		class="pln">was_box2 </span><span class="pun">-</span><span
		class="typ">DuniqueName</span><span class="pun">=</span><span
		class="pln">com</span><span class="pun">.</span><span class="pln">xyz</span><span
		class="pun">.</span><span class="pln">urlmapping</span><span
		class="pun">.</span><span class="pln">friend1 <br></span><span
		class="lit">2.</span><span class="pln"> </span><span class="typ">Migrate</span><span
		class="pln"> URL </span><span class="typ">Mapping</span><span
		class="pln"> </span><span class="kwd">by</span><span class="pln"> label <br>mvn clean websphere</span><span
		class="pun">:</span><span class="pln">migrate</span><span class="pun">-</span><span
		class="pln">urlmapping </span><span class="pun">-</span><span
		class="typ">DsourceServer</span><span class="pun">=</span><span
		class="pln">was_box1 </span><span class="pun">-</span><span
		class="typ">DtargetServer</span><span class="pun">=</span><span
		class="pln">was_box2 </span><span class="pun">-</span><span
		class="typ">Dlabel</span><span class="pun">=</span><span class="pln">friend1 </span>
</pre>
