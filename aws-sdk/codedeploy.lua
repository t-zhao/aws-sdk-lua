--- GENERATED CODE - DO NOT MODIFY
-- AWS CodeDeploy (codedeploy-2014-10-06)

local M = {}

M.metadata = {
	api_version = "2014-10-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "codedeploy",
	service_abbreviation = "CodeDeploy",
	service_full_name = "AWS CodeDeploy",
	signature_version = "v4",
	target_prefix = "CodeDeploy_20141006",
	timestamp_format = "unixTimestamp",
	global_endpoint = "",
	uid = "codedeploy-2014-10-06",
}

local GetDeploymentConfigOutput_keys = { "deploymentConfigInfo" = true, nil }

function M.AssertGetDeploymentConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentConfigOutput to be of type 'table'")
	if struct["deploymentConfigInfo"] then M.AssertDeploymentConfigInfo(struct["deploymentConfigInfo"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentConfigOutput_keys[k], "GetDeploymentConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentConfigOutput
-- &lt;p&gt;Represents the output of a GetDeploymentConfig operation.&lt;/p&gt;
-- @param deploymentConfigInfo [DeploymentConfigInfo] &lt;p&gt;Information about the deployment configuration.&lt;/p&gt;
function M.GetDeploymentConfigOutput(deploymentConfigInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentConfigOutput")
	local t = { 
		["deploymentConfigInfo"] = deploymentConfigInfo,
	}
	M.AssertGetDeploymentConfigOutput(t)
	return t
end

local AddTagsToOnPremisesInstancesInput_keys = { "instanceNames" = true, "tags" = true, nil }

function M.AssertAddTagsToOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToOnPremisesInstancesInput to be of type 'table'")
	assert(struct["tags"], "Expected key tags to exist in table")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	if struct["instanceNames"] then M.AssertInstanceNameList(struct["instanceNames"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToOnPremisesInstancesInput_keys[k], "AddTagsToOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToOnPremisesInstancesInput
-- &lt;p&gt;Represents the input of, and adds tags to, an on-premises instance operation.&lt;/p&gt;
-- @param instanceNames [InstanceNameList] &lt;p&gt;The names of the on-premises instances to which to add tags.&lt;/p&gt;
-- @param tags [TagList] &lt;p&gt;The tag key-value pairs to add to the on-premises instances.&lt;/p&gt; &lt;p&gt;Keys and values are both required. Keys cannot be null or empty strings. Value-only tags are not allowed.&lt;/p&gt;
-- Required parameter: tags
-- Required parameter: instanceNames
function M.AddTagsToOnPremisesInstancesInput(instanceNames, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToOnPremisesInstancesInput")
	local t = { 
		["instanceNames"] = instanceNames,
		["tags"] = tags,
	}
	M.AssertAddTagsToOnPremisesInstancesInput(t)
	return t
end

local ListGitHubAccountTokenNamesInput_keys = { "nextToken" = true, nil }

function M.AssertListGitHubAccountTokenNamesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGitHubAccountTokenNamesInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListGitHubAccountTokenNamesInput_keys[k], "ListGitHubAccountTokenNamesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGitHubAccountTokenNamesInput
-- &lt;p&gt;Represents the input of a ListGitHubAccountTokenNames operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous ListGitHubAccountTokenNames call. It can be used to return the next set of names in the list. &lt;/p&gt;
function M.ListGitHubAccountTokenNamesInput(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGitHubAccountTokenNamesInput")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListGitHubAccountTokenNamesInput(t)
	return t
end

local RevisionInfo_keys = { "revisionLocation" = true, "genericRevisionInfo" = true, nil }

function M.AssertRevisionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionInfo to be of type 'table'")
	if struct["revisionLocation"] then M.AssertRevisionLocation(struct["revisionLocation"]) end
	if struct["genericRevisionInfo"] then M.AssertGenericRevisionInfo(struct["genericRevisionInfo"]) end
	for k,_ in pairs(struct) do
		assert(RevisionInfo_keys[k], "RevisionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionInfo
-- &lt;p&gt;Information about an application revision.&lt;/p&gt;
-- @param revisionLocation [RevisionLocation] &lt;p&gt;Information about the location and type of an application revision.&lt;/p&gt;
-- @param genericRevisionInfo [GenericRevisionInfo] &lt;p&gt;Information about an application revision, including usage details and associated deployment groups.&lt;/p&gt;
function M.RevisionInfo(revisionLocation, genericRevisionInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionInfo")
	local t = { 
		["revisionLocation"] = revisionLocation,
		["genericRevisionInfo"] = genericRevisionInfo,
	}
	M.AssertRevisionInfo(t)
	return t
end

local InvalidNextTokenException_keys = { nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- &lt;p&gt;The next token was specified in an invalid format.&lt;/p&gt;
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local InvalidDeploymentInstanceTypeException_keys = { nil }

function M.AssertInvalidDeploymentInstanceTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentInstanceTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeploymentInstanceTypeException_keys[k], "InvalidDeploymentInstanceTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentInstanceTypeException
-- &lt;p&gt;An instance type was specified for an in-place deployment. Instance types are supported for blue/green deployments only.&lt;/p&gt;
function M.InvalidDeploymentInstanceTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentInstanceTypeException")
	local t = { 
	}
	M.AssertInvalidDeploymentInstanceTypeException(t)
	return t
end

local InvalidTagException_keys = { nil }

function M.AssertInvalidTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTagException_keys[k], "InvalidTagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagException
-- &lt;p&gt;The specified tag was specified in an invalid format.&lt;/p&gt;
function M.InvalidTagException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagException")
	local t = { 
	}
	M.AssertInvalidTagException(t)
	return t
end

local InstanceNotRegisteredException_keys = { nil }

function M.AssertInstanceNotRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNotRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InstanceNotRegisteredException_keys[k], "InstanceNotRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNotRegisteredException
-- &lt;p&gt;The specified on-premises instance is not registered.&lt;/p&gt;
function M.InstanceNotRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNotRegisteredException")
	local t = { 
	}
	M.AssertInstanceNotRegisteredException(t)
	return t
end

local ListOnPremisesInstancesInput_keys = { "nextToken" = true, "registrationStatus" = true, "tagFilters" = true, nil }

function M.AssertListOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOnPremisesInstancesInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["registrationStatus"] then M.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["tagFilters"] then M.AssertTagFilterList(struct["tagFilters"]) end
	for k,_ in pairs(struct) do
		assert(ListOnPremisesInstancesInput_keys[k], "ListOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOnPremisesInstancesInput
-- &lt;p&gt;Represents the input of a ListOnPremisesInstances operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.&lt;/p&gt;
-- @param registrationStatus [RegistrationStatus] &lt;p&gt;The registration status of the on-premises instances:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Deregistered: Include deregistered on-premises instances in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Registered: Include registered on-premises instances in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param tagFilters [TagFilterList] &lt;p&gt;The on-premises instance tags that will be used to restrict the corresponding on-premises instance names returned.&lt;/p&gt;
function M.ListOnPremisesInstancesInput(nextToken, registrationStatus, tagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOnPremisesInstancesInput")
	local t = { 
		["nextToken"] = nextToken,
		["registrationStatus"] = registrationStatus,
		["tagFilters"] = tagFilters,
	}
	M.AssertListOnPremisesInstancesInput(t)
	return t
end

local MultipleIamArnsProvidedException_keys = { nil }

function M.AssertMultipleIamArnsProvidedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MultipleIamArnsProvidedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MultipleIamArnsProvidedException_keys[k], "MultipleIamArnsProvidedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MultipleIamArnsProvidedException
-- &lt;p&gt;Both an IAM user ARN and an IAM session ARN were included in the request. Use only one ARN type.&lt;/p&gt;
function M.MultipleIamArnsProvidedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MultipleIamArnsProvidedException")
	local t = { 
	}
	M.AssertMultipleIamArnsProvidedException(t)
	return t
end

local InvalidDeploymentStyleException_keys = { nil }

function M.AssertInvalidDeploymentStyleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentStyleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeploymentStyleException_keys[k], "InvalidDeploymentStyleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentStyleException
-- &lt;p&gt;An invalid deployment style was specified. Valid deployment types include &quot;IN_PLACE&quot; and &quot;BLUE_GREEN&quot;. Valid deployment options include &quot;WITH_TRAFFIC_CONTROL&quot; and &quot;WITHOUT_TRAFFIC_CONTROL&quot;.&lt;/p&gt;
function M.InvalidDeploymentStyleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentStyleException")
	local t = { 
	}
	M.AssertInvalidDeploymentStyleException(t)
	return t
end

local InvalidAutoRollbackConfigException_keys = { nil }

function M.AssertInvalidAutoRollbackConfigException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAutoRollbackConfigException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidAutoRollbackConfigException_keys[k], "InvalidAutoRollbackConfigException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAutoRollbackConfigException
-- &lt;p&gt;The automatic rollback configuration was specified in an invalid format. For example, automatic rollback is enabled but an invalid triggering event type or no event types were listed.&lt;/p&gt;
function M.InvalidAutoRollbackConfigException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAutoRollbackConfigException")
	local t = { 
	}
	M.AssertInvalidAutoRollbackConfigException(t)
	return t
end

local CreateDeploymentConfigOutput_keys = { "deploymentConfigId" = true, nil }

function M.AssertCreateDeploymentConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentConfigOutput to be of type 'table'")
	if struct["deploymentConfigId"] then M.AssertDeploymentConfigId(struct["deploymentConfigId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentConfigOutput_keys[k], "CreateDeploymentConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentConfigOutput
-- &lt;p&gt;Represents the output of a CreateDeploymentConfig operation.&lt;/p&gt;
-- @param deploymentConfigId [DeploymentConfigId] &lt;p&gt;A unique deployment configuration ID.&lt;/p&gt;
function M.CreateDeploymentConfigOutput(deploymentConfigId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentConfigOutput")
	local t = { 
		["deploymentConfigId"] = deploymentConfigId,
	}
	M.AssertCreateDeploymentConfigOutput(t)
	return t
end

local GetDeploymentGroupInput_keys = { "applicationName" = true, "deploymentGroupName" = true, nil }

function M.AssertGetDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupName"], "Expected key deploymentGroupName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupName"] then M.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentGroupInput_keys[k], "GetDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentGroupInput
-- &lt;p&gt;Represents the input of a GetDeploymentGroup operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param deploymentGroupName [DeploymentGroupName] &lt;p&gt;The name of an existing deployment group for the specified application.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: deploymentGroupName
function M.GetDeploymentGroupInput(applicationName, deploymentGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentGroupInput")
	local t = { 
		["applicationName"] = applicationName,
		["deploymentGroupName"] = deploymentGroupName,
	}
	M.AssertGetDeploymentGroupInput(t)
	return t
end

local GetDeploymentConfigInput_keys = { "deploymentConfigName" = true, nil }

function M.AssertGetDeploymentConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentConfigInput to be of type 'table'")
	assert(struct["deploymentConfigName"], "Expected key deploymentConfigName to exist in table")
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentConfigInput_keys[k], "GetDeploymentConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentConfigInput
-- &lt;p&gt;Represents the input of a GetDeploymentConfig operation.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The name of a deployment configuration associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- Required parameter: deploymentConfigName
function M.GetDeploymentConfigInput(deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentConfigInput")
	local t = { 
		["deploymentConfigName"] = deploymentConfigName,
	}
	M.AssertGetDeploymentConfigInput(t)
	return t
end

local S3Location_keys = { "bundleType" = true, "version" = true, "bucket" = true, "key" = true, "eTag" = true, nil }

function M.AssertS3Location(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Location to be of type 'table'")
	if struct["bundleType"] then M.AssertBundleType(struct["bundleType"]) end
	if struct["version"] then M.AssertVersionId(struct["version"]) end
	if struct["bucket"] then M.AssertS3Bucket(struct["bucket"]) end
	if struct["key"] then M.AssertS3Key(struct["key"]) end
	if struct["eTag"] then M.AssertETag(struct["eTag"]) end
	for k,_ in pairs(struct) do
		assert(S3Location_keys[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- &lt;p&gt;Information about the location of application artifacts stored in Amazon S3.&lt;/p&gt;
-- @param bundleType [BundleType] &lt;p&gt;The file type of the application revision. Must be one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;tar: A tar archive file.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;tgz: A compressed tar archive file.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;zip: A zip archive file.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param version [VersionId] &lt;p&gt;A specific version of the Amazon S3 object that represents the bundled artifacts for the application revision.&lt;/p&gt; &lt;p&gt;If the version is not specified, the system will use the most recent version by default.&lt;/p&gt;
-- @param bucket [S3Bucket] &lt;p&gt;The name of the Amazon S3 bucket where the application revision is stored.&lt;/p&gt;
-- @param key [S3Key] &lt;p&gt;The name of the Amazon S3 object that represents the bundled artifacts for the application revision.&lt;/p&gt;
-- @param eTag [ETag] &lt;p&gt;The ETag of the Amazon S3 object that represents the bundled artifacts for the application revision.&lt;/p&gt; &lt;p&gt;If the ETag is not specified as an input parameter, ETag validation of the object will be skipped.&lt;/p&gt;
function M.S3Location(bundleType, version, bucket, key, eTag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Location")
	local t = { 
		["bundleType"] = bundleType,
		["version"] = version,
		["bucket"] = bucket,
		["key"] = key,
		["eTag"] = eTag,
	}
	M.AssertS3Location(t)
	return t
end

local ListApplicationRevisionsOutput_keys = { "nextToken" = true, "revisions" = true, nil }

function M.AssertListApplicationRevisionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationRevisionsOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["revisions"] then M.AssertRevisionLocationList(struct["revisions"]) end
	for k,_ in pairs(struct) do
		assert(ListApplicationRevisionsOutput_keys[k], "ListApplicationRevisionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationRevisionsOutput
-- &lt;p&gt;Represents the output of a ListApplicationRevisions operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier will also be returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.&lt;/p&gt;
-- @param revisions [RevisionLocationList] &lt;p&gt;A list of locations that contain the matching revisions.&lt;/p&gt;
function M.ListApplicationRevisionsOutput(nextToken, revisions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationRevisionsOutput")
	local t = { 
		["nextToken"] = nextToken,
		["revisions"] = revisions,
	}
	M.AssertListApplicationRevisionsOutput(t)
	return t
end

local DeploymentAlreadyCompletedException_keys = { nil }

function M.AssertDeploymentAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentAlreadyCompletedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentAlreadyCompletedException_keys[k], "DeploymentAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentAlreadyCompletedException
-- &lt;p&gt;The deployment is already complete.&lt;/p&gt;
function M.DeploymentAlreadyCompletedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentAlreadyCompletedException")
	local t = { 
	}
	M.AssertDeploymentAlreadyCompletedException(t)
	return t
end

local InstanceNameRequiredException_keys = { nil }

function M.AssertInstanceNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InstanceNameRequiredException_keys[k], "InstanceNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNameRequiredException
-- &lt;p&gt;An on-premises instance name was not specified.&lt;/p&gt;
function M.InstanceNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNameRequiredException")
	local t = { 
	}
	M.AssertInstanceNameRequiredException(t)
	return t
end

local ELBInfo_keys = { "name" = true, nil }

function M.AssertELBInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ELBInfo to be of type 'table'")
	if struct["name"] then M.AssertELBName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ELBInfo_keys[k], "ELBInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ELBInfo
-- &lt;p&gt;Information about a load balancer in Elastic Load Balancing to use in a deployment.&lt;/p&gt;
-- @param name [ELBName] &lt;p&gt;For blue/green deployments, the name of the load balancer that will be used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.&lt;/p&gt;
function M.ELBInfo(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ELBInfo")
	local t = { 
		["name"] = name,
	}
	M.AssertELBInfo(t)
	return t
end

local ListDeploymentGroupsInput_keys = { "applicationName" = true, "nextToken" = true, nil }

function M.AssertListDeploymentGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentGroupsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentGroupsInput_keys[k], "ListDeploymentGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentGroupsInput
-- &lt;p&gt;Represents the input of a ListDeploymentGroups operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.&lt;/p&gt;
-- Required parameter: applicationName
function M.ListDeploymentGroupsInput(applicationName, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentGroupsInput")
	local t = { 
		["applicationName"] = applicationName,
		["nextToken"] = nextToken,
	}
	M.AssertListDeploymentGroupsInput(t)
	return t
end

local AlarmConfiguration_keys = { "ignorePollAlarmFailure" = true, "alarms" = true, "enabled" = true, nil }

function M.AssertAlarmConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmConfiguration to be of type 'table'")
	if struct["ignorePollAlarmFailure"] then M.AssertBoolean(struct["ignorePollAlarmFailure"]) end
	if struct["alarms"] then M.AssertAlarmList(struct["alarms"]) end
	if struct["enabled"] then M.AssertBoolean(struct["enabled"]) end
	for k,_ in pairs(struct) do
		assert(AlarmConfiguration_keys[k], "AlarmConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmConfiguration
-- &lt;p&gt;Information about alarms associated with the deployment group.&lt;/p&gt;
-- @param ignorePollAlarmFailure [Boolean] &lt;p&gt;Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;true: The deployment will proceed even if alarm status information can't be retrieved from Amazon CloudWatch.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;false: The deployment will stop if alarm status information can't be retrieved from Amazon CloudWatch.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param alarms [AlarmList] &lt;p&gt;A list of alarms configured for the deployment group. A maximum of 10 alarms can be added to a deployment group.&lt;/p&gt;
-- @param enabled [Boolean] &lt;p&gt;Indicates whether the alarm configuration is enabled.&lt;/p&gt;
function M.AlarmConfiguration(ignorePollAlarmFailure, alarms, enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlarmConfiguration")
	local t = { 
		["ignorePollAlarmFailure"] = ignorePollAlarmFailure,
		["alarms"] = alarms,
		["enabled"] = enabled,
	}
	M.AssertAlarmConfiguration(t)
	return t
end

local DeploymentConfigDoesNotExistException_keys = { nil }

function M.AssertDeploymentConfigDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentConfigDoesNotExistException_keys[k], "DeploymentConfigDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigDoesNotExistException
-- &lt;p&gt;The deployment configuration does not exist with the applicable IAM user or AWS account.&lt;/p&gt;
function M.DeploymentConfigDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigDoesNotExistException")
	local t = { 
	}
	M.AssertDeploymentConfigDoesNotExistException(t)
	return t
end

local BucketNameFilterRequiredException_keys = { nil }

function M.AssertBucketNameFilterRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketNameFilterRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BucketNameFilterRequiredException_keys[k], "BucketNameFilterRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketNameFilterRequiredException
-- &lt;p&gt;A bucket name is required, but was not provided.&lt;/p&gt;
function M.BucketNameFilterRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketNameFilterRequiredException")
	local t = { 
	}
	M.AssertBucketNameFilterRequiredException(t)
	return t
end

local ListOnPremisesInstancesOutput_keys = { "nextToken" = true, "instanceNames" = true, nil }

function M.AssertListOnPremisesInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOnPremisesInstancesOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["instanceNames"] then M.AssertInstanceNameList(struct["instanceNames"]) end
	for k,_ in pairs(struct) do
		assert(ListOnPremisesInstancesOutput_keys[k], "ListOnPremisesInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOnPremisesInstancesOutput
-- &lt;p&gt;Represents the output of list on-premises instances operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.&lt;/p&gt;
-- @param instanceNames [InstanceNameList] &lt;p&gt;The list of matching on-premises instance names.&lt;/p&gt;
function M.ListOnPremisesInstancesOutput(nextToken, instanceNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOnPremisesInstancesOutput")
	local t = { 
		["nextToken"] = nextToken,
		["instanceNames"] = instanceNames,
	}
	M.AssertListOnPremisesInstancesOutput(t)
	return t
end

local GreenFleetProvisioningOption_keys = { "action" = true, nil }

function M.AssertGreenFleetProvisioningOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GreenFleetProvisioningOption to be of type 'table'")
	if struct["action"] then M.AssertGreenFleetProvisioningAction(struct["action"]) end
	for k,_ in pairs(struct) do
		assert(GreenFleetProvisioningOption_keys[k], "GreenFleetProvisioningOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GreenFleetProvisioningOption
-- &lt;p&gt;Information about the instances that belong to the replacement environment in a blue/green deployment.&lt;/p&gt;
-- @param action [GreenFleetProvisioningAction] &lt;p&gt;The method used to add instances to a replacement environment.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;DISCOVER_EXISTING: Use instances that already exist or will be created manually.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;COPY_AUTO_SCALING_GROUP: Use settings from a specified Auto Scaling group to define and create instances in a new Auto Scaling group.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GreenFleetProvisioningOption(action, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GreenFleetProvisioningOption")
	local t = { 
		["action"] = action,
	}
	M.AssertGreenFleetProvisioningOption(t)
	return t
end

local GetApplicationRevisionInput_keys = { "applicationName" = true, "revision" = true, nil }

function M.AssertGetApplicationRevisionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationRevisionInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["revision"] then M.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(GetApplicationRevisionInput_keys[k], "GetApplicationRevisionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationRevisionInput
-- &lt;p&gt;Represents the input of a GetApplicationRevision operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of the application that corresponds to the revision.&lt;/p&gt;
-- @param revision [RevisionLocation] &lt;p&gt;Information about the application revision to get, including type and location.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: revision
function M.GetApplicationRevisionInput(applicationName, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationRevisionInput")
	local t = { 
		["applicationName"] = applicationName,
		["revision"] = revision,
	}
	M.AssertGetApplicationRevisionInput(t)
	return t
end

local DeploymentGroupInfo_keys = { "applicationName" = true, "deploymentGroupId" = true, "loadBalancerInfo" = true, "blueGreenDeploymentConfiguration" = true, "deploymentConfigName" = true, "autoScalingGroups" = true, "alarmConfiguration" = true, "ec2TagFilters" = true, "lastSuccessfulDeployment" = true, "autoRollbackConfiguration" = true, "deploymentStyle" = true, "triggerConfigurations" = true, "lastAttemptedDeployment" = true, "serviceRoleArn" = true, "deploymentGroupName" = true, "targetRevision" = true, "onPremisesInstanceTagFilters" = true, nil }

function M.AssertDeploymentGroupInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupInfo to be of type 'table'")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupId"] then M.AssertDeploymentGroupId(struct["deploymentGroupId"]) end
	if struct["loadBalancerInfo"] then M.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["blueGreenDeploymentConfiguration"] then M.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["autoScalingGroups"] then M.AssertAutoScalingGroupList(struct["autoScalingGroups"]) end
	if struct["alarmConfiguration"] then M.AssertAlarmConfiguration(struct["alarmConfiguration"]) end
	if struct["ec2TagFilters"] then M.AssertEC2TagFilterList(struct["ec2TagFilters"]) end
	if struct["lastSuccessfulDeployment"] then M.AssertLastDeploymentInfo(struct["lastSuccessfulDeployment"]) end
	if struct["autoRollbackConfiguration"] then M.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["deploymentStyle"] then M.AssertDeploymentStyle(struct["deploymentStyle"]) end
	if struct["triggerConfigurations"] then M.AssertTriggerConfigList(struct["triggerConfigurations"]) end
	if struct["lastAttemptedDeployment"] then M.AssertLastDeploymentInfo(struct["lastAttemptedDeployment"]) end
	if struct["serviceRoleArn"] then M.AssertRole(struct["serviceRoleArn"]) end
	if struct["deploymentGroupName"] then M.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["targetRevision"] then M.AssertRevisionLocation(struct["targetRevision"]) end
	if struct["onPremisesInstanceTagFilters"] then M.AssertTagFilterList(struct["onPremisesInstanceTagFilters"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentGroupInfo_keys[k], "DeploymentGroupInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupInfo
-- &lt;p&gt;Information about a deployment group.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The application name.&lt;/p&gt;
-- @param deploymentGroupId [DeploymentGroupId] &lt;p&gt;The deployment group ID.&lt;/p&gt;
-- @param loadBalancerInfo [LoadBalancerInfo] &lt;p&gt;Information about the load balancer to use in a deployment.&lt;/p&gt;
-- @param blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] &lt;p&gt;Information about blue/green deployment options for a deployment group.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The deployment configuration name.&lt;/p&gt;
-- @param autoScalingGroups [AutoScalingGroupList] &lt;p&gt;A list of associated Auto Scaling groups.&lt;/p&gt;
-- @param alarmConfiguration [AlarmConfiguration] &lt;p&gt;A list of alarms associated with the deployment group.&lt;/p&gt;
-- @param ec2TagFilters [EC2TagFilterList] &lt;p&gt;The Amazon EC2 tags on which to filter.&lt;/p&gt;
-- @param lastSuccessfulDeployment [LastDeploymentInfo] &lt;p&gt;Information about the most recent successful deployment to the deployment group.&lt;/p&gt;
-- @param autoRollbackConfiguration [AutoRollbackConfiguration] &lt;p&gt;Information about the automatic rollback configuration associated with the deployment group.&lt;/p&gt;
-- @param deploymentStyle [DeploymentStyle] &lt;p&gt;Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.&lt;/p&gt;
-- @param triggerConfigurations [TriggerConfigList] &lt;p&gt;Information about triggers associated with the deployment group.&lt;/p&gt;
-- @param lastAttemptedDeployment [LastDeploymentInfo] &lt;p&gt;Information about the most recent attempted deployment to the deployment group.&lt;/p&gt;
-- @param serviceRoleArn [Role] &lt;p&gt;A service role ARN.&lt;/p&gt;
-- @param deploymentGroupName [DeploymentGroupName] &lt;p&gt;The deployment group name.&lt;/p&gt;
-- @param targetRevision [RevisionLocation] &lt;p&gt;Information about the deployment group's target revision, including type and location.&lt;/p&gt;
-- @param onPremisesInstanceTagFilters [TagFilterList] &lt;p&gt;The on-premises instance tags on which to filter.&lt;/p&gt;
function M.DeploymentGroupInfo(applicationName, deploymentGroupId, loadBalancerInfo, blueGreenDeploymentConfiguration, deploymentConfigName, autoScalingGroups, alarmConfiguration, ec2TagFilters, lastSuccessfulDeployment, autoRollbackConfiguration, deploymentStyle, triggerConfigurations, lastAttemptedDeployment, serviceRoleArn, deploymentGroupName, targetRevision, onPremisesInstanceTagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupInfo")
	local t = { 
		["applicationName"] = applicationName,
		["deploymentGroupId"] = deploymentGroupId,
		["loadBalancerInfo"] = loadBalancerInfo,
		["blueGreenDeploymentConfiguration"] = blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = deploymentConfigName,
		["autoScalingGroups"] = autoScalingGroups,
		["alarmConfiguration"] = alarmConfiguration,
		["ec2TagFilters"] = ec2TagFilters,
		["lastSuccessfulDeployment"] = lastSuccessfulDeployment,
		["autoRollbackConfiguration"] = autoRollbackConfiguration,
		["deploymentStyle"] = deploymentStyle,
		["triggerConfigurations"] = triggerConfigurations,
		["lastAttemptedDeployment"] = lastAttemptedDeployment,
		["serviceRoleArn"] = serviceRoleArn,
		["deploymentGroupName"] = deploymentGroupName,
		["targetRevision"] = targetRevision,
		["onPremisesInstanceTagFilters"] = onPremisesInstanceTagFilters,
	}
	M.AssertDeploymentGroupInfo(t)
	return t
end

local InvalidSortOrderException_keys = { nil }

function M.AssertInvalidSortOrderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSortOrderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSortOrderException_keys[k], "InvalidSortOrderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSortOrderException
-- &lt;p&gt;The sort order was specified in an invalid format.&lt;/p&gt;
function M.InvalidSortOrderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSortOrderException")
	local t = { 
	}
	M.AssertInvalidSortOrderException(t)
	return t
end

local DeploymentIsNotInReadyStateException_keys = { nil }

function M.AssertDeploymentIsNotInReadyStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentIsNotInReadyStateException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentIsNotInReadyStateException_keys[k], "DeploymentIsNotInReadyStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentIsNotInReadyStateException
-- &lt;p&gt;The deployment does not have a status of Ready and can't continue yet.&lt;/p&gt;
function M.DeploymentIsNotInReadyStateException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentIsNotInReadyStateException")
	local t = { 
	}
	M.AssertDeploymentIsNotInReadyStateException(t)
	return t
end

local IamSessionArnAlreadyRegisteredException_keys = { nil }

function M.AssertIamSessionArnAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamSessionArnAlreadyRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IamSessionArnAlreadyRegisteredException_keys[k], "IamSessionArnAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamSessionArnAlreadyRegisteredException
-- &lt;p&gt;The request included an IAM session ARN that has already been used to register a different instance.&lt;/p&gt;
function M.IamSessionArnAlreadyRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamSessionArnAlreadyRegisteredException")
	local t = { 
	}
	M.AssertIamSessionArnAlreadyRegisteredException(t)
	return t
end

local TriggerTargetsLimitExceededException_keys = { nil }

function M.AssertTriggerTargetsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TriggerTargetsLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TriggerTargetsLimitExceededException_keys[k], "TriggerTargetsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TriggerTargetsLimitExceededException
-- &lt;p&gt;The maximum allowed number of triggers was exceeded.&lt;/p&gt;
function M.TriggerTargetsLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TriggerTargetsLimitExceededException")
	local t = { 
	}
	M.AssertTriggerTargetsLimitExceededException(t)
	return t
end

local DeploymentConfigInfo_keys = { "deploymentConfigId" = true, "minimumHealthyHosts" = true, "createTime" = true, "deploymentConfigName" = true, nil }

function M.AssertDeploymentConfigInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigInfo to be of type 'table'")
	if struct["deploymentConfigId"] then M.AssertDeploymentConfigId(struct["deploymentConfigId"]) end
	if struct["minimumHealthyHosts"] then M.AssertMinimumHealthyHosts(struct["minimumHealthyHosts"]) end
	if struct["createTime"] then M.AssertTimestamp(struct["createTime"]) end
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentConfigInfo_keys[k], "DeploymentConfigInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigInfo
-- &lt;p&gt;Information about a deployment configuration.&lt;/p&gt;
-- @param deploymentConfigId [DeploymentConfigId] &lt;p&gt;The deployment configuration ID.&lt;/p&gt;
-- @param minimumHealthyHosts [MinimumHealthyHosts] &lt;p&gt;Information about the number or percentage of minimum healthy instance.&lt;/p&gt;
-- @param createTime [Timestamp] &lt;p&gt;The time at which the deployment configuration was created.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The deployment configuration name.&lt;/p&gt;
function M.DeploymentConfigInfo(deploymentConfigId, minimumHealthyHosts, createTime, deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigInfo")
	local t = { 
		["deploymentConfigId"] = deploymentConfigId,
		["minimumHealthyHosts"] = minimumHealthyHosts,
		["createTime"] = createTime,
		["deploymentConfigName"] = deploymentConfigName,
	}
	M.AssertDeploymentConfigInfo(t)
	return t
end

local ApplicationAlreadyExistsException_keys = { nil }

function M.AssertApplicationAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ApplicationAlreadyExistsException_keys[k], "ApplicationAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationAlreadyExistsException
-- &lt;p&gt;An application with the specified name already exists with the applicable IAM user or AWS account.&lt;/p&gt;
function M.ApplicationAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationAlreadyExistsException")
	local t = { 
	}
	M.AssertApplicationAlreadyExistsException(t)
	return t
end

local InvalidDeployedStateFilterException_keys = { nil }

function M.AssertInvalidDeployedStateFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeployedStateFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeployedStateFilterException_keys[k], "InvalidDeployedStateFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeployedStateFilterException
-- &lt;p&gt;The deployed state filter was specified in an invalid format.&lt;/p&gt;
function M.InvalidDeployedStateFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeployedStateFilterException")
	local t = { 
	}
	M.AssertInvalidDeployedStateFilterException(t)
	return t
end

local InvalidAlarmConfigException_keys = { nil }

function M.AssertInvalidAlarmConfigException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAlarmConfigException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidAlarmConfigException_keys[k], "InvalidAlarmConfigException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAlarmConfigException
-- &lt;p&gt;The format of the alarm configuration is invalid. Possible causes include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The alarm list is null.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The alarm object is null.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The alarm name is empty or null or exceeds the 255 character limit.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Two alarms with the same name have been specified.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The alarm configuration is enabled but the alarm list is empty.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.InvalidAlarmConfigException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAlarmConfigException")
	local t = { 
	}
	M.AssertInvalidAlarmConfigException(t)
	return t
end

local DeploymentConfigInUseException_keys = { nil }

function M.AssertDeploymentConfigInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentConfigInUseException_keys[k], "DeploymentConfigInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigInUseException
-- &lt;p&gt;The deployment configuration is still in use.&lt;/p&gt;
function M.DeploymentConfigInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigInUseException")
	local t = { 
	}
	M.AssertDeploymentConfigInUseException(t)
	return t
end

local GetOnPremisesInstanceOutput_keys = { "instanceInfo" = true, nil }

function M.AssertGetOnPremisesInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOnPremisesInstanceOutput to be of type 'table'")
	if struct["instanceInfo"] then M.AssertInstanceInfo(struct["instanceInfo"]) end
	for k,_ in pairs(struct) do
		assert(GetOnPremisesInstanceOutput_keys[k], "GetOnPremisesInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOnPremisesInstanceOutput
-- &lt;p&gt;Represents the output of a GetOnPremisesInstance operation.&lt;/p&gt;
-- @param instanceInfo [InstanceInfo] &lt;p&gt;Information about the on-premises instance.&lt;/p&gt;
function M.GetOnPremisesInstanceOutput(instanceInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOnPremisesInstanceOutput")
	local t = { 
		["instanceInfo"] = instanceInfo,
	}
	M.AssertGetOnPremisesInstanceOutput(t)
	return t
end

local InstanceIdRequiredException_keys = { nil }

function M.AssertInstanceIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InstanceIdRequiredException_keys[k], "InstanceIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceIdRequiredException
-- &lt;p&gt;The instance ID was not specified.&lt;/p&gt;
function M.InstanceIdRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceIdRequiredException")
	local t = { 
	}
	M.AssertInstanceIdRequiredException(t)
	return t
end

local IamUserArnRequiredException_keys = { nil }

function M.AssertIamUserArnRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamUserArnRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IamUserArnRequiredException_keys[k], "IamUserArnRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamUserArnRequiredException
-- &lt;p&gt;An IAM user ARN was not specified.&lt;/p&gt;
function M.IamUserArnRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamUserArnRequiredException")
	local t = { 
	}
	M.AssertIamUserArnRequiredException(t)
	return t
end

local RemoveTagsFromOnPremisesInstancesInput_keys = { "instanceNames" = true, "tags" = true, nil }

function M.AssertRemoveTagsFromOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromOnPremisesInstancesInput to be of type 'table'")
	assert(struct["tags"], "Expected key tags to exist in table")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	if struct["instanceNames"] then M.AssertInstanceNameList(struct["instanceNames"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromOnPremisesInstancesInput_keys[k], "RemoveTagsFromOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromOnPremisesInstancesInput
-- &lt;p&gt;Represents the input of a RemoveTagsFromOnPremisesInstances operation.&lt;/p&gt;
-- @param instanceNames [InstanceNameList] &lt;p&gt;The names of the on-premises instances from which to remove tags.&lt;/p&gt;
-- @param tags [TagList] &lt;p&gt;The tag key-value pairs to remove from the on-premises instances.&lt;/p&gt;
-- Required parameter: tags
-- Required parameter: instanceNames
function M.RemoveTagsFromOnPremisesInstancesInput(instanceNames, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromOnPremisesInstancesInput")
	local t = { 
		["instanceNames"] = instanceNames,
		["tags"] = tags,
	}
	M.AssertRemoveTagsFromOnPremisesInstancesInput(t)
	return t
end

local StopDeploymentInput_keys = { "deploymentId" = true, "autoRollbackEnabled" = true, nil }

function M.AssertStopDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDeploymentInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	if struct["autoRollbackEnabled"] then M.AssertNullableBoolean(struct["autoRollbackEnabled"]) end
	for k,_ in pairs(struct) do
		assert(StopDeploymentInput_keys[k], "StopDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDeploymentInput
-- &lt;p&gt;Represents the input of a StopDeployment operation.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;The unique ID of a deployment.&lt;/p&gt;
-- @param autoRollbackEnabled [NullableBoolean] &lt;p&gt;Indicates, when a deployment is stopped, whether instances that have been updated should be rolled back to the previous version of the application revision.&lt;/p&gt;
-- Required parameter: deploymentId
function M.StopDeploymentInput(deploymentId, autoRollbackEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDeploymentInput")
	local t = { 
		["deploymentId"] = deploymentId,
		["autoRollbackEnabled"] = autoRollbackEnabled,
	}
	M.AssertStopDeploymentInput(t)
	return t
end

local TagRequiredException_keys = { nil }

function M.AssertTagRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagRequiredException_keys[k], "TagRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagRequiredException
-- &lt;p&gt;A tag was not specified.&lt;/p&gt;
function M.TagRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagRequiredException")
	local t = { 
	}
	M.AssertTagRequiredException(t)
	return t
end

local CreateDeploymentConfigInput_keys = { "minimumHealthyHosts" = true, "deploymentConfigName" = true, nil }

function M.AssertCreateDeploymentConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentConfigInput to be of type 'table'")
	assert(struct["deploymentConfigName"], "Expected key deploymentConfigName to exist in table")
	if struct["minimumHealthyHosts"] then M.AssertMinimumHealthyHosts(struct["minimumHealthyHosts"]) end
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentConfigInput_keys[k], "CreateDeploymentConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentConfigInput
-- &lt;p&gt;Represents the input of a CreateDeploymentConfig operation.&lt;/p&gt;
-- @param minimumHealthyHosts [MinimumHealthyHosts] &lt;p&gt;The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.&lt;/p&gt; &lt;p&gt;The type parameter takes either of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The value parameter takes an integer.&lt;/p&gt; &lt;p&gt;For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The name of the deployment configuration to create.&lt;/p&gt;
-- Required parameter: deploymentConfigName
function M.CreateDeploymentConfigInput(minimumHealthyHosts, deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentConfigInput")
	local t = { 
		["minimumHealthyHosts"] = minimumHealthyHosts,
		["deploymentConfigName"] = deploymentConfigName,
	}
	M.AssertCreateDeploymentConfigInput(t)
	return t
end

local TriggerConfig_keys = { "triggerEvents" = true, "triggerTargetArn" = true, "triggerName" = true, nil }

function M.AssertTriggerConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TriggerConfig to be of type 'table'")
	if struct["triggerEvents"] then M.AssertTriggerEventTypeList(struct["triggerEvents"]) end
	if struct["triggerTargetArn"] then M.AssertTriggerTargetArn(struct["triggerTargetArn"]) end
	if struct["triggerName"] then M.AssertTriggerName(struct["triggerName"]) end
	for k,_ in pairs(struct) do
		assert(TriggerConfig_keys[k], "TriggerConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TriggerConfig
-- &lt;p&gt;Information about notification triggers for the deployment group.&lt;/p&gt;
-- @param triggerEvents [TriggerEventTypeList] &lt;p&gt;The event type or types for which notifications are triggered.&lt;/p&gt;
-- @param triggerTargetArn [TriggerTargetArn] &lt;p&gt;The ARN of the Amazon Simple Notification Service topic through which notifications about deployment or instance events are sent.&lt;/p&gt;
-- @param triggerName [TriggerName] &lt;p&gt;The name of the notification trigger.&lt;/p&gt;
function M.TriggerConfig(triggerEvents, triggerTargetArn, triggerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TriggerConfig")
	local t = { 
		["triggerEvents"] = triggerEvents,
		["triggerTargetArn"] = triggerTargetArn,
		["triggerName"] = triggerName,
	}
	M.AssertTriggerConfig(t)
	return t
end

local TimeRange_keys = { "start" = true, "end" = true, nil }

function M.AssertTimeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeRange to be of type 'table'")
	if struct["start"] then M.AssertTimestamp(struct["start"]) end
	if struct["end"] then M.AssertTimestamp(struct["end"]) end
	for k,_ in pairs(struct) do
		assert(TimeRange_keys[k], "TimeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeRange
-- &lt;p&gt;Information about a time range.&lt;/p&gt;
-- @param start [Timestamp] &lt;p&gt;The start time of the time range.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Specify null to leave the start time open-ended.&lt;/p&gt; &lt;/note&gt;
-- @param end [Timestamp] &lt;p&gt;The end time of the time range.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Specify null to leave the end time open-ended.&lt;/p&gt; &lt;/note&gt;
function M.TimeRange(start, end, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeRange")
	local t = { 
		["start"] = start,
		["end"] = end,
	}
	M.AssertTimeRange(t)
	return t
end

local InvalidTriggerConfigException_keys = { nil }

function M.AssertInvalidTriggerConfigException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTriggerConfigException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTriggerConfigException_keys[k], "InvalidTriggerConfigException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTriggerConfigException
-- &lt;p&gt;The trigger was specified in an invalid format.&lt;/p&gt;
function M.InvalidTriggerConfigException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTriggerConfigException")
	local t = { 
	}
	M.AssertInvalidTriggerConfigException(t)
	return t
end

local AutoScalingGroup_keys = { "hook" = true, "name" = true, nil }

function M.AssertAutoScalingGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroup to be of type 'table'")
	if struct["hook"] then M.AssertAutoScalingGroupHook(struct["hook"]) end
	if struct["name"] then M.AssertAutoScalingGroupName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingGroup_keys[k], "AutoScalingGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroup
-- &lt;p&gt;Information about an Auto Scaling group.&lt;/p&gt;
-- @param hook [AutoScalingGroupHook] &lt;p&gt;An Auto Scaling lifecycle event hook name.&lt;/p&gt;
-- @param name [AutoScalingGroupName] &lt;p&gt;The Auto Scaling group name.&lt;/p&gt;
function M.AutoScalingGroup(hook, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingGroup")
	local t = { 
		["hook"] = hook,
		["name"] = name,
	}
	M.AssertAutoScalingGroup(t)
	return t
end

local UnsupportedActionForDeploymentTypeException_keys = { nil }

function M.AssertUnsupportedActionForDeploymentTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedActionForDeploymentTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnsupportedActionForDeploymentTypeException_keys[k], "UnsupportedActionForDeploymentTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedActionForDeploymentTypeException
-- &lt;p&gt;A call was submitted that is not supported for the specified deployment type.&lt;/p&gt;
function M.UnsupportedActionForDeploymentTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedActionForDeploymentTypeException")
	local t = { 
	}
	M.AssertUnsupportedActionForDeploymentTypeException(t)
	return t
end

local DeploymentStyle_keys = { "deploymentType" = true, "deploymentOption" = true, nil }

function M.AssertDeploymentStyle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentStyle to be of type 'table'")
	if struct["deploymentType"] then M.AssertDeploymentType(struct["deploymentType"]) end
	if struct["deploymentOption"] then M.AssertDeploymentOption(struct["deploymentOption"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentStyle_keys[k], "DeploymentStyle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentStyle
-- &lt;p&gt;Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.&lt;/p&gt;
-- @param deploymentType [DeploymentType] &lt;p&gt;Indicates whether to run an in-place deployment or a blue/green deployment.&lt;/p&gt;
-- @param deploymentOption [DeploymentOption] &lt;p&gt;Indicates whether to route deployment traffic behind a load balancer.&lt;/p&gt;
function M.DeploymentStyle(deploymentType, deploymentOption, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentStyle")
	local t = { 
		["deploymentType"] = deploymentType,
		["deploymentOption"] = deploymentOption,
	}
	M.AssertDeploymentStyle(t)
	return t
end

local InvalidIamSessionArnException_keys = { nil }

function M.AssertInvalidIamSessionArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIamSessionArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidIamSessionArnException_keys[k], "InvalidIamSessionArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIamSessionArnException
-- &lt;p&gt;The IAM session ARN was specified in an invalid format.&lt;/p&gt;
function M.InvalidIamSessionArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIamSessionArnException")
	local t = { 
	}
	M.AssertInvalidIamSessionArnException(t)
	return t
end

local DeploymentDoesNotExistException_keys = { nil }

function M.AssertDeploymentDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentDoesNotExistException_keys[k], "DeploymentDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentDoesNotExistException
-- &lt;p&gt;The deployment does not exist with the applicable IAM user or AWS account.&lt;/p&gt;
function M.DeploymentDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentDoesNotExistException")
	local t = { 
	}
	M.AssertDeploymentDoesNotExistException(t)
	return t
end

local InvalidDeploymentConfigNameException_keys = { nil }

function M.AssertInvalidDeploymentConfigNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentConfigNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeploymentConfigNameException_keys[k], "InvalidDeploymentConfigNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentConfigNameException
-- &lt;p&gt;The deployment configuration name was specified in an invalid format.&lt;/p&gt;
function M.InvalidDeploymentConfigNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentConfigNameException")
	local t = { 
	}
	M.AssertInvalidDeploymentConfigNameException(t)
	return t
end

local SkipWaitTimeForInstanceTerminationInput_keys = { "deploymentId" = true, nil }

function M.AssertSkipWaitTimeForInstanceTerminationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkipWaitTimeForInstanceTerminationInput to be of type 'table'")
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(SkipWaitTimeForInstanceTerminationInput_keys[k], "SkipWaitTimeForInstanceTerminationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkipWaitTimeForInstanceTerminationInput
--  
-- @param deploymentId [DeploymentId] &lt;p&gt;The ID of the blue/green deployment for which you want to skip the instance termination wait time.&lt;/p&gt;
function M.SkipWaitTimeForInstanceTerminationInput(deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SkipWaitTimeForInstanceTerminationInput")
	local t = { 
		["deploymentId"] = deploymentId,
	}
	M.AssertSkipWaitTimeForInstanceTerminationInput(t)
	return t
end

local AutoRollbackConfiguration_keys = { "enabled" = true, "events" = true, nil }

function M.AssertAutoRollbackConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoRollbackConfiguration to be of type 'table'")
	if struct["enabled"] then M.AssertBoolean(struct["enabled"]) end
	if struct["events"] then M.AssertAutoRollbackEventsList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(AutoRollbackConfiguration_keys[k], "AutoRollbackConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoRollbackConfiguration
-- &lt;p&gt;Information about a configuration for automatically rolling back to a previous version of an application revision when a deployment doesn't complete successfully.&lt;/p&gt;
-- @param enabled [Boolean] &lt;p&gt;Indicates whether a defined automatic rollback configuration is currently enabled.&lt;/p&gt;
-- @param events [AutoRollbackEventsList] &lt;p&gt;The event type or types that trigger a rollback.&lt;/p&gt;
function M.AutoRollbackConfiguration(enabled, events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoRollbackConfiguration")
	local t = { 
		["enabled"] = enabled,
		["events"] = events,
	}
	M.AssertAutoRollbackConfiguration(t)
	return t
end

local InvalidSortByException_keys = { nil }

function M.AssertInvalidSortByException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSortByException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSortByException_keys[k], "InvalidSortByException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSortByException
-- &lt;p&gt;The column name to sort by is either not present or was specified in an invalid format.&lt;/p&gt;
function M.InvalidSortByException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSortByException")
	local t = { 
	}
	M.AssertInvalidSortByException(t)
	return t
end

local GenericRevisionInfo_keys = { "lastUsedTime" = true, "firstUsedTime" = true, "registerTime" = true, "description" = true, "deploymentGroups" = true, nil }

function M.AssertGenericRevisionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenericRevisionInfo to be of type 'table'")
	if struct["lastUsedTime"] then M.AssertTimestamp(struct["lastUsedTime"]) end
	if struct["firstUsedTime"] then M.AssertTimestamp(struct["firstUsedTime"]) end
	if struct["registerTime"] then M.AssertTimestamp(struct["registerTime"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["deploymentGroups"] then M.AssertDeploymentGroupsList(struct["deploymentGroups"]) end
	for k,_ in pairs(struct) do
		assert(GenericRevisionInfo_keys[k], "GenericRevisionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenericRevisionInfo
-- &lt;p&gt;Information about an application revision.&lt;/p&gt;
-- @param lastUsedTime [Timestamp] &lt;p&gt;When the revision was last used by AWS CodeDeploy.&lt;/p&gt;
-- @param firstUsedTime [Timestamp] &lt;p&gt;When the revision was first used by AWS CodeDeploy.&lt;/p&gt;
-- @param registerTime [Timestamp] &lt;p&gt;When the revision was registered with AWS CodeDeploy.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A comment about the revision.&lt;/p&gt;
-- @param deploymentGroups [DeploymentGroupsList] &lt;p&gt;The deployment groups for which this is the current target revision.&lt;/p&gt;
function M.GenericRevisionInfo(lastUsedTime, firstUsedTime, registerTime, description, deploymentGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenericRevisionInfo")
	local t = { 
		["lastUsedTime"] = lastUsedTime,
		["firstUsedTime"] = firstUsedTime,
		["registerTime"] = registerTime,
		["description"] = description,
		["deploymentGroups"] = deploymentGroups,
	}
	M.AssertGenericRevisionInfo(t)
	return t
end

local InvalidEC2TagException_keys = { nil }

function M.AssertInvalidEC2TagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEC2TagException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidEC2TagException_keys[k], "InvalidEC2TagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEC2TagException
-- &lt;p&gt;The tag was specified in an invalid format.&lt;/p&gt;
function M.InvalidEC2TagException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEC2TagException")
	local t = { 
	}
	M.AssertInvalidEC2TagException(t)
	return t
end

local DeleteDeploymentConfigInput_keys = { "deploymentConfigName" = true, nil }

function M.AssertDeleteDeploymentConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentConfigInput to be of type 'table'")
	assert(struct["deploymentConfigName"], "Expected key deploymentConfigName to exist in table")
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDeploymentConfigInput_keys[k], "DeleteDeploymentConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentConfigInput
-- &lt;p&gt;Represents the input of a DeleteDeploymentConfig operation.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The name of a deployment configuration associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- Required parameter: deploymentConfigName
function M.DeleteDeploymentConfigInput(deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeploymentConfigInput")
	local t = { 
		["deploymentConfigName"] = deploymentConfigName,
	}
	M.AssertDeleteDeploymentConfigInput(t)
	return t
end

local DeploymentReadyOption_keys = { "actionOnTimeout" = true, "waitTimeInMinutes" = true, nil }

function M.AssertDeploymentReadyOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentReadyOption to be of type 'table'")
	if struct["actionOnTimeout"] then M.AssertDeploymentReadyAction(struct["actionOnTimeout"]) end
	if struct["waitTimeInMinutes"] then M.AssertDuration(struct["waitTimeInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentReadyOption_keys[k], "DeploymentReadyOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentReadyOption
-- &lt;p&gt;Information about how traffic is rerouted to instances in a replacement environment in a blue/green deployment.&lt;/p&gt;
-- @param actionOnTimeout [DeploymentReadyAction] &lt;p&gt;Information about when to reroute traffic from an original environment to a replacement environment in a blue/green deployment.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately after the new application revision is installed on the instances in the replacement environment.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;STOP_DEPLOYMENT: Do not register new instances with load balancer unless traffic is rerouted manually. If traffic is not rerouted manually before the end of the specified wait period, the deployment status is changed to Stopped.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param waitTimeInMinutes [Duration] &lt;p&gt;The number of minutes to wait before the status of a blue/green deployment changed to Stopped if rerouting is not started manually. Applies only to the STOP_DEPLOYMENT option for actionOnTimeout&lt;/p&gt;
function M.DeploymentReadyOption(actionOnTimeout, waitTimeInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentReadyOption")
	local t = { 
		["actionOnTimeout"] = actionOnTimeout,
		["waitTimeInMinutes"] = waitTimeInMinutes,
	}
	M.AssertDeploymentReadyOption(t)
	return t
end

local LifecycleEvent_keys = { "endTime" = true, "status" = true, "diagnostics" = true, "startTime" = true, "lifecycleEventName" = true, nil }

function M.AssertLifecycleEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleEvent to be of type 'table'")
	if struct["endTime"] then M.AssertTimestamp(struct["endTime"]) end
	if struct["status"] then M.AssertLifecycleEventStatus(struct["status"]) end
	if struct["diagnostics"] then M.AssertDiagnostics(struct["diagnostics"]) end
	if struct["startTime"] then M.AssertTimestamp(struct["startTime"]) end
	if struct["lifecycleEventName"] then M.AssertLifecycleEventName(struct["lifecycleEventName"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleEvent_keys[k], "LifecycleEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleEvent
-- &lt;p&gt;Information about a deployment lifecycle event.&lt;/p&gt;
-- @param endTime [Timestamp] &lt;p&gt;A timestamp indicating when the deployment lifecycle event ended.&lt;/p&gt;
-- @param status [LifecycleEventStatus] &lt;p&gt;The deployment lifecycle event status:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending: The deployment lifecycle event is pending.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;InProgress: The deployment lifecycle event is in progress.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Succeeded: The deployment lifecycle event ran successfully.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Failed: The deployment lifecycle event has failed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Skipped: The deployment lifecycle event has been skipped.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Unknown: The deployment lifecycle event is unknown.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param diagnostics [Diagnostics] &lt;p&gt;Diagnostic information about the deployment lifecycle event.&lt;/p&gt;
-- @param startTime [Timestamp] &lt;p&gt;A timestamp indicating when the deployment lifecycle event started.&lt;/p&gt;
-- @param lifecycleEventName [LifecycleEventName] &lt;p&gt;The deployment lifecycle event name, such as ApplicationStop, BeforeInstall, AfterInstall, ApplicationStart, or ValidateService.&lt;/p&gt;
function M.LifecycleEvent(endTime, status, diagnostics, startTime, lifecycleEventName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleEvent")
	local t = { 
		["endTime"] = endTime,
		["status"] = status,
		["diagnostics"] = diagnostics,
		["startTime"] = startTime,
		["lifecycleEventName"] = lifecycleEventName,
	}
	M.AssertLifecycleEvent(t)
	return t
end

local AlarmsLimitExceededException_keys = { nil }

function M.AssertAlarmsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmsLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AlarmsLimitExceededException_keys[k], "AlarmsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmsLimitExceededException
-- &lt;p&gt;The maximum number of alarms for a deployment group (10) was exceeded.&lt;/p&gt;
function M.AlarmsLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlarmsLimitExceededException")
	local t = { 
	}
	M.AssertAlarmsLimitExceededException(t)
	return t
end

local InstanceSummary_keys = { "status" = true, "instanceId" = true, "lifecycleEvents" = true, "deploymentId" = true, "lastUpdatedAt" = true, "instanceType" = true, nil }

function M.AssertInstanceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceSummary to be of type 'table'")
	if struct["status"] then M.AssertInstanceStatus(struct["status"]) end
	if struct["instanceId"] then M.AssertInstanceId(struct["instanceId"]) end
	if struct["lifecycleEvents"] then M.AssertLifecycleEventList(struct["lifecycleEvents"]) end
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	if struct["lastUpdatedAt"] then M.AssertTimestamp(struct["lastUpdatedAt"]) end
	if struct["instanceType"] then M.AssertInstanceType(struct["instanceType"]) end
	for k,_ in pairs(struct) do
		assert(InstanceSummary_keys[k], "InstanceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceSummary
-- &lt;p&gt;Information about an instance in a deployment.&lt;/p&gt;
-- @param status [InstanceStatus] &lt;p&gt;The deployment status for this instance:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending: The deployment is pending for this instance.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;In Progress: The deployment is in progress for this instance.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Succeeded: The deployment has succeeded for this instance.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Failed: The deployment has failed for this instance.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Skipped: The deployment has been skipped for this instance.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Unknown: The deployment status is unknown for this instance.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param instanceId [InstanceId] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param lifecycleEvents [LifecycleEventList] &lt;p&gt;A list of lifecycle events for this instance.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;The deployment ID.&lt;/p&gt;
-- @param lastUpdatedAt [Timestamp] &lt;p&gt;A timestamp indicating when the instance information was last updated.&lt;/p&gt;
-- @param instanceType [InstanceType] &lt;p&gt;Information about which environment an instance belongs to in a blue/green deployment.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;BLUE: The instance is part of the original environment.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;GREEN: The instance is part of the replacement environment.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.InstanceSummary(status, instanceId, lifecycleEvents, deploymentId, lastUpdatedAt, instanceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceSummary")
	local t = { 
		["status"] = status,
		["instanceId"] = instanceId,
		["lifecycleEvents"] = lifecycleEvents,
		["deploymentId"] = deploymentId,
		["lastUpdatedAt"] = lastUpdatedAt,
		["instanceType"] = instanceType,
	}
	M.AssertInstanceSummary(t)
	return t
end

local LastDeploymentInfo_keys = { "status" = true, "deploymentId" = true, "endTime" = true, "createTime" = true, nil }

function M.AssertLastDeploymentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LastDeploymentInfo to be of type 'table'")
	if struct["status"] then M.AssertDeploymentStatus(struct["status"]) end
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	if struct["endTime"] then M.AssertTimestamp(struct["endTime"]) end
	if struct["createTime"] then M.AssertTimestamp(struct["createTime"]) end
	for k,_ in pairs(struct) do
		assert(LastDeploymentInfo_keys[k], "LastDeploymentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LastDeploymentInfo
-- &lt;p&gt;Information about the most recent attempted or successful deployment to a deployment group.&lt;/p&gt;
-- @param status [DeploymentStatus] &lt;p&gt;The status of the most recent deployment.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;The deployment ID.&lt;/p&gt;
-- @param endTime [Timestamp] &lt;p&gt;A timestamp indicating when the most recent deployment to the deployment group completed.&lt;/p&gt;
-- @param createTime [Timestamp] &lt;p&gt;A timestamp indicating when the most recent deployment to the deployment group started.&lt;/p&gt;
function M.LastDeploymentInfo(status, deploymentId, endTime, createTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LastDeploymentInfo")
	local t = { 
		["status"] = status,
		["deploymentId"] = deploymentId,
		["endTime"] = endTime,
		["createTime"] = createTime,
	}
	M.AssertLastDeploymentInfo(t)
	return t
end

local InvalidBucketNameFilterException_keys = { nil }

function M.AssertInvalidBucketNameFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBucketNameFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidBucketNameFilterException_keys[k], "InvalidBucketNameFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBucketNameFilterException
-- &lt;p&gt;The bucket name either doesn't exist or was specified in an invalid format.&lt;/p&gt;
function M.InvalidBucketNameFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBucketNameFilterException")
	local t = { 
	}
	M.AssertInvalidBucketNameFilterException(t)
	return t
end

local LifecycleHookLimitExceededException_keys = { nil }

function M.AssertLifecycleHookLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleHookLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LifecycleHookLimitExceededException_keys[k], "LifecycleHookLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleHookLimitExceededException
-- &lt;p&gt;The limit for lifecycle hooks was exceeded.&lt;/p&gt;
function M.LifecycleHookLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleHookLimitExceededException")
	local t = { 
	}
	M.AssertLifecycleHookLimitExceededException(t)
	return t
end

local BatchGetDeploymentGroupsInput_keys = { "applicationName" = true, "deploymentGroupNames" = true, nil }

function M.AssertBatchGetDeploymentGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentGroupsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupNames"], "Expected key deploymentGroupNames to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupNames"] then M.AssertDeploymentGroupsList(struct["deploymentGroupNames"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetDeploymentGroupsInput_keys[k], "BatchGetDeploymentGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentGroupsInput
-- &lt;p&gt;Represents the input of a BatchGetDeploymentGroups operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param deploymentGroupNames [DeploymentGroupsList] &lt;p&gt;The deployment groups' names.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: deploymentGroupNames
function M.BatchGetDeploymentGroupsInput(applicationName, deploymentGroupNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentGroupsInput")
	local t = { 
		["applicationName"] = applicationName,
		["deploymentGroupNames"] = deploymentGroupNames,
	}
	M.AssertBatchGetDeploymentGroupsInput(t)
	return t
end

local BatchGetApplicationsOutput_keys = { "applicationsInfo" = true, nil }

function M.AssertBatchGetApplicationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationsOutput to be of type 'table'")
	if struct["applicationsInfo"] then M.AssertApplicationsInfoList(struct["applicationsInfo"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetApplicationsOutput_keys[k], "BatchGetApplicationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationsOutput
-- &lt;p&gt;Represents the output of a BatchGetApplications operation.&lt;/p&gt;
-- @param applicationsInfo [ApplicationsInfoList] &lt;p&gt;Information about the applications.&lt;/p&gt;
function M.BatchGetApplicationsOutput(applicationsInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationsOutput")
	local t = { 
		["applicationsInfo"] = applicationsInfo,
	}
	M.AssertBatchGetApplicationsOutput(t)
	return t
end

local InvalidFileExistsBehaviorException_keys = { nil }

function M.AssertInvalidFileExistsBehaviorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFileExistsBehaviorException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidFileExistsBehaviorException_keys[k], "InvalidFileExistsBehaviorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFileExistsBehaviorException
-- &lt;p&gt;An invalid fileExistsBehavior option was specified to determine how AWS CodeDeploy handles files or directories that already exist in a deployment target location but weren't part of the previous successful deployment. Valid values include &quot;DISALLOW&quot;, &quot;OVERWRITE&quot;, and &quot;RETAIN&quot;.&lt;/p&gt;
function M.InvalidFileExistsBehaviorException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFileExistsBehaviorException")
	local t = { 
	}
	M.AssertInvalidFileExistsBehaviorException(t)
	return t
end

local InvalidTimeRangeException_keys = { nil }

function M.AssertInvalidTimeRangeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTimeRangeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTimeRangeException_keys[k], "InvalidTimeRangeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTimeRangeException
-- &lt;p&gt;The specified time range was specified in an invalid format.&lt;/p&gt;
function M.InvalidTimeRangeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTimeRangeException")
	local t = { 
	}
	M.AssertInvalidTimeRangeException(t)
	return t
end

local UpdateApplicationInput_keys = { "applicationName" = true, "newApplicationName" = true, nil }

function M.AssertUpdateApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationInput to be of type 'table'")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["newApplicationName"] then M.AssertApplicationName(struct["newApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApplicationInput_keys[k], "UpdateApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationInput
-- &lt;p&gt;Represents the input of an UpdateApplication operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The current name of the application you want to change.&lt;/p&gt;
-- @param newApplicationName [ApplicationName] &lt;p&gt;The new name to give the application.&lt;/p&gt;
function M.UpdateApplicationInput(applicationName, newApplicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationInput")
	local t = { 
		["applicationName"] = applicationName,
		["newApplicationName"] = newApplicationName,
	}
	M.AssertUpdateApplicationInput(t)
	return t
end

local IamUserArnAlreadyRegisteredException_keys = { nil }

function M.AssertIamUserArnAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamUserArnAlreadyRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IamUserArnAlreadyRegisteredException_keys[k], "IamUserArnAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamUserArnAlreadyRegisteredException
-- &lt;p&gt;The specified IAM user ARN is already registered with an on-premises instance.&lt;/p&gt;
function M.IamUserArnAlreadyRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamUserArnAlreadyRegisteredException")
	local t = { 
	}
	M.AssertIamUserArnAlreadyRegisteredException(t)
	return t
end

local GetApplicationOutput_keys = { "application" = true, nil }

function M.AssertGetApplicationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationOutput to be of type 'table'")
	if struct["application"] then M.AssertApplicationInfo(struct["application"]) end
	for k,_ in pairs(struct) do
		assert(GetApplicationOutput_keys[k], "GetApplicationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationOutput
-- &lt;p&gt;Represents the output of a GetApplication operation.&lt;/p&gt;
-- @param application [ApplicationInfo] &lt;p&gt;Information about the application.&lt;/p&gt;
function M.GetApplicationOutput(application, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationOutput")
	local t = { 
		["application"] = application,
	}
	M.AssertGetApplicationOutput(t)
	return t
end

local ListApplicationsInput_keys = { "nextToken" = true, nil }

function M.AssertListApplicationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListApplicationsInput_keys[k], "ListApplicationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsInput
-- &lt;p&gt;Represents the input of a ListApplications operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous list applications call. It can be used to return the next set of applications in the list.&lt;/p&gt;
function M.ListApplicationsInput(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationsInput")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListApplicationsInput(t)
	return t
end

local ApplicationDoesNotExistException_keys = { nil }

function M.AssertApplicationDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ApplicationDoesNotExistException_keys[k], "ApplicationDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationDoesNotExistException
-- &lt;p&gt;The application does not exist with the applicable IAM user or AWS account.&lt;/p&gt;
function M.ApplicationDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationDoesNotExistException")
	local t = { 
	}
	M.AssertApplicationDoesNotExistException(t)
	return t
end

local TargetInstances_keys = { "autoScalingGroups" = true, "tagFilters" = true, nil }

function M.AssertTargetInstances(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetInstances to be of type 'table'")
	if struct["autoScalingGroups"] then M.AssertAutoScalingGroupNameList(struct["autoScalingGroups"]) end
	if struct["tagFilters"] then M.AssertEC2TagFilterList(struct["tagFilters"]) end
	for k,_ in pairs(struct) do
		assert(TargetInstances_keys[k], "TargetInstances contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetInstances
-- &lt;p&gt;Information about the instances to be used in the replacement environment in a blue/green deployment.&lt;/p&gt;
-- @param autoScalingGroups [AutoScalingGroupNameList] &lt;p&gt;The names of one or more Auto Scaling groups to identify a replacement environment for a blue/green deployment.&lt;/p&gt;
-- @param tagFilters [EC2TagFilterList] &lt;p&gt;The tag filter key, type, and value used to identify Amazon EC2 instances in a replacement environment for a blue/green deployment.&lt;/p&gt;
function M.TargetInstances(autoScalingGroups, tagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetInstances")
	local t = { 
		["autoScalingGroups"] = autoScalingGroups,
		["tagFilters"] = tagFilters,
	}
	M.AssertTargetInstances(t)
	return t
end

local ResourceValidationException_keys = { nil }

function M.AssertResourceValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceValidationException_keys[k], "ResourceValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceValidationException
-- &lt;p&gt;The specified resource could not be validated.&lt;/p&gt;
function M.ResourceValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceValidationException")
	local t = { 
	}
	M.AssertResourceValidationException(t)
	return t
end

local GetOnPremisesInstanceInput_keys = { "instanceName" = true, nil }

function M.AssertGetOnPremisesInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOnPremisesInstanceInput to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertInstanceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(GetOnPremisesInstanceInput_keys[k], "GetOnPremisesInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOnPremisesInstanceInput
-- &lt;p&gt;Represents the input of a GetOnPremisesInstance operation.&lt;/p&gt;
-- @param instanceName [InstanceName] &lt;p&gt;The name of the on-premises instance about which to get information.&lt;/p&gt;
-- Required parameter: instanceName
function M.GetOnPremisesInstanceInput(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOnPremisesInstanceInput")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertGetOnPremisesInstanceInput(t)
	return t
end

local InvalidApplicationNameException_keys = { nil }

function M.AssertInvalidApplicationNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidApplicationNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidApplicationNameException_keys[k], "InvalidApplicationNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidApplicationNameException
-- &lt;p&gt;The application name was specified in an invalid format.&lt;/p&gt;
function M.InvalidApplicationNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidApplicationNameException")
	local t = { 
	}
	M.AssertInvalidApplicationNameException(t)
	return t
end

local ApplicationInfo_keys = { "applicationName" = true, "gitHubAccountName" = true, "linkedToGitHub" = true, "applicationId" = true, "createTime" = true, nil }

function M.AssertApplicationInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationInfo to be of type 'table'")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["gitHubAccountName"] then M.AssertGitHubAccountTokenName(struct["gitHubAccountName"]) end
	if struct["linkedToGitHub"] then M.AssertBoolean(struct["linkedToGitHub"]) end
	if struct["applicationId"] then M.AssertApplicationId(struct["applicationId"]) end
	if struct["createTime"] then M.AssertTimestamp(struct["createTime"]) end
	for k,_ in pairs(struct) do
		assert(ApplicationInfo_keys[k], "ApplicationInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationInfo
-- &lt;p&gt;Information about an application.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The application name.&lt;/p&gt;
-- @param gitHubAccountName [GitHubAccountTokenName] &lt;p&gt;The name for a connection to a GitHub account.&lt;/p&gt;
-- @param linkedToGitHub [Boolean] &lt;p&gt;True if the user has authenticated with GitHub for the specified application; otherwise, false.&lt;/p&gt;
-- @param applicationId [ApplicationId] &lt;p&gt;The application ID.&lt;/p&gt;
-- @param createTime [Timestamp] &lt;p&gt;The time at which the application was created.&lt;/p&gt;
function M.ApplicationInfo(applicationName, gitHubAccountName, linkedToGitHub, applicationId, createTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationInfo")
	local t = { 
		["applicationName"] = applicationName,
		["gitHubAccountName"] = gitHubAccountName,
		["linkedToGitHub"] = linkedToGitHub,
		["applicationId"] = applicationId,
		["createTime"] = createTime,
	}
	M.AssertApplicationInfo(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertValue(struct["Value"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;Information about a tag.&lt;/p&gt;
-- @param Value [Value] &lt;p&gt;The tag's value.&lt;/p&gt;
-- @param Key [Key] &lt;p&gt;The tag's key.&lt;/p&gt;
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local ListDeploymentsInput_keys = { "applicationName" = true, "createTimeRange" = true, "nextToken" = true, "deploymentGroupName" = true, "includeOnlyStatuses" = true, nil }

function M.AssertListDeploymentsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsInput to be of type 'table'")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["createTimeRange"] then M.AssertTimeRange(struct["createTimeRange"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["deploymentGroupName"] then M.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["includeOnlyStatuses"] then M.AssertDeploymentStatusList(struct["includeOnlyStatuses"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentsInput_keys[k], "ListDeploymentsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsInput
-- &lt;p&gt;Represents the input of a ListDeployments operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param createTimeRange [TimeRange] &lt;p&gt;A time range (start and end) for returning a subset of the list of deployments.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.&lt;/p&gt;
-- @param deploymentGroupName [DeploymentGroupName] &lt;p&gt;The name of an existing deployment group for the specified application.&lt;/p&gt;
-- @param includeOnlyStatuses [DeploymentStatusList] &lt;p&gt;A subset of deployments to list by status:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Created: Include created deployments in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Queued: Include queued deployments in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;In Progress: Include in-progress deployments in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Succeeded: Include successful deployments in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Failed: Include failed deployments in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Stopped: Include stopped deployments in the resulting list.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ListDeploymentsInput(applicationName, createTimeRange, nextToken, deploymentGroupName, includeOnlyStatuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsInput")
	local t = { 
		["applicationName"] = applicationName,
		["createTimeRange"] = createTimeRange,
		["nextToken"] = nextToken,
		["deploymentGroupName"] = deploymentGroupName,
		["includeOnlyStatuses"] = includeOnlyStatuses,
	}
	M.AssertListDeploymentsInput(t)
	return t
end

local ListGitHubAccountTokenNamesOutput_keys = { "nextToken" = true, "tokenNameList" = true, nil }

function M.AssertListGitHubAccountTokenNamesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGitHubAccountTokenNamesOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["tokenNameList"] then M.AssertGitHubAccountTokenNameList(struct["tokenNameList"]) end
	for k,_ in pairs(struct) do
		assert(ListGitHubAccountTokenNamesOutput_keys[k], "ListGitHubAccountTokenNamesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGitHubAccountTokenNamesOutput
-- &lt;p&gt;Represents the output of a ListGitHubAccountTokenNames operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent ListGitHubAccountTokenNames call to return the next set of names in the list. &lt;/p&gt;
-- @param tokenNameList [GitHubAccountTokenNameList] &lt;p&gt;A list of names of connections to GitHub accounts.&lt;/p&gt;
function M.ListGitHubAccountTokenNamesOutput(nextToken, tokenNameList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGitHubAccountTokenNamesOutput")
	local t = { 
		["nextToken"] = nextToken,
		["tokenNameList"] = tokenNameList,
	}
	M.AssertListGitHubAccountTokenNamesOutput(t)
	return t
end

local GetDeploymentGroupOutput_keys = { "deploymentGroupInfo" = true, nil }

function M.AssertGetDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentGroupOutput to be of type 'table'")
	if struct["deploymentGroupInfo"] then M.AssertDeploymentGroupInfo(struct["deploymentGroupInfo"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentGroupOutput_keys[k], "GetDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentGroupOutput
-- &lt;p&gt;Represents the output of a GetDeploymentGroup operation.&lt;/p&gt;
-- @param deploymentGroupInfo [DeploymentGroupInfo] &lt;p&gt;Information about the deployment group.&lt;/p&gt;
function M.GetDeploymentGroupOutput(deploymentGroupInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentGroupOutput")
	local t = { 
		["deploymentGroupInfo"] = deploymentGroupInfo,
	}
	M.AssertGetDeploymentGroupOutput(t)
	return t
end

local InvalidTargetInstancesException_keys = { nil }

function M.AssertInvalidTargetInstancesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTargetInstancesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTargetInstancesException_keys[k], "InvalidTargetInstancesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTargetInstancesException
-- &lt;p&gt;The target instance configuration is invalid. Possible causes include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Configuration data for target instances was entered for an in-place deployment.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The limit of 10 tags for a tag type was exceeded.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The combined length of the tag names exceeded the limit. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A specified tag is not currently applied to any instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.InvalidTargetInstancesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTargetInstancesException")
	local t = { 
	}
	M.AssertInvalidTargetInstancesException(t)
	return t
end

local InvalidOperationException_keys = { nil }

function M.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidOperationException_keys[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- &lt;p&gt;An invalid operation was detected.&lt;/p&gt;
function M.InvalidOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOperationException")
	local t = { 
	}
	M.AssertInvalidOperationException(t)
	return t
end

local InvalidIamUserArnException_keys = { nil }

function M.AssertInvalidIamUserArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIamUserArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidIamUserArnException_keys[k], "InvalidIamUserArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIamUserArnException
-- &lt;p&gt;The IAM user ARN was specified in an invalid format.&lt;/p&gt;
function M.InvalidIamUserArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIamUserArnException")
	local t = { 
	}
	M.AssertInvalidIamUserArnException(t)
	return t
end

local BatchGetDeploymentInstancesOutput_keys = { "instancesSummary" = true, "errorMessage" = true, nil }

function M.AssertBatchGetDeploymentInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentInstancesOutput to be of type 'table'")
	if struct["instancesSummary"] then M.AssertInstanceSummaryList(struct["instancesSummary"]) end
	if struct["errorMessage"] then M.AssertErrorMessage(struct["errorMessage"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetDeploymentInstancesOutput_keys[k], "BatchGetDeploymentInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentInstancesOutput
-- &lt;p&gt;Represents the output of a BatchGetDeploymentInstances operation.&lt;/p&gt;
-- @param instancesSummary [InstanceSummaryList] &lt;p&gt;Information about the instance.&lt;/p&gt;
-- @param errorMessage [ErrorMessage] &lt;p&gt;Information about errors that may have occurred during the API call.&lt;/p&gt;
function M.BatchGetDeploymentInstancesOutput(instancesSummary, errorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentInstancesOutput")
	local t = { 
		["instancesSummary"] = instancesSummary,
		["errorMessage"] = errorMessage,
	}
	M.AssertBatchGetDeploymentInstancesOutput(t)
	return t
end

local InvalidDeploymentGroupNameException_keys = { nil }

function M.AssertInvalidDeploymentGroupNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentGroupNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeploymentGroupNameException_keys[k], "InvalidDeploymentGroupNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentGroupNameException
-- &lt;p&gt;The deployment group name was specified in an invalid format.&lt;/p&gt;
function M.InvalidDeploymentGroupNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentGroupNameException")
	local t = { 
	}
	M.AssertInvalidDeploymentGroupNameException(t)
	return t
end

local InvalidBlueGreenDeploymentConfigurationException_keys = { nil }

function M.AssertInvalidBlueGreenDeploymentConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBlueGreenDeploymentConfigurationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidBlueGreenDeploymentConfigurationException_keys[k], "InvalidBlueGreenDeploymentConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBlueGreenDeploymentConfigurationException
-- &lt;p&gt;The configuration for the blue/green deployment group was provided in an invalid format. For information about deployment configuration format, see &lt;a&gt;CreateDeploymentConfig&lt;/a&gt;.&lt;/p&gt;
function M.InvalidBlueGreenDeploymentConfigurationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBlueGreenDeploymentConfigurationException")
	local t = { 
	}
	M.AssertInvalidBlueGreenDeploymentConfigurationException(t)
	return t
end

local UpdateDeploymentGroupInput_keys = { "applicationName" = true, "autoScalingGroups" = true, "loadBalancerInfo" = true, "currentDeploymentGroupName" = true, "blueGreenDeploymentConfiguration" = true, "deploymentConfigName" = true, "triggerConfigurations" = true, "alarmConfiguration" = true, "ec2TagFilters" = true, "serviceRoleArn" = true, "autoRollbackConfiguration" = true, "deploymentStyle" = true, "newDeploymentGroupName" = true, "onPremisesInstanceTagFilters" = true, nil }

function M.AssertUpdateDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["currentDeploymentGroupName"], "Expected key currentDeploymentGroupName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["autoScalingGroups"] then M.AssertAutoScalingGroupNameList(struct["autoScalingGroups"]) end
	if struct["loadBalancerInfo"] then M.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["currentDeploymentGroupName"] then M.AssertDeploymentGroupName(struct["currentDeploymentGroupName"]) end
	if struct["blueGreenDeploymentConfiguration"] then M.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["triggerConfigurations"] then M.AssertTriggerConfigList(struct["triggerConfigurations"]) end
	if struct["alarmConfiguration"] then M.AssertAlarmConfiguration(struct["alarmConfiguration"]) end
	if struct["ec2TagFilters"] then M.AssertEC2TagFilterList(struct["ec2TagFilters"]) end
	if struct["serviceRoleArn"] then M.AssertRole(struct["serviceRoleArn"]) end
	if struct["autoRollbackConfiguration"] then M.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["deploymentStyle"] then M.AssertDeploymentStyle(struct["deploymentStyle"]) end
	if struct["newDeploymentGroupName"] then M.AssertDeploymentGroupName(struct["newDeploymentGroupName"]) end
	if struct["onPremisesInstanceTagFilters"] then M.AssertTagFilterList(struct["onPremisesInstanceTagFilters"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDeploymentGroupInput_keys[k], "UpdateDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeploymentGroupInput
-- &lt;p&gt;Represents the input of an UpdateDeploymentGroup operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The application name corresponding to the deployment group to update.&lt;/p&gt;
-- @param autoScalingGroups [AutoScalingGroupNameList] &lt;p&gt;The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.&lt;/p&gt;
-- @param loadBalancerInfo [LoadBalancerInfo] &lt;p&gt;Information about the load balancer used in a deployment.&lt;/p&gt;
-- @param currentDeploymentGroupName [DeploymentGroupName] &lt;p&gt;The current name of the deployment group.&lt;/p&gt;
-- @param blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] &lt;p&gt;Information about blue/green deployment options for a deployment group.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The replacement deployment configuration name to use, if you want to change it.&lt;/p&gt;
-- @param triggerConfigurations [TriggerConfigList] &lt;p&gt;Information about triggers to change when the deployment group is updated. For examples, see &lt;a href=&quot;http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html&quot;&gt;Modify Triggers in an AWS CodeDeploy Deployment Group&lt;/a&gt; in the AWS CodeDeploy User Guide.&lt;/p&gt;
-- @param alarmConfiguration [AlarmConfiguration] &lt;p&gt;Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.&lt;/p&gt;
-- @param ec2TagFilters [EC2TagFilterList] &lt;p&gt;The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.&lt;/p&gt;
-- @param serviceRoleArn [Role] &lt;p&gt;A replacement ARN for the service role, if you want to change it.&lt;/p&gt;
-- @param autoRollbackConfiguration [AutoRollbackConfiguration] &lt;p&gt;Information for an automatic rollback configuration that is added or changed when a deployment group is updated.&lt;/p&gt;
-- @param deploymentStyle [DeploymentStyle] &lt;p&gt;Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.&lt;/p&gt;
-- @param newDeploymentGroupName [DeploymentGroupName] &lt;p&gt;The new name of the deployment group, if you want to change it.&lt;/p&gt;
-- @param onPremisesInstanceTagFilters [TagFilterList] &lt;p&gt;The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: currentDeploymentGroupName
function M.UpdateDeploymentGroupInput(applicationName, autoScalingGroups, loadBalancerInfo, currentDeploymentGroupName, blueGreenDeploymentConfiguration, deploymentConfigName, triggerConfigurations, alarmConfiguration, ec2TagFilters, serviceRoleArn, autoRollbackConfiguration, deploymentStyle, newDeploymentGroupName, onPremisesInstanceTagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeploymentGroupInput")
	local t = { 
		["applicationName"] = applicationName,
		["autoScalingGroups"] = autoScalingGroups,
		["loadBalancerInfo"] = loadBalancerInfo,
		["currentDeploymentGroupName"] = currentDeploymentGroupName,
		["blueGreenDeploymentConfiguration"] = blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = deploymentConfigName,
		["triggerConfigurations"] = triggerConfigurations,
		["alarmConfiguration"] = alarmConfiguration,
		["ec2TagFilters"] = ec2TagFilters,
		["serviceRoleArn"] = serviceRoleArn,
		["autoRollbackConfiguration"] = autoRollbackConfiguration,
		["deploymentStyle"] = deploymentStyle,
		["newDeploymentGroupName"] = newDeploymentGroupName,
		["onPremisesInstanceTagFilters"] = onPremisesInstanceTagFilters,
	}
	M.AssertUpdateDeploymentGroupInput(t)
	return t
end

local DeploymentLimitExceededException_keys = { nil }

function M.AssertDeploymentLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentLimitExceededException_keys[k], "DeploymentLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentLimitExceededException
-- &lt;p&gt;The number of allowed deployments was exceeded.&lt;/p&gt;
function M.DeploymentLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentLimitExceededException")
	local t = { 
	}
	M.AssertDeploymentLimitExceededException(t)
	return t
end

local RegisterApplicationRevisionInput_keys = { "applicationName" = true, "description" = true, "revision" = true, nil }

function M.AssertRegisterApplicationRevisionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterApplicationRevisionInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["revision"] then M.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(RegisterApplicationRevisionInput_keys[k], "RegisterApplicationRevisionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterApplicationRevisionInput
-- &lt;p&gt;Represents the input of a RegisterApplicationRevision operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A comment about the revision.&lt;/p&gt;
-- @param revision [RevisionLocation] &lt;p&gt;Information about the application revision to register, including type and location.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: revision
function M.RegisterApplicationRevisionInput(applicationName, description, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterApplicationRevisionInput")
	local t = { 
		["applicationName"] = applicationName,
		["description"] = description,
		["revision"] = revision,
	}
	M.AssertRegisterApplicationRevisionInput(t)
	return t
end

local InvalidDeploymentIdException_keys = { nil }

function M.AssertInvalidDeploymentIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeploymentIdException_keys[k], "InvalidDeploymentIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentIdException
-- &lt;p&gt;At least one of the deployment IDs was specified in an invalid format.&lt;/p&gt;
function M.InvalidDeploymentIdException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentIdException")
	local t = { 
	}
	M.AssertInvalidDeploymentIdException(t)
	return t
end

local GetApplicationRevisionOutput_keys = { "applicationName" = true, "revisionInfo" = true, "revision" = true, nil }

function M.AssertGetApplicationRevisionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationRevisionOutput to be of type 'table'")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["revisionInfo"] then M.AssertGenericRevisionInfo(struct["revisionInfo"]) end
	if struct["revision"] then M.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(GetApplicationRevisionOutput_keys[k], "GetApplicationRevisionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationRevisionOutput
-- &lt;p&gt;Represents the output of a GetApplicationRevision operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of the application that corresponds to the revision.&lt;/p&gt;
-- @param revisionInfo [GenericRevisionInfo] &lt;p&gt;General information about the revision.&lt;/p&gt;
-- @param revision [RevisionLocation] &lt;p&gt;Additional information about the revision, including type and location.&lt;/p&gt;
function M.GetApplicationRevisionOutput(applicationName, revisionInfo, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationRevisionOutput")
	local t = { 
		["applicationName"] = applicationName,
		["revisionInfo"] = revisionInfo,
		["revision"] = revision,
	}
	M.AssertGetApplicationRevisionOutput(t)
	return t
end

local DeploymentConfigLimitExceededException_keys = { nil }

function M.AssertDeploymentConfigLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentConfigLimitExceededException_keys[k], "DeploymentConfigLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigLimitExceededException
-- &lt;p&gt;The deployment configurations limit was exceeded.&lt;/p&gt;
function M.DeploymentConfigLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigLimitExceededException")
	local t = { 
	}
	M.AssertDeploymentConfigLimitExceededException(t)
	return t
end

local InvalidRoleException_keys = { nil }

function M.AssertInvalidRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRoleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRoleException_keys[k], "InvalidRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRoleException
-- &lt;p&gt;The service role ARN was specified in an invalid format. Or, if an Auto Scaling group was specified, the specified service role does not grant the appropriate permissions to Auto Scaling.&lt;/p&gt;
function M.InvalidRoleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRoleException")
	local t = { 
	}
	M.AssertInvalidRoleException(t)
	return t
end

local InvalidRevisionException_keys = { nil }

function M.AssertInvalidRevisionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRevisionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRevisionException_keys[k], "InvalidRevisionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRevisionException
-- &lt;p&gt;The revision was specified in an invalid format.&lt;/p&gt;
function M.InvalidRevisionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRevisionException")
	local t = { 
	}
	M.AssertInvalidRevisionException(t)
	return t
end

local InstanceNameAlreadyRegisteredException_keys = { nil }

function M.AssertInstanceNameAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNameAlreadyRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InstanceNameAlreadyRegisteredException_keys[k], "InstanceNameAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNameAlreadyRegisteredException
-- &lt;p&gt;The specified on-premises instance name is already registered.&lt;/p&gt;
function M.InstanceNameAlreadyRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNameAlreadyRegisteredException")
	local t = { 
	}
	M.AssertInstanceNameAlreadyRegisteredException(t)
	return t
end

local BatchGetApplicationsInput_keys = { "applicationNames" = true, nil }

function M.AssertBatchGetApplicationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationsInput to be of type 'table'")
	if struct["applicationNames"] then M.AssertApplicationsList(struct["applicationNames"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetApplicationsInput_keys[k], "BatchGetApplicationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationsInput
-- &lt;p&gt;Represents the input of a BatchGetApplications operation.&lt;/p&gt;
-- @param applicationNames [ApplicationsList] &lt;p&gt;A list of application names separated by spaces.&lt;/p&gt;
function M.BatchGetApplicationsInput(applicationNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationsInput")
	local t = { 
		["applicationNames"] = applicationNames,
	}
	M.AssertBatchGetApplicationsInput(t)
	return t
end

local InstanceDoesNotExistException_keys = { nil }

function M.AssertInstanceDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InstanceDoesNotExistException_keys[k], "InstanceDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceDoesNotExistException
-- &lt;p&gt;The specified instance does not exist in the deployment group.&lt;/p&gt;
function M.InstanceDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceDoesNotExistException")
	local t = { 
	}
	M.AssertInstanceDoesNotExistException(t)
	return t
end

local ListDeploymentInstancesInput_keys = { "instanceStatusFilter" = true, "deploymentId" = true, "nextToken" = true, "instanceTypeFilter" = true, nil }

function M.AssertListDeploymentInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentInstancesInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["instanceStatusFilter"] then M.AssertInstanceStatusList(struct["instanceStatusFilter"]) end
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["instanceTypeFilter"] then M.AssertInstanceTypeList(struct["instanceTypeFilter"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentInstancesInput_keys[k], "ListDeploymentInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentInstancesInput
-- &lt;p&gt;Represents the input of a ListDeploymentInstances operation.&lt;/p&gt;
-- @param instanceStatusFilter [InstanceStatusList] &lt;p&gt;A subset of instances to list by status:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending: Include those instance with pending deployments.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;InProgress: Include those instance where deployments are still in progress.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Succeeded: Include those instances with successful deployments.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Failed: Include those instance with failed deployments.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Skipped: Include those instance with skipped deployments.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Unknown: Include those instance with deployments in an unknown state.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;The unique ID of a deployment.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous list deployment instances call. It can be used to return the next set of deployment instances in the list.&lt;/p&gt;
-- @param instanceTypeFilter [InstanceTypeList] &lt;p&gt;The set of instances in a blue/green deployment, either those in the original environment (&quot;BLUE&quot;) or those in the replacement environment (&quot;GREEN&quot;), for which you want to view instance information.&lt;/p&gt;
-- Required parameter: deploymentId
function M.ListDeploymentInstancesInput(instanceStatusFilter, deploymentId, nextToken, instanceTypeFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentInstancesInput")
	local t = { 
		["instanceStatusFilter"] = instanceStatusFilter,
		["deploymentId"] = deploymentId,
		["nextToken"] = nextToken,
		["instanceTypeFilter"] = instanceTypeFilter,
	}
	M.AssertListDeploymentInstancesInput(t)
	return t
end

local ApplicationLimitExceededException_keys = { nil }

function M.AssertApplicationLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ApplicationLimitExceededException_keys[k], "ApplicationLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationLimitExceededException
-- &lt;p&gt;More applications were attempted to be created than are allowed.&lt;/p&gt;
function M.ApplicationLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationLimitExceededException")
	local t = { 
	}
	M.AssertApplicationLimitExceededException(t)
	return t
end

local InvalidInstanceNameException_keys = { nil }

function M.AssertInvalidInstanceNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidInstanceNameException_keys[k], "InvalidInstanceNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceNameException
-- &lt;p&gt;The specified on-premises instance name was specified in an invalid format.&lt;/p&gt;
function M.InvalidInstanceNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceNameException")
	local t = { 
	}
	M.AssertInvalidInstanceNameException(t)
	return t
end

local ApplicationNameRequiredException_keys = { nil }

function M.AssertApplicationNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ApplicationNameRequiredException_keys[k], "ApplicationNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationNameRequiredException
-- &lt;p&gt;The minimum number of required application names was not specified.&lt;/p&gt;
function M.ApplicationNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationNameRequiredException")
	local t = { 
	}
	M.AssertApplicationNameRequiredException(t)
	return t
end

local GetDeploymentInstanceOutput_keys = { "instanceSummary" = true, nil }

function M.AssertGetDeploymentInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentInstanceOutput to be of type 'table'")
	if struct["instanceSummary"] then M.AssertInstanceSummary(struct["instanceSummary"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentInstanceOutput_keys[k], "GetDeploymentInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentInstanceOutput
-- &lt;p&gt;Represents the output of a GetDeploymentInstance operation.&lt;/p&gt;
-- @param instanceSummary [InstanceSummary] &lt;p&gt;Information about the instance.&lt;/p&gt;
function M.GetDeploymentInstanceOutput(instanceSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentInstanceOutput")
	local t = { 
		["instanceSummary"] = instanceSummary,
	}
	M.AssertGetDeploymentInstanceOutput(t)
	return t
end

local InvalidTagFilterException_keys = { nil }

function M.AssertInvalidTagFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTagFilterException_keys[k], "InvalidTagFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagFilterException
-- &lt;p&gt;The specified tag filter was specified in an invalid format.&lt;/p&gt;
function M.InvalidTagFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagFilterException")
	local t = { 
	}
	M.AssertInvalidTagFilterException(t)
	return t
end

local CreateApplicationInput_keys = { "applicationName" = true, nil }

function M.AssertCreateApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	for k,_ in pairs(struct) do
		assert(CreateApplicationInput_keys[k], "CreateApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationInput
-- &lt;p&gt;Represents the input of a CreateApplication operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of the application. This name must be unique with the applicable IAM user or AWS account.&lt;/p&gt;
-- Required parameter: applicationName
function M.CreateApplicationInput(applicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationInput")
	local t = { 
		["applicationName"] = applicationName,
	}
	M.AssertCreateApplicationInput(t)
	return t
end

local CreateApplicationOutput_keys = { "applicationId" = true, nil }

function M.AssertCreateApplicationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationOutput to be of type 'table'")
	if struct["applicationId"] then M.AssertApplicationId(struct["applicationId"]) end
	for k,_ in pairs(struct) do
		assert(CreateApplicationOutput_keys[k], "CreateApplicationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationOutput
-- &lt;p&gt;Represents the output of a CreateApplication operation.&lt;/p&gt;
-- @param applicationId [ApplicationId] &lt;p&gt;A unique application ID.&lt;/p&gt;
function M.CreateApplicationOutput(applicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationOutput")
	local t = { 
		["applicationId"] = applicationId,
	}
	M.AssertCreateApplicationOutput(t)
	return t
end

local DeploymentInfo_keys = { "autoRollbackConfiguration" = true, "additionalDeploymentStatusInfo" = true, "creator" = true, "previousRevision" = true, "fileExistsBehavior" = true, "completeTime" = true, "applicationName" = true, "deploymentOverview" = true, "deploymentId" = true, "ignoreApplicationStopFailures" = true, "updateOutdatedInstancesOnly" = true, "rollbackInfo" = true, "targetInstances" = true, "revision" = true, "status" = true, "description" = true, "errorInformation" = true, "startTime" = true, "instanceTerminationWaitTimeStarted" = true, "deploymentGroupName" = true, "createTime" = true, "loadBalancerInfo" = true, "blueGreenDeploymentConfiguration" = true, "deploymentConfigName" = true, "deploymentStyle" = true, nil }

function M.AssertDeploymentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentInfo to be of type 'table'")
	if struct["autoRollbackConfiguration"] then M.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["additionalDeploymentStatusInfo"] then M.AssertAdditionalDeploymentStatusInfo(struct["additionalDeploymentStatusInfo"]) end
	if struct["creator"] then M.AssertDeploymentCreator(struct["creator"]) end
	if struct["previousRevision"] then M.AssertRevisionLocation(struct["previousRevision"]) end
	if struct["fileExistsBehavior"] then M.AssertFileExistsBehavior(struct["fileExistsBehavior"]) end
	if struct["completeTime"] then M.AssertTimestamp(struct["completeTime"]) end
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentOverview"] then M.AssertDeploymentOverview(struct["deploymentOverview"]) end
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	if struct["ignoreApplicationStopFailures"] then M.AssertBoolean(struct["ignoreApplicationStopFailures"]) end
	if struct["updateOutdatedInstancesOnly"] then M.AssertBoolean(struct["updateOutdatedInstancesOnly"]) end
	if struct["rollbackInfo"] then M.AssertRollbackInfo(struct["rollbackInfo"]) end
	if struct["targetInstances"] then M.AssertTargetInstances(struct["targetInstances"]) end
	if struct["revision"] then M.AssertRevisionLocation(struct["revision"]) end
	if struct["status"] then M.AssertDeploymentStatus(struct["status"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["errorInformation"] then M.AssertErrorInformation(struct["errorInformation"]) end
	if struct["startTime"] then M.AssertTimestamp(struct["startTime"]) end
	if struct["instanceTerminationWaitTimeStarted"] then M.AssertBoolean(struct["instanceTerminationWaitTimeStarted"]) end
	if struct["deploymentGroupName"] then M.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["createTime"] then M.AssertTimestamp(struct["createTime"]) end
	if struct["loadBalancerInfo"] then M.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["blueGreenDeploymentConfiguration"] then M.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["deploymentStyle"] then M.AssertDeploymentStyle(struct["deploymentStyle"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentInfo_keys[k], "DeploymentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentInfo
-- &lt;p&gt;Information about a deployment.&lt;/p&gt;
-- @param autoRollbackConfiguration [AutoRollbackConfiguration] &lt;p&gt;Information about the automatic rollback configuration associated with the deployment.&lt;/p&gt;
-- @param additionalDeploymentStatusInfo [AdditionalDeploymentStatusInfo] &lt;p&gt;Provides information about the results of a deployment, such as whether instances in the original environment in a blue/green deployment were not terminated.&lt;/p&gt;
-- @param creator [DeploymentCreator] &lt;p&gt;The means by which the deployment was created:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;user: A user created the deployment.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;autoscaling: Auto Scaling created the deployment.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;codeDeployRollback: A rollback process created the deployment.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param previousRevision [RevisionLocation] &lt;p&gt;Information about the application revision that was deployed to the deployment group before the most recent successful deployment.&lt;/p&gt;
-- @param fileExistsBehavior [FileExistsBehavior] &lt;p&gt;Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;DISALLOW: The deployment fails. This is also the default behavior if no option is specified.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param completeTime [Timestamp] &lt;p&gt;A timestamp indicating when the deployment was complete.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The application name.&lt;/p&gt;
-- @param deploymentOverview [DeploymentOverview] &lt;p&gt;A summary of the deployment status of the instances in the deployment.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;The deployment ID.&lt;/p&gt;
-- @param ignoreApplicationStopFailures [Boolean] &lt;p&gt;If true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.&lt;/p&gt; &lt;p&gt;If false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.&lt;/p&gt;
-- @param updateOutdatedInstancesOnly [Boolean] &lt;p&gt;Indicates whether only instances that are not running the latest application revision are to be deployed to.&lt;/p&gt;
-- @param rollbackInfo [RollbackInfo] &lt;p&gt;Information about a deployment rollback.&lt;/p&gt;
-- @param targetInstances [TargetInstances] &lt;p&gt;Information about the instances that belong to the replacement environment in a blue/green deployment.&lt;/p&gt;
-- @param revision [RevisionLocation] &lt;p&gt;Information about the location of stored application artifacts and the service from which to retrieve them.&lt;/p&gt;
-- @param status [DeploymentStatus] &lt;p&gt;The current state of the deployment as a whole.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A comment about the deployment.&lt;/p&gt;
-- @param errorInformation [ErrorInformation] &lt;p&gt;Information about any error associated with this deployment.&lt;/p&gt;
-- @param startTime [Timestamp] &lt;p&gt;A timestamp indicating when the deployment was deployed to the deployment group.&lt;/p&gt; &lt;p&gt;In some cases, the reported value of the start time may be later than the complete time. This is due to differences in the clock settings of back-end servers that participate in the deployment process.&lt;/p&gt;
-- @param instanceTerminationWaitTimeStarted [Boolean] &lt;p&gt;Indicates whether the wait period set for the termination of instances in the original environment has started. Status is 'false' if the KEEP_ALIVE option is specified; otherwise, 'true' as soon as the termination wait period starts.&lt;/p&gt;
-- @param deploymentGroupName [DeploymentGroupName] &lt;p&gt;The deployment group name.&lt;/p&gt;
-- @param createTime [Timestamp] &lt;p&gt;A timestamp indicating when the deployment was created.&lt;/p&gt;
-- @param loadBalancerInfo [LoadBalancerInfo] &lt;p&gt;Information about the load balancer used in the deployment.&lt;/p&gt;
-- @param blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] &lt;p&gt;Information about blue/green deployment options for this deployment.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The deployment configuration name.&lt;/p&gt;
-- @param deploymentStyle [DeploymentStyle] &lt;p&gt;Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.&lt;/p&gt;
function M.DeploymentInfo(autoRollbackConfiguration, additionalDeploymentStatusInfo, creator, previousRevision, fileExistsBehavior, completeTime, applicationName, deploymentOverview, deploymentId, ignoreApplicationStopFailures, updateOutdatedInstancesOnly, rollbackInfo, targetInstances, revision, status, description, errorInformation, startTime, instanceTerminationWaitTimeStarted, deploymentGroupName, createTime, loadBalancerInfo, blueGreenDeploymentConfiguration, deploymentConfigName, deploymentStyle, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentInfo")
	local t = { 
		["autoRollbackConfiguration"] = autoRollbackConfiguration,
		["additionalDeploymentStatusInfo"] = additionalDeploymentStatusInfo,
		["creator"] = creator,
		["previousRevision"] = previousRevision,
		["fileExistsBehavior"] = fileExistsBehavior,
		["completeTime"] = completeTime,
		["applicationName"] = applicationName,
		["deploymentOverview"] = deploymentOverview,
		["deploymentId"] = deploymentId,
		["ignoreApplicationStopFailures"] = ignoreApplicationStopFailures,
		["updateOutdatedInstancesOnly"] = updateOutdatedInstancesOnly,
		["rollbackInfo"] = rollbackInfo,
		["targetInstances"] = targetInstances,
		["revision"] = revision,
		["status"] = status,
		["description"] = description,
		["errorInformation"] = errorInformation,
		["startTime"] = startTime,
		["instanceTerminationWaitTimeStarted"] = instanceTerminationWaitTimeStarted,
		["deploymentGroupName"] = deploymentGroupName,
		["createTime"] = createTime,
		["loadBalancerInfo"] = loadBalancerInfo,
		["blueGreenDeploymentConfiguration"] = blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = deploymentConfigName,
		["deploymentStyle"] = deploymentStyle,
	}
	M.AssertDeploymentInfo(t)
	return t
end

local RevisionRequiredException_keys = { nil }

function M.AssertRevisionRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RevisionRequiredException_keys[k], "RevisionRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionRequiredException
-- &lt;p&gt;The revision ID was not specified.&lt;/p&gt;
function M.RevisionRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionRequiredException")
	local t = { 
	}
	M.AssertRevisionRequiredException(t)
	return t
end

local InstanceLimitExceededException_keys = { nil }

function M.AssertInstanceLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InstanceLimitExceededException_keys[k], "InstanceLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceLimitExceededException
-- &lt;p&gt;The maximum number of allowed on-premises instances in a single call was exceeded.&lt;/p&gt;
function M.InstanceLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceLimitExceededException")
	local t = { 
	}
	M.AssertInstanceLimitExceededException(t)
	return t
end

local InstanceInfo_keys = { "instanceArn" = true, "iamSessionArn" = true, "tags" = true, "registerTime" = true, "iamUserArn" = true, "deregisterTime" = true, "instanceName" = true, nil }

function M.AssertInstanceInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInfo to be of type 'table'")
	if struct["instanceArn"] then M.AssertInstanceArn(struct["instanceArn"]) end
	if struct["iamSessionArn"] then M.AssertIamSessionArn(struct["iamSessionArn"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	if struct["registerTime"] then M.AssertTimestamp(struct["registerTime"]) end
	if struct["iamUserArn"] then M.AssertIamUserArn(struct["iamUserArn"]) end
	if struct["deregisterTime"] then M.AssertTimestamp(struct["deregisterTime"]) end
	if struct["instanceName"] then M.AssertInstanceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(InstanceInfo_keys[k], "InstanceInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInfo
-- &lt;p&gt;Information about an on-premises instance.&lt;/p&gt;
-- @param instanceArn [InstanceArn] &lt;p&gt;The ARN of the on-premises instance.&lt;/p&gt;
-- @param iamSessionArn [IamSessionArn] &lt;p&gt;The ARN of the IAM session associated with the on-premises instance.&lt;/p&gt;
-- @param tags [TagList] &lt;p&gt;The tags currently associated with the on-premises instance.&lt;/p&gt;
-- @param registerTime [Timestamp] &lt;p&gt;The time at which the on-premises instance was registered.&lt;/p&gt;
-- @param iamUserArn [IamUserArn] &lt;p&gt;The IAM user ARN associated with the on-premises instance.&lt;/p&gt;
-- @param deregisterTime [Timestamp] &lt;p&gt;If the on-premises instance was deregistered, the time at which the on-premises instance was deregistered.&lt;/p&gt;
-- @param instanceName [InstanceName] &lt;p&gt;The name of the on-premises instance.&lt;/p&gt;
function M.InstanceInfo(instanceArn, iamSessionArn, tags, registerTime, iamUserArn, deregisterTime, instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceInfo")
	local t = { 
		["instanceArn"] = instanceArn,
		["iamSessionArn"] = iamSessionArn,
		["tags"] = tags,
		["registerTime"] = registerTime,
		["iamUserArn"] = iamUserArn,
		["deregisterTime"] = deregisterTime,
		["instanceName"] = instanceName,
	}
	M.AssertInstanceInfo(t)
	return t
end

local DeploymentGroupLimitExceededException_keys = { nil }

function M.AssertDeploymentGroupLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentGroupLimitExceededException_keys[k], "DeploymentGroupLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupLimitExceededException
-- &lt;p&gt; The deployment groups limit was exceeded.&lt;/p&gt;
function M.DeploymentGroupLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupLimitExceededException")
	local t = { 
	}
	M.AssertDeploymentGroupLimitExceededException(t)
	return t
end

local BatchGetOnPremisesInstancesOutput_keys = { "instanceInfos" = true, nil }

function M.AssertBatchGetOnPremisesInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetOnPremisesInstancesOutput to be of type 'table'")
	if struct["instanceInfos"] then M.AssertInstanceInfoList(struct["instanceInfos"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetOnPremisesInstancesOutput_keys[k], "BatchGetOnPremisesInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetOnPremisesInstancesOutput
-- &lt;p&gt;Represents the output of a BatchGetOnPremisesInstances operation.&lt;/p&gt;
-- @param instanceInfos [InstanceInfoList] &lt;p&gt;Information about the on-premises instances.&lt;/p&gt;
function M.BatchGetOnPremisesInstancesOutput(instanceInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetOnPremisesInstancesOutput")
	local t = { 
		["instanceInfos"] = instanceInfos,
	}
	M.AssertBatchGetOnPremisesInstancesOutput(t)
	return t
end

local DeploymentGroupDoesNotExistException_keys = { nil }

function M.AssertDeploymentGroupDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentGroupDoesNotExistException_keys[k], "DeploymentGroupDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupDoesNotExistException
-- &lt;p&gt;The named deployment group does not exist with the applicable IAM user or AWS account.&lt;/p&gt;
function M.DeploymentGroupDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupDoesNotExistException")
	local t = { 
	}
	M.AssertDeploymentGroupDoesNotExistException(t)
	return t
end

local ListApplicationsOutput_keys = { "applications" = true, "nextToken" = true, nil }

function M.AssertListApplicationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsOutput to be of type 'table'")
	if struct["applications"] then M.AssertApplicationsList(struct["applications"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListApplicationsOutput_keys[k], "ListApplicationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsOutput
-- &lt;p&gt;Represents the output of a ListApplications operation.&lt;/p&gt;
-- @param applications [ApplicationsList] &lt;p&gt;A list of application names.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list applications call to return the next set of applications, will also be returned. in the list.&lt;/p&gt;
function M.ListApplicationsOutput(applications, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationsOutput")
	local t = { 
		["applications"] = applications,
		["nextToken"] = nextToken,
	}
	M.AssertListApplicationsOutput(t)
	return t
end

local LoadBalancerInfo_keys = { "elbInfoList" = true, nil }

function M.AssertLoadBalancerInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerInfo to be of type 'table'")
	if struct["elbInfoList"] then M.AssertELBInfoList(struct["elbInfoList"]) end
	for k,_ in pairs(struct) do
		assert(LoadBalancerInfo_keys[k], "LoadBalancerInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerInfo
-- &lt;p&gt;Information about the load balancer used in a deployment.&lt;/p&gt;
-- @param elbInfoList [ELBInfoList] &lt;p&gt;An array containing information about the load balancer in Elastic Load Balancing to use in a deployment.&lt;/p&gt;
function M.LoadBalancerInfo(elbInfoList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancerInfo")
	local t = { 
		["elbInfoList"] = elbInfoList,
	}
	M.AssertLoadBalancerInfo(t)
	return t
end

local DeploymentIdRequiredException_keys = { nil }

function M.AssertDeploymentIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentIdRequiredException_keys[k], "DeploymentIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentIdRequiredException
-- &lt;p&gt;At least one deployment ID must be specified.&lt;/p&gt;
function M.DeploymentIdRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentIdRequiredException")
	local t = { 
	}
	M.AssertDeploymentIdRequiredException(t)
	return t
end

local BlueInstanceTerminationOption_keys = { "action" = true, "terminationWaitTimeInMinutes" = true, nil }

function M.AssertBlueInstanceTerminationOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlueInstanceTerminationOption to be of type 'table'")
	if struct["action"] then M.AssertInstanceAction(struct["action"]) end
	if struct["terminationWaitTimeInMinutes"] then M.AssertDuration(struct["terminationWaitTimeInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(BlueInstanceTerminationOption_keys[k], "BlueInstanceTerminationOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlueInstanceTerminationOption
-- &lt;p&gt;Information about whether instances in the original environment are terminated when a blue/green deployment is successful.&lt;/p&gt;
-- @param action [InstanceAction] &lt;p&gt;The action to take on instances in the original environment after a successful blue/green deployment.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;TERMINATE: Instances are terminated after a specified wait time.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;KEEP_ALIVE: Instances are left running after they are deregistered from the load balancer and removed from the deployment group.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param terminationWaitTimeInMinutes [Duration] &lt;p&gt;The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.&lt;/p&gt;
function M.BlueInstanceTerminationOption(action, terminationWaitTimeInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlueInstanceTerminationOption")
	local t = { 
		["action"] = action,
		["terminationWaitTimeInMinutes"] = terminationWaitTimeInMinutes,
	}
	M.AssertBlueInstanceTerminationOption(t)
	return t
end

local RevisionLocation_keys = { "revisionType" = true, "s3Location" = true, "gitHubLocation" = true, nil }

function M.AssertRevisionLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionLocation to be of type 'table'")
	if struct["revisionType"] then M.AssertRevisionLocationType(struct["revisionType"]) end
	if struct["s3Location"] then M.AssertS3Location(struct["s3Location"]) end
	if struct["gitHubLocation"] then M.AssertGitHubLocation(struct["gitHubLocation"]) end
	for k,_ in pairs(struct) do
		assert(RevisionLocation_keys[k], "RevisionLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionLocation
-- &lt;p&gt;Information about the location of an application revision.&lt;/p&gt;
-- @param revisionType [RevisionLocationType] &lt;p&gt;The type of application revision:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;S3: An application revision stored in Amazon S3.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;GitHub: An application revision stored in GitHub.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param s3Location [S3Location] &lt;p&gt;Information about the location of application artifacts stored in Amazon S3. &lt;/p&gt;
-- @param gitHubLocation [GitHubLocation] &lt;p&gt;Information about the location of application artifacts stored in GitHub.&lt;/p&gt;
function M.RevisionLocation(revisionType, s3Location, gitHubLocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionLocation")
	local t = { 
		["revisionType"] = revisionType,
		["s3Location"] = s3Location,
		["gitHubLocation"] = gitHubLocation,
	}
	M.AssertRevisionLocation(t)
	return t
end

local InvalidInstanceStatusException_keys = { nil }

function M.AssertInvalidInstanceStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidInstanceStatusException_keys[k], "InvalidInstanceStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceStatusException
-- &lt;p&gt;The specified instance status does not exist.&lt;/p&gt;
function M.InvalidInstanceStatusException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceStatusException")
	local t = { 
	}
	M.AssertInvalidInstanceStatusException(t)
	return t
end

local RevisionDoesNotExistException_keys = { nil }

function M.AssertRevisionDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RevisionDoesNotExistException_keys[k], "RevisionDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionDoesNotExistException
-- &lt;p&gt;The named revision does not exist with the applicable IAM user or AWS account.&lt;/p&gt;
function M.RevisionDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionDoesNotExistException")
	local t = { 
	}
	M.AssertRevisionDoesNotExistException(t)
	return t
end

local DeregisterOnPremisesInstanceInput_keys = { "instanceName" = true, nil }

function M.AssertDeregisterOnPremisesInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterOnPremisesInstanceInput to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then M.AssertInstanceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterOnPremisesInstanceInput_keys[k], "DeregisterOnPremisesInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterOnPremisesInstanceInput
-- &lt;p&gt;Represents the input of a DeregisterOnPremisesInstance operation.&lt;/p&gt;
-- @param instanceName [InstanceName] &lt;p&gt;The name of the on-premises instance to deregister.&lt;/p&gt;
-- Required parameter: instanceName
function M.DeregisterOnPremisesInstanceInput(instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterOnPremisesInstanceInput")
	local t = { 
		["instanceName"] = instanceName,
	}
	M.AssertDeregisterOnPremisesInstanceInput(t)
	return t
end

local GitHubAccountTokenDoesNotExistException_keys = { nil }

function M.AssertGitHubAccountTokenDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GitHubAccountTokenDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GitHubAccountTokenDoesNotExistException_keys[k], "GitHubAccountTokenDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GitHubAccountTokenDoesNotExistException
-- &lt;p&gt;No GitHub account connection exists with the named specified in the call.&lt;/p&gt;
function M.GitHubAccountTokenDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GitHubAccountTokenDoesNotExistException")
	local t = { 
	}
	M.AssertGitHubAccountTokenDoesNotExistException(t)
	return t
end

local BatchGetDeploymentsInput_keys = { "deploymentIds" = true, nil }

function M.AssertBatchGetDeploymentsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentsInput to be of type 'table'")
	if struct["deploymentIds"] then M.AssertDeploymentsList(struct["deploymentIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetDeploymentsInput_keys[k], "BatchGetDeploymentsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentsInput
-- &lt;p&gt;Represents the input of a BatchGetDeployments operation.&lt;/p&gt;
-- @param deploymentIds [DeploymentsList] &lt;p&gt;A list of deployment IDs, separated by spaces.&lt;/p&gt;
function M.BatchGetDeploymentsInput(deploymentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentsInput")
	local t = { 
		["deploymentIds"] = deploymentIds,
	}
	M.AssertBatchGetDeploymentsInput(t)
	return t
end

local ContinueDeploymentInput_keys = { "deploymentId" = true, nil }

function M.AssertContinueDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueDeploymentInput to be of type 'table'")
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(ContinueDeploymentInput_keys[k], "ContinueDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueDeploymentInput
--  
-- @param deploymentId [DeploymentId] &lt;p&gt;The deployment ID of the blue/green deployment for which you want to start rerouting traffic to the replacement environment.&lt;/p&gt;
function M.ContinueDeploymentInput(deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueDeploymentInput")
	local t = { 
		["deploymentId"] = deploymentId,
	}
	M.AssertContinueDeploymentInput(t)
	return t
end

local ListDeploymentConfigsInput_keys = { "nextToken" = true, nil }

function M.AssertListDeploymentConfigsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentConfigsInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentConfigsInput_keys[k], "ListDeploymentConfigsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentConfigsInput
-- &lt;p&gt;Represents the input of a ListDeploymentConfigs operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous list deployment configurations call. It can be used to return the next set of deployment configurations in the list. &lt;/p&gt;
function M.ListDeploymentConfigsInput(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentConfigsInput")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListDeploymentConfigsInput(t)
	return t
end

local GetDeploymentInstanceInput_keys = { "instanceId" = true, "deploymentId" = true, nil }

function M.AssertGetDeploymentInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentInstanceInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	assert(struct["instanceId"], "Expected key instanceId to exist in table")
	if struct["instanceId"] then M.AssertInstanceId(struct["instanceId"]) end
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentInstanceInput_keys[k], "GetDeploymentInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentInstanceInput
-- &lt;p&gt;Represents the input of a GetDeploymentInstance operation.&lt;/p&gt;
-- @param instanceId [InstanceId] &lt;p&gt;The unique ID of an instance in the deployment group.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;The unique ID of a deployment.&lt;/p&gt;
-- Required parameter: deploymentId
-- Required parameter: instanceId
function M.GetDeploymentInstanceInput(instanceId, deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentInstanceInput")
	local t = { 
		["instanceId"] = instanceId,
		["deploymentId"] = deploymentId,
	}
	M.AssertGetDeploymentInstanceInput(t)
	return t
end

local GitHubLocation_keys = { "commitId" = true, "repository" = true, nil }

function M.AssertGitHubLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GitHubLocation to be of type 'table'")
	if struct["commitId"] then M.AssertCommitId(struct["commitId"]) end
	if struct["repository"] then M.AssertRepository(struct["repository"]) end
	for k,_ in pairs(struct) do
		assert(GitHubLocation_keys[k], "GitHubLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GitHubLocation
-- &lt;p&gt;Information about the location of application artifacts stored in GitHub.&lt;/p&gt;
-- @param commitId [CommitId] &lt;p&gt;The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the application revision.&lt;/p&gt;
-- @param repository [Repository] &lt;p&gt;The GitHub account and repository pair that stores a reference to the commit that represents the bundled artifacts for the application revision. &lt;/p&gt; &lt;p&gt;Specified as account/repository.&lt;/p&gt;
function M.GitHubLocation(commitId, repository, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GitHubLocation")
	local t = { 
		["commitId"] = commitId,
		["repository"] = repository,
	}
	M.AssertGitHubLocation(t)
	return t
end

local CreateDeploymentGroupOutput_keys = { "deploymentGroupId" = true, nil }

function M.AssertCreateDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentGroupOutput to be of type 'table'")
	if struct["deploymentGroupId"] then M.AssertDeploymentGroupId(struct["deploymentGroupId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentGroupOutput_keys[k], "CreateDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentGroupOutput
-- &lt;p&gt;Represents the output of a CreateDeploymentGroup operation.&lt;/p&gt;
-- @param deploymentGroupId [DeploymentGroupId] &lt;p&gt;A unique deployment group ID.&lt;/p&gt;
function M.CreateDeploymentGroupOutput(deploymentGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentGroupOutput")
	local t = { 
		["deploymentGroupId"] = deploymentGroupId,
	}
	M.AssertCreateDeploymentGroupOutput(t)
	return t
end

local BatchGetApplicationRevisionsOutput_keys = { "applicationName" = true, "errorMessage" = true, "revisions" = true, nil }

function M.AssertBatchGetApplicationRevisionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationRevisionsOutput to be of type 'table'")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["errorMessage"] then M.AssertErrorMessage(struct["errorMessage"]) end
	if struct["revisions"] then M.AssertRevisionInfoList(struct["revisions"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetApplicationRevisionsOutput_keys[k], "BatchGetApplicationRevisionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationRevisionsOutput
-- &lt;p&gt;Represents the output of a BatchGetApplicationRevisions operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of the application that corresponds to the revisions.&lt;/p&gt;
-- @param errorMessage [ErrorMessage] &lt;p&gt;Information about errors that may have occurred during the API call.&lt;/p&gt;
-- @param revisions [RevisionInfoList] &lt;p&gt;Additional information about the revisions, including the type and location.&lt;/p&gt;
function M.BatchGetApplicationRevisionsOutput(applicationName, errorMessage, revisions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationRevisionsOutput")
	local t = { 
		["applicationName"] = applicationName,
		["errorMessage"] = errorMessage,
		["revisions"] = revisions,
	}
	M.AssertBatchGetApplicationRevisionsOutput(t)
	return t
end

local InvalidLoadBalancerInfoException_keys = { nil }

function M.AssertInvalidLoadBalancerInfoException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLoadBalancerInfoException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidLoadBalancerInfoException_keys[k], "InvalidLoadBalancerInfoException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLoadBalancerInfoException
-- &lt;p&gt;An invalid load balancer name, or no load balancer name, was specified.&lt;/p&gt;
function M.InvalidLoadBalancerInfoException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLoadBalancerInfoException")
	local t = { 
	}
	M.AssertInvalidLoadBalancerInfoException(t)
	return t
end

local CreateDeploymentInput_keys = { "applicationName" = true, "autoRollbackConfiguration" = true, "description" = true, "deploymentConfigName" = true, "ignoreApplicationStopFailures" = true, "updateOutdatedInstancesOnly" = true, "targetInstances" = true, "deploymentGroupName" = true, "fileExistsBehavior" = true, "revision" = true, nil }

function M.AssertCreateDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["autoRollbackConfiguration"] then M.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["ignoreApplicationStopFailures"] then M.AssertBoolean(struct["ignoreApplicationStopFailures"]) end
	if struct["updateOutdatedInstancesOnly"] then M.AssertBoolean(struct["updateOutdatedInstancesOnly"]) end
	if struct["targetInstances"] then M.AssertTargetInstances(struct["targetInstances"]) end
	if struct["deploymentGroupName"] then M.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["fileExistsBehavior"] then M.AssertFileExistsBehavior(struct["fileExistsBehavior"]) end
	if struct["revision"] then M.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentInput_keys[k], "CreateDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentInput
-- &lt;p&gt;Represents the input of a CreateDeployment operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param autoRollbackConfiguration [AutoRollbackConfiguration] &lt;p&gt;Configuration information for an automatic rollback that is added when a deployment is created.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A comment about the deployment.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;The name of a deployment configuration associated with the applicable IAM user or AWS account.&lt;/p&gt; &lt;p&gt;If not specified, the value configured in the deployment group will be used as the default. If the deployment group does not have a deployment configuration associated with it, then CodeDeployDefault.OneAtATime will be used by default.&lt;/p&gt;
-- @param ignoreApplicationStopFailures [Boolean] &lt;p&gt;If set to true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.&lt;/p&gt; &lt;p&gt;If set to false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to fail to an instance, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.&lt;/p&gt;
-- @param updateOutdatedInstancesOnly [Boolean] &lt;p&gt;Indicates whether to deploy to all instances or only to instances that are not running the latest application revision.&lt;/p&gt;
-- @param targetInstances [TargetInstances] &lt;p&gt;Information about the instances that will belong to the replacement environment in a blue/green deployment.&lt;/p&gt;
-- @param deploymentGroupName [DeploymentGroupName] &lt;p&gt;The name of the deployment group.&lt;/p&gt;
-- @param fileExistsBehavior [FileExistsBehavior] &lt;p&gt;Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.&lt;/p&gt; &lt;p&gt;The fileExistsBehavior parameter takes any of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;DISALLOW: The deployment fails. This is also the default behavior if no option is specified.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param revision [RevisionLocation] &lt;p&gt;The type and location of the revision to deploy.&lt;/p&gt;
-- Required parameter: applicationName
function M.CreateDeploymentInput(applicationName, autoRollbackConfiguration, description, deploymentConfigName, ignoreApplicationStopFailures, updateOutdatedInstancesOnly, targetInstances, deploymentGroupName, fileExistsBehavior, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentInput")
	local t = { 
		["applicationName"] = applicationName,
		["autoRollbackConfiguration"] = autoRollbackConfiguration,
		["description"] = description,
		["deploymentConfigName"] = deploymentConfigName,
		["ignoreApplicationStopFailures"] = ignoreApplicationStopFailures,
		["updateOutdatedInstancesOnly"] = updateOutdatedInstancesOnly,
		["targetInstances"] = targetInstances,
		["deploymentGroupName"] = deploymentGroupName,
		["fileExistsBehavior"] = fileExistsBehavior,
		["revision"] = revision,
	}
	M.AssertCreateDeploymentInput(t)
	return t
end

local DeleteDeploymentGroupOutput_keys = { "hooksNotCleanedUp" = true, nil }

function M.AssertDeleteDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentGroupOutput to be of type 'table'")
	if struct["hooksNotCleanedUp"] then M.AssertAutoScalingGroupList(struct["hooksNotCleanedUp"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDeploymentGroupOutput_keys[k], "DeleteDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentGroupOutput
-- &lt;p&gt;Represents the output of a DeleteDeploymentGroup operation.&lt;/p&gt;
-- @param hooksNotCleanedUp [AutoScalingGroupList] &lt;p&gt;If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group.&lt;/p&gt;
function M.DeleteDeploymentGroupOutput(hooksNotCleanedUp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeploymentGroupOutput")
	local t = { 
		["hooksNotCleanedUp"] = hooksNotCleanedUp,
	}
	M.AssertDeleteDeploymentGroupOutput(t)
	return t
end

local BatchGetDeploymentGroupsOutput_keys = { "errorMessage" = true, "deploymentGroupsInfo" = true, nil }

function M.AssertBatchGetDeploymentGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentGroupsOutput to be of type 'table'")
	if struct["errorMessage"] then M.AssertErrorMessage(struct["errorMessage"]) end
	if struct["deploymentGroupsInfo"] then M.AssertDeploymentGroupInfoList(struct["deploymentGroupsInfo"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetDeploymentGroupsOutput_keys[k], "BatchGetDeploymentGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentGroupsOutput
-- &lt;p&gt;Represents the output of a BatchGetDeploymentGroups operation.&lt;/p&gt;
-- @param errorMessage [ErrorMessage] &lt;p&gt;Information about errors that may have occurred during the API call.&lt;/p&gt;
-- @param deploymentGroupsInfo [DeploymentGroupInfoList] &lt;p&gt;Information about the deployment groups.&lt;/p&gt;
function M.BatchGetDeploymentGroupsOutput(errorMessage, deploymentGroupsInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentGroupsOutput")
	local t = { 
		["errorMessage"] = errorMessage,
		["deploymentGroupsInfo"] = deploymentGroupsInfo,
	}
	M.AssertBatchGetDeploymentGroupsOutput(t)
	return t
end

local DeploymentConfigAlreadyExistsException_keys = { nil }

function M.AssertDeploymentConfigAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentConfigAlreadyExistsException_keys[k], "DeploymentConfigAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigAlreadyExistsException
-- &lt;p&gt;A deployment configuration with the specified name already exists with the applicable IAM user or AWS account.&lt;/p&gt;
function M.DeploymentConfigAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigAlreadyExistsException")
	local t = { 
	}
	M.AssertDeploymentConfigAlreadyExistsException(t)
	return t
end

local InvalidInstanceTypeException_keys = { nil }

function M.AssertInvalidInstanceTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidInstanceTypeException_keys[k], "InvalidInstanceTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceTypeException
-- &lt;p&gt;An invalid instance type was specified for instances in a blue/green deployment. Valid values include &quot;Blue&quot; for an original environment and &quot;Green&quot; for a replacement environment.&lt;/p&gt;
function M.InvalidInstanceTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceTypeException")
	local t = { 
	}
	M.AssertInvalidInstanceTypeException(t)
	return t
end

local CreateDeploymentGroupInput_keys = { "applicationName" = true, "autoScalingGroups" = true, "loadBalancerInfo" = true, "blueGreenDeploymentConfiguration" = true, "deploymentConfigName" = true, "triggerConfigurations" = true, "alarmConfiguration" = true, "ec2TagFilters" = true, "autoRollbackConfiguration" = true, "deploymentStyle" = true, "serviceRoleArn" = true, "deploymentGroupName" = true, "onPremisesInstanceTagFilters" = true, nil }

function M.AssertCreateDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupName"], "Expected key deploymentGroupName to exist in table")
	assert(struct["serviceRoleArn"], "Expected key serviceRoleArn to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["autoScalingGroups"] then M.AssertAutoScalingGroupNameList(struct["autoScalingGroups"]) end
	if struct["loadBalancerInfo"] then M.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["blueGreenDeploymentConfiguration"] then M.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then M.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["triggerConfigurations"] then M.AssertTriggerConfigList(struct["triggerConfigurations"]) end
	if struct["alarmConfiguration"] then M.AssertAlarmConfiguration(struct["alarmConfiguration"]) end
	if struct["ec2TagFilters"] then M.AssertEC2TagFilterList(struct["ec2TagFilters"]) end
	if struct["autoRollbackConfiguration"] then M.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["deploymentStyle"] then M.AssertDeploymentStyle(struct["deploymentStyle"]) end
	if struct["serviceRoleArn"] then M.AssertRole(struct["serviceRoleArn"]) end
	if struct["deploymentGroupName"] then M.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["onPremisesInstanceTagFilters"] then M.AssertTagFilterList(struct["onPremisesInstanceTagFilters"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentGroupInput_keys[k], "CreateDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentGroupInput
-- &lt;p&gt;Represents the input of a CreateDeploymentGroup operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param autoScalingGroups [AutoScalingGroupNameList] &lt;p&gt;A list of associated Auto Scaling groups.&lt;/p&gt;
-- @param loadBalancerInfo [LoadBalancerInfo] &lt;p&gt;Information about the load balancer used in a deployment.&lt;/p&gt;
-- @param blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] &lt;p&gt;Information about blue/green deployment options for a deployment group.&lt;/p&gt;
-- @param deploymentConfigName [DeploymentConfigName] &lt;p&gt;If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation.&lt;/p&gt; &lt;p&gt;CodeDeployDefault.OneAtATime is the default deployment configuration. It is used if a configuration isn't specified for the deployment or the deployment group.&lt;/p&gt; &lt;p&gt;For more information about the predefined deployment configurations in AWS CodeDeploy, see &lt;a href=&quot;http://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html&quot;&gt;Working with Deployment Groups in AWS CodeDeploy&lt;/a&gt; in the AWS CodeDeploy User Guide.&lt;/p&gt;
-- @param triggerConfigurations [TriggerConfigList] &lt;p&gt;Information about triggers to create when the deployment group is created. For examples, see &lt;a href=&quot;http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html&quot;&gt;Create a Trigger for an AWS CodeDeploy Event&lt;/a&gt; in the AWS CodeDeploy User Guide.&lt;/p&gt;
-- @param alarmConfiguration [AlarmConfiguration] &lt;p&gt;Information to add about Amazon CloudWatch alarms when the deployment group is created.&lt;/p&gt;
-- @param ec2TagFilters [EC2TagFilterList] &lt;p&gt;The Amazon EC2 tags on which to filter. The deployment group will include EC2 instances with any of the specified tags.&lt;/p&gt;
-- @param autoRollbackConfiguration [AutoRollbackConfiguration] &lt;p&gt;Configuration information for an automatic rollback that is added when a deployment group is created.&lt;/p&gt;
-- @param deploymentStyle [DeploymentStyle] &lt;p&gt;Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.&lt;/p&gt;
-- @param serviceRoleArn [Role] &lt;p&gt;A service role ARN that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.&lt;/p&gt;
-- @param deploymentGroupName [DeploymentGroupName] &lt;p&gt;The name of a new deployment group for the specified application.&lt;/p&gt;
-- @param onPremisesInstanceTagFilters [TagFilterList] &lt;p&gt;The on-premises instance tags on which to filter. The deployment group will include on-premises instances with any of the specified tags.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: deploymentGroupName
-- Required parameter: serviceRoleArn
function M.CreateDeploymentGroupInput(applicationName, autoScalingGroups, loadBalancerInfo, blueGreenDeploymentConfiguration, deploymentConfigName, triggerConfigurations, alarmConfiguration, ec2TagFilters, autoRollbackConfiguration, deploymentStyle, serviceRoleArn, deploymentGroupName, onPremisesInstanceTagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentGroupInput")
	local t = { 
		["applicationName"] = applicationName,
		["autoScalingGroups"] = autoScalingGroups,
		["loadBalancerInfo"] = loadBalancerInfo,
		["blueGreenDeploymentConfiguration"] = blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = deploymentConfigName,
		["triggerConfigurations"] = triggerConfigurations,
		["alarmConfiguration"] = alarmConfiguration,
		["ec2TagFilters"] = ec2TagFilters,
		["autoRollbackConfiguration"] = autoRollbackConfiguration,
		["deploymentStyle"] = deploymentStyle,
		["serviceRoleArn"] = serviceRoleArn,
		["deploymentGroupName"] = deploymentGroupName,
		["onPremisesInstanceTagFilters"] = onPremisesInstanceTagFilters,
	}
	M.AssertCreateDeploymentGroupInput(t)
	return t
end

local DeploymentGroupAlreadyExistsException_keys = { nil }

function M.AssertDeploymentGroupAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentGroupAlreadyExistsException_keys[k], "DeploymentGroupAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupAlreadyExistsException
-- &lt;p&gt;A deployment group with the specified name already exists with the applicable IAM user or AWS account.&lt;/p&gt;
function M.DeploymentGroupAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupAlreadyExistsException")
	local t = { 
	}
	M.AssertDeploymentGroupAlreadyExistsException(t)
	return t
end

local BatchGetApplicationRevisionsInput_keys = { "applicationName" = true, "revisions" = true, nil }

function M.AssertBatchGetApplicationRevisionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationRevisionsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["revisions"], "Expected key revisions to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["revisions"] then M.AssertRevisionLocationList(struct["revisions"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetApplicationRevisionsInput_keys[k], "BatchGetApplicationRevisionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationRevisionsInput
-- &lt;p&gt;Represents the input of a BatchGetApplicationRevisions operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application about which to get revision information.&lt;/p&gt;
-- @param revisions [RevisionLocationList] &lt;p&gt;Information to get about the application revisions, including type and location.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: revisions
function M.BatchGetApplicationRevisionsInput(applicationName, revisions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationRevisionsInput")
	local t = { 
		["applicationName"] = applicationName,
		["revisions"] = revisions,
	}
	M.AssertBatchGetApplicationRevisionsInput(t)
	return t
end

local UpdateDeploymentGroupOutput_keys = { "hooksNotCleanedUp" = true, nil }

function M.AssertUpdateDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeploymentGroupOutput to be of type 'table'")
	if struct["hooksNotCleanedUp"] then M.AssertAutoScalingGroupList(struct["hooksNotCleanedUp"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDeploymentGroupOutput_keys[k], "UpdateDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeploymentGroupOutput
-- &lt;p&gt;Represents the output of an UpdateDeploymentGroup operation.&lt;/p&gt;
-- @param hooksNotCleanedUp [AutoScalingGroupList] &lt;p&gt;If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.&lt;/p&gt;
function M.UpdateDeploymentGroupOutput(hooksNotCleanedUp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeploymentGroupOutput")
	local t = { 
		["hooksNotCleanedUp"] = hooksNotCleanedUp,
	}
	M.AssertUpdateDeploymentGroupOutput(t)
	return t
end

local ListDeploymentConfigsOutput_keys = { "nextToken" = true, "deploymentConfigsList" = true, nil }

function M.AssertListDeploymentConfigsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentConfigsOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["deploymentConfigsList"] then M.AssertDeploymentConfigsList(struct["deploymentConfigsList"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentConfigsOutput_keys[k], "ListDeploymentConfigsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentConfigsOutput
-- &lt;p&gt;Represents the output of a ListDeploymentConfigs operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment configurations call to return the next set of deployment configurations in the list.&lt;/p&gt;
-- @param deploymentConfigsList [DeploymentConfigsList] &lt;p&gt;A list of deployment configurations, including built-in configurations such as CodeDeployDefault.OneAtATime.&lt;/p&gt;
function M.ListDeploymentConfigsOutput(nextToken, deploymentConfigsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentConfigsOutput")
	local t = { 
		["nextToken"] = nextToken,
		["deploymentConfigsList"] = deploymentConfigsList,
	}
	M.AssertListDeploymentConfigsOutput(t)
	return t
end

local DeleteDeploymentGroupInput_keys = { "applicationName" = true, "deploymentGroupName" = true, nil }

function M.AssertDeleteDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupName"], "Expected key deploymentGroupName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupName"] then M.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDeploymentGroupInput_keys[k], "DeleteDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentGroupInput
-- &lt;p&gt;Represents the input of a DeleteDeploymentGroup operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param deploymentGroupName [DeploymentGroupName] &lt;p&gt;The name of an existing deployment group for the specified application.&lt;/p&gt;
-- Required parameter: applicationName
-- Required parameter: deploymentGroupName
function M.DeleteDeploymentGroupInput(applicationName, deploymentGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeploymentGroupInput")
	local t = { 
		["applicationName"] = applicationName,
		["deploymentGroupName"] = deploymentGroupName,
	}
	M.AssertDeleteDeploymentGroupInput(t)
	return t
end

local StopDeploymentOutput_keys = { "status" = true, "statusMessage" = true, nil }

function M.AssertStopDeploymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDeploymentOutput to be of type 'table'")
	if struct["status"] then M.AssertStopStatus(struct["status"]) end
	if struct["statusMessage"] then M.AssertMessage(struct["statusMessage"]) end
	for k,_ in pairs(struct) do
		assert(StopDeploymentOutput_keys[k], "StopDeploymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDeploymentOutput
-- &lt;p&gt;Represents the output of a StopDeployment operation.&lt;/p&gt;
-- @param status [StopStatus] &lt;p&gt;The status of the stop deployment operation:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending: The stop operation is pending.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Succeeded: The stop operation was successful.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param statusMessage [Message] &lt;p&gt;An accompanying status message.&lt;/p&gt;
function M.StopDeploymentOutput(status, statusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDeploymentOutput")
	local t = { 
		["status"] = status,
		["statusMessage"] = statusMessage,
	}
	M.AssertStopDeploymentOutput(t)
	return t
end

local CreateDeploymentOutput_keys = { "deploymentId" = true, nil }

function M.AssertCreateDeploymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentOutput to be of type 'table'")
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentOutput_keys[k], "CreateDeploymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentOutput
-- &lt;p&gt;Represents the output of a CreateDeployment operation.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;A unique deployment ID.&lt;/p&gt;
function M.CreateDeploymentOutput(deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentOutput")
	local t = { 
		["deploymentId"] = deploymentId,
	}
	M.AssertCreateDeploymentOutput(t)
	return t
end

local ListDeploymentsOutput_keys = { "nextToken" = true, "deployments" = true, nil }

function M.AssertListDeploymentsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["deployments"] then M.AssertDeploymentsList(struct["deployments"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentsOutput_keys[k], "ListDeploymentsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsOutput
-- &lt;p&gt;Represents the output of a ListDeployments operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployments call to return the next set of deployments in the list.&lt;/p&gt;
-- @param deployments [DeploymentsList] &lt;p&gt;A list of deployment IDs.&lt;/p&gt;
function M.ListDeploymentsOutput(nextToken, deployments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsOutput")
	local t = { 
		["nextToken"] = nextToken,
		["deployments"] = deployments,
	}
	M.AssertListDeploymentsOutput(t)
	return t
end

local InvalidMinimumHealthyHostValueException_keys = { nil }

function M.AssertInvalidMinimumHealthyHostValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMinimumHealthyHostValueException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidMinimumHealthyHostValueException_keys[k], "InvalidMinimumHealthyHostValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMinimumHealthyHostValueException
-- &lt;p&gt;The minimum healthy instance value was specified in an invalid format.&lt;/p&gt;
function M.InvalidMinimumHealthyHostValueException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMinimumHealthyHostValueException")
	local t = { 
	}
	M.AssertInvalidMinimumHealthyHostValueException(t)
	return t
end

local BatchGetDeploymentsOutput_keys = { "deploymentsInfo" = true, nil }

function M.AssertBatchGetDeploymentsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentsOutput to be of type 'table'")
	if struct["deploymentsInfo"] then M.AssertDeploymentsInfoList(struct["deploymentsInfo"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetDeploymentsOutput_keys[k], "BatchGetDeploymentsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentsOutput
-- &lt;p&gt;Represents the output of a BatchGetDeployments operation.&lt;/p&gt;
-- @param deploymentsInfo [DeploymentsInfoList] &lt;p&gt;Information about the deployments.&lt;/p&gt;
function M.BatchGetDeploymentsOutput(deploymentsInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentsOutput")
	local t = { 
		["deploymentsInfo"] = deploymentsInfo,
	}
	M.AssertBatchGetDeploymentsOutput(t)
	return t
end

local IamArnRequiredException_keys = { nil }

function M.AssertIamArnRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamArnRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IamArnRequiredException_keys[k], "IamArnRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamArnRequiredException
-- &lt;p&gt;No IAM ARN was included in the request. You must use an IAM session ARN or IAM user ARN in the request.&lt;/p&gt;
function M.IamArnRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamArnRequiredException")
	local t = { 
	}
	M.AssertIamArnRequiredException(t)
	return t
end

local DeploymentConfigNameRequiredException_keys = { nil }

function M.AssertDeploymentConfigNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentConfigNameRequiredException_keys[k], "DeploymentConfigNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigNameRequiredException
-- &lt;p&gt;The deployment configuration name was not specified.&lt;/p&gt;
function M.DeploymentConfigNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigNameRequiredException")
	local t = { 
	}
	M.AssertDeploymentConfigNameRequiredException(t)
	return t
end

local DeploymentOverview_keys = { "Skipped" = true, "Succeeded" = true, "Failed" = true, "Ready" = true, "InProgress" = true, "Pending" = true, nil }

function M.AssertDeploymentOverview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentOverview to be of type 'table'")
	if struct["Skipped"] then M.AssertInstanceCount(struct["Skipped"]) end
	if struct["Succeeded"] then M.AssertInstanceCount(struct["Succeeded"]) end
	if struct["Failed"] then M.AssertInstanceCount(struct["Failed"]) end
	if struct["Ready"] then M.AssertInstanceCount(struct["Ready"]) end
	if struct["InProgress"] then M.AssertInstanceCount(struct["InProgress"]) end
	if struct["Pending"] then M.AssertInstanceCount(struct["Pending"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentOverview_keys[k], "DeploymentOverview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentOverview
-- &lt;p&gt;Information about the deployment status of the instances in the deployment.&lt;/p&gt;
-- @param Skipped [InstanceCount] &lt;p&gt;The number of instances in the deployment in a skipped state.&lt;/p&gt;
-- @param Succeeded [InstanceCount] &lt;p&gt;The number of instances in the deployment to which revisions have been successfully deployed.&lt;/p&gt;
-- @param Failed [InstanceCount] &lt;p&gt;The number of instances in the deployment in a failed state.&lt;/p&gt;
-- @param Ready [InstanceCount] &lt;p&gt;The number of instances in a replacement environment ready to receive traffic in a blue/green deployment.&lt;/p&gt;
-- @param InProgress [InstanceCount] &lt;p&gt;The number of instances in which the deployment is in progress.&lt;/p&gt;
-- @param Pending [InstanceCount] &lt;p&gt;The number of instances in the deployment in a pending state.&lt;/p&gt;
function M.DeploymentOverview(Skipped, Succeeded, Failed, Ready, InProgress, Pending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentOverview")
	local t = { 
		["Skipped"] = Skipped,
		["Succeeded"] = Succeeded,
		["Failed"] = Failed,
		["Ready"] = Ready,
		["InProgress"] = InProgress,
		["Pending"] = Pending,
	}
	M.AssertDeploymentOverview(t)
	return t
end

local InvalidRegistrationStatusException_keys = { nil }

function M.AssertInvalidRegistrationStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRegistrationStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRegistrationStatusException_keys[k], "InvalidRegistrationStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRegistrationStatusException
-- &lt;p&gt;The registration status was specified in an invalid format.&lt;/p&gt;
function M.InvalidRegistrationStatusException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRegistrationStatusException")
	local t = { 
	}
	M.AssertInvalidRegistrationStatusException(t)
	return t
end

local ListApplicationRevisionsInput_keys = { "applicationName" = true, "s3KeyPrefix" = true, "s3Bucket" = true, "sortBy" = true, "nextToken" = true, "deployed" = true, "sortOrder" = true, nil }

function M.AssertListApplicationRevisionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationRevisionsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["s3KeyPrefix"] then M.AssertS3Key(struct["s3KeyPrefix"]) end
	if struct["s3Bucket"] then M.AssertS3Bucket(struct["s3Bucket"]) end
	if struct["sortBy"] then M.AssertApplicationRevisionSortBy(struct["sortBy"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["deployed"] then M.AssertListStateFilterAction(struct["deployed"]) end
	if struct["sortOrder"] then M.AssertSortOrder(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(ListApplicationRevisionsInput_keys[k], "ListApplicationRevisionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationRevisionsInput
-- &lt;p&gt;Represents the input of a ListApplicationRevisions operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- @param s3KeyPrefix [S3Key] &lt;p&gt;A key prefix for the set of Amazon S3 objects to limit the search for revisions.&lt;/p&gt;
-- @param s3Bucket [S3Bucket] &lt;p&gt;An Amazon S3 bucket name to limit the search for revisions.&lt;/p&gt; &lt;p&gt;If set to null, all of the user's buckets will be searched.&lt;/p&gt;
-- @param sortBy [ApplicationRevisionSortBy] &lt;p&gt;The column name to use to sort the list results:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;registerTime: Sort by the time the revisions were registered with AWS CodeDeploy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;firstUsedTime: Sort by the time the revisions were first used in a deployment.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;lastUsedTime: Sort by the time the revisions were last used in a deployment.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If not specified or set to null, the results will be returned in an arbitrary order.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;An identifier returned from the previous list application revisions call. It can be used to return the next set of applications in the list.&lt;/p&gt;
-- @param deployed [ListStateFilterAction] &lt;p&gt;Whether to list revisions based on whether the revision is the target revision of an deployment group:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;include: List revisions that are target revisions of a deployment group.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;exclude: Do not list revisions that are target revisions of a deployment group.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;ignore: List all revisions.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param sortOrder [SortOrder] &lt;p&gt;The order in which to sort the list results:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;ascending: ascending order.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;descending: descending order.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If not specified, the results will be sorted in ascending order.&lt;/p&gt; &lt;p&gt;If set to null, the results will be sorted in an arbitrary order.&lt;/p&gt;
-- Required parameter: applicationName
function M.ListApplicationRevisionsInput(applicationName, s3KeyPrefix, s3Bucket, sortBy, nextToken, deployed, sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationRevisionsInput")
	local t = { 
		["applicationName"] = applicationName,
		["s3KeyPrefix"] = s3KeyPrefix,
		["s3Bucket"] = s3Bucket,
		["sortBy"] = sortBy,
		["nextToken"] = nextToken,
		["deployed"] = deployed,
		["sortOrder"] = sortOrder,
	}
	M.AssertListApplicationRevisionsInput(t)
	return t
end

local BlueGreenDeploymentConfiguration_keys = { "terminateBlueInstancesOnDeploymentSuccess" = true, "deploymentReadyOption" = true, "greenFleetProvisioningOption" = true, nil }

function M.AssertBlueGreenDeploymentConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlueGreenDeploymentConfiguration to be of type 'table'")
	if struct["terminateBlueInstancesOnDeploymentSuccess"] then M.AssertBlueInstanceTerminationOption(struct["terminateBlueInstancesOnDeploymentSuccess"]) end
	if struct["deploymentReadyOption"] then M.AssertDeploymentReadyOption(struct["deploymentReadyOption"]) end
	if struct["greenFleetProvisioningOption"] then M.AssertGreenFleetProvisioningOption(struct["greenFleetProvisioningOption"]) end
	for k,_ in pairs(struct) do
		assert(BlueGreenDeploymentConfiguration_keys[k], "BlueGreenDeploymentConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlueGreenDeploymentConfiguration
-- &lt;p&gt;Information about blue/green deployment options for a deployment group.&lt;/p&gt;
-- @param terminateBlueInstancesOnDeploymentSuccess [BlueInstanceTerminationOption] &lt;p&gt;Information about whether to terminate instances in the original fleet during a blue/green deployment.&lt;/p&gt;
-- @param deploymentReadyOption [DeploymentReadyOption] &lt;p&gt;Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.&lt;/p&gt;
-- @param greenFleetProvisioningOption [GreenFleetProvisioningOption] &lt;p&gt;Information about how instances are provisioned for a replacement environment in a blue/green deployment.&lt;/p&gt;
function M.BlueGreenDeploymentConfiguration(terminateBlueInstancesOnDeploymentSuccess, deploymentReadyOption, greenFleetProvisioningOption, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlueGreenDeploymentConfiguration")
	local t = { 
		["terminateBlueInstancesOnDeploymentSuccess"] = terminateBlueInstancesOnDeploymentSuccess,
		["deploymentReadyOption"] = deploymentReadyOption,
		["greenFleetProvisioningOption"] = greenFleetProvisioningOption,
	}
	M.AssertBlueGreenDeploymentConfiguration(t)
	return t
end

local DeploymentGroupNameRequiredException_keys = { nil }

function M.AssertDeploymentGroupNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentGroupNameRequiredException_keys[k], "DeploymentGroupNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupNameRequiredException
-- &lt;p&gt;The deployment group name was not specified.&lt;/p&gt;
function M.DeploymentGroupNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupNameRequiredException")
	local t = { 
	}
	M.AssertDeploymentGroupNameRequiredException(t)
	return t
end

local Alarm_keys = { "name" = true, nil }

function M.AssertAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alarm to be of type 'table'")
	if struct["name"] then M.AssertAlarmName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Alarm_keys[k], "Alarm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alarm
-- &lt;p&gt;Information about an alarm.&lt;/p&gt;
-- @param name [AlarmName] &lt;p&gt;The name of the alarm. Maximum length is 255 characters. Each alarm name can be used only once in a list of alarms.&lt;/p&gt;
function M.Alarm(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Alarm")
	local t = { 
		["name"] = name,
	}
	M.AssertAlarm(t)
	return t
end

local BatchGetOnPremisesInstancesInput_keys = { "instanceNames" = true, nil }

function M.AssertBatchGetOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetOnPremisesInstancesInput to be of type 'table'")
	if struct["instanceNames"] then M.AssertInstanceNameList(struct["instanceNames"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetOnPremisesInstancesInput_keys[k], "BatchGetOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetOnPremisesInstancesInput
-- &lt;p&gt;Represents the input of a BatchGetOnPremisesInstances operation.&lt;/p&gt;
-- @param instanceNames [InstanceNameList] &lt;p&gt;The names of the on-premises instances about which to get information.&lt;/p&gt;
function M.BatchGetOnPremisesInstancesInput(instanceNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetOnPremisesInstancesInput")
	local t = { 
		["instanceNames"] = instanceNames,
	}
	M.AssertBatchGetOnPremisesInstancesInput(t)
	return t
end

local BatchGetDeploymentInstancesInput_keys = { "deploymentId" = true, "instanceIds" = true, nil }

function M.AssertBatchGetDeploymentInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentInstancesInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	assert(struct["instanceIds"], "Expected key instanceIds to exist in table")
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	if struct["instanceIds"] then M.AssertInstancesList(struct["instanceIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetDeploymentInstancesInput_keys[k], "BatchGetDeploymentInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentInstancesInput
-- &lt;p&gt;Represents the input of a BatchGetDeploymentInstances operation.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;The unique ID of a deployment.&lt;/p&gt;
-- @param instanceIds [InstancesList] &lt;p&gt;The unique IDs of instances in the deployment group.&lt;/p&gt;
-- Required parameter: deploymentId
-- Required parameter: instanceIds
function M.BatchGetDeploymentInstancesInput(deploymentId, instanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentInstancesInput")
	local t = { 
		["deploymentId"] = deploymentId,
		["instanceIds"] = instanceIds,
	}
	M.AssertBatchGetDeploymentInstancesInput(t)
	return t
end

local TagFilter_keys = { "Type" = true, "Value" = true, "Key" = true, nil }

function M.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	if struct["Type"] then M.AssertTagFilterType(struct["Type"]) end
	if struct["Value"] then M.AssertValue(struct["Value"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(TagFilter_keys[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- &lt;p&gt;Information about an on-premises instance tag filter.&lt;/p&gt;
-- @param Type [TagFilterType] &lt;p&gt;The on-premises instance tag filter type:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;KEY_ONLY: Key only.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;VALUE_ONLY: Value only.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;KEY_AND_VALUE: Key and value.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Value [Value] &lt;p&gt;The on-premises instance tag filter value.&lt;/p&gt;
-- @param Key [Key] &lt;p&gt;The on-premises instance tag filter key.&lt;/p&gt;
function M.TagFilter(Type, Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagFilter")
	local t = { 
		["Type"] = Type,
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTagFilter(t)
	return t
end

local RoleRequiredException_keys = { nil }

function M.AssertRoleRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RoleRequiredException_keys[k], "RoleRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoleRequiredException
-- &lt;p&gt;The role ID was not specified.&lt;/p&gt;
function M.RoleRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoleRequiredException")
	local t = { 
	}
	M.AssertRoleRequiredException(t)
	return t
end

local GetApplicationInput_keys = { "applicationName" = true, nil }

function M.AssertGetApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	for k,_ in pairs(struct) do
		assert(GetApplicationInput_keys[k], "GetApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationInput
-- &lt;p&gt;Represents the input of a GetApplication operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- Required parameter: applicationName
function M.GetApplicationInput(applicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationInput")
	local t = { 
		["applicationName"] = applicationName,
	}
	M.AssertGetApplicationInput(t)
	return t
end

local MinimumHealthyHosts_keys = { "type" = true, "value" = true, nil }

function M.AssertMinimumHealthyHosts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MinimumHealthyHosts to be of type 'table'")
	if struct["type"] then M.AssertMinimumHealthyHostsType(struct["type"]) end
	if struct["value"] then M.AssertMinimumHealthyHostsValue(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(MinimumHealthyHosts_keys[k], "MinimumHealthyHosts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MinimumHealthyHosts
-- &lt;p&gt;Information about minimum healthy instance.&lt;/p&gt;
-- @param type [MinimumHealthyHostsType] &lt;p&gt;The minimum healthy instance type:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;HOST_COUNT: The minimum number of healthy instance as an absolute value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;FLEET_PERCENT: The minimum number of healthy instance as a percentage of the total number of instance in the deployment.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;In an example of nine instance, if a HOST_COUNT of six is specified, deploy to up to three instances at a time. The deployment will be successful if six or more instances are deployed to successfully; otherwise, the deployment fails. If a FLEET_PERCENT of 40 is specified, deploy to up to five instance at a time. The deployment will be successful if four or more instance are deployed to successfully; otherwise, the deployment fails.&lt;/p&gt; &lt;note&gt; &lt;p&gt;In a call to the get deployment configuration operation, CodeDeployDefault.OneAtATime will return a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This means a deployment to only one instance at a time. (You cannot set the type to MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with CodeDeployDefault.OneAtATime, AWS CodeDeploy will try to ensure that all instances but one are kept in a healthy state during the deployment. Although this allows one instance at a time to be taken offline for a new deployment, it also means that if the deployment to the last instance fails, the overall deployment still succeeds.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html&quot;&gt;AWS CodeDeploy Instance Health&lt;/a&gt; in the &lt;i&gt;AWS CodeDeploy User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param value [MinimumHealthyHostsValue] &lt;p&gt;The minimum healthy instance value.&lt;/p&gt;
function M.MinimumHealthyHosts(type, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MinimumHealthyHosts")
	local t = { 
		["type"] = type,
		["value"] = value,
	}
	M.AssertMinimumHealthyHosts(t)
	return t
end

local RollbackInfo_keys = { "rollbackTriggeringDeploymentId" = true, "rollbackMessage" = true, "rollbackDeploymentId" = true, nil }

function M.AssertRollbackInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RollbackInfo to be of type 'table'")
	if struct["rollbackTriggeringDeploymentId"] then M.AssertDeploymentId(struct["rollbackTriggeringDeploymentId"]) end
	if struct["rollbackMessage"] then M.AssertDescription(struct["rollbackMessage"]) end
	if struct["rollbackDeploymentId"] then M.AssertDeploymentId(struct["rollbackDeploymentId"]) end
	for k,_ in pairs(struct) do
		assert(RollbackInfo_keys[k], "RollbackInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RollbackInfo
-- &lt;p&gt;Information about a deployment rollback.&lt;/p&gt;
-- @param rollbackTriggeringDeploymentId [DeploymentId] &lt;p&gt;The deployment ID of the deployment that was underway and triggered a rollback deployment because it failed or was stopped.&lt;/p&gt;
-- @param rollbackMessage [Description] &lt;p&gt;Information describing the status of a deployment rollback; for example, whether the deployment can't be rolled back, is in progress, failed, or succeeded. &lt;/p&gt;
-- @param rollbackDeploymentId [DeploymentId] &lt;p&gt;The ID of the deployment rollback.&lt;/p&gt;
function M.RollbackInfo(rollbackTriggeringDeploymentId, rollbackMessage, rollbackDeploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RollbackInfo")
	local t = { 
		["rollbackTriggeringDeploymentId"] = rollbackTriggeringDeploymentId,
		["rollbackMessage"] = rollbackMessage,
		["rollbackDeploymentId"] = rollbackDeploymentId,
	}
	M.AssertRollbackInfo(t)
	return t
end

local ListDeploymentInstancesOutput_keys = { "nextToken" = true, "instancesList" = true, nil }

function M.AssertListDeploymentInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentInstancesOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["instancesList"] then M.AssertInstancesList(struct["instancesList"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentInstancesOutput_keys[k], "ListDeploymentInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentInstancesOutput
-- &lt;p&gt;Represents the output of a ListDeploymentInstances operation.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment instances call to return the next set of deployment instances in the list.&lt;/p&gt;
-- @param instancesList [InstancesList] &lt;p&gt;A list of instance IDs.&lt;/p&gt;
function M.ListDeploymentInstancesOutput(nextToken, instancesList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentInstancesOutput")
	local t = { 
		["nextToken"] = nextToken,
		["instancesList"] = instancesList,
	}
	M.AssertListDeploymentInstancesOutput(t)
	return t
end

local Diagnostics_keys = { "errorCode" = true, "scriptName" = true, "logTail" = true, "message" = true, nil }

function M.AssertDiagnostics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Diagnostics to be of type 'table'")
	if struct["errorCode"] then M.AssertLifecycleErrorCode(struct["errorCode"]) end
	if struct["scriptName"] then M.AssertScriptName(struct["scriptName"]) end
	if struct["logTail"] then M.AssertLogTail(struct["logTail"]) end
	if struct["message"] then M.AssertLifecycleMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(Diagnostics_keys[k], "Diagnostics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Diagnostics
-- &lt;p&gt;Diagnostic information about executable scripts that are part of a deployment.&lt;/p&gt;
-- @param errorCode [LifecycleErrorCode] &lt;p&gt;The associated error code:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Success: The specified script ran.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;ScriptMissing: The specified script was not found in the specified location.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;ScriptNotExecutable: The specified script is not a recognized executable file type.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;ScriptTimedOut: The specified script did not finish running in the specified time period.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;ScriptFailed: The specified script failed to run as expected.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;UnknownError: The specified script did not run for an unknown reason.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param scriptName [ScriptName] &lt;p&gt;The name of the script.&lt;/p&gt;
-- @param logTail [LogTail] &lt;p&gt;The last portion of the diagnostic log.&lt;/p&gt; &lt;p&gt;If available, AWS CodeDeploy returns up to the last 4 KB of the diagnostic log.&lt;/p&gt;
-- @param message [LifecycleMessage] &lt;p&gt;The message associated with the error.&lt;/p&gt;
function M.Diagnostics(errorCode, scriptName, logTail, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Diagnostics")
	local t = { 
		["errorCode"] = errorCode,
		["scriptName"] = scriptName,
		["logTail"] = logTail,
		["message"] = message,
	}
	M.AssertDiagnostics(t)
	return t
end

local RegisterOnPremisesInstanceInput_keys = { "iamUserArn" = true, "instanceName" = true, "iamSessionArn" = true, nil }

function M.AssertRegisterOnPremisesInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterOnPremisesInstanceInput to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["iamUserArn"] then M.AssertIamUserArn(struct["iamUserArn"]) end
	if struct["instanceName"] then M.AssertInstanceName(struct["instanceName"]) end
	if struct["iamSessionArn"] then M.AssertIamSessionArn(struct["iamSessionArn"]) end
	for k,_ in pairs(struct) do
		assert(RegisterOnPremisesInstanceInput_keys[k], "RegisterOnPremisesInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterOnPremisesInstanceInput
-- &lt;p&gt;Represents the input of the register on-premises instance operation.&lt;/p&gt;
-- @param iamUserArn [IamUserArn] &lt;p&gt;The ARN of the IAM user to associate with the on-premises instance.&lt;/p&gt;
-- @param instanceName [InstanceName] &lt;p&gt;The name of the on-premises instance to register.&lt;/p&gt;
-- @param iamSessionArn [IamSessionArn] &lt;p&gt;The ARN of the IAM session to associate with the on-premises instance.&lt;/p&gt;
-- Required parameter: instanceName
function M.RegisterOnPremisesInstanceInput(iamUserArn, instanceName, iamSessionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterOnPremisesInstanceInput")
	local t = { 
		["iamUserArn"] = iamUserArn,
		["instanceName"] = instanceName,
		["iamSessionArn"] = iamSessionArn,
	}
	M.AssertRegisterOnPremisesInstanceInput(t)
	return t
end

local GetDeploymentOutput_keys = { "deploymentInfo" = true, nil }

function M.AssertGetDeploymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentOutput to be of type 'table'")
	if struct["deploymentInfo"] then M.AssertDeploymentInfo(struct["deploymentInfo"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentOutput_keys[k], "GetDeploymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentOutput
-- &lt;p&gt;Represents the output of a GetDeployment operation.&lt;/p&gt;
-- @param deploymentInfo [DeploymentInfo] &lt;p&gt;Information about the deployment.&lt;/p&gt;
function M.GetDeploymentOutput(deploymentInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentOutput")
	local t = { 
		["deploymentInfo"] = deploymentInfo,
	}
	M.AssertGetDeploymentOutput(t)
	return t
end

local ListDeploymentGroupsOutput_keys = { "applicationName" = true, "nextToken" = true, "deploymentGroups" = true, nil }

function M.AssertListDeploymentGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentGroupsOutput to be of type 'table'")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["deploymentGroups"] then M.AssertDeploymentGroupsList(struct["deploymentGroups"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentGroupsOutput_keys[k], "ListDeploymentGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentGroupsOutput
-- &lt;p&gt;Represents the output of a ListDeploymentGroups operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The application name.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment groups call to return the next set of deployment groups in the list.&lt;/p&gt;
-- @param deploymentGroups [DeploymentGroupsList] &lt;p&gt;A list of corresponding deployment group names.&lt;/p&gt;
function M.ListDeploymentGroupsOutput(applicationName, nextToken, deploymentGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentGroupsOutput")
	local t = { 
		["applicationName"] = applicationName,
		["nextToken"] = nextToken,
		["deploymentGroups"] = deploymentGroups,
	}
	M.AssertListDeploymentGroupsOutput(t)
	return t
end

local InvalidDeploymentStatusException_keys = { nil }

function M.AssertInvalidDeploymentStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDeploymentStatusException_keys[k], "InvalidDeploymentStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentStatusException
-- &lt;p&gt;The specified deployment status doesn't exist or cannot be determined.&lt;/p&gt;
function M.InvalidDeploymentStatusException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentStatusException")
	local t = { 
	}
	M.AssertInvalidDeploymentStatusException(t)
	return t
end

local InvalidAutoScalingGroupException_keys = { nil }

function M.AssertInvalidAutoScalingGroupException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAutoScalingGroupException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidAutoScalingGroupException_keys[k], "InvalidAutoScalingGroupException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAutoScalingGroupException
-- &lt;p&gt;The Auto Scaling group was specified in an invalid format or does not exist.&lt;/p&gt;
function M.InvalidAutoScalingGroupException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAutoScalingGroupException")
	local t = { 
	}
	M.AssertInvalidAutoScalingGroupException(t)
	return t
end

local EC2TagFilter_keys = { "Type" = true, "Value" = true, "Key" = true, nil }

function M.AssertEC2TagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2TagFilter to be of type 'table'")
	if struct["Type"] then M.AssertEC2TagFilterType(struct["Type"]) end
	if struct["Value"] then M.AssertValue(struct["Value"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(EC2TagFilter_keys[k], "EC2TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2TagFilter
-- &lt;p&gt;Information about an EC2 tag filter.&lt;/p&gt;
-- @param Type [EC2TagFilterType] &lt;p&gt;The tag filter type:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;KEY_ONLY: Key only.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;VALUE_ONLY: Value only.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;KEY_AND_VALUE: Key and value.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Value [Value] &lt;p&gt;The tag filter value.&lt;/p&gt;
-- @param Key [Key] &lt;p&gt;The tag filter key.&lt;/p&gt;
function M.EC2TagFilter(Type, Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2TagFilter")
	local t = { 
		["Type"] = Type,
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertEC2TagFilter(t)
	return t
end

local DescriptionTooLongException_keys = { nil }

function M.AssertDescriptionTooLongException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescriptionTooLongException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescriptionTooLongException_keys[k], "DescriptionTooLongException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescriptionTooLongException
-- &lt;p&gt;The description is too long.&lt;/p&gt;
function M.DescriptionTooLongException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescriptionTooLongException")
	local t = { 
	}
	M.AssertDescriptionTooLongException(t)
	return t
end

local ErrorInformation_keys = { "message" = true, "code" = true, nil }

function M.AssertErrorInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorInformation to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["code"] then M.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(ErrorInformation_keys[k], "ErrorInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorInformation
-- &lt;p&gt;Information about a deployment error.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;An accompanying error message.&lt;/p&gt;
-- @param code [ErrorCode] &lt;p&gt;For information about additional error codes, see &lt;a href=&quot;http://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html&quot;&gt;Error Codes for AWS CodeDeploy&lt;/a&gt; in the &lt;a href=&quot;http://docs.aws.amazon.com/codedeploy/latest/userguide&quot;&gt;AWS CodeDeploy User Guide&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The error code:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;APPLICATION_MISSING: The application was missing. This error code will most likely be raised if the application is deleted after the deployment is created but before it is started.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;DEPLOYMENT_GROUP_MISSING: The deployment group was missing. This error code will most likely be raised if the deployment group is deleted after the deployment is created but before it is started.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;HEALTH_CONSTRAINTS: The deployment failed on too many instances to be successfully deployed within the instance health constraints specified.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;HEALTH_CONSTRAINTS_INVALID: The revision cannot be successfully deployed within the instance health constraints specified.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;IAM_ROLE_MISSING: The service role cannot be accessed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;IAM_ROLE_PERMISSIONS: The service role does not have the correct permissions.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;INTERNAL_ERROR: There was an internal error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;NO_EC2_SUBSCRIPTION: The calling account is not subscribed to the Amazon EC2 service.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;NO_INSTANCES: No instance were specified, or no instance can be found.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;OVER_MAX_INSTANCES: The maximum number of instance was exceeded.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;THROTTLED: The operation was throttled because the calling account exceeded the throttling limits of one or more AWS services.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;TIMEOUT: The deployment has timed out.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;REVISION_MISSING: The revision ID was missing. This error code will most likely be raised if the revision is deleted after the deployment is created but before it is started.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ErrorInformation(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorInformation")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertErrorInformation(t)
	return t
end

local DeploymentNotStartedException_keys = { nil }

function M.AssertDeploymentNotStartedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentNotStartedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeploymentNotStartedException_keys[k], "DeploymentNotStartedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentNotStartedException
-- &lt;p&gt;The specified deployment has not started.&lt;/p&gt;
function M.DeploymentNotStartedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentNotStartedException")
	local t = { 
	}
	M.AssertDeploymentNotStartedException(t)
	return t
end

local InvalidKeyPrefixFilterException_keys = { nil }

function M.AssertInvalidKeyPrefixFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKeyPrefixFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidKeyPrefixFilterException_keys[k], "InvalidKeyPrefixFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKeyPrefixFilterException
-- &lt;p&gt;The specified key prefix filter was specified in an invalid format.&lt;/p&gt;
function M.InvalidKeyPrefixFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidKeyPrefixFilterException")
	local t = { 
	}
	M.AssertInvalidKeyPrefixFilterException(t)
	return t
end

local DeleteApplicationInput_keys = { "applicationName" = true, nil }

function M.AssertDeleteApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then M.AssertApplicationName(struct["applicationName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApplicationInput_keys[k], "DeleteApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationInput
-- &lt;p&gt;Represents the input of a DeleteApplication operation.&lt;/p&gt;
-- @param applicationName [ApplicationName] &lt;p&gt;The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- Required parameter: applicationName
function M.DeleteApplicationInput(applicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationInput")
	local t = { 
		["applicationName"] = applicationName,
	}
	M.AssertDeleteApplicationInput(t)
	return t
end

local BatchLimitExceededException_keys = { nil }

function M.AssertBatchLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BatchLimitExceededException_keys[k], "BatchLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchLimitExceededException
-- &lt;p&gt;The maximum number of names or IDs allowed for this request (100) was exceeded.&lt;/p&gt;
function M.BatchLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchLimitExceededException")
	local t = { 
	}
	M.AssertBatchLimitExceededException(t)
	return t
end

local GetDeploymentInput_keys = { "deploymentId" = true, nil }

function M.AssertGetDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then M.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentInput_keys[k], "GetDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentInput
-- &lt;p&gt;Represents the input of a GetDeployment operation.&lt;/p&gt;
-- @param deploymentId [DeploymentId] &lt;p&gt;A deployment ID associated with the applicable IAM user or AWS account.&lt;/p&gt;
-- Required parameter: deploymentId
function M.GetDeploymentInput(deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentInput")
	local t = { 
		["deploymentId"] = deploymentId,
	}
	M.AssertGetDeploymentInput(t)
	return t
end

local TagLimitExceededException_keys = { nil }

function M.AssertTagLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagLimitExceededException_keys[k], "TagLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededException
-- &lt;p&gt;The maximum allowed number of tags was exceeded.&lt;/p&gt;
function M.TagLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLimitExceededException")
	local t = { 
	}
	M.AssertTagLimitExceededException(t)
	return t
end

function M.AssertDeploymentGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentGroupId to be of type 'string'")
end

--  
function M.DeploymentGroupId(str)
	M.AssertDeploymentGroupId(str)
	return str
end

function M.AssertVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionId to be of type 'string'")
end

--  
function M.VersionId(str)
	M.AssertVersionId(str)
	return str
end

function M.AssertApplicationRevisionSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationRevisionSortBy to be of type 'string'")
end

--  
function M.ApplicationRevisionSortBy(str)
	M.AssertApplicationRevisionSortBy(str)
	return str
end

function M.AssertInstanceAction(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceAction to be of type 'string'")
end

--  
function M.InstanceAction(str)
	M.AssertInstanceAction(str)
	return str
end

function M.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
end

--  
function M.Role(str)
	M.AssertRole(str)
	return str
end

function M.AssertLifecycleMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleMessage to be of type 'string'")
end

--  
function M.LifecycleMessage(str)
	M.AssertLifecycleMessage(str)
	return str
end

function M.AssertAdditionalDeploymentStatusInfo(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalDeploymentStatusInfo to be of type 'string'")
end

--  
function M.AdditionalDeploymentStatusInfo(str)
	M.AssertAdditionalDeploymentStatusInfo(str)
	return str
end

function M.AssertInstanceName(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceName to be of type 'string'")
end

--  
function M.InstanceName(str)
	M.AssertInstanceName(str)
	return str
end

function M.AssertLifecycleEventStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleEventStatus to be of type 'string'")
end

--  
function M.LifecycleEventStatus(str)
	M.AssertLifecycleEventStatus(str)
	return str
end

function M.AssertRevisionLocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected RevisionLocationType to be of type 'string'")
end

--  
function M.RevisionLocationType(str)
	M.AssertRevisionLocationType(str)
	return str
end

function M.AssertDeploymentGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentGroupName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeploymentGroupName(str)
	M.AssertDeploymentGroupName(str)
	return str
end

function M.AssertDeploymentId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentId to be of type 'string'")
end

--  
function M.DeploymentId(str)
	M.AssertDeploymentId(str)
	return str
end

function M.AssertInstanceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceArn to be of type 'string'")
end

--  
function M.InstanceArn(str)
	M.AssertInstanceArn(str)
	return str
end

function M.AssertTriggerTargetArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerTargetArn to be of type 'string'")
end

--  
function M.TriggerTargetArn(str)
	M.AssertTriggerTargetArn(str)
	return str
end

function M.AssertDeploymentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentStatus to be of type 'string'")
end

--  
function M.DeploymentStatus(str)
	M.AssertDeploymentStatus(str)
	return str
end

function M.AssertGitHubAccountTokenName(str)
	assert(str)
	assert(type(str) == "string", "Expected GitHubAccountTokenName to be of type 'string'")
end

--  
function M.GitHubAccountTokenName(str)
	M.AssertGitHubAccountTokenName(str)
	return str
end

function M.AssertStopStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StopStatus to be of type 'string'")
end

--  
function M.StopStatus(str)
	M.AssertStopStatus(str)
	return str
end

function M.AssertGreenFleetProvisioningAction(str)
	assert(str)
	assert(type(str) == "string", "Expected GreenFleetProvisioningAction to be of type 'string'")
end

--  
function M.GreenFleetProvisioningAction(str)
	M.AssertGreenFleetProvisioningAction(str)
	return str
end

function M.AssertScriptName(str)
	assert(str)
	assert(type(str) == "string", "Expected ScriptName to be of type 'string'")
end

--  
function M.ScriptName(str)
	M.AssertScriptName(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertDeploymentReadyAction(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentReadyAction to be of type 'string'")
end

--  
function M.DeploymentReadyAction(str)
	M.AssertDeploymentReadyAction(str)
	return str
end

function M.AssertTriggerEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerEventType to be of type 'string'")
end

--  
function M.TriggerEventType(str)
	M.AssertTriggerEventType(str)
	return str
end

function M.AssertAutoRollbackEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoRollbackEvent to be of type 'string'")
end

--  
function M.AutoRollbackEvent(str)
	M.AssertAutoRollbackEvent(str)
	return str
end

function M.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
end

--  
function M.Key(str)
	M.AssertKey(str)
	return str
end

function M.AssertApplicationName(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ApplicationName(str)
	M.AssertApplicationName(str)
	return str
end

function M.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	M.AssertValue(str)
	return str
end

function M.AssertCommitId(str)
	assert(str)
	assert(type(str) == "string", "Expected CommitId to be of type 'string'")
end

--  
function M.CommitId(str)
	M.AssertCommitId(str)
	return str
end

function M.AssertFileExistsBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected FileExistsBehavior to be of type 'string'")
end

--  
function M.FileExistsBehavior(str)
	M.AssertFileExistsBehavior(str)
	return str
end

function M.AssertDeploymentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentType to be of type 'string'")
end

--  
function M.DeploymentType(str)
	M.AssertDeploymentType(str)
	return str
end

function M.AssertRegistrationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationStatus to be of type 'string'")
end

--  
function M.RegistrationStatus(str)
	M.AssertRegistrationStatus(str)
	return str
end

function M.AssertTriggerName(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerName to be of type 'string'")
end

--  
function M.TriggerName(str)
	M.AssertTriggerName(str)
	return str
end

function M.AssertBundleType(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleType to be of type 'string'")
end

--  
function M.BundleType(str)
	M.AssertBundleType(str)
	return str
end

function M.AssertTagFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagFilterType to be of type 'string'")
end

--  
function M.TagFilterType(str)
	M.AssertTagFilterType(str)
	return str
end

function M.AssertDeploymentOption(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentOption to be of type 'string'")
end

--  
function M.DeploymentOption(str)
	M.AssertDeploymentOption(str)
	return str
end

function M.AssertRepository(str)
	assert(str)
	assert(type(str) == "string", "Expected Repository to be of type 'string'")
end

--  
function M.Repository(str)
	M.AssertRepository(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertLifecycleEventName(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleEventName to be of type 'string'")
end

--  
function M.LifecycleEventName(str)
	M.AssertLifecycleEventName(str)
	return str
end

function M.AssertInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceType to be of type 'string'")
end

--  
function M.InstanceType(str)
	M.AssertInstanceType(str)
	return str
end

function M.AssertMinimumHealthyHostsType(str)
	assert(str)
	assert(type(str) == "string", "Expected MinimumHealthyHostsType to be of type 'string'")
end

--  
function M.MinimumHealthyHostsType(str)
	M.AssertMinimumHealthyHostsType(str)
	return str
end

function M.AssertInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceStatus to be of type 'string'")
end

--  
function M.InstanceStatus(str)
	M.AssertInstanceStatus(str)
	return str
end

function M.AssertDeploymentConfigName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentConfigName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeploymentConfigName(str)
	M.AssertDeploymentConfigName(str)
	return str
end

function M.AssertAutoScalingGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingGroupName to be of type 'string'")
end

--  
function M.AutoScalingGroupName(str)
	M.AssertAutoScalingGroupName(str)
	return str
end

function M.AssertListStateFilterAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ListStateFilterAction to be of type 'string'")
end

--  
function M.ListStateFilterAction(str)
	M.AssertListStateFilterAction(str)
	return str
end

function M.AssertELBName(str)
	assert(str)
	assert(type(str) == "string", "Expected ELBName to be of type 'string'")
end

--  
function M.ELBName(str)
	M.AssertELBName(str)
	return str
end

function M.AssertEC2TagFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected EC2TagFilterType to be of type 'string'")
end

--  
function M.EC2TagFilterType(str)
	M.AssertEC2TagFilterType(str)
	return str
end

function M.AssertS3Key(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Key to be of type 'string'")
end

--  
function M.S3Key(str)
	M.AssertS3Key(str)
	return str
end

function M.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
end

--  
function M.AlarmName(str)
	M.AssertAlarmName(str)
	return str
end

function M.AssertLogTail(str)
	assert(str)
	assert(type(str) == "string", "Expected LogTail to be of type 'string'")
end

--  
function M.LogTail(str)
	M.AssertLogTail(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertIamUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected IamUserArn to be of type 'string'")
end

--  
function M.IamUserArn(str)
	M.AssertIamUserArn(str)
	return str
end

function M.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
end

--  
function M.S3Bucket(str)
	M.AssertS3Bucket(str)
	return str
end

function M.AssertLifecycleErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleErrorCode to be of type 'string'")
end

--  
function M.LifecycleErrorCode(str)
	M.AssertLifecycleErrorCode(str)
	return str
end

function M.AssertDeploymentCreator(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentCreator to be of type 'string'")
end

--  
function M.DeploymentCreator(str)
	M.AssertDeploymentCreator(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertIamSessionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected IamSessionArn to be of type 'string'")
end

--  
function M.IamSessionArn(str)
	M.AssertIamSessionArn(str)
	return str
end

function M.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
end

--  
function M.InstanceId(str)
	M.AssertInstanceId(str)
	return str
end

function M.AssertETag(str)
	assert(str)
	assert(type(str) == "string", "Expected ETag to be of type 'string'")
end

--  
function M.ETag(str)
	M.AssertETag(str)
	return str
end

function M.AssertApplicationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationId to be of type 'string'")
end

--  
function M.ApplicationId(str)
	M.AssertApplicationId(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

--  
function M.SortOrder(str)
	M.AssertSortOrder(str)
	return str
end

function M.AssertDeploymentConfigId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentConfigId to be of type 'string'")
end

--  
function M.DeploymentConfigId(str)
	M.AssertDeploymentConfigId(str)
	return str
end

function M.AssertAutoScalingGroupHook(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingGroupHook to be of type 'string'")
end

--  
function M.AutoScalingGroupHook(str)
	M.AssertAutoScalingGroupHook(str)
	return str
end

function M.AssertInstanceCount(long)
	assert(long)
	assert(type(long) == "number", "Expected InstanceCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.InstanceCount(long)
	M.AssertInstanceCount(long)
	return long
end

function M.AssertMinimumHealthyHostsValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinimumHealthyHostsValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinimumHealthyHostsValue(integer)
	M.AssertMinimumHealthyHostsValue(integer)
	return integer
end

function M.AssertDuration(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Duration to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Duration(integer)
	M.AssertDuration(integer)
	return integer
end

function M.AssertNullableBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullableBoolean to be of type 'boolean'")
end

function M.NullableBoolean(boolean)
	M.AssertNullableBoolean(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertInstanceNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceName(v)
	end
end

--  
-- List of InstanceName objects
function M.InstanceNameList(list)
	M.AssertInstanceNameList(list)
	return list
end

function M.AssertGitHubAccountTokenNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected GitHubAccountTokenNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGitHubAccountTokenName(v)
	end
end

--  
-- List of GitHubAccountTokenName objects
function M.GitHubAccountTokenNameList(list)
	M.AssertGitHubAccountTokenNameList(list)
	return list
end

function M.AssertTriggerEventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected TriggerEventTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTriggerEventType(v)
	end
end

--  
-- List of TriggerEventType objects
function M.TriggerEventTypeList(list)
	M.AssertTriggerEventTypeList(list)
	return list
end

function M.AssertDeploymentsInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentsInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeploymentInfo(v)
	end
end

--  
-- List of DeploymentInfo objects
function M.DeploymentsInfoList(list)
	M.AssertDeploymentsInfoList(list)
	return list
end

function M.AssertLifecycleEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleEventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLifecycleEvent(v)
	end
end

--  
-- List of LifecycleEvent objects
function M.LifecycleEventList(list)
	M.AssertLifecycleEventList(list)
	return list
end

function M.AssertInstancesList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.InstancesList(list)
	M.AssertInstancesList(list)
	return list
end

function M.AssertEC2TagFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2TagFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEC2TagFilter(v)
	end
end

--  
-- List of EC2TagFilter objects
function M.EC2TagFilterList(list)
	M.AssertEC2TagFilterList(list)
	return list
end

function M.AssertAutoScalingGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAutoScalingGroup(v)
	end
end

--  
-- List of AutoScalingGroup objects
function M.AutoScalingGroupList(list)
	M.AssertAutoScalingGroupList(list)
	return list
end

function M.AssertAutoScalingGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAutoScalingGroupName(v)
	end
end

--  
-- List of AutoScalingGroupName objects
function M.AutoScalingGroupNameList(list)
	M.AssertAutoScalingGroupNameList(list)
	return list
end

function M.AssertAlarmList(list)
	assert(list)
	assert(type(list) == "table", "Expected AlarmList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAlarm(v)
	end
end

--  
-- List of Alarm objects
function M.AlarmList(list)
	M.AssertAlarmList(list)
	return list
end

function M.AssertApplicationsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApplicationName(v)
	end
end

--  
-- List of ApplicationName objects
function M.ApplicationsList(list)
	M.AssertApplicationsList(list)
	return list
end

function M.AssertRevisionLocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected RevisionLocationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRevisionLocation(v)
	end
end

--  
-- List of RevisionLocation objects
function M.RevisionLocationList(list)
	M.AssertRevisionLocationList(list)
	return list
end

function M.AssertApplicationsInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationsInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApplicationInfo(v)
	end
end

--  
-- List of ApplicationInfo objects
function M.ApplicationsInfoList(list)
	M.AssertApplicationsInfoList(list)
	return list
end

function M.AssertDeploymentConfigsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentConfigsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeploymentConfigName(v)
	end
end

--  
-- List of DeploymentConfigName objects
function M.DeploymentConfigsList(list)
	M.AssertDeploymentConfigsList(list)
	return list
end

function M.AssertDeploymentStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeploymentStatus(v)
	end
end

--  
-- List of DeploymentStatus objects
function M.DeploymentStatusList(list)
	M.AssertDeploymentStatusList(list)
	return list
end

function M.AssertTagFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagFilterList(list)
	M.AssertTagFilterList(list)
	return list
end

function M.AssertTriggerConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected TriggerConfigList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTriggerConfig(v)
	end
end

--  
-- List of TriggerConfig objects
function M.TriggerConfigList(list)
	M.AssertTriggerConfigList(list)
	return list
end

function M.AssertInstanceStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceStatus(v)
	end
end

--  
-- List of InstanceStatus objects
function M.InstanceStatusList(list)
	M.AssertInstanceStatusList(list)
	return list
end

function M.AssertDeploymentGroupInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentGroupInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeploymentGroupInfo(v)
	end
end

--  
-- List of DeploymentGroupInfo objects
function M.DeploymentGroupInfoList(list)
	M.AssertDeploymentGroupInfoList(list)
	return list
end

function M.AssertELBInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ELBInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertELBInfo(v)
	end
end

--  
-- List of ELBInfo objects
function M.ELBInfoList(list)
	M.AssertELBInfoList(list)
	return list
end

function M.AssertInstanceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceSummary(v)
	end
end

--  
-- List of InstanceSummary objects
function M.InstanceSummaryList(list)
	M.AssertInstanceSummaryList(list)
	return list
end

function M.AssertDeploymentsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeploymentId(v)
	end
end

--  
-- List of DeploymentId objects
function M.DeploymentsList(list)
	M.AssertDeploymentsList(list)
	return list
end

function M.AssertInstanceTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceType(v)
	end
end

--  
-- List of InstanceType objects
function M.InstanceTypeList(list)
	M.AssertInstanceTypeList(list)
	return list
end

function M.AssertAutoRollbackEventsList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoRollbackEventsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAutoRollbackEvent(v)
	end
end

--  
-- List of AutoRollbackEvent objects
function M.AutoRollbackEventsList(list)
	M.AssertAutoRollbackEventsList(list)
	return list
end

function M.AssertRevisionInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected RevisionInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRevisionInfo(v)
	end
end

--  
-- List of RevisionInfo objects
function M.RevisionInfoList(list)
	M.AssertRevisionInfoList(list)
	return list
end

function M.AssertInstanceInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceInfo(v)
	end
end

--  
-- List of InstanceInfo objects
function M.InstanceInfoList(list)
	M.AssertInstanceInfoList(list)
	return list
end

function M.AssertDeploymentGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeploymentGroupName(v)
	end
end

--  
-- List of DeploymentGroupName objects
function M.DeploymentGroupsList(list)
	M.AssertDeploymentGroupsList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
	return list
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "codedeploy.amazonaws.com"
		end
	end
	local ss = { "codedeploy" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- GetDeploymentConfig
-- @param GetDeploymentConfigInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentConfigAsync(GetDeploymentConfigInput, cb)
	assert(GetDeploymentConfigInput, "You must provide a GetDeploymentConfigInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentConfigInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDeploymentGroup
-- @param UpdateDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDeploymentGroupAsync(UpdateDeploymentGroupInput, cb)
	assert(UpdateDeploymentGroupInput, "You must provide a UpdateDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.UpdateDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetDeployments
-- @param BatchGetDeploymentsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetDeploymentsAsync(BatchGetDeploymentsInput, cb)
	assert(BatchGetDeploymentsInput, "You must provide a BatchGetDeploymentsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetDeploymentsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ContinueDeployment
-- @param ContinueDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.ContinueDeploymentAsync(ContinueDeploymentInput, cb)
	assert(ContinueDeploymentInput, "You must provide a ContinueDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ContinueDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ContinueDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeploymentGroup
-- @param GetDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentGroupAsync(GetDeploymentGroupInput, cb)
	assert(GetDeploymentGroupInput, "You must provide a GetDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeploymentGroups
-- @param ListDeploymentGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentGroupsAsync(ListDeploymentGroupsInput, cb)
	assert(ListDeploymentGroupsInput, "You must provide a ListDeploymentGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApplication
-- @param DeleteApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationAsync(DeleteApplicationInput, cb)
	assert(DeleteApplicationInput, "You must provide a DeleteApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeployment
-- @param CreateDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentAsync(CreateDeploymentInput, cb)
	assert(CreateDeploymentInput, "You must provide a CreateDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopDeployment
-- @param StopDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopDeploymentAsync(StopDeploymentInput, cb)
	assert(StopDeploymentInput, "You must provide a StopDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.StopDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeploymentConfig
-- @param DeleteDeploymentConfigInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeploymentConfigAsync(DeleteDeploymentConfigInput, cb)
	assert(DeleteDeploymentConfigInput, "You must provide a DeleteDeploymentConfigInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteDeploymentConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDeploymentConfigInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromOnPremisesInstances
-- @param RemoveTagsFromOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromOnPremisesInstancesAsync(RemoveTagsFromOnPremisesInstancesInput, cb)
	assert(RemoveTagsFromOnPremisesInstancesInput, "You must provide a RemoveTagsFromOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RemoveTagsFromOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterOnPremisesInstance
-- @param RegisterOnPremisesInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterOnPremisesInstanceAsync(RegisterOnPremisesInstanceInput, cb)
	assert(RegisterOnPremisesInstanceInput, "You must provide a RegisterOnPremisesInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RegisterOnPremisesInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterOnPremisesInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOnPremisesInstances
-- @param ListOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListOnPremisesInstancesAsync(ListOnPremisesInstancesInput, cb)
	assert(ListOnPremisesInstancesInput, "You must provide a ListOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeploymentConfigs
-- @param ListDeploymentConfigsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentConfigsAsync(ListDeploymentConfigsInput, cb)
	assert(ListDeploymentConfigsInput, "You must provide a ListDeploymentConfigsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentConfigs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentConfigsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApplication
-- @param GetApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetApplicationAsync(GetApplicationInput, cb)
	assert(GetApplicationInput, "You must provide a GetApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeploymentInstance
-- @param GetDeploymentInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentInstanceAsync(GetDeploymentInstanceInput, cb)
	assert(GetDeploymentInstanceInput, "You must provide a GetDeploymentInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SkipWaitTimeForInstanceTermination
-- @param SkipWaitTimeForInstanceTerminationInput
-- @param cb Callback function accepting two args: response, error_message
function M.SkipWaitTimeForInstanceTerminationAsync(SkipWaitTimeForInstanceTerminationInput, cb)
	assert(SkipWaitTimeForInstanceTerminationInput, "You must provide a SkipWaitTimeForInstanceTerminationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.SkipWaitTimeForInstanceTermination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SkipWaitTimeForInstanceTerminationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetDeploymentGroups
-- @param BatchGetDeploymentGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetDeploymentGroupsAsync(BatchGetDeploymentGroupsInput, cb)
	assert(BatchGetDeploymentGroupsInput, "You must provide a BatchGetDeploymentGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeploymentGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetDeploymentGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetOnPremisesInstances
-- @param BatchGetOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetOnPremisesInstancesAsync(BatchGetOnPremisesInstancesInput, cb)
	assert(BatchGetOnPremisesInstancesInput, "You must provide a BatchGetOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApplicationRevision
-- @param GetApplicationRevisionInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetApplicationRevisionAsync(GetApplicationRevisionInput, cb)
	assert(GetApplicationRevisionInput, "You must provide a GetApplicationRevisionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetApplicationRevision",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetApplicationRevisionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetDeploymentInstances
-- @param BatchGetDeploymentInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetDeploymentInstancesAsync(BatchGetDeploymentInstancesInput, cb)
	assert(BatchGetDeploymentInstancesInput, "You must provide a BatchGetDeploymentInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeploymentInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetDeploymentInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApplication
-- @param UpdateApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApplicationAsync(UpdateApplicationInput, cb)
	assert(UpdateApplicationInput, "You must provide a UpdateApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.UpdateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeploymentGroup
-- @param CreateDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentGroupAsync(CreateDeploymentGroupInput, cb)
	assert(CreateDeploymentGroupInput, "You must provide a CreateDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListApplicationRevisions
-- @param ListApplicationRevisionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListApplicationRevisionsAsync(ListApplicationRevisionsInput, cb)
	assert(ListApplicationRevisionsInput, "You must provide a ListApplicationRevisionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListApplicationRevisions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListApplicationRevisionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeploymentInstances
-- @param ListDeploymentInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentInstancesAsync(ListDeploymentInstancesInput, cb)
	assert(ListDeploymentInstancesInput, "You must provide a ListDeploymentInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetApplicationRevisions
-- @param BatchGetApplicationRevisionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetApplicationRevisionsAsync(BatchGetApplicationRevisionsInput, cb)
	assert(BatchGetApplicationRevisionsInput, "You must provide a BatchGetApplicationRevisionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetApplicationRevisions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetApplicationRevisionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterOnPremisesInstance
-- @param DeregisterOnPremisesInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterOnPremisesInstanceAsync(DeregisterOnPremisesInstanceInput, cb)
	assert(DeregisterOnPremisesInstanceInput, "You must provide a DeregisterOnPremisesInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeregisterOnPremisesInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterOnPremisesInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeploymentConfig
-- @param CreateDeploymentConfigInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentConfigAsync(CreateDeploymentConfigInput, cb)
	assert(CreateDeploymentConfigInput, "You must provide a CreateDeploymentConfigInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeploymentConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeploymentConfigInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOnPremisesInstance
-- @param GetOnPremisesInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetOnPremisesInstanceAsync(GetOnPremisesInstanceInput, cb)
	assert(GetOnPremisesInstanceInput, "You must provide a GetOnPremisesInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetOnPremisesInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOnPremisesInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToOnPremisesInstances
-- @param AddTagsToOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToOnPremisesInstancesAsync(AddTagsToOnPremisesInstancesInput, cb)
	assert(AddTagsToOnPremisesInstancesInput, "You must provide a AddTagsToOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.AddTagsToOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateApplication
-- @param CreateApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApplicationAsync(CreateApplicationInput, cb)
	assert(CreateApplicationInput, "You must provide a CreateApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeployments
-- @param ListDeploymentsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentsAsync(ListDeploymentsInput, cb)
	assert(ListDeploymentsInput, "You must provide a ListDeploymentsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListApplications
-- @param ListApplicationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListApplicationsAsync(ListApplicationsInput, cb)
	assert(ListApplicationsInput, "You must provide a ListApplicationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListApplicationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeploymentGroup
-- @param DeleteDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeploymentGroupAsync(DeleteDeploymentGroupInput, cb)
	assert(DeleteDeploymentGroupInput, "You must provide a DeleteDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGitHubAccountTokenNames
-- @param ListGitHubAccountTokenNamesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListGitHubAccountTokenNamesAsync(ListGitHubAccountTokenNamesInput, cb)
	assert(ListGitHubAccountTokenNamesInput, "You must provide a ListGitHubAccountTokenNamesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListGitHubAccountTokenNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGitHubAccountTokenNamesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterApplicationRevision
-- @param RegisterApplicationRevisionInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterApplicationRevisionAsync(RegisterApplicationRevisionInput, cb)
	assert(RegisterApplicationRevisionInput, "You must provide a RegisterApplicationRevisionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RegisterApplicationRevision",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterApplicationRevisionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeployment
-- @param GetDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentAsync(GetDeploymentInput, cb)
	assert(GetDeploymentInput, "You must provide a GetDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetApplications
-- @param BatchGetApplicationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetApplicationsAsync(BatchGetApplicationsInput, cb)
	assert(BatchGetApplicationsInput, "You must provide a BatchGetApplicationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetApplicationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M