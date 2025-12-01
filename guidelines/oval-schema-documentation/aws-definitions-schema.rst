Open Vulnerability and Assessment Language: Amazon Web Services Definition  
=========================================================
* Schema: Amazon Web Services Definition  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the specific tests required to assess Amazon Web Services (AWS) managed services found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`api_test`  
* :ref:`apicontent_test`  
* :ref:`credentialreportuser_test`  
* :ref:`credentialreportkey_test`  
* :ref:`credentialreportcert_test`  
  
______________
  
.. _api_test:  
  
< api_test >  
---------------------------------------------------------
The AWS api_test is used to leverage the AWS infrastructure API in order to check various attributes collected from the myriad services offered by AWS. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a api_object and the optional state element specifies the metadata to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _api_object:  
  
< api_object >  
---------------------------------------------------------
The api_object element is used by a api_test to identify the set of AWS API endpoints to use and the parameters to provide to them for checking the state of an AWS infrastructure. In order to ensure the consistency of AWS API support among OVAL interpreters as well as ensure that the state of a system is not changed, every OVAL interpreter must implement the following requirements. An OVAL interpreter must only support the processing of the verbs specified in the EntityObjectAWSVerbType. If a verb that is not defined in this enumeration is discovered, an error should be reported and the AWS API must not be invoked. While XML schema validation will enforce this requirement, it is strongly recommended that OVAL interpreters implement a whitelist of allowed AWS API verbs. This may be accomplished by utilizing the AWS credential profile for an IAM user granted only the required permissions. Furthermore, OVAL interpreters are expected to format API response objects as XML content for use by the object's XPath element value.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityObjectVersionType (1..1)  
      - The api_version entity defines the version of the AWS API/CLI to use. If xsi:nil='true', that implies it does not matter which version of the API/CLI the command refers to.  
    * - service_name  
      - aws-def:EntityObjectAWSServiceType (1..1)  
      - The name of the AWS API service to be invoked, such as iam, s3, or apigateway (among many others).  
    * - verb  
      - aws-def:EntityObjectAWSVerbType (1..1)  
      - The AWS API verb.  
    * - noun  
      - oval-def:EntityObjectStringType (1..1)  
      - The AWS API noun.  
    * - parameters  
      - oval-def:EntityObjectRecordType (1..1)  
      - A list of properties (name and value pairs) as input to invoke the AWS API method. Each property name must be unique. When xsi:nil='true', parameters are not provided to the API method.  
    * - jsonpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an JSONPath expression to evaluate against the output constructed from the API Response object. This JSONPath expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the JSONPath expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named node or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the JSONPath expression carefully. Note that "equals" is the only valid operator for the JSONPath entity.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _api_state:  
  
< api_state >  
---------------------------------------------------------
The api_state allows for assertions about the response attributes generated by the invocation of an AWS API request.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version entity defines the version of the AWS API/CLI to use.  
    * - service_name  
      - aws-def:EntityStateAWSServiceType (0..1)  
      - The name of the AWS API service to be invoked, such as iam, s3, or apigateway (among many others).  
    * - verb  
      - aws-def:EntityStateAWSVerbType (0..1)  
      - The AWS API verb.  
    * - noun  
      - oval-def:EntityStateStringType (0..1)  
      - The AWS API noun.  
    * - parameters  
      - oval-def:EntityStateRecordType (0..1)  
      - A list of properties (name and value pairs) as input to invoke the AWS API method. Each property name must be unique. When xsi:nil='true', parameters are not provided to the API method.  
    * - jsonpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an JSONPath expression to evaluate against the output constructed from the API Response object. This JSONPath expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the JSONPath expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named node or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the JSONPath expression carefully. Note that "equals" is the only valid operator for the JSONPath entity.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found.  
  
______________
  
.. _apicontent_test:  
  
< apicontent_test >  
---------------------------------------------------------
The AWS apicontent_test is used to leverage the AWS infrastructure API in order to check various attributes collected from the myriad services offered by AWS. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a api_object and the optional state element specifies the metadata to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _apicontent_object:  
  
