Open Vulnerability and Assessment Language: Independent System Characteristics  
=========================================================
* Schema: Independent System Characteristics  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

This document outlines the items of the OVAL System Characteristics XML schema that are independent of any specific family or platform. Each iten is an extention of a basic System Characteristics item defined in the core System Characteristics XML schema.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`family_item`  
* :ref:`filehash58_item`  
* :ref:`environmentvariable58_item`  
* :ref:`shellcommand_item`  
* :ref:`sql512_item`  
* :ref:`textfilecontent_item`  
* :ref:`variable_item`  
* :ref:`xmlfilecontent_item`  
* :ref:`yamlfilecontent_item`  
  
______________
  
.. _family_item:  
  
< family_item >  
---------------------------------------------------------
This element stores high level system OS type, otherwise known as the family.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - family  
      - ind-sc:EntityItemFamilyType (0..1)  
      - This element describes the high level system OS type, otherwise known as the family.  
  
______________
  
.. _filehash58_item:  
  
< filehash58_item >  
---------------------------------------------------------
This element stores a hash value associated with a specific file.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the file.  
    * - hash_type  
      - ind-sc:EntityItemHashTypeType (0..1)  
      - Identifier for the hash algorithm used to calculate the hash.  
    * - hash  
      - oval-sc:EntityItemStringType (0..1)  
      - The result of applying the hash algorithm to the file.  
    * - windows_view  
      - ind-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
______________
  
.. _environmentvariable58_item:  
  
< environmentvariable58_item >  
---------------------------------------------------------
This item stores information about an environment variable, the process ID of the process from which it was retrieved, and its corresponding value.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - The process ID of the process from which the environment variable was retrieved.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element describes the name of an environment variable.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The actual value of the specified environment variable.  
  
______________
  
.. _shellcommand_item:  
  
< shellcommand_item >  
---------------------------------------------------------
The shellcommand_item stores information retrieved from the local system that results from the running of the command or embedded script in the associated object command element. The evaluation of the object should always produce one item. If the object evaluation does not produce output via STDOUT that should result in an item, one should be created with a status of 'does not exist'. This facilitates that capture of the exit_status and stderr from the system call.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - shell  
      - ind-sc:EntityItemShellType (1..1)  
      - The shell element contains the shell used (e.g. bash or powershell) to perform the command and should be taken, verbatim, from the associated object 'shell' element.  
    * - command  
      - oval-sc:EntityItemStringType (1..1)  
      - The command element specifies the command string that was run on the target system and should be taken, verbatim, from the associated object 'command' element..  
    * - pattern  
      - oval-sc:EntityItemStringType (0..1)  
      - The pattern element is simply an echo of the same element in the OVAL object and is supplied in the item to aid in end user interpretation and should be taken, verbatim, from the associated object 'pattern' element..  
    * - exit_status  
      - oval-sc:EntityItemIntType (1..1)  
      - The exit_status entity represents the exist status returned by the system for the execution of the object command. OVAL Item status should match the exit status of the system call.  
    * - stdout_line  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The stdout_line entity contains a line from the STDOUT output of a successful run of the command string that matched the specified object pattern. Each line created by the execution of the object command should create an item 'stdout_line' element.  
    * - subexpression  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The subexpression entity represents the value of a subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, then multiple entities are presented. Note that the textfilecontent_state in the definition schema only allows a single subexpression entity. This means that the test will check that all (or at least one, none, etc.) the subexpressions pass the same check. This means that the order of multiple subexpression entities in the item does not matter.  
    * - stderr_line  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The 'stderr_line' element contains a single line of any output from STDERR.  
  
______________
  
.. _sql512_item:  
  
< sql512_item >  
---------------------------------------------------------
The sql512_item outlines information collected from a database via an SQL query.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - engine  
      - ind-sc:EntityItemEngineType (0..1)  
      - The engine entity identifies the specific database engine used to connect to the database.  
    * - version  
      - oval-sc:EntityItemStringType (0..1)  
      - The version entity identifies the version of the database engine used to connect to the database.  
    * - instance  
      - oval-sc:EntityItemStringType (0..1)  
      - The instance entity defines the specific instance name to be used when connecting to the correct database.  
    * - database  
      - oval-sc:EntityItemStringType (0..1)  
      - The database entity defines the specific database name to be used when connecting to the specified instance.  
    * - sql  
      - oval-sc:EntityItemStringType (0..1)  
      - The sql entity holds the specific query used to identify the object(s) in the database.  
    * - result  
      - oval-sc:EntityItemRecordType (0..unbounded)  
      - The result entity holds the results of the specified SQL statement.  
  
