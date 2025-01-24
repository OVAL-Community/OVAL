Open Vulnerability and Assessment Language: Amazon Web Services System Characteristics  
=========================================================
* Schema: Amazon Web Services System Characteristics  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the specific tests required to assess Amazon Web Services (AWS) managed services found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`api_item`  
* :ref:`apicontent_item`  
* :ref:`credentialreportuser_item`  
* :ref:`credentialreportkey_item`  
* :ref:`credentialreportcert_item`  
  
______________
  
.. _api_item:  
  
< api_item >  
---------------------------------------------------------
The api_item represents the system characteristics collected based on the elements provided by an AWS api_object, in order to identify and compare to the expected state of an AWS infrastructure. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version entity identifies the version of the AWS API/CLI used to perform the query.  
    * - service_name  
      - aws-sc:EntityItemAWSServiceType (0..1)  
      - The name of the AWS API service being invoked  
    * - verb  
      - aws-sc:EntityItemAWSVerbType (0..1)  
      - The verb element represents the type of operation allowed to be invoked using the AWS API. The enumerated list of allowed verbs restricts to those operations that are read-only, such as "list", "get", and "describe". For example, the "list-account-password-policy" API method would be split into a verb of "list" and a noun of "account-password-policy".  
    * - noun  
      - oval-sc:EntityItemStringType (0..1)  
      - The noun element represents the remaining part of the API method to be invoked, after the verb portion has been removed. For example, the "list-account-password-policy" API method would be split into a verb of "list" and a noun of "account-password-policy".  
    * - parameters  
      - oval-sc:EntityItemRecordType (0..1)  
      - The optional parameters element describes any required request parameters to be provided to the AWS API call. Examples of parameters are specific AWS regions, S3 bucket names, IAM user names, etc.  
    * - jsonpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an JSONPath expression to evaluate against the output constructed from the API Response object. This JSONPath expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the JSONPath expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named node or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the JSONPath expression carefully. Note that "equals" is the only valid operator for the JSONPath entity.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
______________
  
.. _apicontent_item:  
  
< apicontent_item >  
---------------------------------------------------------
The apicontent_item represents the system characteristics collected based on the elements provided by an AWS apicontent_object, in order to identify and compare to the expected state of an AWS infrastructure. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version entity identifies the version of the AWS API/CLI used to perform the query.  
    * - service_name  
      - aws-sc:EntityItemAWSServiceType (0..1)  
      - The name of the AWS API service being invoked  
    * - verb  
      - aws-sc:EntityItemAWSVerbType (0..1)  
      - The verb element represents the type of operation allowed to be invoked using the AWS API. The enumerated list of allowed verbs restricts to those operations that are read-only, such as "list", "get", and "describe". For example, the "list-account-password-policy" API method would be split into a verb of "list" and a noun of "account-password-policy".  
    * - noun  
      - oval-sc:EntityItemStringType (0..1)  
      - The noun element represents the remaining part of the API method to be invoked, after the verb portion has been removed. For example, the "list-account-password-policy" API method would be split into a verb of "list" and a noun of "account-password-policy".  
    * - parameters  
      - oval-sc:EntityItemRecordType (0..1)  
      - The optional parameters element describes any required request parameters to be provided to the AWS API call. Examples of parameters are specific AWS regions, S3 bucket names, IAM user names, etc.  
    * - pattern  
      - oval-sc:EntityItemStringType (0..1)  
      - The pattern entity represents a regular expression that is used to define a block of text. Subexpression notation (parenthesis) is used to call out a value(s) to test against. For example, the pattern abc(.*)xyz would look for a block of text in the file that starts with abc and ends with xyz, with the subexpression being all the characters that exist inbetween. Note that if the pattern can match more than one block of text starting at the same point, then it matches the longest. Subexpressions also match the longest possible substrings, subject to the constraint that the whole match be as long as possible, with subexpressions starting earlier in the pattern taking priority over ones starting later.  
    * - instance  
      - oval-sc:EntityItemIntType (0..1)  
      - The instance entity calls out which match of the pattern is being represented by this item. The first match is given an instance value of 1, the second match is given an instance value of 2, and so on. The main purpose of this entity is too provide uniqueness for different apicontent_items that results from multiple matches of a given pattern against the same API output.  
    * - text  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The text entity represents the block of text that matched the specified pattern.  
    * - subexpression  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The subexpression entity represents the value of a subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, then multiple entities are presented. Note that the apicontent_state in the definition schema only allows a single subexpression entity. This means that the test will check that all (or at least one, none, etc.) the subexpressions pass the same check. This means that the order of multiple subexpression entities in the item does not matter.  
  