< apicontent_object >  
---------------------------------------------------------
The apicontent_object element is used by a apicontent_test to identify the set of AWS API endpoints to use and the parameters to provide to them for checking the state of an AWS infrastructure. In order to ensure the consistency of AWS API support among OVAL interpreters as well as ensure that the state of a system is not changed, every OVAL interpreter must implement the following requirements. An OVAL interpreter must only support the processing of the verbs specified in the EntityObjectAWSVerbType. If a verb that is not defined in this enumeration is discovered, an error should be reported and the AWS API must not be invoked. While XML schema validation will enforce this requirement, it is strongly recommended that OVAL interpreters implement a whitelist of allowed AWS API verbs. This may be accomplished by utilizing the AWS credential profile for an IAM user granted only the required permissions.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityObjectVersionType (1..1)  
      - The api_version entity defines the version of the AWS API/CLI to use. If xsi:nil='true', that implies it does not matter which version of the API/CLI the command refers to.  
    * - service_name  
      - aws-def:EntityObjectAWSServiceType (1..1)  
      - The name of the AWS API service to be invoked, such as iam, s3, or apigateway (among many others).  
    * - verb  
      - aws-def:EntityObjectAWSVerbType (1..1)  
      - The AWS API verb.  
    * - noun  
      - oval-def:EntityObjectStringType (1..1)  
      - The AWS API noun.  
    * - parameters  
      - oval-def:EntityObjectRecordType (1..1)  
      - A list of properties (name and value pairs) as input to invoke the AWS API method. Each property name must be unique. When xsi:nil='true', parameters are not provided to the API method.  
    * - pattern  
      - oval-def:EntityObjectStringType (1..1)  
      - The pattern entity defines a chunk of text in a file and is represented using a regular expression. A subexpression (using parentheses) can call out a piece of the text block to test. For example, the pattern abc(.*)xyz would look for a block of text in the file that starts with abc and ends with xyz, with the subexpression being all the characters that exist in between. The value of the subexpression can then be tested using the subexpression entity of a textfilecontent54_state. Note that if the pattern, starting at the same point in the file, matches more than one block of text, then it matches the longest. For example, given a file with abcdefxyzxyzabc, then the pattern abc(.*)xyz would match the block abcdefxyzxyz. Subexpressions also match the longest possible substrings, subject to the constraint that the whole match be as long as possible, with subexpressions starting earlier in the pattern taking priority over ones starting later.Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.  
    * - instance  
      - oval-def:EntityObjectIntType (1..1)  
      - The instance entity calls out a specific match of the pattern. It can have any integer value. If the value is a non-negative integer, the index of the specific match of the pattern is counted from the beginning of the set of matches of that pattern in the targeted file. The first match is given an instance value of 1, the second match is given an instance value of 2, and so on. For non-negative values, the 'less than' and 'less than or equal' operations imply the the object is operating only on non-negative values. Frequently, this entity will be defined as 'greater than or equal' to 1 or 'greater than' 0, either of which results in the object representing the set of all matches of the pattern.Negative values are used to simplify collection of pattern match occurrences counting backwards from the final match in the targeted file. To find the final match, use an instance of -1; the penultimate match is found using an instance value of -2, and so on. For negative values, the 'greater than' and 'greater than or equal' operations imply the object is operating only on negative values. For example, searching for instances greater than or equal to -2 would yield only the last two maches.Note that the main purpose of the instance item entity is to provide uniqueness for different textfilecontent_items that results from multiple matches of a given pattern against the same file, and they will always have positive values.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _apicontent_state:  
  
< apicontent_state >  
---------------------------------------------------------
The apicontent_state allows for assertions about the response attributes generated by the invocation of an AWS API request.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version entity defines the version of the AWS API/CLI to use.  
    * - service_name  
      - aws-def:EntityStateAWSServiceType (0..1)  
      - The name of the AWS API service to be invoked, such as iam, s3, or apigateway (among many others).  
    * - verb  
      - aws-def:EntityStateAWSVerbType (0..1)  
      - The AWS API verb.  
    * - noun  
      - oval-def:EntityStateStringType (0..1)  
      - The AWS API noun.  
    * - parameters  
      - oval-def:EntityStateRecordType (0..1)  
      - A list of properties (name and value pairs) as input to invoke the AWS API method. Each property name must be unique. When xsi:nil='true', parameters are not provided to the API method.  
    * - pattern  
      - oval-def:EntityStateStringType (0..1)  
      - The pattern entity represents a regular expression that is used to define a block of text.  
    * - instance  
      - oval-def:EntityStateIntType (0..1)  
      - The instance entity calls out a specific match of the pattern. It can have any integer value. If the value is a non-negative integer, the index of the specific match of the pattern is counted from the beginning of the set of matches of that pattern in the targeted file. The first match is given an instance value of 1, the second match is given an instance value of 2, and so on. For non-negative values, the 'less than' and 'less than or equal' operations imply the the object is operating only on non-negative values. Frequently, this entity will be defined as 'greater than or equal' to 1 or 'greater than' 0, either of which results in the object representing the set of all matches of the pattern.Negative values are used to simplify collection of pattern match occurrences counting backwards from the final match in the targeted file. To find the final match, use an instance of -1; the penultimate match is found using an instance value of -2, and so on. For negative values, the 'greater than' and 'greater than or equal' operations imply the object is operating only on negative values. For example, searching for instances greater than or equal to -2 would yield only the last two maches.Note that the main purpose of the instance item entity is to provide uniqueness for different textfilecontent_items that results from multiple matches of a given pattern against the same file, and they will always have positive values.  
    * - text  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The text entity represents the block of text that matched the specified pattern.  
    * - subexpression  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The subexpression entity represents a value to test against the subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, this value is tested against all of them. For example, if the pattern abc(.*)mno(.*)xyp was supplied, and the state specifies a subexpression value of enabled, then the test would check that both (or at least one, none, etc. depending on the entity_check attribute) of the subexpressions have a value of enabled.  
  
______________
  
.. _credentialreportuser_test:  
  
< credentialreportuser_test >  
---------------------------------------------------------
The credentialreportuser_test allows for the evaluation of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API, and parsing user information. The credential report is generated for all users of the credentialed account being used to access the AWS environment.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _credentialreportuser_object:  
  