______________
  
.. _textfilecontent_item:  
  
< textfilecontent_item >  
---------------------------------------------------------
The textfilecontent_item looks at the contents of a text file (aka a configuration file) by looking at individual lines.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The filename entity specifies the name of the file (without the path) that is being represented.  
    * - pattern  
      - oval-sc:EntityItemStringType (0..1)  
      - The pattern entity represents a regular expression that is used to define a block of text. Subexpression notation (parenthesis) is used to call out a value(s) to test against. For example, the pattern abc(.*)xyz would look for a block of text in the file that starts with abc and ends with xyz, with the subexpression being all the characters that exist inbetween. Note that if the pattern can match more than one block of text starting at the same point, then it matches the longest. Subexpressions also match the longest possible substrings, subject to the constraint that the whole match be as long as possible, with subexpressions starting earlier in the pattern taking priority over ones starting later.  
    * - instance  
      - oval-sc:EntityItemIntType (0..1)  
      - The instance entity calls out which match of the pattern is being represented by this item. The first match is given an instance value of 1, the second match is given an instance value of 2, and so on. The main purpose of this entity is too provide uniqueness for different textfilecontent_items that results from multiple matches of a given pattern against the same file.  
    * - text  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The text entity represents the block of text that matched the specified pattern.  
    * - subexpression  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The subexpression entity represents the value of a subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, then multiple entities are presented. Note that the textfilecontent_state in the definition schema only allows a single subexpression entity. This means that the test will check that all (or at least one, none, etc.) the subexpressions pass the same check. This means that the order of multiple subexpression entities in the item does not matter.  
    * - windows_view  
      - ind-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
______________
  
.. _variable_item:  
  
< variable_item >  
---------------------------------------------------------
This item stores information about OVAL Variables and their values.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - var_ref  
      - ind-sc:EntityItemVariableRefType (0..1)  
      - The id of the variable.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value of the variable. If a variable represents and array of values, then multiple value elements should exist.  
  
______________
  
.. _xmlfilecontent_item:  
  
< xmlfilecontent_item >  
---------------------------------------------------------
This item stores results from checking the contents of an xml file.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The filename element specifies the name of the file.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an XPath 1.0 expression to evaluate against the XML file specified by the filename entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
    * - windows_view  
      - ind-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
______________
  
.. _yamlfilecontent_item:  
  
< yamlfilecontent_item >  
---------------------------------------------------------
This item stores results from checking the contents of an YAML file.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The filename element specifies the name of the file.  
    * - content  
      - oval-sc:EntityItemStringType (0..1)  
      - The content element specifies the YAML document body.  
    * - yamlpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an YAML Path expression to evaluate against the YAML file specified by the filename entity.  
    * - value  
      - oval-sc:EntityItemRecordType (0..unbounded)  
      - The value entity holds the target(s) of the specified YAML Path. A single scalar value or a list of scalar values (where there is no key to associate) would have the name attribute of the field element set to '#'. Due to the limitation of the record type field names could not contain uppercase letters, they will be converted to the lowercase and escaped using the '^' symbol (the '^' symbol would be escaped as well). For example 'myCamelCase^Key' would be collected as 'my^camel^case^^^key'.  
    * - windows_view  
      - ind-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
.. _EntityItemShellType:  
  
== EntityItemShellType ==  
---------------------------------------------------------
The EntityItemShellType restricts a string value to a specific set of shell commands. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - sh  
      - | The borne shell (sh)  
    * - bash  
      - | The gnu borne again shell (bash).  
    * - csh  
      - | The C shell (csh).  
    * - ksh  
      - | The korn shell (ksh).  
    * - zsh  
      - | The Z shell (zsh).  
    * - cmd  
      - | The Microsoft Windows command prompt (cmd).  
    * - powershell  
      - | The Microsoft Powershell prompt (powershell).  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemEngineType:  
  
