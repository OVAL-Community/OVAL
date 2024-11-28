<?xml version="1.0" encoding="UTF-8"?>
<!--
	This stylesheet was originally developed by The MITRE Corporation.
	It has been designed to generate documenation about the elements
	and types by looking at the annotation elements found in the OVAL
	Schema. It is maintained by The Mitre Corporation and developed
	for use by the public OVAL Community.  For more information,
	including how to get involved in the project, please visit the
	OVAL website at http://oval.mitre.org.
-->
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5">

	<xsl:output method="html"/>

	<xsl:variable name="root_element_name" select="xsd:schema/xsd:element[position()=1]/@name"/>
    <xsl:variable name="oval_namespace_prefix">oval</xsl:variable>
    <xsl:variable name="oval-def_namespace_prefix">oval-def</xsl:variable>
    <xsl:variable name="oval-sc_namespace_prefix">oval-sc</xsl:variable>
    <xsl:variable name="oval-res_namespace_prefix">oval-res</xsl:variable>
    <xsl:variable name="oval-var_namespace_prefix">oval-var</xsl:variable>
	<xsl:variable name="digital-signature_namespace_prefix">ds</xsl:variable>
      
	<xsl:template match="xsd:schema">
		<html>
		<head>
			<title>OVAL <xsl:value-of select="document(./xsd:include/@schemaLocation)/xsd:schema/xsd:annotation/xsd:appinfo/schema"/> Schema Element Dictionary</title>
		</head>
		<body bgcolor="#ffffff">

		<xsl:for-each select="xsd:include">
			<xsl:for-each select="document(./@schemaLocation)//xsd:schema">
				<xsl:call-template name="process-schema"/>
			</xsl:for-each>
		</xsl:for-each>
		<xsl:call-template name="process-schema"/>

		</body>
		</html>
	</xsl:template>

	<xsl:template name="process-schema">
		<xsl:for-each select="xsd:annotation">
			<h1 align="center">- Open Vulnerability and Assessment Language -<br/>Element Dictionary</h1>
			<ul>
			<li>Schema: <xsl:value-of select="xsd:appinfo/schema"/></li>
			<li>Version: <xsl:value-of select="xsd:appinfo/version"/></li>
			<li>Release Date: <xsl:value-of select="xsd:appinfo/date"/></li>
			</ul>
			<xsl:for-each select="xsd:documentation">
				<p align="justify"><xsl:value-of select="."/></p>
			</xsl:for-each>
		</xsl:for-each>

		<xsl:for-each select="xsd:element|xsd:complexType|xsd:simpleType|xsd:group|xsd:attributeGroup">
			<xsl:if test="@name=$root_element_name or

                              @name='GeneratorType' or
                              @name='CheckEnumeration' or
                              @name='DefinitionIDPattern' or
                              @name='EmptyStringType' or
                              
                              @name='DefinitionsType' or
                              @name='TestsType' or
                              @name='ObjectsType' or
                              @name='StatesType' or
                              @name='VariablesType' or
                              @name='ActionEnumeration' or
                              @name='EntityBaseType' or
                              
                              @name='SystemInfoType' or
                              @name='CollectedObjectsType' or
                              @name='SystemDataType' or
                              @name='FlagEnumeration' or
                              @name='EntityBaseType' or
                              
                              @name='DirectivesType' or
                              @name='ResultsType' or
                              @name='ContentEnumeration' or
                              
                              contains(@name, '_test') or
                              @name='EntityStateFamilyType' or
                              @name='EntityStateTrainIdentifierType' or
                              @name='EntityStateEndpointType' or
                              @name='EntityStateAddrTypeType' or
                              
                              contains(@name, '_item') or
                              @name='EntityItemFamilyType' or
                              @name='EntityItemTrainIdentifierType' or
                              @name='EntityItemEndpointType' or
                              @name='EntityItemAddrTypeType'
				      ">
				<!-- Draw double lines separating the item -->
				<hr noshade="true" size="5" width="100%"/>
				<hr noshade="true" size="5" width="100%"/>
			</xsl:if>
			<xsl:choose>
				<xsl:when test="name()='xsd:element'"><xsl:call-template name="global_element"/></xsl:when>
				<xsl:when test="name()='xsd:complexType'"><xsl:call-template name="global_complex_type"/></xsl:when>
				<xsl:when test="name()='xsd:simpleType'"><xsl:call-template name="global_simple_type"/></xsl:when>
				<xsl:when test="name()='xsd:group'"><xsl:call-template name="global_element_group"/></xsl:when>
				<xsl:when test="name()='xsd:attributeGroup'"><xsl:call-template name="global_attribute_group"/></xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="global_element">
		<xsl:element name="h3">			
			<xsl:element name="a">
				<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
			</xsl:element>
			<xsl:text>&lt; </xsl:text>
			<xsl:choose>
				<xsl:when test="xsd:annotation/xsd:appinfo/oval:deprecated_info">
					<xsl:element name="span">
						<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
						<xsl:value-of select="@name"/>
					</xsl:element>					
				</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name"/></xsl:otherwise>
			</xsl:choose>
			<xsl:text>  &gt;</xsl:text>
		</xsl:element>
		
		<xsl:call-template name="annotation"/>

		<xsl:if test="@type">
			<xsl:call-template name="dictionary_link">
				<xsl:with-param name="type" select="@type"/>
			</xsl:call-template>
		</xsl:if>
		
		<xsl:if test="./xsd:complexType/xsd:complexContent/xsd:extension">
			<xsl:call-template name="extension">
				<xsl:with-param name="base" select="xsd:complexType/xsd:complexContent/xsd:extension/@base"/>
			</xsl:call-template>			
		</xsl:if>
		
		<xsl:if test="./xsd:attribute[name(ancestor::node()) != 'element']">
			<xsl:call-template name="attributes"/>
		</xsl:if>
		<xsl:choose>
			<xsl:when test="xsd:complexType//xsd:element|xsd:complexType//xsd:group"><xsl:call-template name="children"/></xsl:when>
		</xsl:choose>
            <xsl:if test="xsd:annotation/xsd:appinfo/evaluation_documentation">
	          <p align="justify"><xsl:value-of select="xsd:annotation/xsd:appinfo/evaluation_documentation"/></p>
	          <xsl:for-each select="xsd:annotation/xsd:appinfo/evaluation_chart">
	               <xsl:call-template name="evaluation_chart"/>
	          </xsl:for-each>
            </xsl:if>
	      <xsl:for-each select="xsd:annotation/xsd:appinfo/example">
	            <xsl:call-template name="example"/>
	      </xsl:for-each>
	      <br/>
	</xsl:template>
	
	<xsl:template name="global_complex_type">	
		<xsl:element name="h3">
			<xsl:element name="a">
				<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
			</xsl:element>
			<xsl:text>== </xsl:text>
			<xsl:choose>
				<xsl:when test="xsd:annotation/xsd:appinfo/oval:deprecated_info">
					<xsl:element name="span">
						<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
						<xsl:value-of select="@name"/>
					</xsl:element>					
				</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name"/></xsl:otherwise>
			</xsl:choose>
			<xsl:text> ==</xsl:text>
		</xsl:element>
		
		<xsl:call-template name="annotation"/>
		
		<xsl:if test="xsd:complexContent/xsd:extension">
			<xsl:call-template name="extension">
				<xsl:with-param name="base" select="xsd:complexContent/xsd:extension/@base"/>
			</xsl:call-template>			
		</xsl:if>

		<xsl:if test="xsd:complexContent/xsd:restriction">
			<xsl:call-template name="restriction">
				<xsl:with-param name="base" select="xsd:complexContent/xsd:restriction/@base"/>
			</xsl:call-template>			
		</xsl:if>
		
		<xsl:if test="xsd:simpleContent/xsd:restriction">
			<xsl:call-template name="restriction">
				<xsl:with-param name="base" select="xsd:simpleContent/xsd:restriction/@base"/>
			</xsl:call-template>			
		</xsl:if>
				
		<xsl:if test=".//xsd:attribute">
			<xsl:call-template name="attributes"/>
		</xsl:if>
		<xsl:if test="xsd:sequence/*|xsd:choice/*|xsd:complexContent/xsd:restriction/xsd:sequence/*|xsd:complexContent/xsd:extension/xsd:sequence/*">
			<xsl:call-template name="children"/>
		</xsl:if>
		
		<xsl:if test="xsd:simpleContent">
			<xsl:call-template name="simpleContent"/>
		</xsl:if>
		
	     <xsl:if test="xsd:annotation/xsd:appinfo/evaluation_documentation">
	          <p align="justify"><xsl:value-of select="xsd:annotation/xsd:appinfo/evaluation_documentation"/></p>
	          <xsl:for-each select="xsd:annotation/xsd:appinfo/evaluation_chart">
	               <xsl:call-template name="evaluation_chart"/>
	          </xsl:for-each>
	     </xsl:if>
	     
		<br/>
	</xsl:template>
	
	<xsl:template name="global_simple_type">
		<xsl:element name="h3">
			<xsl:element name="a">
				<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
			</xsl:element>
			<xsl:text>-- </xsl:text>
			<xsl:choose>
				<xsl:when test="xsd:annotation/xsd:appinfo/oval:deprecated_info">
					<xsl:element name="span">
						<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
						<xsl:value-of select="@name"/>
					</xsl:element>					
				</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name"/></xsl:otherwise>
			</xsl:choose>
			<xsl:text> --</xsl:text>
		</xsl:element>
		
		<xsl:call-template name="annotation"/>
		
		<xsl:if test="xsd:restriction/xsd:pattern">
			<xsl:call-template name="pattern"/>
		</xsl:if>
		<xsl:if test="xsd:restriction/xsd:enumeration">
			<xsl:call-template name="enumeration"/>
		</xsl:if>
		
		<xsl:if test="xsd:union">
			<p>
				<span style="font-weight:bold">Union of  </span>
			<xsl:variable name="memberTypes" 
				select="tokenize(xsd:union/@memberTypes,' ')"/>
			<xsl:for-each select="$memberTypes">
				<xsl:call-template name="dictionary_link">
					<xsl:with-param name="type" select="."/>
				</xsl:call-template>
				<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>									
			</xsl:for-each>			
			</p>
		</xsl:if>
		
		<xsl:if test="xsd:annotation/xsd:appinfo/evaluation_documentation">
			<p align="justify"><xsl:value-of select="xsd:annotation/xsd:appinfo/evaluation_documentation"/></p>
			<xsl:for-each select="xsd:annotation/xsd:appinfo/evaluation_chart">
				<xsl:call-template name="evaluation_chart"/>
			</xsl:for-each>
		</xsl:if>

		<br/>
	</xsl:template>
	
	<xsl:template name="global_element_group">		
		<xsl:element name="h3">
			<xsl:element name="a">
				<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
			</xsl:element>
			<xsl:text>-- </xsl:text>
			<xsl:choose>
				<xsl:when test="xsd:annotation/xsd:appinfo/oval:deprecated_info">
					<xsl:element name="span">
						<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
						<xsl:value-of select="@name"/>
					</xsl:element>					
				</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name"/></xsl:otherwise>
			</xsl:choose>
			<xsl:text> --</xsl:text>
		</xsl:element>
		<xsl:call-template name="annotation"/>
		<xsl:if test="xsd:choice/*">
			<xsl:call-template name="children"/>
		</xsl:if>
		<br/>
	</xsl:template>
	
	<xsl:template name="global_attribute_group">
		<xsl:element name="h3">
			<xsl:text>-- </xsl:text>
			<xsl:choose>
				<xsl:when test="xsd:annotation/xsd:appinfo/oval:deprecated_info">
					<xsl:element name="span">
						<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
						<xsl:value-of select="@name"/>
					</xsl:element>					
				</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name"/></xsl:otherwise>
			</xsl:choose>
			<xsl:text> --</xsl:text>
		</xsl:element>
		
		<xsl:call-template name="annotation"/>
		
		<xsl:if test="xsd:attribute">
			<xsl:call-template name="attributes"/>
		</xsl:if>

		<br/>
	</xsl:template>
	
	<xsl:template name="annotation">
		<xsl:for-each select="xsd:annotation">
			<xsl:for-each select="xsd:appinfo/oval:deprecated_info">
				<xsl:call-template name="deprecation_info">
					<xsl:with-param name="depInfo" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="xsd:documentation">
				<p align="justify"><xsl:value-of select="."/></p>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="attributes">
		<blockquote>
		<table bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
			<colgroup span="6">
				<col width="30"/>
				<col width="*"/>
				<col width="30"/>
				<col width="*"/>
				<col width="30"/>
				<col width="*"/>
			</colgroup>
			<tr>
				<td colspan="6"><b>Attributes:</b></td>
			</tr>
			<tr>
				<td colspan="6"><hr/></td>
			</tr>

			<xsl:for-each select=".//xsd:attribute">
			<xsl:element name="tr">
				<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
					<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
				</xsl:if>
				<td align="center" width="30">-</td>
				<td style="font-weight:bold"><xsl:value-of select="@name"/></td>
				<td width="30"></td>
				<td>
					<xsl:choose>
						<xsl:when test="not(@type)">
							<xsl:choose>
								<xsl:when test=".//xsd:restriction">
									<xsl:text>Restriction of </xsl:text>
									<xsl:call-template name="dictionary_link">
										<xsl:with-param name="type"><xsl:value-of select=".//xsd:restriction/@base"/></xsl:with-param>
									</xsl:call-template>									
								</xsl:when>
								<xsl:otherwise>n/a</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="(string-length(substring-before(@type,':')) > 0) and not(substring-before(@type,':')='xsd')">
							<xsl:call-template name="dictionary_link">
								<xsl:with-param name="type" select="@type"/>
							</xsl:call-template>
						</xsl:when>
					    <xsl:otherwise><xsl:value-of select="@type"/></xsl:otherwise>
					</xsl:choose>
				</td>
				<td width="30"></td>
				<td><xsl:if test="@use">(<xsl:value-of select="@use"/><xsl:if test="@default"> -- default='<xsl:value-of select="@default"/>'</xsl:if><xsl:if test="@fixed"> -- fixed='<xsl:value-of select="@fixed"/>'</xsl:if>)</xsl:if>
					<xsl:if test=".//xsd:enumeration">
						<xsl:text>(</xsl:text>
							<xsl:for-each select=".//xsd:enumeration">
							  <xsl:choose>
							    <xsl:when test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
							      <xsl:text>'</xsl:text><span style="text-decoration: line-through;"><xsl:value-of select="@value"/></span><xsl:text>'</xsl:text>
							    </xsl:when>
							    <xsl:otherwise>
							      <xsl:text>'</xsl:text><xsl:value-of select="@value"/><xsl:text>'</xsl:text>							      
							    </xsl:otherwise>
							  </xsl:choose>
								<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
							</xsl:for-each>
						<xsl:text>)</xsl:text>
					</xsl:if>
				</td>
			</xsl:element>
				<xsl:if test="./xsd:annotation/xsd:documentation">
					<tr>
						<td></td>
						<td colspan="5" style="padding-bottom: 10px; font-size: 90%;">
							<xsl:for-each select="./xsd:annotation/xsd:documentation">
								<xsl:value-of select="."/>
							</xsl:for-each>							
						</td>
					</tr>
				</xsl:if>
			</xsl:for-each>
			
		</table>
		</blockquote>
	</xsl:template>
	
	<xsl:template name="children">
		<blockquote>
		<table bgcolor="#F9F9F9" border="1" cellpadding="5" cellspacing="0" style="table-layout:fixed" width="88%">
			<colgroup span="4">
				<col width="200"/>
				<col width="*"/>
				<col width="80"/>
				<col width="80"/>
			</colgroup>
			<tr bgcolor="#F0F0F0">
				<td><b>Child Elements</b></td>
				<td><b>Type</b></td>
				<td align="center"><b><font size="-1">MinOccurs</font></b></td>
				<td align="center"><b><font size="-1">MaxOccurs</font></b></td>
			</tr>
			<xsl:for-each select=".//xsd:element|.//xsd:group|.//xsd:any">
				<xsl:variable name="context" select="."/>
				<xsl:choose>
					<xsl:when test="@name|@ref[.!='oval-def:set']">
						<xsl:call-template name="writeChildElmRow"/>
					</xsl:when>
					<xsl:when test="name()='xsd:choice' and name(../..)='xsd:choice'">						
						<xsl:for-each select="$context/xsd:sequence/*">
							<xsl:call-template name="writeChildElmRow" />
						</xsl:for-each>						
					</xsl:when>
					<xsl:when test="name()='xsd:any'">
						<xsl:call-template name="writeChildElmRow" />						
					</xsl:when>
				</xsl:choose>
			</xsl:for-each>

		</table>
		</blockquote>
	</xsl:template>
	
	<xsl:template name="simpleContent">