< credentialreportuser_object >  
---------------------------------------------------------
The credentialreportuser_object allows for the collection of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API. The credential report is generated for all users of the credentialed account being used to access the AWS environment.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityObjectVersionType (1..1)  
      - The api_version entity defines the version of the AWS API/CLI to use. If xsi:nil='true', that implies it does not matter which version of the API/CLI the command refers to.  
    * - user  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the AWS Get Credentials Report User  
  
.. _credentialreportuser_state:  
  
< credentialreportuser_state >  
---------------------------------------------------------
The credentialreportuser_state allows for the examination of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version entity defines the version of the AWS API/CLI to use.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the AWS Get Credentials Report User  
    * - arn  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the AWS Get Credentials Report User's ARN  
    * - user_creation_time  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report User Creation Time  
    * - password_enabled  
      - aws-def:EntityStateAWSEnhancedBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Enabled  
    * - password_last_used  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Last Used Date. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - password_last_changed  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Last Changed. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - password_next_rotation  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Next Rotation. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - mfa_active  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report MFA Active  
  
______________
  
.. _credentialreportkey_test:  
  
< credentialreportkey_test >  
---------------------------------------------------------
The credentialreportkey_test allows for the evaluation of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API and parsing user access keys. The credential report is generated for all users of the credentialed account being used to access the AWS environment.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _credentialreportkey_object:  
  
< credentialreportkey_object >  
---------------------------------------------------------
The credentialreportkey_object allows for the collection of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API and parsing user access keys. The credential report is generated for all users of the credentialed account being used to access the AWS environment.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityObjectVersionType (1..1)  
      - The api_version entity defines the version of the AWS API/CLI to use. If xsi:nil='true', that implies it does not matter which version of the API/CLI the command refers to.  
    * - user  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the AWS Get Credentials Report User  
  
.. _credentialreportkey_state:  
  
< credentialreportkey_state >  
---------------------------------------------------------
The credentialreportkey_state allows for the examination of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API and parsing user access keys.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version entity defines the version of the AWS API/CLI to use.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the AWS Get Credentials Report User  
    * - arn  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the AWS Get Credentials Report User's ARN  
    * - access_key_active  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Acccess Key Active  
    * - access_key_last_rotated  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Rotated. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - access_key_last_used_date  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Used Date. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - access_key_last_used_region  
      - aws-def:EntityStateAWSRegionType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Used Region  
    * - access_key_last_used_service  
      - aws-def:EntityStateAWSServiceType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Used Service  
  
______________
  
.. _credentialreportcert_test:  
  
< credentialreportcert_test >  
---------------------------------------------------------
The credentialreportcert_test allows for the evaluation of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API and parsing user certificates. The credential report is generated for all users of the credentialed account being used to access the AWS environment.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _credentialreportcert_object:  
  
< credentialreportcert_object >  
---------------------------------------------------------
The credentialreportcert_object allows for the collection of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API and parsing user certificates. The credential report is generated for all users of the credentialed account being used to access the AWS environment.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityObjectVersionType (1..1)  
      - The api_version entity defines the version of the AWS API/CLI to use. If xsi:nil='true', that implies it does not matter which version of the API/CLI the command refers to.  
    * - user  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the AWS Get Credentials Report User  
  
.. _credentialreportcert_state:  
  
< credentialreportcert_state >  
---------------------------------------------------------
The credentialreportcert_state allows for the examination of results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API and parsing user certificates.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version entity defines the version of the AWS API/CLI to use.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the AWS Get Credentials Report User  
    * - arn  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the AWS Get Credentials Report User's ARN  
    * - cert_active  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Cert Active  
    * - cert_last_rotated  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Cert Last Rotated. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
  
.. _EntityObjectAWSServiceType:  
  