______________
  
.. _credentialreportuser_item:  
  
< credentialreportuser_item >  
---------------------------------------------------------
The credentialreportuser_item stores results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API, and parsing user information.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version entity identifies the version of the AWS API/CLI used to perform the query.  
    * - user  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the AWS Get Credentials Report User  
    * - arn  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the AWS Get Credentials Report User's ARN  
    * - user_creation_time  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report User Creation Time  
    * - password_enabled  
      - aws-sc:EntityItemAWSEnhancedBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Enabled  
    * - password_last_used  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Last Used. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - password_last_changed  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Last Changed. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - password_next_rotation  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Password Next Rotation. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - mfa_active  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report MFA Active  
  
______________
  
.. _credentialreportkey_item:  
  
< credentialreportkey_item >  
---------------------------------------------------------
The credentialreportkey_item stores results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API, and parsing user access key information. Users may generate up to 2 access keys at a time, therefore when collecting credential report key items for a given user, anywhere from 0 to 2 items may be collected.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version entity identifies the version of the AWS API/CLI used to perform the query.  
    * - user  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the AWS Get Credentials Report User  
    * - arn  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the AWS Get Credentials Report User's ARN  
    * - access_key_active  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Acccess Key Active  
    * - access_key_last_rotated  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Rotated. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - access_key_last_used_date  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Used Date. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
    * - access_key_last_used_region  
      - aws-sc:EntityItemAWSRegionType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Used Region  
    * - access_key_last_used_service  
      - aws-sc:EntityItemAWSServiceType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Access Key Last Used Service  
  
______________
  
.. _credentialreportcert_item:  
  
< credentialreportcert_item >  
---------------------------------------------------------
The credentialreportcert_item stores results from generating and retrieving a Credentials Report utilizing either the AWS CLI or the AWS API, and parses each IAM user's configured certificates. Users may generate up to 2 certs at a time, therefore when collecting credential report cert items for a given user, anywhere from 0 to 2 items may be collected.

From the AWS CLI, implementers must first generate a credential report using the "aws iam generate-credential-report" command. Once completed, implementers can retrieve the last generated report using the "aws iam get-credential-report" command.

From the AWS API, implementers must first generate a credential report using the "GenerateCredentialReport" method. Once completed, implementers can retrieve the last generated report using the "GetCredentialReport" method.

Once retrieved, the content of the report is a base64-encoded string that, once decoded, represents a blob of CSV. Each line of the CSV represents an item, with each comma-separated field an element in this construct. The first line of the CSV denotes the column header, represented in this element as each field.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - api_version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version entity identifies the version of the AWS API/CLI used to perform the query.  
    * - user  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the AWS Get Credentials Report User  
    * - arn  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the AWS Get Credentials Report User's ARN  
    * - cert_active  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Cert Active  
    * - cert_last_rotated  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the AWS IAM Get Credentials Report Cert Last Rotated. This date is represented numerically, but potential values generated in the credential report are "N/A" or "not_supported". When a value of "N/A" is encountered, this element value should be set to 0 (zero). When a value of "not_supported" is encountered, this element should have no value set and a status of "does not exist".  
  
.. _EntityItemAWSServiceType:  
  
== EntityItemAWSServiceType ==  
---------------------------------------------------------
The EntityItemAWSServiceType restricts a string value to a specific set of values. These values describe the available API services that can be invoked using the AWS API. The restriction on these verbs is to restrict API operations to those that are read-only. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
  
.. _EntityItemAWSVerbType:  
  
== EntityItemAWSVerbType ==  
---------------------------------------------------------
The EntityItemAWSVerbType restricts a string value to a specific set of values. These values describe the various actions that can be invoked using the AWS API. The restriction on these verbs is to restrict API operations to those that are read-only. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting and variable references.  
  
.. _EntityItemAWSEnhancedBoolType:  
  
== EntityItemAWSEnhancedBoolType ==  
---------------------------------------------------------
The EntityItemAWSEnhancedBoolType restricts a string value to a specific set of values. These values describe the standard boolean values of TRUE and FALSE, but adds a third value of "NOT SUPPORTED". The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
  
.. _EntityItemAWSRegionType:  
  
== EntityItemAWSRegionType ==  
---------------------------------------------------------
Enumeration for AWS Regions

**Restricts:** oval-sc:EntityItemStringType

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
  