<!-- Don't call this. 1) We don't know if there are any attributes. 2) The attributes should be handled by the parent's .//xsd:attribute rule.		
		<xsl:for-each select="xsd:simpleContent/xsd:extension">
			<xsl:call-template name="attributes"/>
		</xsl:for-each>
-->		
		<xsl:if test="xsd:simpleContent/xsd:extension/@base">
		<blockquote>
		<table border="3" cellpadding="5" cellspacing="0" style="table-layout:fixed" width="88%">
			<colgroup span="2">
				<col width="200"/>
				<col width="*"/>
			</colgroup>
			<tr bgcolor="#FAFAFA">
				<td><b>Simple Content</b></td>
				<td><xsl:call-template name="dictionary_link">
					<xsl:with-param name="type" select="xsd:simpleContent/xsd:extension/@base"/>
					</xsl:call-template>
				</td>
			</tr>
		</table>
		</blockquote>
		</xsl:if>

		<xsl:if test="xsd:simpleContent/xsd:restriction/xsd:simpleType">
			<blockquote>
				<table border="3" cellpadding="5" cellspacing="0" style="table-layout:fixed" width="88%">
					<colgroup span="2">
						<col width="200"/>
						<col width="*"/>
					</colgroup>
					<tr bgcolor="#FAFAFA">
						<td><b>Simple Content</b></td>
						<td>
							<xsl:choose>
								<xsl:when test="xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:union">
									<xsl:text>Union of </xsl:text> 
									<xsl:variable name="memberTypes" 
										select="tokenize(xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:union/@memberTypes,' ')"/>
									<xsl:for-each select="$memberTypes">
										<xsl:call-template name="dictionary_link">
											<xsl:with-param name="type" select="."/>
										</xsl:call-template>
										<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>									
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:restriction">
									<xsl:text>Restricts </xsl:text>
									<xsl:call-template name="dictionary_link">
										<xsl:with-param name="type" select="xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:restriction/@base"/>
									</xsl:call-template>
								</xsl:when>
							</xsl:choose>
						</td>
					</tr>
				</table>
			</blockquote>
		</xsl:if>
		<xsl:if test="xsd:simpleContent/xsd:restriction/xsd:pattern">
			<blockquote>
				<table border="3" cellpadding="5" cellspacing="0" style="table-layout:fixed" width="88%">
					<colgroup span="2">
						<col width="200"/>
						<col width="*"/>
					</colgroup>
					<tr bgcolor="#FAFAFA">
						<td><b>Pattern</b></td>
						<td>
							<xsl:value-of select="xsd:simpleContent/xsd:restriction/xsd:pattern/@value"/>
						</td>
					</tr>
				</table>
			</blockquote>
		</xsl:if>
		
		<xsl:if test="xsd:simpleContent/xsd:restriction/xsd:enumeration">
			<xsl:for-each select="xsd:simpleContent">
				<xsl:call-template name="enumeration"/>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="pattern">
		<blockquote>
			<xsl:value-of select="xsd:restriction/xsd:pattern/@value"/>
		</blockquote>
	</xsl:template>
	
	<xsl:template name="enumeration">
		<blockquote>
		<table bgcolor="#F9F9F9" border="1" cellpadding="5" cellspacing="0" style="table-layout:fixed" width="95%">
			<colgroup span="2">
				<col width="250"/>
				<col width="*"/>
			</colgroup>
			<tr bgcolor="#F0F0F0">
				<td><b>Value</b></td>
				<td><b>Description</b></td>
			</tr>
			
			<xsl:for-each select="xsd:restriction/xsd:enumeration">
			<xsl:element name="tr">
				
				<td valign="top">
					<xsl:element name="p">
						<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
							<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
						</xsl:if>
						<xsl:value-of select="@value"/>&#160;
					</xsl:element>					
				</td>
				<td>
					<xsl:for-each select="xsd:annotation/xsd:documentation">
						<xsl:element name="p">
							<xsl:if test="../xsd:appinfo/oval:deprecated_info">
								<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
							</xsl:if>
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:for-each>
					<xsl:for-each select="xsd:annotation/xsd:appinfo/oval:deprecated_info">
						<xsl:element name="p">
							<xsl:attribute name="style">text-decoration: none;</xsl:attribute>
							
							<strong>Deprecated As Of Version: </strong><xsl:value-of select="./oval:version"/><br/>
							<strong>Reason: </strong><xsl:value-of select="./oval:reason"/><br/>
							<xsl:if test="./oval:comment">
								<strong>Comment: </strong><xsl:value-of select="./oval:comment"/>
							</xsl:if>
						</xsl:element>
					</xsl:for-each>
					<xsl:if test="not(xsd:annotation/xsd:documentation) and not(xsd:annotation/xsd:appinfo/oval:deprecated_info)">&#160;</xsl:if>
				</td>
			</xsl:element>
			</xsl:for-each>
			
		</table>
		</blockquote>
	</xsl:template>

	<xsl:template name="evaluation_chart">
		<blockquote>
		<table align="center" bgcolor="#FCFCFC" border="5" cellpadding="5" cellspacing="0">
		<tr>
			<td><br/><pre><xsl:value-of select="."/></pre></td>
		</tr>
		</table>
		</blockquote>
	</xsl:template>

	<xsl:template name="example">
	    <blockquote>
	          <table bgcolor="#FCFCFC" border="2" cellpadding="5" cellspacing="0" width="88%">
	                <tr>
	                      <td>
	                            <b><xsl:value-of select="./@title" /></b><br/>
	                            <xsl:value-of select="title"/>
	                            <hr width="100%"/>
	                            <pre><xsl:value-of select="."/></pre>
	                      </td>
	                </tr>
	          </table>
	    </blockquote>
	</xsl:template>
	
	<xsl:template name="extension">
		<xsl:param name="base"/>
		<p>
			<span style="font-weight:bold">Extends: </span>
			<xsl:call-template name="dictionary_link">
				<xsl:with-param name="type" select="$base"/>
			</xsl:call-template>
		</p>
	</xsl:template>

	<xsl:template name="restriction">
		<xsl:param name="base"/>
		<p>
			<span style="font-weight:bold">Restricts: </span>
			<xsl:call-template name="dictionary_link">
				<xsl:with-param name="type" select="$base"/>
			</xsl:call-template>
		</p>
	</xsl:template>
	
	<xsl:template name="deprecation_info">
		<xsl:param name="depInfo" required="yes" as="node()"/>
		
		<p>
			<table bgcolor="#F9F9F9" border="1" cellpadding="5" cellspacing="0" width="100%">
				<tr>
					<td>
						<b><xsl:text>Deprecated As Of Version: </xsl:text></b><xsl:value-of select="$depInfo/oval:version"/><br/>
						<b><xsl:text>Reason: </xsl:text></b><xsl:value-of select="$depInfo/oval:reason"/><br/>
						<xsl:if test="$depInfo/oval:comment">
							<b><xsl:text>Comment: </xsl:text></b><xsl:value-of select="$depInfo/oval:comment"/><br/>
						</xsl:if>
					</td>
				</tr>
			</table>
		</p>
		
	</xsl:template>
	
	<xsl:template name="writeChildElmRow">
		<tr>
			<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
				<xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
			</xsl:if>
			<td rowspan="2" style="vertical-align: top;">
					<xsl:choose>
						<xsl:when test="@ref">
							<xsl:call-template name="dictionary_link">
								<xsl:with-param name="type" select="@ref"/>
							</xsl:call-template>
						</xsl:when>
						<xsl:when test="name()='xsd:any'">
							<xsl:text>xsd:any</xsl:text>
						</xsl:when>
						<xsl:otherwise><xsl:value-of select="@name"/></xsl:otherwise>
					</xsl:choose>
			</td>
			<td style="font-size: 90%">
					<xsl:choose>
						<xsl:when test="not(@type)">
							<xsl:choose>
								<!-- The element may have no type because it is a restriction on another type.
									This happens in the linux-definitions-schema. -->
								<xsl:when test="xsd:complexType/xsd:simpleContent/xsd:restriction">
									<xsl:text>Restriction of </xsl:text>
									<xsl:call-template name="dictionary_link">
										<xsl:with-param name="type" select="xsd:complexType/xsd:simpleContent/xsd:restriction/@base"/>
									</xsl:call-template>
									<xsl:text>. See schema for details.</xsl:text>
								</xsl:when>
								<xsl:otherwise>n/a</xsl:otherwise>
							</xsl:choose>							
						</xsl:when>
						<xsl:otherwise>
							<xsl:call-template name="dictionary_link">
								<xsl:with-param name="type" select="@type"/>
							</xsl:call-template>
						</xsl:otherwise>
					</xsl:choose>					
			</td>
			<td align="center" style="font-size: 90%">
					<xsl:choose>
						<xsl:when test="@minOccurs"><xsl:value-of select="@minOccurs"/></xsl:when>
						<xsl:when test="ancestor::xsd:complexType/@name = 'CriteriaType'"><xsl:value-of select="parent::xsd:choice/@minOccurs"/></xsl:when>
						<xsl:when test="ancestor::xsd:element/@name = 'external_variable'"><xsl:value-of select="parent::xsd:choice/@minOccurs"/></xsl:when>
						<xsl:otherwise><xsl:text>1</xsl:text></xsl:otherwise>
					</xsl:choose>
			</td>
			<td align="center" style="font-size: 90%">
					<xsl:choose>
						<xsl:when test="@maxOccurs"><xsl:value-of select="@maxOccurs"/></xsl:when>
						<xsl:when test="ancestor::xsd:complexType/@name = 'CriteriaType'"><xsl:value-of select="parent::xsd:choice/@maxOccurs"/></xsl:when>
						<xsl:when test="ancestor::xsd:element/@name = 'external_variable'"><xsl:value-of select="parent::xsd:choice/@maxOccurs"/></xsl:when>
						<xsl:otherwise><xsl:text>1</xsl:text></xsl:otherwise>
					</xsl:choose>
			</td>
			
		</tr>
			<tr><td colspan="3" style="font-size: 90%; text-align: justify;">
				<xsl:for-each select="./xsd:annotation/xsd:documentation">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</td>
			</tr>
	</xsl:template>
	
	<xsl:template name="dictionary_link">
		<xsl:param name="type"/>
		<xsl:choose>		
		<xsl:when test="substring-before($type,':')=$oval_namespace_prefix">
			<a><xsl:attribute name="href">
				<xsl:text>oval-common-schema.html#</xsl:text><xsl:value-of select="substring-after($type,':')"/>
				</xsl:attribute>
			<xsl:value-of select="$type"/>
			</a>
		</xsl:when>
		<xsl:when test="substring-before($type,':')=$oval-def_namespace_prefix">
			<a><xsl:attribute name="href">
				<xsl:text>oval-definitions-schema.html#</xsl:text><xsl:value-of select="substring-after($type,':')"/>
			</xsl:attribute>
				<xsl:value-of select="$type"/>
			</a>
		</xsl:when>
		<xsl:when test="substring-before($type,':')=$oval-sc_namespace_prefix">
			<a><xsl:attribute name="href">
				<xsl:text>oval-system-characteristics-schema.html#</xsl:text><xsl:value-of select="substring-after($type,':')"/>
			</xsl:attribute>
				<xsl:value-of select="$type"/>
			</a>
		</xsl:when>
		<xsl:when test="substring-before($type,':')=$oval-res_namespace_prefix">
			<a><xsl:attribute name="href">
				<xsl:text>oval-results-schema.html#</xsl:text><xsl:value-of select="substring-after($type,':')"/>
			</xsl:attribute>
				<xsl:value-of select="$type"/>
			</a>
		</xsl:when>
		<xsl:when test="substring-before($type,':')=$oval-var_namespace_prefix">
			<a><xsl:attribute name="href">
				<xsl:text>oval-variables-schema.html#</xsl:text><xsl:value-of select="substring-after($type,':')"/>
			</xsl:attribute>
				<xsl:value-of select="$type"/>
			</a>
		</xsl:when>
			<xsl:when test="substring-before($type,':')=$digital-signature_namespace_prefix">
			<a><xsl:attribute name="href">
				<xsl:text>http://www.w3.org/TR/xmldsig-core/#sec-</xsl:text><xsl:value-of select="substring-after($type,':')"/>
			</xsl:attribute>
				<xsl:value-of select="$type"/>
			</a>			
		</xsl:when>												
		<xsl:when test="not(substring-before($type,':')='xsd')">
			<a><xsl:attribute name="href">
				<xsl:text>#</xsl:text><xsl:value-of select="substring-after($type,':')"/>
			</xsl:attribute>
				<xsl:value-of select="$type"/>
			</a>
		</xsl:when>
		<xsl:otherwise><xsl:value-of select="$type"/></xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
</xsl:stylesheet>