== EntityObjectAWSServiceType ==  
---------------------------------------------------------
The EntityObjectAWSServiceType restricts a string value to a specific set of values. These values describe the available API services that can be invoked using the AWS API. The restriction on these verbs is to restrict API operations to those that are read-only. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - accessanalyzer  
      - (No Description)  
    * - acm  
      - (No Description)  
    * - acm-pca  
      - (No Description)  
    * - alexaforbusiness  
      - (No Description)  
    * - amp  
      - (No Description)  
    * - amplify  
      - (No Description)  
    * - amplifybackend  
      - (No Description)  
    * - apigateway  
      - (No Description)  
    * - apigatewaymanagementapi  
      - (No Description)  
    * - apigatewayv2  
      - (No Description)  
    * - appconfig  
      - (No Description)  
    * - appflow  
      - (No Description)  
    * - appintegrations  
      - (No Description)  
    * - application-autoscaling  
      - (No Description)  
    * - application-insights  
      - (No Description)  
    * - appmesh  
      - (No Description)  
    * - appstream  
      - (No Description)  
    * - appsync  
      - (No Description)  
    * - athena  
      - (No Description)  
    * - auditmanager  
      - (No Description)  
    * - autoscaling  
      - (No Description)  
    * - autoscaling-plans  
      - (No Description)  
    * - backup  
      - (No Description)  
    * - batch  
      - (No Description)  
    * - braket  
      - (No Description)  
    * - budgets  
      - (No Description)  
    * - ce  
      - (No Description)  
    * - chime  
      - (No Description)  
    * - cli-dev  
      - (No Description)  
    * - cloud9  
      - (No Description)  
    * - clouddirectory  
      - (No Description)  
    * - cloudformation  
      - (No Description)  
    * - cloudfront  
      - (No Description)  
    * - cloudhsm  
      - (No Description)  
    * - cloudhsmv2  
      - (No Description)  
    * - cloudsearch  
      - (No Description)  
    * - cloudsearchdomain  
      - (No Description)  
    * - cloudtrail  
      - (No Description)  
    * - cloudwatch  
      - (No Description)  
    * - codeartifact  
      - (No Description)  
    * - codebuild  
      - (No Description)  
    * - codecommit  
      - (No Description)  
    * - codeguru-reviewer  
      - (No Description)  
    * - codeguruprofiler  
      - (No Description)  
    * - codepipeline  
      - (No Description)  
    * - codestar  
      - (No Description)  
    * - codestar-connections  
      - (No Description)  
    * - codestar-notifications  
      - (No Description)  
    * - cognito-identity  
      - (No Description)  
    * - cognito-idp  
      - (No Description)  
    * - cognito-sync  
      - (No Description)  
    * - comprehend  
      - (No Description)  
    * - comprehendmedical  
      - (No Description)  
    * - compute-optimizer  
      - (No Description)  
    * - configservice  
      - (No Description)  
    * - configure  
      - (No Description)  
    * - connect  
      - (No Description)  
    * - connect-contact-lens  
      - (No Description)  
    * - connectparticipant  
      - (No Description)  
    * - cur  
      - (No Description)  
    * - customer-profiles  
      - (No Description)  
    * - databrew  
      - (No Description)  
    * - dataexchange  
      - (No Description)  
    * - datapipeline  
      - (No Description)  
    * - datasync  
      - (No Description)  
    * - dax  
      - (No Description)  
    * - ddb  
      - (No Description)  
    * - deploy  
      - (No Description)  
    * - detective  
      - (No Description)  
    * - devicefarm  
      - (No Description)  
    * - devops-guru  
      - (No Description)  
    * - directconnect  
      - (No Description)  
    * - discovery  
      - (No Description)  
    * - dlm  
      - (No Description)  
    * - dms  
      - (No Description)  
    * - docdb  
      - (No Description)  
    * - ds  
      - (No Description)  
    * - dynamodb  
      - (No Description)  
    * - dynamodbstreams  
      - (No Description)  
    * - ebs  
      - (No Description)  
    * - ec2  
      - (No Description)  
    * - ec2-instance-connect  
      - (No Description)  
    * - ecr  
      - (No Description)  
    * - ecr-public  
      - (No Description)  
    * - ecs  
      - (No Description)  
    * - efs  
      - (No Description)  
    * - eks  
      - (No Description)  
    * - elastic-inference  
      - (No Description)  
    * - elasticache  
      - (No Description)  
    * - elasticbeanstalk  
      - (No Description)  
    * - elastictranscoder  
      - (No Description)  
    * - elb  
      - (No Description)  
    * - elbv2  
      - (No Description)  
    * - emr  
      - (No Description)  
    * - emr-containers  
      - (No Description)  
    * - es  
      - (No Description)  
    * - events  
      - (No Description)  
    * - firehose  
      - (No Description)  
    * - fms  
      - (No Description)  
    * - forecast  
      - (No Description)  
    * - forecastquery  
      - (No Description)  
    * - frauddetector  
      - (No Description)  
    * - fsx  
      - (No Description)  
    * - gamelift  
      - (No Description)  
    * - glacier  
      - (No Description)  
    * - globalaccelerator  
      - (No Description)  
    * - glue  
      - (No Description)  
    * - greengrass  
      - (No Description)  
    * - greengrassv2  
      - (No Description)  
    * - groundstation  
      - (No Description)  
    * - guardduty  
      - (No Description)  
    * - health  
      - (No Description)  
    * - healthlake  
      - (No Description)  
    * - history  
      - (No Description)  
    * - honeycode  
      - (No Description)  
    * - iam  
      - (No Description)  
    * - identitystore  
      - (No Description)  
    * - imagebuilder  
      - (No Description)  
    * - importexport  
      - (No Description)  
    * - inspector  
      - (No Description)  
    * - iot  
      - (No Description)  
    * - iot-data  
      - (No Description)  
    * - iot-jobs-data  
      - (No Description)  
    * - iot1click-devices  
      - (No Description)  
    * - iot1click-projects  
      - (No Description)  
    * - iotanalytics  
      - (No Description)  
    * - iotdeviceadvisor  
      - (No Description)  
    * - iotevents  
      - (No Description)  
    * - iotevents-data  
      - (No Description)  
    * - iotfleethub  
      - (No Description)  
    * - iotsecuretunneling  
      - (No Description)  
    * - iotsitewise  
      - (No Description)  
    * - iotthingsgraph  
      - (No Description)  
    * - iotwireless  
      - (No Description)  
    * - ivs  
      - (No Description)  
    * - kafka  
      - (No Description)  
    * - kendra  
      - (No Description)  
    * - kinesis  
      - (No Description)  
    * - kinesis-video-archived-media  
      - (No Description)  
    * - kinesis-video-media  
      - (No Description)  
    * - kinesis-video-signaling  
      - (No Description)  
    * - kinesisanalytics  
      - (No Description)  
    * - kinesisanalyticsv2  
      - (No Description)  
    * - kinesisvideo  
      - (No Description)  
    * - kms  
      - (No Description)  
    * - lakeformation  
      - (No Description)  
    * - lambda  
      - (No Description)  
    * - lex-models  
      - (No Description)  
    * - lex-runtime  
      - (No Description)  
    * - lexv2-models  
      - (No Description)  
    * - lexv2-runtime  
      - (No Description)  
    * - license-manager  
      - (No Description)  
    * - lightsail  
      - (No Description)  
    * - location  
      - (No Description)  
    * - logs  
      - (No Description)  
    * - lookoutvision  
      - (No Description)  
    * - machinelearning  
      - (No Description)  
    * - macie  
      - (No Description)  
    * - macie2  
      - (No Description)  
    * - managedblockchain  
      - (No Description)  
    * - marketplace-catalog  
      - (No Description)  
    * - marketplace-entitlement  
      - (No Description)  
    * - marketplacecommerceanalytics  
      - (No Description)  
    * - mediaconnect  
      - (No Description)  
    * - mediaconvert  
      - (No Description)  
    * - medialive  
      - (No Description)  
    * - mediapackage  
      - (No Description)  
    * - mediapackage-vod  
      - (No Description)  
    * - mediastore  
      - (No Description)  
    * - mediastore-data  
      - (No Description)  
    * - mediatailor  
      - (No Description)  
    * - meteringmarketplace  
      - (No Description)  
    * - mgh  
      - (No Description)  
    * - migrationhub-config  
      - (No Description)  
    * - mobile  
      - (No Description)  
    * - mq  
      - (No Description)  
    * - mturk  
      - (No Description)  
    * - mwaa  
      - (No Description)  
    * - neptune  
      - (No Description)  
    * - network-firewall  
      - (No Description)  
    * - networkmanager  
      - (No Description)  
    * - opsworks  
      - (No Description)  
    * - opsworks-cm  
      - (No Description)  
    * - organizations  
      - (No Description)  
    * - outposts  
      - (No Description)  
    * - personalize  
      - (No Description)  
    * - personalize-events  
      - (No Description)  
    * - personalize-runtime  
      - (No Description)  
    * - pi  
      - (No Description)  
    * - pinpoint  
      - (No Description)  
    * - pinpoint-email  
      - (No Description)  
    * - pinpoint-sms-voice  
      - (No Description)  
    * - polly  
      - (No Description)  
    * - pricing  
      - (No Description)  
    * - qldb  
      - (No Description)  
    * - qldb-session  
      - (No Description)  
    * - quicksight  
      - (No Description)  
    * - ram  
      - (No Description)  
    * - rds  
      - (No Description)  
    * - rds-data  
      - (No Description)  
    * - redshift  
      - (No Description)  
    * - redshift-data  
      - (No Description)  
    * - rekognition  
      - (No Description)  
    * - resource-groups  
      - (No Description)  
    * - resourcegroupstaggingapi  
      - (No Description)  
    * - robomaker  
      - (No Description)  
    * - route53  
      - (No Description)  
    * - route53domains  
      - (No Description)  
    * - route53resolver  
      - (No Description)  
    * - s3  
      - (No Description)  
    * - s3api  
      - (No Description)  
    * - s3control  
      - (No Description)  
    * - s3outposts  
      - (No Description)  
    * - sagemaker  
      - (No Description)  
    * - sagemaker-a2i-runtime  
      - (No Description)  
    * - sagemaker-edge  
      - (No Description)  
    * - sagemaker-featurestore-runtime  
      - (No Description)  
    * - sagemaker-runtime  
      - (No Description)  
    * - savingsplans  
      - (No Description)  
    * - schemas  
      - (No Description)  
    * - sdb  
      - (No Description)  
    * - secretsmanager  
      - (No Description)  
    * - securityhub  
      - (No Description)  
    * - serverlessrepo  
      - (No Description)  
    * - service-quotas  
      - (No Description)  
    * - servicecatalog  
      - (No Description)  
    * - servicecatalog-appregistry  
      - (No Description)  
    * - servicediscovery  
      - (No Description)  
    * - ses  
      - (No Description)  
    * - sesv2  
      - (No Description)  
    * - shield  
      - (No Description)  
    * - signer  
      - (No Description)  
    * - sms  
      - (No Description)  
    * - snowball  
      - (No Description)  
    * - sns  
      - (No Description)  
    * - sqs  
      - (No Description)  
    * - ssm  
      - (No Description)  
    * - sso  
      - (No Description)  
    * - sso-admin  
      - (No Description)  
    * - sso-oidc  
      - (No Description)  
    * - stepfunctions  
      - (No Description)  
    * - storagegateway  
      - (No Description)  
    * - sts  
      - (No Description)  
    * - support  
      - (No Description)  
    * - swf  
      - (No Description)  
    * - synthetics  
      - (No Description)  
    * - textract  
      - (No Description)  
    * - timestream-query  
      - (No Description)  
    * - timestream-write  
      - (No Description)  
    * - transcribe  
      - (No Description)  
    * - transfer  
      - (No Description)  
    * - translate  
      - (No Description)  
    * - waf  
      - (No Description)  
    * - waf-regional  
      - (No Description)  
    * - wafv2  
      - (No Description)  
    * - wellarchitected  
      - (No Description)  
    * - workdocs  
      - (No Description)  
    * - worklink  
      - (No Description)  
    * - workmail  
      - (No Description)  
    * - workmailmessageflow  
      - (No Description)  
    * - workspaces  
      - (No Description)  
    * - xray  
      - (No Description)  
  