== EntityItemEngineType ==  
---------------------------------------------------------
The EntityItemEngineType complex type defines a string entity value that is restricted to an enumeration. Each valid entry in the enumeration is a valid database engine.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - access  
      - | The access value describes the Microsoft Access database engine.  
    * - aurora  
      - | The aurora value describes the Amazon Aurora cloud database engine.  
    * - azuresql  
      - | The azuresql value describes the Microsoft Azure SQL cloud database engine.  
    * - crunchypostgres  
      - | The crunchypostgres value describes the Crunchy Postgres cloud database engine.  
    * - derby  
      - | The derby value describes the Apache Derby database engine.  
    * - db2  
      - | The db2 value describes the IBM DB2 database engine.  
    * - cache  
      - | The cache value describes the InterSystems Cache database engine.  
    * - firebird  
      - | The firebird value describes the Firebird database engine.  
    * - firstsql  
      - | The firstsql value describes the FirstSQL database engine.  
    * - foxpro  
      - | The foxpro value describes the Microsoft FoxPro database engine.  
    * - informix  
      - | The informix value describes the IBM Informix database engine.  
    * - ingres  
      - | The ingres value describes the Ingres database engine.  
    * - interbase  
      - | The interbase value describes the Embarcadero Technologies InterBase database engine.  
    * - lightbase  
      - | The lightbase value describes the Light Infocon LightBase database engine.  
    * - mariadb  
      - | The mariadb value describes the MariaDB database engine.  
    * - maxdb  
      - | The maxdb value describes the SAP MaxDB database engine.  
    * - monetdb  
      - | The monetdb value describes the MonetDB SQL database engine.  
    * - mimer  
      - | The mimer value describes the Mimer SQL database engine.  
    * - mysql  
      - | The mysql value describes the MySQL database engine.  
    * - oracle  
      - | The oracle value describes the Oracle database engine.  
    * - paradox  
      - | The paradox value describes the Paradox database engine.  
    * - pervasive  
      - | The pervasive value describes the Pervasive PSQL database engine.  
    * - postgre  
      - | The postgre value describes the PostgreSQL database engine.  
    * - sqlbase  
      - | The sqlbase value describes the Unify SQLBase database engine.  
    * - sqlite  
      - | The sqlite value describes the SQLite database engine.  
    * - sqlserver  
      - | The sqlserver value describes the Microsoft SQL database engine.  
    * - sybase  
      - | The sybase value describes the Sybase database engine.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
______________
  
.. _EntityItemFamilyType:  
  
== EntityItemFamilyType ==  
---------------------------------------------------------
The EntityItemFamilyType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a high-level family of system operating system.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - asa  
      - | The asa value describes the Cisco ASA security devices.  
    * - aws  
      - | The aws value describes the Amazon Web Services platform.  
    * - ios  
      - | The ios value describes the Cisco IOS operating system.  
    * - iosxe  
      - | The iosxe value describes the Cisco IOS-XE operating system.  
    * - junos  
      - | The junos value describes the Juniper JunOS operating system.  
    * - macos  
      - | The macos value describes the Mac operating system.  
    * - panos  
      - | The panos value describes the Palo Alto Networks operating system.  
    * - undefined  
      - | The undefined value is to be used when the desired family is not available.  
    * - unix  
      - | The unix value describes the UNIX operating system.  
    * - vmware_infrastructure  
      - | The vmware_infrastructure value describes VMWare Infrastructure.  
    * - windows  
      - | The windows value describes the Microsoft Windows operating system.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemHashTypeType:  
  
== EntityItemHashTypeType ==  
---------------------------------------------------------
The EntityItemHashTypeType complex type restricts a string value to a specific set of values that specify the different hash algorithms that are supported. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - MD5  
      - | The MD5 hash algorithm.  
    * - SHA-1  
      - | The SHA-1 hash algorithm.  
    * - SHA-224  
      - | The SHA-224 hash algorithm.  
    * - SHA-256  
      - | The SHA-256 hash algorithm.  
    * - SHA-384  
      - | The SHA-384 hash algorithm.  
    * - SHA-512  
      - | The SHA-512 hash algorithm.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemVariableRefType:  
  
== EntityItemVariableRefType ==  
---------------------------------------------------------
The EntityItemVariableRefType complex type defines a string item entity that has a valid OVAL variable id as the value.

**Restricts:** oval-sc:EntityItemStringType

**Pattern:** oval:[A-Za-z0-9_\-\.]+:var:[1-9][0-9]*

.. _EntityItemWindowsViewType:  
  
== EntityItemWindowsViewType ==  
---------------------------------------------------------
The EntityItemWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - 32_bit  
      - | Indicates the 32_bit windows view.  
    * - 64_bit  
      - | Indicates the 64_bit windows view.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
