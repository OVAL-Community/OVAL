<?xml version="1.0" encoding="UTF-8"?>
<!--
	This stylesheet is based on oval_xsd2html, originally developed by The MITRE Corporation.
	It has been designed to generate documenation about the elements and types by looking at
        the annotation elements found in the OVAL Schema, in Github markdown format. It is
        maintained by the OVAL Community and developed for use by the public.  For more information,
	including how to get involved in the project, please visit the OVAL website at
        http://oval.cisecurity.org.
-->
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5">

	<xsl:output method="text" />
	<xsl:strip-space elements="*" />

	<xsl:variable name="root_element_name" select="xsd:schema/xsd:element[position()=1]/@name"/>
  <xsl:variable name="oval_namespace_prefix">oval</xsl:variable>
  <xsl:variable name="oval-def_namespace_prefix">oval-def</xsl:variable>
  <xsl:variable name="oval-sc_namespace_prefix">oval-sc</xsl:variable>
  <xsl:variable name="oval-res_namespace_prefix">oval-res</xsl:variable>
  <xsl:variable name="oval-var_namespace_prefix">oval-var</xsl:variable>
	<xsl:variable name="digital-signature_namespace_prefix">ds</xsl:variable>

	<xsl:variable name="md_br"><xsl:text>  &#xa;</xsl:text></xsl:variable>
	<xsl:variable name="md_p"><xsl:text>&#xa;&#xa;</xsl:text></xsl:variable>
	<xsl:variable name="md_hr"><xsl:text>______________&#xa;</xsl:text></xsl:variable>
      
	<xsl:template match="xsd:schema">
		<xsl:for-each select="xsd:annotation">
			<xsl:text># Open Vulnerability and Assessment Language: Element Dictionary</xsl:text>
			<xsl:text>&#xa;&#xa;</xsl:text> 
			
			<xsl:text>* Schema: </xsl:text><xsl:value-of select="xsd:appinfo/schema"/><xsl:value-of select="$md_br" />
			<xsl:text>* Version: </xsl:text><xsl:value-of select="xsd:appinfo/version"/><xsl:value-of select="$md_br" />
			<xsl:text>* Release Date: </xsl:text><xsl:value-of select="xsd:appinfo/date"/><xsl:value-of select="$md_p" />
			
			
			<xsl:for-each select="xsd:documentation">
				<xsl:value-of select="normalize-space(.)"/><xsl:value-of select="$md_p" />
			</xsl:for-each>
		</xsl:for-each>

		<xsl:if test="xsd:element[contains(@name, '_test')]">
			<xsl:text>## Test Listing</xsl:text><xsl:value-of select="$md_p" />
			<xsl:for-each select="xsd:element[contains(@name, '_test')]">
				<xsl:text> *</xsl:text>
				<xsl:choose>
					<xsl:when test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
						<xsl:text>[ ~~</xsl:text><xsl:value-of select="@name"/><xsl:text>~~ ](#</xsl:text><xsl:value-of select="@name"/><xsl:text>)</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>[ </xsl:text><xsl:value-of select="@name"/><xsl:text> ](#</xsl:text><xsl:value-of select="@name"/><xsl:text>)</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:value-of select="$md_br" />			
			</xsl:for-each>
			<xsl:value-of select="$md_br" />
		</xsl:if>

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
	                  @name='EntityItemAddrTypeType'">
				<xsl:value-of select="$md_hr" />
				<xsl:value-of select="$md_br" />
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
		
		<xsl:call-template name="element_header">
			<xsl:with-param name="el" select="."/>
			<xsl:with-param name="prefix"><xsl:text>&lt;</xsl:text></xsl:with-param>
			<xsl:with-param name="suffix"><xsl:text>&gt;</xsl:text></xsl:with-param>
		</xsl:call-template>
		
		<xsl:call-template name="annotation"/>

		<xsl:if test="@type">
			<xsl:call-template name="dictionary_link">
				<xsl:with-param name="type" select="@type"/>
			</xsl:call-template>
			<xsl:value-of select="$md_p" />
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
    	<xsl:value-of select="xsd:annotation/xsd:appinfo/evaluation_documentation"/>
			<xsl:for-each select="xsd:annotation/xsd:appinfo/evaluation_chart">
				<xsl:call-template name="evaluation_chart"/>
			</xsl:for-each>
    </xsl:if>

    <xsl:for-each select="xsd:annotation/xsd:appinfo/example">
			<xsl:call-template name="example"/>
		</xsl:for-each>
	      
	</xsl:template>
	
	<xsl:template name="global_complex_type">
		<xsl:call-template name="element_header">
			<xsl:with-param name="el" select="."/>
			<xsl:with-param name="prefix">==</xsl:with-param>
			<xsl:with-param name="suffix">==</xsl:with-param>
		</xsl:call-template>

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
			<xsl:value-of select="xsd:annotation/xsd:appinfo/evaluation_documentation"/>
			<xsl:for-each select="xsd:annotation/xsd:appinfo/evaluation_chart">
				<xsl:call-template name="evaluation_chart"/>
			</xsl:for-each>
		</xsl:if>
	     
	</xsl:template>
	
	<xsl:template name="global_simple_type">
		<xsl:call-template name="element_header">
			<xsl:with-param name="el" select="."/>
			<xsl:with-param name="prefix">--</xsl:with-param>
			<xsl:with-param name="suffix">--</xsl:with-param>
		</xsl:call-template>
		
		<xsl:call-template name="annotation"/>
		
		<xsl:if test="xsd:restriction/xsd:pattern">
			<xsl:call-template name="pattern"/>
		</xsl:if>

		<xsl:if test="xsd:restriction/xsd:enumeration">
			<xsl:call-template name="enumeration"/>
		</xsl:if>
		
		<xsl:if test="xsd:union">
			<xsl:text>** Union of **</xsl:text>
			<xsl:variable name="memberTypes" select="tokenize(xsd:union/@memberTypes,' ')"/>
			<xsl:for-each select="$memberTypes">
				<xsl:call-template name="dictionary_link">
					<xsl:with-param name="type" select="."/>
				</xsl:call-template>
				<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>									
			</xsl:for-each>
			<xsl:value-of select="$md_br" />
		</xsl:if>
		
		<xsl:if test="xsd:annotation/xsd:appinfo/evaluation_documentation">
			<xsl:value-of select="xsd:annotation/xsd:appinfo/evaluation_documentation"/>
			<xsl:for-each select="xsd:annotation/xsd:appinfo/evaluation_chart">
				<xsl:call-template name="evaluation_chart"/>
			</xsl:for-each>
		</xsl:if>

	</xsl:template>
	
	<xsl:template name="global_element_group">		
		<xsl:call-template name="element_header">
			<xsl:with-param name="el" select="."/>
			<xsl:with-param name="prefix">--</xsl:with-param>
			<xsl:with-param name="suffix">--</xsl:with-param>
		</xsl:call-template>

		<xsl:call-template name="annotation"/>
		<xsl:if test="xsd:choice/*">
			<xsl:call-template name="children"/>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="global_attribute_group">
		<xsl:call-template name="element_header">
			<xsl:with-param name="el" select="."/>
			<xsl:with-param name="prefix">--</xsl:with-param>
			<xsl:with-param name="suffix">--</xsl:with-param>
		</xsl:call-template>

		<xsl:call-template name="annotation"/>
		
		<xsl:if test="xsd:attribute">
			<xsl:call-template name="attributes"/>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="annotation">
		<xsl:for-each select="xsd:annotation">
			<xsl:for-each select="xsd:appinfo/oval:deprecated_info">
				<xsl:call-template name="deprecation_info">
					<xsl:with-param name="depInfo" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="xsd:documentation">
				<xsl:value-of select="normalize-space(.)"/><xsl:value-of select="$md_p" /> 
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="attributes">
		<xsl:text>#### Attributes:</xsl:text><xsl:value-of select="$md_p" />

		<xsl:for-each select=".//xsd:attribute">
			<xsl:text>*	</xsl:text>
			
			<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
			<xsl:text>**</xsl:text><xsl:value-of select="@name"/><xsl:text>** </xsl:text>
				
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
		
			<xsl:if test="@use"> (<xsl:value-of select="@use"/><xsl:if test="@default"> -- default='<xsl:value-of select="@default"/>'</xsl:if><xsl:if test="@fixed"> -- fixed='<xsl:value-of select="@fixed"/>'</xsl:if>)</xsl:if>

			<xsl:if test=".//xsd:enumeration">
				<xsl:text> (</xsl:text>
					<xsl:for-each select=".//xsd:enumeration">
					  <xsl:choose>
					    <xsl:when test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">
					      <xsl:text>'</xsl:text>~~<xsl:value-of select="@value"/>~~<xsl:text>'</xsl:text>
					    </xsl:when>
					    <xsl:otherwise>
					      <xsl:text>'</xsl:text><xsl:value-of select="@value"/><xsl:text>'</xsl:text>							      
					    </xsl:otherwise>
					  </xsl:choose>
						<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
					</xsl:for-each>
				<xsl:text>)</xsl:text>
			</xsl:if>

			<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
			<xsl:value-of select="$md_br" />
				
			<xsl:if test="./xsd:annotation/xsd:documentation">
				<xsl:for-each select="./xsd:annotation/xsd:documentation">
					<xsl:value-of select="normalize-space(.)"/><xsl:value-of select="$md_br" />
				</xsl:for-each>							
			</xsl:if>

		</xsl:for-each>
		<xsl:value-of select="$md_br" />
			
	</xsl:template>
	
	<xsl:template name="children">
		<xsl:text>| Child&#x00A0;Elements | Type (MinOccurs..MaxOccurs) |</xsl:text><xsl:value-of select="$md_br" />
		<xsl:text>|:-------------- |:--------------------------- |</xsl:text><xsl:value-of select="$md_br" />

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

		<xsl:value-of select="$md_br" />

	</xsl:template>
	
	<xsl:template name="simpleContent">
		<xsl:if test="xsd:simpleContent/xsd:extension/@base">
			<xsl:text>**Simple Content:** </xsl:text>
			<xsl:call-template name="dictionary_link">
				<xsl:with-param name="type" select="xsd:simpleContent/xsd:extension/@base"/>
			</xsl:call-template>
			<xsl:value-of select="$md_p" />
		</xsl:if>

		<xsl:if test="xsd:simpleContent/xsd:restriction/xsd:simpleType">
			<xsl:text>**Simple Content:** </xsl:text>
			<xsl:choose>
				<xsl:when test="xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:union">
					<xsl:text>Union of </xsl:text> 
					<xsl:variable name="memberTypes" select="tokenize(xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:union/@memberTypes,' ')"/>
					<xsl:for-each select="$memberTypes">
						<xsl:call-template name="dictionary_link">
							<xsl:with-param name="type" select="."/>
						</xsl:call-template>
						<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>									
					</xsl:for-each>
				</xsl:when>
				<xsl:when test="xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:restriction">
					<xsl:text> Restricts </xsl:text>
					<xsl:call-template name="dictionary_link">
						<xsl:with-param name="type" select="xsd:simpleContent/xsd:restriction/xsd:simpleType/xsd:restriction/@base"/>
					</xsl:call-template>
				</xsl:when>
			</xsl:choose>
			<xsl:value-of select="$md_p" />
		</xsl:if>

		<xsl:if test="xsd:simpleContent/xsd:restriction/xsd:pattern">
			<xsl:text>**Pattern:** </xsl:text>
			<xsl:value-of select="xsd:simpleContent/xsd:restriction/xsd:pattern/@value"/>
			<xsl:value-of select="$md_p" />
		</xsl:if>
		
		<xsl:if test="xsd:simpleContent/xsd:restriction/xsd:enumeration">
			<xsl:for-each select="xsd:simpleContent">
				<xsl:call-template name="enumeration"/>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="pattern">
		<xsl:value-of select="xsd:restriction/xsd:pattern/@value"/>
	</xsl:template>
	
	<xsl:template name="enumeration">
		<xsl:text>| Value | Description |</xsl:text><xsl:value-of select="$md_br" />
		<xsl:text>| ----- | ----------- |</xsl:text><xsl:value-of select="$md_br" />

		<xsl:for-each select="xsd:restriction/xsd:enumeration">
			<xsl:text>| </xsl:text>
				<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
					<xsl:value-of select="@value"/>
				<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if> 
			<xsl:text> | </xsl:text>
			<xsl:for-each select="xsd:annotation/xsd:documentation">
				<xsl:if test="../xsd:appinfo/oval:deprecated_info">~~</xsl:if>
				<xsl:text>&lt;div&gt;</xsl:text><xsl:value-of select="normalize-space(.)"/><xsl:text>&lt;/div&gt;</xsl:text>
				<xsl:if test="../xsd:appinfo/oval:deprecated_info">~~</xsl:if>
			</xsl:for-each>
			<xsl:for-each select="xsd:annotation/xsd:appinfo/oval:deprecated_info">
				<xsl:text>> :small_red_triangle: **Deprecated As Of Version </xsl:text><xsl:value-of select="./oval:version"/><xsl:text>** :small_red_triangle: &lt;br /&gt;</xsl:text>
				<xsl:text>**Reason:** </xsl:text><xsl:value-of select="./oval:reason"/><xsl:text>&lt;br /&gt;</xsl:text>
				<xsl:if test="./oval:comment">
					<xsl:text>**Comment:** </xsl:text><xsl:value-of select="./oval:comment"/><xsl:text>&lt;br /&gt;</xsl:text>
				</xsl:if>
			</xsl:for-each>
			<xsl:text> |</xsl:text><xsl:value-of select="$md_br" />

		</xsl:for-each>
		<xsl:value-of select="$md_br" />
	</xsl:template>

	<xsl:template name="evaluation_chart">
		<xsl:value-of select="$md_br" />
		<xsl:text>```</xsl:text>
		<xsl:value-of select="replace(., '(.+?)\n\s*$', '$1')"/><xsl:value-of select="$md_br" />
		<xsl:text>```</xsl:text><xsl:value-of select="$md_p" />
	</xsl:template>

	<xsl:template name="example">
		<xsl:text>##### Example: </xsl:text><xsl:value-of select="$md_br" />
	  <xsl:value-of select="title"/><xsl:value-of select="$md_br" />
	  <xsl:value-of select="$md_hr" />
	  <xsl:text>XML</xsl:text><xsl:value-of select="$md_p" />
	</xsl:template>
	
	<xsl:template name="extension">
		<xsl:param name="base"/>
		<xsl:text>**Extends:** </xsl:text>
		<xsl:call-template name="dictionary_link">
			<xsl:with-param name="type" select="$base"/>
		</xsl:call-template>
		<xsl:value-of select="$md_p" />
	</xsl:template>

	<xsl:template name="restriction">
		<xsl:param name="base"/>
		<xsl:text>**Restricts:** </xsl:text>
		<xsl:call-template name="dictionary_link">
			<xsl:with-param name="type" select="$base"/>
		</xsl:call-template>
		<xsl:value-of select="$md_p" />
	</xsl:template>
	
	<xsl:template name="deprecation_info">
		<xsl:param name="depInfo" required="yes" as="node()"/>
		<xsl:text>> :small_red_triangle: **Deprecated As Of Version </xsl:text><xsl:value-of select="$depInfo/oval:version"/><xsl:text>** :small_red_triangle: &lt;br /&gt;</xsl:text>
		<xsl:text>**Reason:** </xsl:text><xsl:value-of select="$depInfo/oval:reason"/><xsl:text>&lt;br /&gt;</xsl:text>
		<xsl:if test="$depInfo/oval:comment">
			<xsl:text>**Comment:** </xsl:text><xsl:value-of select="$depInfo/oval:comment"/><xsl:text>&lt;br /&gt;</xsl:text>
		</xsl:if>
		<xsl:value-of select="$md_p" />
	</xsl:template>
	
	<xsl:template name="writeChildElmRow">
		
		<xsl:text>| </xsl:text>
		<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
		
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
		
		<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
		<xsl:text> | </xsl:text>
		<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
		
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

		<xsl:text> (</xsl:text>

		<xsl:choose>
			<xsl:when test="@minOccurs"><xsl:value-of select="@minOccurs"/></xsl:when>
			<xsl:when test="ancestor::xsd:complexType/@name = 'CriteriaType'"><xsl:value-of select="parent::xsd:choice/@minOccurs"/></xsl:when>
			<xsl:when test="ancestor::xsd:element/@name = 'external_variable'"><xsl:value-of select="parent::xsd:choice/@minOccurs"/></xsl:when>
			<xsl:otherwise><xsl:text>1</xsl:text></xsl:otherwise>
		</xsl:choose>

		<xsl:text>..</xsl:text>

		<xsl:choose>
			<xsl:when test="@maxOccurs"><xsl:value-of select="@maxOccurs"/></xsl:when>
			<xsl:when test="ancestor::xsd:complexType/@name = 'CriteriaType'"><xsl:value-of select="parent::xsd:choice/@maxOccurs"/></xsl:when>
			<xsl:when test="ancestor::xsd:element/@name = 'external_variable'"><xsl:value-of select="parent::xsd:choice/@maxOccurs"/></xsl:when>
			<xsl:otherwise><xsl:text>1</xsl:text></xsl:otherwise>
		</xsl:choose>

		<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
		<xsl:text>) |</xsl:text><xsl:value-of select="$md_br" />
		
		<xsl:text>||</xsl:text>
		<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>

		<xsl:for-each select="./xsd:annotation/xsd:documentation">
			<xsl:text>&lt;div&gt;</xsl:text><xsl:value-of select="normalize-space(.)"/><xsl:text>&lt;/div&gt;</xsl:text>
		</xsl:for-each>			

		<xsl:if test="./xsd:annotation/xsd:appinfo/oval:deprecated_info">~~</xsl:if>
		<xsl:text>|</xsl:text><xsl:value-of select="$md_br" />
	</xsl:template>

	<xsl:template name="element_header">
		<xsl:param name="el"/>
		<xsl:param name="prefix"/>
		<xsl:param name="suffix"/>

		<xsl:text>## &lt;a name=&quot;</xsl:text><xsl:value-of select="$el/@name"/><xsl:text>&quot;&gt;&lt;/a&gt;</xsl:text>

		<xsl:choose>
			<xsl:when test="$el/xsd:annotation/xsd:appinfo/oval:deprecated_info">
				<xsl:text></xsl:text><xsl:value-of select="$prefix"/><xsl:text> </xsl:text> ~~<xsl:value-of select="$el/@name"/>~~ <xsl:text> </xsl:text><xsl:value-of select="$suffix"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text></xsl:text><xsl:value-of select="$prefix"/><xsl:text> </xsl:text> <xsl:value-of select="$el/@name"/> <xsl:text> </xsl:text><xsl:value-of select="$suffix"/>
			</xsl:otherwise>
		</xsl:choose>

		<xsl:value-of select="$md_p" />
	</xsl:template>
	
	<xsl:template name="dictionary_link">
		<xsl:param name="type"/>
		<xsl:choose>		
			<xsl:when test="substring-before($type,':')=$oval_namespace_prefix">
				<xsl:text>[</xsl:text><xsl:value-of select="$type"/><xsl:text>](oval-common-schema.md#</xsl:text><xsl:value-of select="substring-after($type,':')"/><xsl:text>) </xsl:text>
			</xsl:when>
			<xsl:when test="substring-before($type,':')=$oval-def_namespace_prefix">
				<xsl:text>[</xsl:text><xsl:value-of select="$type"/><xsl:text>](oval-definitions-schema.md#</xsl:text><xsl:value-of select="substring-after($type,':')"/><xsl:text>) </xsl:text>
			</xsl:when>
			<xsl:when test="substring-before($type,':')=$oval-sc_namespace_prefix">
				<xsl:text>[</xsl:text><xsl:value-of select="$type"/><xsl:text>](oval-system-characteristics-schema.md#</xsl:text><xsl:value-of select="substring-after($type,':')"/><xsl:text>) </xsl:text>
			</xsl:when>
			<xsl:when test="substring-before($type,':')=$oval-res_namespace_prefix">
				<xsl:text>[</xsl:text><xsl:value-of select="$type"/><xsl:text>](oval-results-schema.md#</xsl:text><xsl:value-of select="substring-after($type,':')"/><xsl:text>) </xsl:text>
			</xsl:when>
			<xsl:when test="substring-before($type,':')=$oval-var_namespace_prefix">
				<xsl:text>[</xsl:text><xsl:value-of select="$type"/><xsl:text>](oval-variables-schema.md#</xsl:text><xsl:value-of select="substring-after($type,':')"/><xsl:text>) </xsl:text>
			</xsl:when>
				<xsl:when test="substring-before($type,':')=$digital-signature_namespace_prefix">
				<xsl:text>[</xsl:text><xsl:value-of select="$type"/><xsl:text>](http://www.w3.org/TR/xmldsig-core/#sec-</xsl:text><xsl:value-of select="substring-after($type,':')"/><xsl:text>) </xsl:text>
			</xsl:when>												
			<xsl:when test="not(substring-before($type,':')='xsd')">
				<xsl:text>[</xsl:text><xsl:value-of select="$type"/><xsl:text>](#</xsl:text><xsl:value-of select="substring-after($type,':')"/><xsl:text>) </xsl:text>
			</xsl:when>
			<xsl:otherwise><xsl:value-of select="$type"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