.. _EntityStateAWSServiceType:  
  
== EntityStateAWSServiceType ==  
---------------------------------------------------------
The EntityStateAWSServiceType restricts a string value to a specific set of values. These values describe the available API services that can be invoked using the AWS API. The restriction on these verbs is to restrict API operations to those that are read-only. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - accessanalyzer  
      - (No Description)  
    * - acm  
      - (No Description)  
    * - acm-pca  
      - (No Description)  
    * - alexaforbusiness  
      - (No Description)  
    * - amp  
      - (No Description)  
    * - amplify  
      - (No Description)  
    * - amplifybackend  
      - (No Description)  
    * - apigateway  
      - (No Description)  
    * - apigatewaymanagementapi  
      - (No Description)  
    * - apigatewayv2  
      - (No Description)  
    * - appconfig  
      - (No Description)  
    * - appflow  
      - (No Description)  
    * - appintegrations  
      - (No Description)  
    * - application-autoscaling  
      - (No Description)  
    * - application-insights  
      - (No Description)  
    * - appmesh  
      - (No Description)  
    * - appstream  
      - (No Description)  
    * - appsync  
      - (No Description)  
    * - athena  
      - (No Description)  
    * - auditmanager  
      - (No Description)  
    * - autoscaling  
      - (No Description)  
    * - autoscaling-plans  
      - (No Description)  
    * - backup  
      - (No Description)  
    * - batch  
      - (No Description)  
    * - braket  
      - (No Description)  
    * - budgets  
      - (No Description)  
    * - ce  
      - (No Description)  
    * - chime  
      - (No Description)  
    * - cli-dev  
      - (No Description)  
    * - cloud9  
      - (No Description)  
    * - clouddirectory  
      - (No Description)  
    * - cloudformation  
      - (No Description)  
    * - cloudfront  
      - (No Description)  
    * - cloudhsm  
      - (No Description)  
    * - cloudhsmv2  
      - (No Description)  
    * - cloudsearch  
      - (No Description)  
    * - cloudsearchdomain  
      - (No Description)  
    * - cloudtrail  
      - (No Description)  
    * - cloudwatch  
      - (No Description)  
    * - codeartifact  
      - (No Description)  
    * - codebuild  
      - (No Description)  
    * - codecommit  
      - (No Description)  
    * - codeguru-reviewer  
      - (No Description)  
    * - codeguruprofiler  
      - (No Description)  
    * - codepipeline  
      - (No Description)  
    * - codestar  
      - (No Description)  
    * - codestar-connections  
      - (No Description)  
    * - codestar-notifications  
      - (No Description)  
    * - cognito-identity  
      - (No Description)  
    * - cognito-idp  
      - (No Description)  
    * - cognito-sync  
      - (No Description)  
    * - comprehend  
      - (No Description)  
    * - comprehendmedical  
      - (No Description)  
    * - compute-optimizer  
      - (No Description)  
    * - configservice  
      - (No Description)  
    * - configure  
      - (No Description)  
    * - connect  
      - (No Description)  
    * - connect-contact-lens  
      - (No Description)  
    * - connectparticipant  
      - (No Description)  
    * - cur  
      - (No Description)  
    * - customer-profiles  
      - (No Description)  
    * - databrew  
      - (No Description)  
    * - dataexchange  
      - (No Description)  
    * - datapipeline  
      - (No Description)  
    * - datasync  
      - (No Description)  
    * - dax  
      - (No Description)  
    * - ddb  
      - (No Description)  
    * - deploy  
      - (No Description)  
    * - detective  
      - (No Description)  
    * - devicefarm  
      - (No Description)  
    * - devops-guru  
      - (No Description)  
    * - directconnect  
      - (No Description)  
    * - discovery  
      - (No Description)  
    * - dlm  
      - (No Description)  
    * - dms  
      - (No Description)  
    * - docdb  
      - (No Description)  
    * - ds  
      - (No Description)  
    * - dynamodb  
      - (No Description)  
    * - dynamodbstreams  
      - (No Description)  
    * - ebs  
      - (No Description)  
    * - ec2  
      - (No Description)  
    * - ec2-instance-connect  
      - (No Description)  
    * - ecr  
      - (No Description)  
    * - ecr-public  
      - (No Description)  
    * - ecs  
      - (No Description)  
    * - efs  
      - (No Description)  
    * - eks  
      - (No Description)  
    * - elastic-inference  
      - (No Description)  
    * - elasticache  
      - (No Description)  
    * - elasticbeanstalk  
      - (No Description)  
    * - elastictranscoder  
      - (No Description)  
    * - elb  
      - (No Description)  
    * - elbv2  
      - (No Description)  
    * - emr  
      - (No Description)  
    * - emr-containers  
      - (No Description)  
    * - es  
      - (No Description)  
    * - events  
      - (No Description)  
    * - firehose  
      - (No Description)  
    * - fms  
      - (No Description)  
    * - forecast  
      - (No Description)  
    * - forecastquery  
      - (No Description)  
    * - frauddetector  
      - (No Description)  
    * - fsx  
      - (No Description)  
    * - gamelift  
      - (No Description)  
    * - glacier  
      - (No Description)  
    * - globalaccelerator  
      - (No Description)  
    * - glue  
      - (No Description)  
    * - greengrass  
      - (No Description)  
    * - greengrassv2  
      - (No Description)  
    * - groundstation  
      - (No Description)  
    * - guardduty  
      - (No Description)  
    * - health  
      - (No Description)  
    * - healthlake  
      - (No Description)  
    * - history  
      - (No Description)  
    * - honeycode  
      - (No Description)  
    * - iam  
      - (No Description)  
    * - identitystore  
      - (No Description)  
    * - imagebuilder  
      - (No Description)  
    * - importexport  
      - (No Description)  
    * - inspector  
      - (No Description)  
    * - iot  
      - (No Description)  
    * - iot-data  
      - (No Description)  
    * - iot-jobs-data  
      - (No Description)  
    * - iot1click-devices  
      - (No Description)  
    * - iot1click-projects  
      - (No Description)  
    * - iotanalytics  
      - (No Description)  
    * - iotdeviceadvisor  
      - (No Description)  
    * - iotevents  
      - (No Description)  
    * - iotevents-data  
      - (No Description)  
    * - iotfleethub  
      - (No Description)  
    * - iotsecuretunneling  
      - (No Description)  
    * - iotsitewise  
      - (No Description)  
    * - iotthingsgraph  
      - (No Description)  
    * - iotwireless  
      - (No Description)  
    * - ivs  
      - (No Description)  
    * - kafka  
      - (No Description)  
    * - kendra  
      - (No Description)  
    * - kinesis  
      - (No Description)  
    * - kinesis-video-archived-media  
      - (No Description)  
    * - kinesis-video-media  
      - (No Description)  
    * - kinesis-video-signaling  
      - (No Description)  
    * - kinesisanalytics  
      - (No Description)  
    * - kinesisanalyticsv2  
      - (No Description)  
    * - kinesisvideo  
      - (No Description)  
    * - kms  
      - (No Description)  
    * - lakeformation  
      - (No Description)  
    * - lambda  
      - (No Description)  
    * - lex-models  
      - (No Description)  
    * - lex-runtime  
      - (No Description)  
    * - lexv2-models  
      - (No Description)  
    * - lexv2-runtime  
      - (No Description)  
    * - license-manager  
      - (No Description)  
    * - lightsail  
      - (No Description)  
    * - location  
      - (No Description)  
    * - logs  
      - (No Description)  
    * - lookoutvision  
      - (No Description)  
    * - machinelearning  
      - (No Description)  
    * - macie  
      - (No Description)  
    * - macie2  
      - (No Description)  
    * - managedblockchain  
      - (No Description)  
    * - marketplace-catalog  
      - (No Description)  
    * - marketplace-entitlement  
      - (No Description)  
    * - marketplacecommerceanalytics  
      - (No Description)  
    * - mediaconnect  
      - (No Description)  
    * - mediaconvert  
      - (No Description)  
    * - medialive  
      - (No Description)  
    * - mediapackage  
      - (No Description)  
    * - mediapackage-vod  
      - (No Description)  
    * - mediastore  
      - (No Description)  
    * - mediastore-data  
      - (No Description)  
    * - mediatailor  
      - (No Description)  
    * - meteringmarketplace  
      - (No Description)  
    * - mgh  
      - (No Description)  
    * - migrationhub-config  
      - (No Description)  
    * - mobile  
      - (No Description)  
    * - mq  
      - (No Description)  
    * - mturk  
      - (No Description)  
    * - mwaa  
      - (No Description)  
    * - neptune  
      - (No Description)  
    * - network-firewall  
      - (No Description)  
    * - networkmanager  
      - (No Description)  
    * - opsworks  
      - (No Description)  
    * - opsworks-cm  
      - (No Description)  
    * - organizations  
      - (No Description)  
    * - outposts  
      - (No Description)  
    * - personalize  
      - (No Description)  
    * - personalize-events  
      - (No Description)  
    * - personalize-runtime  
      - (No Description)  
    * - pi  
      - (No Description)  
    * - pinpoint  
      - (No Description)  
    * - pinpoint-email  
      - (No Description)  
    * - pinpoint-sms-voice  
      - (No Description)  
    * - polly  
      - (No Description)  
    * - pricing  
      - (No Description)  
    * - qldb  
      - (No Description)  
    * - qldb-session  
      - (No Description)  
    * - quicksight  
      - (No Description)  
    * - ram  
      - (No Description)  
    * - rds  
      - (No Description)  
    * - rds-data  
      - (No Description)  
    * - redshift  
      - (No Description)  
    * - redshift-data  
      - (No Description)  
    * - rekognition  
      - (No Description)  
    * - resource-groups  
      - (No Description)  
    * - resourcegroupstaggingapi  
      - (No Description)  
    * - robomaker  
      - (No Description)  
    * - route53  
      - (No Description)  
    * - route53domains  
      - (No Description)  
    * - route53resolver  
      - (No Description)  
    * - s3  
      - (No Description)  
    * - s3api  
      - (No Description)  
    * - s3control  
      - (No Description)  
    * - s3outposts  
      - (No Description)  
    * - sagemaker  
      - (No Description)  
    * - sagemaker-a2i-runtime  
      - (No Description)  
    * - sagemaker-edge  
      - (No Description)  
    * - sagemaker-featurestore-runtime  
      - (No Description)  
    * - sagemaker-runtime  
      - (No Description)  
    * - savingsplans  
      - (No Description)  
    * - schemas  
      - (No Description)  
    * - sdb  
      - (No Description)  
    * - secretsmanager  
      - (No Description)  
    * - securityhub  
      - (No Description)  
    * - serverlessrepo  
      - (No Description)  
    * - service-quotas  
      - (No Description)  
    * - servicecatalog  
      - (No Description)  
    * - servicecatalog-appregistry  
      - (No Description)  
    * - servicediscovery  
      - (No Description)  
    * - ses  
      - (No Description)  
    * - sesv2  
      - (No Description)  
    * - shield  
      - (No Description)  
    * - signer  
      - (No Description)  
    * - sms  
      - (No Description)  
    * - snowball  
      - (No Description)  
    * - sns  
      - (No Description)  
    * - sqs  
      - (No Description)  
    * - ssm  
      - (No Description)  
    * - sso  
      - (No Description)  
    * - sso-admin  
      - (No Description)  
    * - sso-oidc  
      - (No Description)  
    * - stepfunctions  
      - (No Description)  
    * - storagegateway  
      - (No Description)  
    * - sts  
      - (No Description)  
    * - support  
      - (No Description)  
    * - swf  
      - (No Description)  
    * - synthetics  
      - (No Description)  
    * - textract  
      - (No Description)  
    * - timestream-query  
      - (No Description)  
    * - timestream-write  
      - (No Description)  
    * - transcribe  
      - (No Description)  
    * - transfer  
      - (No Description)  
    * - translate  
      - (No Description)  
    * - waf  
      - (No Description)  
    * - waf-regional  
      - (No Description)  
    * - wafv2  
      - (No Description)  
    * - wellarchitected  
      - (No Description)  
    * - workdocs  
      - (No Description)  
    * - worklink  
      - (No Description)  
    * - workmail  
      - (No Description)  
    * - workmailmessageflow  
      - (No Description)  
    * - workspaces  
      - (No Description)  
    * - xray  
      - (No Description)  
  
.. _EntityObjectAWSVerbType:  
  
== EntityObjectAWSVerbType ==  
---------------------------------------------------------
The EntityObjectAWSVerbType restricts a string value to a specific set of values. These values describe the various actions that can be invoked using the AWS API. The restriction on these verbs is to restrict API operations to those that are read-only. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - GET  
      - | Get  
    * - LIST  
      - | List  
    * - DESCRIBE  
      - | Describe  
    * - LS  
      - | ls  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting and variable references.  
  
.. _EntityStateAWSVerbType:  
  
== EntityStateAWSVerbType ==  
---------------------------------------------------------
The EntityStateAWSVerbType restricts a string value to a specific set of values. These values describe the various actions that can be invoked using the AWS API. The restriction on these verbs is to restrict API operations to those that are read-only. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - GET  
      - | Get  
    * - LIST  
      - | List  
    * - DESCRIBE  
      - | Describe  
    * - LS  
      - | ls  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting and variable references.  
  
.. _EntityStateAWSEnhancedBoolType:  
  
== EntityStateAWSEnhancedBoolType ==  
---------------------------------------------------------
The EntityStateAWSEnhancedBoolType restricts a string value to a specific set of values. These values describe the standard boolean values of TRUE and FALSE, but adds a third value of "NOT SUPPORTED". The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - TRUE  
      - | True  
    * - FALSE  
      - | False  
    * - NOT_SUPPORTED  
      - | Not Supported  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting and variable references.  
  
.. _EntityStateAWSRegionType:  
  
== EntityStateAWSRegionType ==  
---------------------------------------------------------
Enumeration for AWS Regions

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - us-east-1  
      - | us-east-1  
    * - us-east-2  
      - | us-east-2  
    * - us-west-1  
      - | us-west-1  
    * - us-west-2  
      - | us-west-2  
    * - af-south-1  
      - | af-south-1  
    * - ap-east-1  
      - | ap-east-1  
    * - ap-south-1  
      - | ap-south-1  
    * - ap-northeast-1  
      - | ap-northeast-1  
    * - ap-northeast-2  
      - | ap-northeast-2  
    * - ap-northeast-3  
      - | ap-northeast-3  
    * - ap-southeast-1  
      - | ap-southeast-1  
    * - ap-southeast-2  
      - | ap-southeast-2  
    * - ca-central-1  
      - | ca-central-1  
    * - eu-north-1  
      - | eu-north-1  
    * - eu-south-1  
      - | eu-south-1  
    * - eu-central-1  
      - | eu-central-1  
    * - eu-west-1  
      - | eu-west-1  
    * - eu-west-2  
      - | eu-west-2  
    * - eu-west-3  
      - | eu-west-3  
    * - me-south-1  
      - | me-south-1  
    * - sa-east-1  
      - | sa-east-1  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting and variable references.  
  
