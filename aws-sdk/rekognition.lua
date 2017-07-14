--- GENERATED CODE - DO NOT MODIFY
-- Amazon Rekognition (rekognition-2016-06-27)

local M = {}

M.metadata = {
	api_version = "2016-06-27",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "rekognition",
	service_abbreviation = "",
	service_full_name = "Amazon Rekognition",
	signature_version = "v4",
	target_prefix = "RekognitionService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "rekognition-2016-06-27",
}

local DeleteCollectionResponse_keys = { "StatusCode" = true, nil }

function M.AssertDeleteCollectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCollectionResponse to be of type 'table'")
	if struct["StatusCode"] then M.AssertUInteger(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCollectionResponse_keys[k], "DeleteCollectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCollectionResponse
--  
-- @param StatusCode [UInteger] &lt;p&gt;HTTP status code that indicates the result of the operation.&lt;/p&gt;
function M.DeleteCollectionResponse(StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCollectionResponse")
	local t = { 
		["StatusCode"] = StatusCode,
	}
	M.AssertDeleteCollectionResponse(t)
	return t
end

local DeleteFacesResponse_keys = { "DeletedFaces" = true, nil }

function M.AssertDeleteFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacesResponse to be of type 'table'")
	if struct["DeletedFaces"] then M.AssertFaceIdList(struct["DeletedFaces"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFacesResponse_keys[k], "DeleteFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacesResponse
--  
-- @param DeletedFaces [FaceIdList] &lt;p&gt;An array of strings (face IDs) of the faces that were deleted.&lt;/p&gt;
function M.DeleteFacesResponse(DeletedFaces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFacesResponse")
	local t = { 
		["DeletedFaces"] = DeletedFaces,
	}
	M.AssertDeleteFacesResponse(t)
	return t
end

local Smile_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertSmile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Smile to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Smile_keys[k], "Smile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Smile
-- &lt;p&gt;Indicates whether or not the face is smiling, and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [Boolean] &lt;p&gt;Boolean value that indicates whether the face is smiling or not.&lt;/p&gt;
function M.Smile(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Smile")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertSmile(t)
	return t
end

local ComparedSourceImageFace_keys = { "BoundingBox" = true, "Confidence" = true, nil }

function M.AssertComparedSourceImageFace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComparedSourceImageFace to be of type 'table'")
	if struct["BoundingBox"] then M.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	for k,_ in pairs(struct) do
		assert(ComparedSourceImageFace_keys[k], "ComparedSourceImageFace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComparedSourceImageFace
-- &lt;p&gt;Type that describes the face Amazon Rekognition chose to compare with the faces in the target. This contains a bounding box for the selected face and confidence level that the bounding box contains a face. Note that Amazon Rekognition selects the largest face in the source image for this comparison. &lt;/p&gt;
-- @param BoundingBox [BoundingBox] &lt;p&gt;Bounding box of the face.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Confidence level that the selected bounding box contains a face.&lt;/p&gt;
function M.ComparedSourceImageFace(BoundingBox, Confidence, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComparedSourceImageFace")
	local t = { 
		["BoundingBox"] = BoundingBox,
		["Confidence"] = Confidence,
	}
	M.AssertComparedSourceImageFace(t)
	return t
end

local InvalidS3ObjectException_keys = { nil }

function M.AssertInvalidS3ObjectException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3ObjectException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidS3ObjectException_keys[k], "InvalidS3ObjectException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3ObjectException
-- &lt;p&gt;Amazon Rekognition is unable to access the S3 object specified in the request.&lt;/p&gt;
function M.InvalidS3ObjectException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3ObjectException")
	local t = { 
	}
	M.AssertInvalidS3ObjectException(t)
	return t
end

local DeleteFacesRequest_keys = { "FaceIds" = true, "CollectionId" = true, nil }

function M.AssertDeleteFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["FaceIds"], "Expected key FaceIds to exist in table")
	if struct["FaceIds"] then M.AssertFaceIdList(struct["FaceIds"]) end
	if struct["CollectionId"] then M.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFacesRequest_keys[k], "DeleteFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacesRequest
--  
-- @param FaceIds [FaceIdList] &lt;p&gt;An array of face IDs to delete.&lt;/p&gt;
-- @param CollectionId [CollectionId] &lt;p&gt;Collection from which to remove the specific faces.&lt;/p&gt;
-- Required parameter: CollectionId
-- Required parameter: FaceIds
function M.DeleteFacesRequest(FaceIds, CollectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFacesRequest")
	local t = { 
		["FaceIds"] = FaceIds,
		["CollectionId"] = CollectionId,
	}
	M.AssertDeleteFacesRequest(t)
	return t
end

local GetCelebrityInfoResponse_keys = { "Name" = true, "Urls" = true, nil }

function M.AssertGetCelebrityInfoResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCelebrityInfoResponse to be of type 'table'")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Urls"] then M.AssertUrls(struct["Urls"]) end
	for k,_ in pairs(struct) do
		assert(GetCelebrityInfoResponse_keys[k], "GetCelebrityInfoResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCelebrityInfoResponse
--  
-- @param Name [String] &lt;p&gt;The name of the celebrity.&lt;/p&gt;
-- @param Urls [Urls] &lt;p&gt;An array of URLs pointing to additional celebrity information. &lt;/p&gt;
function M.GetCelebrityInfoResponse(Name, Urls, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCelebrityInfoResponse")
	local t = { 
		["Name"] = Name,
		["Urls"] = Urls,
	}
	M.AssertGetCelebrityInfoResponse(t)
	return t
end

local InternalServerError_keys = { nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- &lt;p&gt;Amazon Rekognition experienced a service issue. Try your call again.&lt;/p&gt;
function M.InternalServerError(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
	}
	M.AssertInternalServerError(t)
	return t
end

local ImageTooLargeException_keys = { nil }

function M.AssertImageTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageTooLargeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ImageTooLargeException_keys[k], "ImageTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageTooLargeException
-- &lt;p&gt;The input image size exceeds the allowed limit. For more information, see &lt;a&gt;limits&lt;/a&gt;. &lt;/p&gt;
function M.ImageTooLargeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageTooLargeException")
	local t = { 
	}
	M.AssertImageTooLargeException(t)
	return t
end

local Landmark_keys = { "Y" = true, "X" = true, "Type" = true, nil }

function M.AssertLandmark(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Landmark to be of type 'table'")
	if struct["Y"] then M.AssertFloat(struct["Y"]) end
	if struct["X"] then M.AssertFloat(struct["X"]) end
	if struct["Type"] then M.AssertLandmarkType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(Landmark_keys[k], "Landmark contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Landmark
-- &lt;p&gt;Indicates the location of the landmark on the face.&lt;/p&gt;
-- @param Y [Float] &lt;p&gt;y-coordinate from the top left of the landmark expressed as the ration of the height of the image. For example, if the images is 700x200 and the y-coordinate of the landmark is at 100 pixels, this value is 0.5.&lt;/p&gt;
-- @param X [Float] &lt;p&gt;x-coordinate from the top left of the landmark expressed as the ration of the width of the image. For example, if the images is 700x200 and the x-coordinate of the landmark is at 350 pixels, this value is 0.5. &lt;/p&gt;
-- @param Type [LandmarkType] &lt;p&gt;Type of the landmark.&lt;/p&gt;
function M.Landmark(Y, X, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Landmark")
	local t = { 
		["Y"] = Y,
		["X"] = X,
		["Type"] = Type,
	}
	M.AssertLandmark(t)
	return t
end

local Eyeglasses_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertEyeglasses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Eyeglasses to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Eyeglasses_keys[k], "Eyeglasses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Eyeglasses
-- &lt;p&gt;Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [Boolean] &lt;p&gt;Boolean value that indicates whether the face is wearing eye glasses or not.&lt;/p&gt;
function M.Eyeglasses(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Eyeglasses")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertEyeglasses(t)
	return t
end

local SearchFacesResponse_keys = { "SearchedFaceId" = true, "FaceMatches" = true, nil }

function M.AssertSearchFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesResponse to be of type 'table'")
	if struct["SearchedFaceId"] then M.AssertFaceId(struct["SearchedFaceId"]) end
	if struct["FaceMatches"] then M.AssertFaceMatchList(struct["FaceMatches"]) end
	for k,_ in pairs(struct) do
		assert(SearchFacesResponse_keys[k], "SearchFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesResponse
--  
-- @param SearchedFaceId [FaceId] &lt;p&gt;ID of the face that was searched for matches in a collection.&lt;/p&gt;
-- @param FaceMatches [FaceMatchList] &lt;p&gt;An array of faces that matched the input face, along with the confidence in the match.&lt;/p&gt;
function M.SearchFacesResponse(SearchedFaceId, FaceMatches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchFacesResponse")
	local t = { 
		["SearchedFaceId"] = SearchedFaceId,
		["FaceMatches"] = FaceMatches,
	}
	M.AssertSearchFacesResponse(t)
	return t
end

local ListCollectionsResponse_keys = { "NextToken" = true, "CollectionIds" = true, nil }

function M.AssertListCollectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCollectionsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["CollectionIds"] then M.AssertCollectionIdList(struct["CollectionIds"]) end
	for k,_ in pairs(struct) do
		assert(ListCollectionsResponse_keys[k], "ListCollectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCollectionsResponse
--  
-- @param NextToken [PaginationToken] &lt;p&gt;If the result is truncated, the response provides a &lt;code&gt;NextToken&lt;/code&gt; that you can use in the subsequent request to fetch the next set of collection IDs.&lt;/p&gt;
-- @param CollectionIds [CollectionIdList] &lt;p&gt;An array of collection IDs.&lt;/p&gt;
function M.ListCollectionsResponse(NextToken, CollectionIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCollectionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["CollectionIds"] = CollectionIds,
	}
	M.AssertListCollectionsResponse(t)
	return t
end

local SearchFacesByImageRequest_keys = { "Image" = true, "MaxFaces" = true, "FaceMatchThreshold" = true, "CollectionId" = true, nil }

function M.AssertSearchFacesByImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesByImageRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Image"] then M.AssertImage(struct["Image"]) end
	if struct["MaxFaces"] then M.AssertMaxFaces(struct["MaxFaces"]) end
	if struct["FaceMatchThreshold"] then M.AssertPercent(struct["FaceMatchThreshold"]) end
	if struct["CollectionId"] then M.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(SearchFacesByImageRequest_keys[k], "SearchFacesByImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesByImageRequest
--  
-- @param Image [Image] &lt;p&gt;The input image as bytes or an S3 object.&lt;/p&gt;
-- @param MaxFaces [MaxFaces] &lt;p&gt;Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.&lt;/p&gt;
-- @param FaceMatchThreshold [Percent] &lt;p&gt;(Optional) Specifies the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%.&lt;/p&gt;
-- @param CollectionId [CollectionId] &lt;p&gt;ID of the collection to search.&lt;/p&gt;
-- Required parameter: CollectionId
-- Required parameter: Image
function M.SearchFacesByImageRequest(Image, MaxFaces, FaceMatchThreshold, CollectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchFacesByImageRequest")
	local t = { 
		["Image"] = Image,
		["MaxFaces"] = MaxFaces,
		["FaceMatchThreshold"] = FaceMatchThreshold,
		["CollectionId"] = CollectionId,
	}
	M.AssertSearchFacesByImageRequest(t)
	return t
end

local IndexFacesRequest_keys = { "DetectionAttributes" = true, "Image" = true, "ExternalImageId" = true, "CollectionId" = true, nil }

function M.AssertIndexFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["DetectionAttributes"] then M.AssertAttributes(struct["DetectionAttributes"]) end
	if struct["Image"] then M.AssertImage(struct["Image"]) end
	if struct["ExternalImageId"] then M.AssertExternalImageId(struct["ExternalImageId"]) end
	if struct["CollectionId"] then M.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(IndexFacesRequest_keys[k], "IndexFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFacesRequest
--  
-- @param DetectionAttributes [Attributes] &lt;p&gt;An array of facial attributes that you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for &lt;code&gt;Attributes&lt;/code&gt; or if you specify &lt;code&gt;[&quot;DEFAULT&quot;]&lt;/code&gt;, the API returns the following subset of facial attributes: &lt;code&gt;BoundingBox&lt;/code&gt;, &lt;code&gt;Confidence&lt;/code&gt;, &lt;code&gt;Pose&lt;/code&gt;, &lt;code&gt;Quality&lt;/code&gt; and &lt;code&gt;Landmarks&lt;/code&gt;. If you provide &lt;code&gt;[&quot;ALL&quot;]&lt;/code&gt;, all facial attributes are returned but the operation will take longer to complete.&lt;/p&gt; &lt;p&gt;If you provide both, &lt;code&gt;[&quot;ALL&quot;, &quot;DEFAULT&quot;]&lt;/code&gt;, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes). &lt;/p&gt;
-- @param Image [Image] &lt;p&gt;The input image as bytes or an S3 object.&lt;/p&gt;
-- @param ExternalImageId [ExternalImageId] &lt;p&gt;ID you want to assign to all the faces detected in the image.&lt;/p&gt;
-- @param CollectionId [CollectionId] &lt;p&gt;The ID of an existing collection to which you want to add the faces that are detected in the input images.&lt;/p&gt;
-- Required parameter: CollectionId
-- Required parameter: Image
function M.IndexFacesRequest(DetectionAttributes, Image, ExternalImageId, CollectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexFacesRequest")
	local t = { 
		["DetectionAttributes"] = DetectionAttributes,
		["Image"] = Image,
		["ExternalImageId"] = ExternalImageId,
		["CollectionId"] = CollectionId,
	}
	M.AssertIndexFacesRequest(t)
	return t
end

local DeleteCollectionRequest_keys = { "CollectionId" = true, nil }

function M.AssertDeleteCollectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCollectionRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["CollectionId"] then M.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCollectionRequest_keys[k], "DeleteCollectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCollectionRequest
--  
-- @param CollectionId [CollectionId] &lt;p&gt;ID of the collection to delete.&lt;/p&gt;
-- Required parameter: CollectionId
function M.DeleteCollectionRequest(CollectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCollectionRequest")
	local t = { 
		["CollectionId"] = CollectionId,
	}
	M.AssertDeleteCollectionRequest(t)
	return t
end

local S3Object_keys = { "Version" = true, "Bucket" = true, "Name" = true, nil }

function M.AssertS3Object(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Object to be of type 'table'")
	if struct["Version"] then M.AssertS3ObjectVersion(struct["Version"]) end
	if struct["Bucket"] then M.AssertS3Bucket(struct["Bucket"]) end
	if struct["Name"] then M.AssertS3ObjectName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(S3Object_keys[k], "S3Object contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Object
-- &lt;p&gt;Provides the S3 bucket name and object name.&lt;/p&gt; &lt;p&gt;The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.&lt;/p&gt; &lt;p&gt;For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see &lt;a&gt;manage-access-resource-policies&lt;/a&gt;. &lt;/p&gt;
-- @param Version [S3ObjectVersion] &lt;p&gt;If the bucket is versioning enabled, you can specify the object version. &lt;/p&gt;
-- @param Bucket [S3Bucket] &lt;p&gt;Name of the S3 bucket.&lt;/p&gt;
-- @param Name [S3ObjectName] &lt;p&gt;S3 object key name.&lt;/p&gt;
function M.S3Object(Version, Bucket, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Object")
	local t = { 
		["Version"] = Version,
		["Bucket"] = Bucket,
		["Name"] = Name,
	}
	M.AssertS3Object(t)
	return t
end

local Label_keys = { "Confidence" = true, "Name" = true, nil }

function M.AssertLabel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Label to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Label_keys[k], "Label contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Label
-- &lt;p&gt;Structure containing details about the detected label, including name, and level of confidence.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name (label) of the object.&lt;/p&gt;
function M.Label(Confidence, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Label")
	local t = { 
		["Confidence"] = Confidence,
		["Name"] = Name,
	}
	M.AssertLabel(t)
	return t
end

local ImageQuality_keys = { "Sharpness" = true, "Brightness" = true, nil }

function M.AssertImageQuality(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageQuality to be of type 'table'")
	if struct["Sharpness"] then M.AssertFloat(struct["Sharpness"]) end
	if struct["Brightness"] then M.AssertFloat(struct["Brightness"]) end
	for k,_ in pairs(struct) do
		assert(ImageQuality_keys[k], "ImageQuality contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageQuality
-- &lt;p&gt;Identifies face image brightness and sharpness. &lt;/p&gt;
-- @param Sharpness [Float] &lt;p&gt;Value representing sharpness of the face. The service returns a value between 0 and 100 (inclusive). A higher value indicates a sharper face image.&lt;/p&gt;
-- @param Brightness [Float] &lt;p&gt;Value representing brightness of the face. The service returns a value between 0 and 100 (inclusive). A higher value indicates a brighter face image.&lt;/p&gt;
function M.ImageQuality(Sharpness, Brightness, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageQuality")
	local t = { 
		["Sharpness"] = Sharpness,
		["Brightness"] = Brightness,
	}
	M.AssertImageQuality(t)
	return t
end

local DetectModerationLabelsResponse_keys = { "ModerationLabels" = true, nil }

function M.AssertDetectModerationLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectModerationLabelsResponse to be of type 'table'")
	if struct["ModerationLabels"] then M.AssertModerationLabels(struct["ModerationLabels"]) end
	for k,_ in pairs(struct) do
		assert(DetectModerationLabelsResponse_keys[k], "DetectModerationLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectModerationLabelsResponse
--  
-- @param ModerationLabels [ModerationLabels] &lt;p&gt;An array of labels for explicit or suggestive adult content found in the image. The list includes the top-level label and each child label detected in the image. This is useful for filtering specific categories of content. &lt;/p&gt;
function M.DetectModerationLabelsResponse(ModerationLabels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetectModerationLabelsResponse")
	local t = { 
		["ModerationLabels"] = ModerationLabels,
	}
	M.AssertDetectModerationLabelsResponse(t)
	return t
end

local IndexFacesResponse_keys = { "FaceRecords" = true, "OrientationCorrection" = true, nil }

function M.AssertIndexFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFacesResponse to be of type 'table'")
	if struct["FaceRecords"] then M.AssertFaceRecordList(struct["FaceRecords"]) end
	if struct["OrientationCorrection"] then M.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(IndexFacesResponse_keys[k], "IndexFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFacesResponse
--  
-- @param FaceRecords [FaceRecordList] &lt;p&gt;An array of faces detected and added to the collection. For more information, see &lt;a&gt;howitworks-index-faces&lt;/a&gt;. &lt;/p&gt;
-- @param OrientationCorrection [OrientationCorrection] &lt;p&gt;The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct image orientation. The bounding box coordinates returned in &lt;code&gt;FaceRecords&lt;/code&gt; represent face locations before the image orientation is corrected. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If the input image is in jpeg format, it might contain exchangeable image (Exif) metadata. If so, and the Exif metadata populates the orientation field, the value of &lt;code&gt;OrientationCorrection&lt;/code&gt; is null and the bounding box coordinates in &lt;code&gt;FaceRecords&lt;/code&gt; represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata.&lt;/p&gt; &lt;/note&gt;
function M.IndexFacesResponse(FaceRecords, OrientationCorrection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexFacesResponse")
	local t = { 
		["FaceRecords"] = FaceRecords,
		["OrientationCorrection"] = OrientationCorrection,
	}
	M.AssertIndexFacesResponse(t)
	return t
end

local CreateCollectionRequest_keys = { "CollectionId" = true, nil }

function M.AssertCreateCollectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCollectionRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["CollectionId"] then M.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(CreateCollectionRequest_keys[k], "CreateCollectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCollectionRequest
--  
-- @param CollectionId [CollectionId] &lt;p&gt;ID for the collection that you are creating.&lt;/p&gt;
-- Required parameter: CollectionId
function M.CreateCollectionRequest(CollectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCollectionRequest")
	local t = { 
		["CollectionId"] = CollectionId,
	}
	M.AssertCreateCollectionRequest(t)
	return t
end

local Gender_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertGender(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Gender to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertGenderType(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Gender_keys[k], "Gender contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Gender
-- &lt;p&gt;Gender of the face and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [GenderType] &lt;p&gt;Gender of the face.&lt;/p&gt;
function M.Gender(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Gender")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertGender(t)
	return t
end

local GetCelebrityInfoRequest_keys = { "Id" = true, nil }

function M.AssertGetCelebrityInfoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCelebrityInfoRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertRekognitionUniqueId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetCelebrityInfoRequest_keys[k], "GetCelebrityInfoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCelebrityInfoRequest
--  
-- @param Id [RekognitionUniqueId] &lt;p&gt;The ID for the celebrity. You get the celebrity ID from a call to the operation, which recognizes celebrities in an image. &lt;/p&gt;
-- Required parameter: Id
function M.GetCelebrityInfoRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCelebrityInfoRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetCelebrityInfoRequest(t)
	return t
end

local RecognizeCelebritiesRequest_keys = { "Image" = true, nil }

function M.AssertRecognizeCelebritiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecognizeCelebritiesRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Image"] then M.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(RecognizeCelebritiesRequest_keys[k], "RecognizeCelebritiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecognizeCelebritiesRequest
--  
-- @param Image [Image] &lt;p&gt;The input image to use for celebrity recognition.&lt;/p&gt;
-- Required parameter: Image
function M.RecognizeCelebritiesRequest(Image, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecognizeCelebritiesRequest")
	local t = { 
		["Image"] = Image,
	}
	M.AssertRecognizeCelebritiesRequest(t)
	return t
end

local DetectLabelsRequest_keys = { "MinConfidence" = true, "Image" = true, "MaxLabels" = true, nil }

function M.AssertDetectLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectLabelsRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["MinConfidence"] then M.AssertPercent(struct["MinConfidence"]) end
	if struct["Image"] then M.AssertImage(struct["Image"]) end
	if struct["MaxLabels"] then M.AssertUInteger(struct["MaxLabels"]) end
	for k,_ in pairs(struct) do
		assert(DetectLabelsRequest_keys[k], "DetectLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectLabelsRequest
--  
-- @param MinConfidence [Percent] &lt;p&gt;Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't return any labels with confidence lower than this specified value.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;MinConfidence&lt;/code&gt; is not specified, the operation returns labels with a confidence values greater than or equal to 50 percent.&lt;/p&gt;
-- @param Image [Image] &lt;p&gt;The input image. You can provide a blob of image bytes or an S3 object.&lt;/p&gt;
-- @param MaxLabels [UInteger] &lt;p&gt;Maximum number of labels you want the service to return in the response. The service returns the specified number of highest confidence labels. &lt;/p&gt;
-- Required parameter: Image
function M.DetectLabelsRequest(MinConfidence, Image, MaxLabels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetectLabelsRequest")
	local t = { 
		["MinConfidence"] = MinConfidence,
		["Image"] = Image,
		["MaxLabels"] = MaxLabels,
	}
	M.AssertDetectLabelsRequest(t)
	return t
end

local CreateCollectionResponse_keys = { "CollectionArn" = true, "StatusCode" = true, nil }

function M.AssertCreateCollectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCollectionResponse to be of type 'table'")
	if struct["CollectionArn"] then M.AssertString(struct["CollectionArn"]) end
	if struct["StatusCode"] then M.AssertUInteger(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(CreateCollectionResponse_keys[k], "CreateCollectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCollectionResponse
--  
-- @param CollectionArn [String] &lt;p&gt;Amazon Resource Name (ARN) of the collection. You can use this to manage permissions on your resources. &lt;/p&gt;
-- @param StatusCode [UInteger] &lt;p&gt;HTTP status code indicating the result of the operation.&lt;/p&gt;
function M.CreateCollectionResponse(CollectionArn, StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCollectionResponse")
	local t = { 
		["CollectionArn"] = CollectionArn,
		["StatusCode"] = StatusCode,
	}
	M.AssertCreateCollectionResponse(t)
	return t
end

local InvalidPaginationTokenException_keys = { nil }

function M.AssertInvalidPaginationTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPaginationTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidPaginationTokenException_keys[k], "InvalidPaginationTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPaginationTokenException
-- &lt;p&gt;Pagination token in the request is not valid.&lt;/p&gt;
function M.InvalidPaginationTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPaginationTokenException")
	local t = { 
	}
	M.AssertInvalidPaginationTokenException(t)
	return t
end

local InvalidImageFormatException_keys = { nil }

function M.AssertInvalidImageFormatException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidImageFormatException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidImageFormatException_keys[k], "InvalidImageFormatException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidImageFormatException
-- &lt;p&gt;The provided image format is not supported. &lt;/p&gt;
function M.InvalidImageFormatException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidImageFormatException")
	local t = { 
	}
	M.AssertInvalidImageFormatException(t)
	return t
end

local ResourceAlreadyExistsException_keys = { nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- &lt;p&gt;A collection with the specified ID already exists.&lt;/p&gt;
function M.ResourceAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

local Emotion_keys = { "Confidence" = true, "Type" = true, nil }

function M.AssertEmotion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Emotion to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Type"] then M.AssertEmotionName(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(Emotion_keys[k], "Emotion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Emotion
-- &lt;p&gt;The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Type [EmotionName] &lt;p&gt;Type of emotion detected.&lt;/p&gt;
function M.Emotion(Confidence, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Emotion")
	local t = { 
		["Confidence"] = Confidence,
		["Type"] = Type,
	}
	M.AssertEmotion(t)
	return t
end

local Image_keys = { "Bytes" = true, "S3Object" = true, nil }

function M.AssertImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Image to be of type 'table'")
	if struct["Bytes"] then M.AssertImageBlob(struct["Bytes"]) end
	if struct["S3Object"] then M.AssertS3Object(struct["S3Object"]) end
	for k,_ in pairs(struct) do
		assert(Image_keys[k], "Image contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Image
-- &lt;p&gt;Provides the input image either as bytes or an S3 object.&lt;/p&gt; &lt;p&gt;You pass image bytes to a Rekognition API operation by using the &lt;code&gt;Bytes&lt;/code&gt; property. For example, you would use the &lt;code&gt;Bytes&lt;/code&gt; property to pass an image loaded from a local file system. Image bytes passed by using the &lt;code&gt;Bytes&lt;/code&gt; property must be base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to call Rekognition API operations. For more information, see &lt;a&gt;example4&lt;/a&gt;.&lt;/p&gt; &lt;p&gt; You pass images stored in an S3 bucket to a Rekognition API operation by using the &lt;code&gt;S3Object&lt;/code&gt; property. Images stored in an S3 bucket do not need to be base64-encoded.&lt;/p&gt; &lt;p&gt;The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.&lt;/p&gt; &lt;p&gt;If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes using the Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and then call the operation using the S3Object property.&lt;/p&gt; &lt;p&gt;For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see &lt;a&gt;manage-access-resource-policies&lt;/a&gt;. &lt;/p&gt;
-- @param Bytes [ImageBlob] &lt;p&gt;Blob of image bytes up to 5 MBs.&lt;/p&gt;
-- @param S3Object [S3Object] &lt;p&gt;Identifies an S3 object as the image source.&lt;/p&gt;
function M.Image(Bytes, S3Object, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Image")
	local t = { 
		["Bytes"] = Bytes,
		["S3Object"] = S3Object,
	}
	M.AssertImage(t)
	return t
end

local CompareFacesResponse_keys = { "TargetImageOrientationCorrection" = true, "UnmatchedFaces" = true, "SourceImageOrientationCorrection" = true, "FaceMatches" = true, "SourceImageFace" = true, nil }

function M.AssertCompareFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompareFacesResponse to be of type 'table'")
	if struct["TargetImageOrientationCorrection"] then M.AssertOrientationCorrection(struct["TargetImageOrientationCorrection"]) end
	if struct["UnmatchedFaces"] then M.AssertCompareFacesUnmatchList(struct["UnmatchedFaces"]) end
	if struct["SourceImageOrientationCorrection"] then M.AssertOrientationCorrection(struct["SourceImageOrientationCorrection"]) end
	if struct["FaceMatches"] then M.AssertCompareFacesMatchList(struct["FaceMatches"]) end
	if struct["SourceImageFace"] then M.AssertComparedSourceImageFace(struct["SourceImageFace"]) end
	for k,_ in pairs(struct) do
		assert(CompareFacesResponse_keys[k], "CompareFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompareFacesResponse
--  
-- @param TargetImageOrientationCorrection [OrientationCorrection] &lt;p&gt; The orientation of the target image (in counterclockwise direction). If your application displays the target image, you can use this value to correct the orientation of the image. The bounding box coordinates returned in &lt;code&gt;FaceMatches&lt;/code&gt; and &lt;code&gt;UnmatchedFaces&lt;/code&gt; represent face locations before the image orientation is corrected. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If the target image is in .jpg format, it might contain Exif metadata that includes the orientation of the image. If the Exif metadata for the target image populates the orientation field, the value of &lt;code&gt;OrientationCorrection&lt;/code&gt; is null and the bounding box coordinates in &lt;code&gt;FaceMatches&lt;/code&gt; and &lt;code&gt;UnmatchedFaces&lt;/code&gt; represent the location of the face after Exif metadata is used to correct the orientation. Images in .png format don't contain Exif metadata.&lt;/p&gt; &lt;/note&gt;
-- @param UnmatchedFaces [CompareFacesUnmatchList] &lt;p&gt;An array of faces in the target image that did not match the source image face.&lt;/p&gt;
-- @param SourceImageOrientationCorrection [OrientationCorrection] &lt;p&gt; The orientation of the source image (counterclockwise direction). If your application displays the source image, you can use this value to correct image orientation. The bounding box coordinates returned in &lt;code&gt;SourceImageFace&lt;/code&gt; represent the location of the face before the image orientation is corrected. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If the source image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If the Exif metadata for the source image populates the orientation field, the value of &lt;code&gt;OrientationCorrection&lt;/code&gt; is null and the &lt;code&gt;SourceImageFace&lt;/code&gt; bounding box coordinates represent the location of the face after Exif metadata is used to correct the orientation. Images in .png format don't contain Exif metadata.&lt;/p&gt; &lt;/note&gt;
-- @param FaceMatches [CompareFacesMatchList] &lt;p&gt;An array of faces in the target image that match the source image face. Each &lt;code&gt;CompareFacesMatch&lt;/code&gt; object provides the bounding box, the confidence level that the bounding box contains a face, and the similarity score for the face in the bounding box and the face in the source image.&lt;/p&gt;
-- @param SourceImageFace [ComparedSourceImageFace] &lt;p&gt;The face in the source image that was used for comparison.&lt;/p&gt;
function M.CompareFacesResponse(TargetImageOrientationCorrection, UnmatchedFaces, SourceImageOrientationCorrection, FaceMatches, SourceImageFace, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompareFacesResponse")
	local t = { 
		["TargetImageOrientationCorrection"] = TargetImageOrientationCorrection,
		["UnmatchedFaces"] = UnmatchedFaces,
		["SourceImageOrientationCorrection"] = SourceImageOrientationCorrection,
		["FaceMatches"] = FaceMatches,
		["SourceImageFace"] = SourceImageFace,
	}
	M.AssertCompareFacesResponse(t)
	return t
end

local Beard_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertBeard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Beard to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Beard_keys[k], "Beard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Beard
-- &lt;p&gt;Indicates whether or not the face has a beard, and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [Boolean] &lt;p&gt;Boolean value that indicates whether the face has beard or not.&lt;/p&gt;
function M.Beard(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Beard")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertBeard(t)
	return t
end

local Pose_keys = { "Yaw" = true, "Roll" = true, "Pitch" = true, nil }

function M.AssertPose(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Pose to be of type 'table'")
	if struct["Yaw"] then M.AssertDegree(struct["Yaw"]) end
	if struct["Roll"] then M.AssertDegree(struct["Roll"]) end
	if struct["Pitch"] then M.AssertDegree(struct["Pitch"]) end
	for k,_ in pairs(struct) do
		assert(Pose_keys[k], "Pose contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Pose
-- &lt;p&gt;Indicates the pose of the face as determined by its pitch, roll, and yaw.&lt;/p&gt;
-- @param Yaw [Degree] &lt;p&gt;Value representing the face rotation on the yaw axis.&lt;/p&gt;
-- @param Roll [Degree] &lt;p&gt;Value representing the face rotation on the roll axis.&lt;/p&gt;
-- @param Pitch [Degree] &lt;p&gt;Value representing the face rotation on the pitch axis.&lt;/p&gt;
function M.Pose(Yaw, Roll, Pitch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Pose")
	local t = { 
		["Yaw"] = Yaw,
		["Roll"] = Roll,
		["Pitch"] = Pitch,
	}
	M.AssertPose(t)
	return t
end

local MouthOpen_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertMouthOpen(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MouthOpen to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(MouthOpen_keys[k], "MouthOpen contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MouthOpen
-- &lt;p&gt;Indicates whether or not the mouth on the face is open, and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [Boolean] &lt;p&gt;Boolean value that indicates whether the mouth on the face is open or not.&lt;/p&gt;
function M.MouthOpen(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MouthOpen")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertMouthOpen(t)
	return t
end

local ListCollectionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListCollectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCollectionsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListCollectionsRequest_keys[k], "ListCollectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCollectionsRequest
--  
-- @param NextToken [PaginationToken] &lt;p&gt;Pagination token from the previous response.&lt;/p&gt;
-- @param MaxResults [PageSize] &lt;p&gt;Maximum number of collection IDs to return.&lt;/p&gt;
function M.ListCollectionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCollectionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListCollectionsRequest(t)
	return t
end

local Face_keys = { "BoundingBox" = true, "FaceId" = true, "ExternalImageId" = true, "Confidence" = true, "ImageId" = true, nil }

function M.AssertFace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Face to be of type 'table'")
	if struct["BoundingBox"] then M.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["FaceId"] then M.AssertFaceId(struct["FaceId"]) end
	if struct["ExternalImageId"] then M.AssertExternalImageId(struct["ExternalImageId"]) end
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["ImageId"] then M.AssertImageId(struct["ImageId"]) end
	for k,_ in pairs(struct) do
		assert(Face_keys[k], "Face contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Face
-- &lt;p&gt;Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. &lt;/p&gt;
-- @param BoundingBox [BoundingBox] &lt;p&gt;Bounding box of the face.&lt;/p&gt;
-- @param FaceId [FaceId] &lt;p&gt;Unique identifier that Amazon Rekognition assigns to the face.&lt;/p&gt;
-- @param ExternalImageId [ExternalImageId] &lt;p&gt;Identifier that you assign to all the faces in the input image.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Confidence level that the bounding box contains a face (and not a different object such as a tree).&lt;/p&gt;
-- @param ImageId [ImageId] &lt;p&gt;Unique identifier that Amazon Rekognition assigns to the input image.&lt;/p&gt;
function M.Face(BoundingBox, FaceId, ExternalImageId, Confidence, ImageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Face")
	local t = { 
		["BoundingBox"] = BoundingBox,
		["FaceId"] = FaceId,
		["ExternalImageId"] = ExternalImageId,
		["Confidence"] = Confidence,
		["ImageId"] = ImageId,
	}
	M.AssertFace(t)
	return t
end

local DetectModerationLabelsRequest_keys = { "MinConfidence" = true, "Image" = true, nil }

function M.AssertDetectModerationLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectModerationLabelsRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["MinConfidence"] then M.AssertPercent(struct["MinConfidence"]) end
	if struct["Image"] then M.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(DetectModerationLabelsRequest_keys[k], "DetectModerationLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectModerationLabelsRequest
--  
-- @param MinConfidence [Percent] &lt;p&gt;Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't return any labels with a confidence level lower than this specified value.&lt;/p&gt; &lt;p&gt;If you don't specify &lt;code&gt;MinConfidence&lt;/code&gt;, the operation returns labels with confidence values greater than or equal to 50 percent.&lt;/p&gt;
-- @param Image [Image] &lt;p&gt;The input image as bytes or an S3 object.&lt;/p&gt;
-- Required parameter: Image
function M.DetectModerationLabelsRequest(MinConfidence, Image, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetectModerationLabelsRequest")
	local t = { 
		["MinConfidence"] = MinConfidence,
		["Image"] = Image,
	}
	M.AssertDetectModerationLabelsRequest(t)
	return t
end

local DetectLabelsResponse_keys = { "Labels" = true, "OrientationCorrection" = true, nil }

function M.AssertDetectLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectLabelsResponse to be of type 'table'")
	if struct["Labels"] then M.AssertLabels(struct["Labels"]) end
	if struct["OrientationCorrection"] then M.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(DetectLabelsResponse_keys[k], "DetectLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectLabelsResponse
--  
-- @param Labels [Labels] &lt;p&gt;An array of labels for the real-world objects detected. &lt;/p&gt;
-- @param OrientationCorrection [OrientationCorrection] &lt;p&gt; The orientation of the input image (counter-clockwise direction). If your application displays the image, you can use this value to correct the orientation. If Amazon Rekognition detects that the input image was rotated (for example, by 90 degrees), it first corrects the orientation before detecting the labels. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If the input image Exif metadata populates the orientation field, Amazon Rekognition does not perform orientation correction and the value of OrientationCorrection will be null.&lt;/p&gt; &lt;/note&gt;
function M.DetectLabelsResponse(Labels, OrientationCorrection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetectLabelsResponse")
	local t = { 
		["Labels"] = Labels,
		["OrientationCorrection"] = OrientationCorrection,
	}
	M.AssertDetectLabelsResponse(t)
	return t
end

local Mustache_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertMustache(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mustache to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Mustache_keys[k], "Mustache contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mustache
-- &lt;p&gt;Indicates whether or not the face has a mustache, and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [Boolean] &lt;p&gt;Boolean value that indicates whether the face has mustache or not.&lt;/p&gt;
function M.Mustache(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Mustache")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertMustache(t)
	return t
end

local ProvisionedThroughputExceededException_keys = { nil }

function M.AssertProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ProvisionedThroughputExceededException_keys[k], "ProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputExceededException
-- &lt;p&gt;The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Rekognition.&lt;/p&gt;
function M.ProvisionedThroughputExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughputExceededException")
	local t = { 
	}
	M.AssertProvisionedThroughputExceededException(t)
	return t
end

local ResourceNotFoundException_keys = { nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;Collection specified in the request is not found.&lt;/p&gt;
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local ThrottlingException_keys = { nil }

function M.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ThrottlingException_keys[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- &lt;p&gt;Amazon Rekognition is temporarily unable to process the request. Try your call again.&lt;/p&gt;
function M.ThrottlingException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
	}
	M.AssertThrottlingException(t)
	return t
end

local ComparedFace_keys = { "BoundingBox" = true, "Confidence" = true, "Pose" = true, "Quality" = true, "Landmarks" = true, nil }

function M.AssertComparedFace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComparedFace to be of type 'table'")
	if struct["BoundingBox"] then M.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Pose"] then M.AssertPose(struct["Pose"]) end
	if struct["Quality"] then M.AssertImageQuality(struct["Quality"]) end
	if struct["Landmarks"] then M.AssertLandmarks(struct["Landmarks"]) end
	for k,_ in pairs(struct) do
		assert(ComparedFace_keys[k], "ComparedFace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComparedFace
-- &lt;p&gt;Provides face metadata for target image faces that are analysed by &lt;code&gt;CompareFaces&lt;/code&gt; and &lt;code&gt;RecognizeCelebrities&lt;/code&gt;.&lt;/p&gt;
-- @param BoundingBox [BoundingBox] &lt;p&gt;Bounding box of the face.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence that what the bounding box contains is a face.&lt;/p&gt;
-- @param Pose [Pose] &lt;p&gt;Indicates the pose of the face as determined by its pitch, roll, and yaw.&lt;/p&gt;
-- @param Quality [ImageQuality] &lt;p&gt;Identifies face image brightness and sharpness. &lt;/p&gt;
-- @param Landmarks [Landmarks] &lt;p&gt;An array of facial landmarks.&lt;/p&gt;
function M.ComparedFace(BoundingBox, Confidence, Pose, Quality, Landmarks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComparedFace")
	local t = { 
		["BoundingBox"] = BoundingBox,
		["Confidence"] = Confidence,
		["Pose"] = Pose,
		["Quality"] = Quality,
		["Landmarks"] = Landmarks,
	}
	M.AssertComparedFace(t)
	return t
end

local SearchFacesRequest_keys = { "FaceId" = true, "MaxFaces" = true, "FaceMatchThreshold" = true, "CollectionId" = true, nil }

function M.AssertSearchFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["FaceId"], "Expected key FaceId to exist in table")
	if struct["FaceId"] then M.AssertFaceId(struct["FaceId"]) end
	if struct["MaxFaces"] then M.AssertMaxFaces(struct["MaxFaces"]) end
	if struct["FaceMatchThreshold"] then M.AssertPercent(struct["FaceMatchThreshold"]) end
	if struct["CollectionId"] then M.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(SearchFacesRequest_keys[k], "SearchFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesRequest
--  
-- @param FaceId [FaceId] &lt;p&gt;ID of a face to find matches for in the collection.&lt;/p&gt;
-- @param MaxFaces [MaxFaces] &lt;p&gt;Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.&lt;/p&gt;
-- @param FaceMatchThreshold [Percent] &lt;p&gt;Optional value specifying the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%.&lt;/p&gt;
-- @param CollectionId [CollectionId] &lt;p&gt;ID of the collection the face belongs to.&lt;/p&gt;
-- Required parameter: CollectionId
-- Required parameter: FaceId
function M.SearchFacesRequest(FaceId, MaxFaces, FaceMatchThreshold, CollectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchFacesRequest")
	local t = { 
		["FaceId"] = FaceId,
		["MaxFaces"] = MaxFaces,
		["FaceMatchThreshold"] = FaceMatchThreshold,
		["CollectionId"] = CollectionId,
	}
	M.AssertSearchFacesRequest(t)
	return t
end

local SearchFacesByImageResponse_keys = { "SearchedFaceBoundingBox" = true, "SearchedFaceConfidence" = true, "FaceMatches" = true, nil }

function M.AssertSearchFacesByImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesByImageResponse to be of type 'table'")
	if struct["SearchedFaceBoundingBox"] then M.AssertBoundingBox(struct["SearchedFaceBoundingBox"]) end
	if struct["SearchedFaceConfidence"] then M.AssertPercent(struct["SearchedFaceConfidence"]) end
	if struct["FaceMatches"] then M.AssertFaceMatchList(struct["FaceMatches"]) end
	for k,_ in pairs(struct) do
		assert(SearchFacesByImageResponse_keys[k], "SearchFacesByImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesByImageResponse
--  
-- @param SearchedFaceBoundingBox [BoundingBox] &lt;p&gt;The bounding box around the face in the input image that Amazon Rekognition used for the search.&lt;/p&gt;
-- @param SearchedFaceConfidence [Percent] &lt;p&gt;The level of confidence that the &lt;code&gt;searchedFaceBoundingBox&lt;/code&gt;, contains a face.&lt;/p&gt;
-- @param FaceMatches [FaceMatchList] &lt;p&gt;An array of faces that match the input face, along with the confidence in the match.&lt;/p&gt;
function M.SearchFacesByImageResponse(SearchedFaceBoundingBox, SearchedFaceConfidence, FaceMatches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchFacesByImageResponse")
	local t = { 
		["SearchedFaceBoundingBox"] = SearchedFaceBoundingBox,
		["SearchedFaceConfidence"] = SearchedFaceConfidence,
		["FaceMatches"] = FaceMatches,
	}
	M.AssertSearchFacesByImageResponse(t)
	return t
end

local FaceRecord_keys = { "FaceDetail" = true, "Face" = true, nil }

function M.AssertFaceRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceRecord to be of type 'table'")
	if struct["FaceDetail"] then M.AssertFaceDetail(struct["FaceDetail"]) end
	if struct["Face"] then M.AssertFace(struct["Face"]) end
	for k,_ in pairs(struct) do
		assert(FaceRecord_keys[k], "FaceRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceRecord
-- &lt;p&gt;Object containing both the face metadata (stored in the back-end database) and facial attributes that are detected but aren't stored in the database.&lt;/p&gt;
-- @param FaceDetail [FaceDetail] &lt;p&gt;Structure containing attributes of the face that the algorithm detected.&lt;/p&gt;
-- @param Face [Face] &lt;p&gt;Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. &lt;/p&gt;
function M.FaceRecord(FaceDetail, Face, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FaceRecord")
	local t = { 
		["FaceDetail"] = FaceDetail,
		["Face"] = Face,
	}
	M.AssertFaceRecord(t)
	return t
end

local AgeRange_keys = { "High" = true, "Low" = true, nil }

function M.AssertAgeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgeRange to be of type 'table'")
	if struct["High"] then M.AssertUInteger(struct["High"]) end
	if struct["Low"] then M.AssertUInteger(struct["Low"]) end
	for k,_ in pairs(struct) do
		assert(AgeRange_keys[k], "AgeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgeRange
-- &lt;p&gt;Structure containing the estimated age range, in years, for a face.&lt;/p&gt; &lt;p&gt;Rekognition estimates an age-range for faces detected in the input image. Estimated age ranges can overlap; a face of a 5 year old may have an estimated range of 4-6 whilst the face of a 6 year old may have an estimated range of 4-8.&lt;/p&gt;
-- @param High [UInteger] &lt;p&gt;The highest estimated age.&lt;/p&gt;
-- @param Low [UInteger] &lt;p&gt;The lowest estimated age.&lt;/p&gt;
function M.AgeRange(High, Low, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgeRange")
	local t = { 
		["High"] = High,
		["Low"] = Low,
	}
	M.AssertAgeRange(t)
	return t
end

local CompareFacesRequest_keys = { "TargetImage" = true, "SourceImage" = true, "SimilarityThreshold" = true, nil }

function M.AssertCompareFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompareFacesRequest to be of type 'table'")
	assert(struct["SourceImage"], "Expected key SourceImage to exist in table")
	assert(struct["TargetImage"], "Expected key TargetImage to exist in table")
	if struct["TargetImage"] then M.AssertImage(struct["TargetImage"]) end
	if struct["SourceImage"] then M.AssertImage(struct["SourceImage"]) end
	if struct["SimilarityThreshold"] then M.AssertPercent(struct["SimilarityThreshold"]) end
	for k,_ in pairs(struct) do
		assert(CompareFacesRequest_keys[k], "CompareFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompareFacesRequest
--  
-- @param TargetImage [Image] &lt;p&gt;The target image, either as bytes or as an S3 object.&lt;/p&gt;
-- @param SourceImage [Image] &lt;p&gt;The source image, either as bytes or as an S3 object.&lt;/p&gt;
-- @param SimilarityThreshold [Percent] &lt;p&gt;The minimum level of confidence in the face matches that a match must meet to be included in the &lt;code&gt;FaceMatches&lt;/code&gt; array.&lt;/p&gt;
-- Required parameter: SourceImage
-- Required parameter: TargetImage
function M.CompareFacesRequest(TargetImage, SourceImage, SimilarityThreshold, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompareFacesRequest")
	local t = { 
		["TargetImage"] = TargetImage,
		["SourceImage"] = SourceImage,
		["SimilarityThreshold"] = SimilarityThreshold,
	}
	M.AssertCompareFacesRequest(t)
	return t
end

local Sunglasses_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertSunglasses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Sunglasses to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Sunglasses_keys[k], "Sunglasses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Sunglasses
-- &lt;p&gt;Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [Boolean] &lt;p&gt;Boolean value that indicates whether the face is wearing sunglasses or not.&lt;/p&gt;
function M.Sunglasses(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Sunglasses")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertSunglasses(t)
	return t
end

local RecognizeCelebritiesResponse_keys = { "UnrecognizedFaces" = true, "CelebrityFaces" = true, "OrientationCorrection" = true, nil }

function M.AssertRecognizeCelebritiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecognizeCelebritiesResponse to be of type 'table'")
	if struct["UnrecognizedFaces"] then M.AssertComparedFaceList(struct["UnrecognizedFaces"]) end
	if struct["CelebrityFaces"] then M.AssertCelebrityList(struct["CelebrityFaces"]) end
	if struct["OrientationCorrection"] then M.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(RecognizeCelebritiesResponse_keys[k], "RecognizeCelebritiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecognizeCelebritiesResponse
--  
-- @param UnrecognizedFaces [ComparedFaceList] &lt;p&gt;Details about each unrecognized face in the image.&lt;/p&gt;
-- @param CelebrityFaces [CelebrityList] &lt;p&gt;Details about each celebrity found in the image. Amazon Rekognition can detect a maximum of 15 celebrities in an image.&lt;/p&gt;
-- @param OrientationCorrection [OrientationCorrection] &lt;p&gt;The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct the orientation. The bounding box coordinates returned in &lt;code&gt;CelebrityFaces&lt;/code&gt; and &lt;code&gt;UnrecognizedFaces&lt;/code&gt; represent face locations before the image orientation is corrected. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If the input image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If so, and the Exif metadata for the input image populates the orientation field, the value of &lt;code&gt;OrientationCorrection&lt;/code&gt; is null and the &lt;code&gt;CelebrityFaces&lt;/code&gt; and &lt;code&gt;UnrecognizedFaces&lt;/code&gt; bounding box coordinates represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata. &lt;/p&gt; &lt;/note&gt;
function M.RecognizeCelebritiesResponse(UnrecognizedFaces, CelebrityFaces, OrientationCorrection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecognizeCelebritiesResponse")
	local t = { 
		["UnrecognizedFaces"] = UnrecognizedFaces,
		["CelebrityFaces"] = CelebrityFaces,
		["OrientationCorrection"] = OrientationCorrection,
	}
	M.AssertRecognizeCelebritiesResponse(t)
	return t
end

local InvalidParameterException_keys = { nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- &lt;p&gt;Input parameter violated a constraint. Validate your parameter before calling the API operation again.&lt;/p&gt;
function M.InvalidParameterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
	}
	M.AssertInvalidParameterException(t)
	return t
end

local EyeOpen_keys = { "Confidence" = true, "Value" = true, nil }

function M.AssertEyeOpen(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EyeOpen to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then M.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(EyeOpen_keys[k], "EyeOpen contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EyeOpen
-- &lt;p&gt;Indicates whether or not the eyes on the face are open, and the confidence level in the determination.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Level of confidence in the determination.&lt;/p&gt;
-- @param Value [Boolean] &lt;p&gt;Boolean value that indicates whether the eyes on the face are open.&lt;/p&gt;
function M.EyeOpen(Confidence, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EyeOpen")
	local t = { 
		["Confidence"] = Confidence,
		["Value"] = Value,
	}
	M.AssertEyeOpen(t)
	return t
end

local DetectFacesResponse_keys = { "FaceDetails" = true, "OrientationCorrection" = true, nil }

function M.AssertDetectFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectFacesResponse to be of type 'table'")
	if struct["FaceDetails"] then M.AssertFaceDetailList(struct["FaceDetails"]) end
	if struct["OrientationCorrection"] then M.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(DetectFacesResponse_keys[k], "DetectFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectFacesResponse
--  
-- @param FaceDetails [FaceDetailList] &lt;p&gt;Details of each face found in the image. &lt;/p&gt;
-- @param OrientationCorrection [OrientationCorrection] &lt;p&gt; The orientation of the input image (counter-clockwise direction). If your application displays the image, you can use this value to correct image orientation. The bounding box coordinates returned in &lt;code&gt;FaceDetails&lt;/code&gt; represent face locations before the image orientation is corrected. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If the input image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If so, and the Exif metadata for the input image populates the orientation field, the value of &lt;code&gt;OrientationCorrection&lt;/code&gt; is null and the &lt;code&gt;FaceDetails&lt;/code&gt; bounding box coordinates represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata.&lt;/p&gt; &lt;/note&gt;
function M.DetectFacesResponse(FaceDetails, OrientationCorrection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetectFacesResponse")
	local t = { 
		["FaceDetails"] = FaceDetails,
		["OrientationCorrection"] = OrientationCorrection,
	}
	M.AssertDetectFacesResponse(t)
	return t
end

local Celebrity_keys = { "MatchConfidence" = true, "Face" = true, "Name" = true, "Urls" = true, "Id" = true, nil }

function M.AssertCelebrity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Celebrity to be of type 'table'")
	if struct["MatchConfidence"] then M.AssertPercent(struct["MatchConfidence"]) end
	if struct["Face"] then M.AssertComparedFace(struct["Face"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Urls"] then M.AssertUrls(struct["Urls"]) end
	if struct["Id"] then M.AssertRekognitionUniqueId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Celebrity_keys[k], "Celebrity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Celebrity
-- &lt;p&gt;Provides information about a celebrity recognized by the operation.&lt;/p&gt;
-- @param MatchConfidence [Percent] &lt;p&gt;The confidence, in percentage, that Rekognition has that the recognized face is the celebrity.&lt;/p&gt;
-- @param Face [ComparedFace] &lt;p&gt;Provides information about the celebrity's face, such as its location on the image.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the celebrity.&lt;/p&gt;
-- @param Urls [Urls] &lt;p&gt;An array of URLs pointing to additional information about the celebrity. If there is no additional information about the celebrity, this list is empty.&lt;/p&gt;
-- @param Id [RekognitionUniqueId] &lt;p&gt;A unique identifier for the celebrity. &lt;/p&gt;
function M.Celebrity(MatchConfidence, Face, Name, Urls, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Celebrity")
	local t = { 
		["MatchConfidence"] = MatchConfidence,
		["Face"] = Face,
		["Name"] = Name,
		["Urls"] = Urls,
		["Id"] = Id,
	}
	M.AssertCelebrity(t)
	return t
end

local DetectFacesRequest_keys = { "Attributes" = true, "Image" = true, nil }

function M.AssertDetectFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectFacesRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Attributes"] then M.AssertAttributes(struct["Attributes"]) end
	if struct["Image"] then M.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(DetectFacesRequest_keys[k], "DetectFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectFacesRequest
--  
-- @param Attributes [Attributes] &lt;p&gt;An array of facial attributes you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for &lt;code&gt;Attributes&lt;/code&gt; or if you specify &lt;code&gt;[&quot;DEFAULT&quot;]&lt;/code&gt;, the API returns the following subset of facial attributes: &lt;code&gt;BoundingBox&lt;/code&gt;, &lt;code&gt;Confidence&lt;/code&gt;, &lt;code&gt;Pose&lt;/code&gt;, &lt;code&gt;Quality&lt;/code&gt; and &lt;code&gt;Landmarks&lt;/code&gt;. If you provide &lt;code&gt;[&quot;ALL&quot;]&lt;/code&gt;, all facial attributes are returned but the operation will take longer to complete.&lt;/p&gt; &lt;p&gt;If you provide both, &lt;code&gt;[&quot;ALL&quot;, &quot;DEFAULT&quot;]&lt;/code&gt;, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes). &lt;/p&gt;
-- @param Image [Image] &lt;p&gt;The image in which you want to detect faces. You can specify a blob or an S3 object. &lt;/p&gt;
-- Required parameter: Image
function M.DetectFacesRequest(Attributes, Image, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetectFacesRequest")
	local t = { 
		["Attributes"] = Attributes,
		["Image"] = Image,
	}
	M.AssertDetectFacesRequest(t)
	return t
end

local CompareFacesMatch_keys = { "Face" = true, "Similarity" = true, nil }

function M.AssertCompareFacesMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompareFacesMatch to be of type 'table'")
	if struct["Face"] then M.AssertComparedFace(struct["Face"]) end
	if struct["Similarity"] then M.AssertPercent(struct["Similarity"]) end
	for k,_ in pairs(struct) do
		assert(CompareFacesMatch_keys[k], "CompareFacesMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompareFacesMatch
-- &lt;p&gt;Provides information about a face in a target image that matches the source image face analysed by &lt;code&gt;CompareFaces&lt;/code&gt;. The &lt;code&gt;Face&lt;/code&gt; property contains the bounding box of the face in the target image. The &lt;code&gt;Similarity&lt;/code&gt; property is the confidence that the source image face matches the face in the bounding box.&lt;/p&gt;
-- @param Face [ComparedFace] &lt;p&gt;Provides face metadata (bounding box and confidence that the bounding box actually contains a face).&lt;/p&gt;
-- @param Similarity [Percent] &lt;p&gt;Level of confidence that the faces match.&lt;/p&gt;
function M.CompareFacesMatch(Face, Similarity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompareFacesMatch")
	local t = { 
		["Face"] = Face,
		["Similarity"] = Similarity,
	}
	M.AssertCompareFacesMatch(t)
	return t
end

local AccessDeniedException_keys = { nil }

function M.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AccessDeniedException_keys[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- &lt;p&gt;You are not authorized to perform the action.&lt;/p&gt;
function M.AccessDeniedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
	}
	M.AssertAccessDeniedException(t)
	return t
end

local ListFacesResponse_keys = { "NextToken" = true, "Faces" = true, nil }

function M.AssertListFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacesResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Faces"] then M.AssertFaceList(struct["Faces"]) end
	for k,_ in pairs(struct) do
		assert(ListFacesResponse_keys[k], "ListFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacesResponse
--  
-- @param NextToken [String] &lt;p&gt;If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces.&lt;/p&gt;
-- @param Faces [FaceList] &lt;p&gt;An array of &lt;code&gt;Face&lt;/code&gt; objects. &lt;/p&gt;
function M.ListFacesResponse(NextToken, Faces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacesResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Faces"] = Faces,
	}
	M.AssertListFacesResponse(t)
	return t
end

local ModerationLabel_keys = { "Confidence" = true, "ParentName" = true, "Name" = true, nil }

function M.AssertModerationLabel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModerationLabel to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["ParentName"] then M.AssertString(struct["ParentName"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ModerationLabel_keys[k], "ModerationLabel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModerationLabel
-- &lt;p&gt;Provides information about a single type of moderated content found in an image. Each type of moderated content has a label within a hierarchical taxonomy. For more information, see &lt;a&gt;image-moderation&lt;/a&gt;.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Specifies the confidence that Amazon Rekognition has that the label has been correctly identified.&lt;/p&gt; &lt;p&gt;If you don't specify the &lt;code&gt;MinConfidence&lt;/code&gt; parameter in the call to &lt;code&gt;DetectModerationLabels&lt;/code&gt;, the operation returns labels with a confidence value greater than or equal to 50 percent.&lt;/p&gt;
-- @param ParentName [String] &lt;p&gt;The name for the parent label. Labels at the top-level of the hierarchy have the parent label &lt;code&gt;&quot;&quot;&lt;/code&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The label name for the type of content detected in the image.&lt;/p&gt;
function M.ModerationLabel(Confidence, ParentName, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModerationLabel")
	local t = { 
		["Confidence"] = Confidence,
		["ParentName"] = ParentName,
		["Name"] = Name,
	}
	M.AssertModerationLabel(t)
	return t
end

local ListFacesRequest_keys = { "NextToken" = true, "MaxResults" = true, "CollectionId" = true, nil }

function M.AssertListFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPageSize(struct["MaxResults"]) end
	if struct["CollectionId"] then M.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(ListFacesRequest_keys[k], "ListFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacesRequest
--  
-- @param NextToken [PaginationToken] &lt;p&gt;If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.&lt;/p&gt;
-- @param MaxResults [PageSize] &lt;p&gt;Maximum number of faces to return.&lt;/p&gt;
-- @param CollectionId [CollectionId] &lt;p&gt;ID of the collection from which to list the faces.&lt;/p&gt;
-- Required parameter: CollectionId
function M.ListFacesRequest(NextToken, MaxResults, CollectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["CollectionId"] = CollectionId,
	}
	M.AssertListFacesRequest(t)
	return t
end

local FaceMatch_keys = { "Face" = true, "Similarity" = true, nil }

function M.AssertFaceMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceMatch to be of type 'table'")
	if struct["Face"] then M.AssertFace(struct["Face"]) end
	if struct["Similarity"] then M.AssertPercent(struct["Similarity"]) end
	for k,_ in pairs(struct) do
		assert(FaceMatch_keys[k], "FaceMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceMatch
-- &lt;p&gt;Provides face metadata. In addition, it also provides the confidence in the match of this face with the input face.&lt;/p&gt;
-- @param Face [Face] &lt;p&gt;Describes the face properties such as the bounding box, face ID, image ID of the source image, and external image ID that you assigned.&lt;/p&gt;
-- @param Similarity [Percent] &lt;p&gt;Confidence in the match of this face with the input face.&lt;/p&gt;
function M.FaceMatch(Face, Similarity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FaceMatch")
	local t = { 
		["Face"] = Face,
		["Similarity"] = Similarity,
	}
	M.AssertFaceMatch(t)
	return t
end

local BoundingBox_keys = { "Width" = true, "Top" = true, "Left" = true, "Height" = true, nil }

function M.AssertBoundingBox(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BoundingBox to be of type 'table'")
	if struct["Width"] then M.AssertFloat(struct["Width"]) end
	if struct["Top"] then M.AssertFloat(struct["Top"]) end
	if struct["Left"] then M.AssertFloat(struct["Left"]) end
	if struct["Height"] then M.AssertFloat(struct["Height"]) end
	for k,_ in pairs(struct) do
		assert(BoundingBox_keys[k], "BoundingBox contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BoundingBox
-- &lt;p&gt;Identifies the bounding box around the object or face. The &lt;code&gt;left&lt;/code&gt; (x-coordinate) and &lt;code&gt;top&lt;/code&gt; (y-coordinate) are coordinates representing the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). &lt;/p&gt; &lt;p&gt;The &lt;code&gt;top&lt;/code&gt; and &lt;code&gt;left&lt;/code&gt; values returned are ratios of the overall image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of the bounding box is 350x50 pixels, the API returns a &lt;code&gt;left&lt;/code&gt; value of 0.5 (350/700) and a &lt;code&gt;top&lt;/code&gt; value of 0.25 (50/200).&lt;/p&gt; &lt;p&gt; The &lt;code&gt;width&lt;/code&gt; and &lt;code&gt;height&lt;/code&gt; values represent the dimensions of the bounding box as a ratio of the overall image dimension. For example, if the input image is 700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. &lt;/p&gt; &lt;note&gt; &lt;p&gt; The bounding box coordinates can have negative values. For example, if Amazon Rekognition is able to detect a face that is at the image edge and is only partially visible, the service can return coordinates that are outside the image bounds and, depending on the image edge, you might get negative values or values greater than 1 for the &lt;code&gt;left&lt;/code&gt; or &lt;code&gt;top&lt;/code&gt; values. &lt;/p&gt; &lt;/note&gt;
-- @param Width [Float] &lt;p&gt;Width of the bounding box as a ratio of the overall image width.&lt;/p&gt;
-- @param Top [Float] &lt;p&gt;Top coordinate of the bounding box as a ratio of overall image height.&lt;/p&gt;
-- @param Left [Float] &lt;p&gt;Left coordinate of the bounding box as a ratio of overall image width.&lt;/p&gt;
-- @param Height [Float] &lt;p&gt;Height of the bounding box as a ratio of the overall image height.&lt;/p&gt;
function M.BoundingBox(Width, Top, Left, Height, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BoundingBox")
	local t = { 
		["Width"] = Width,
		["Top"] = Top,
		["Left"] = Left,
		["Height"] = Height,
	}
	M.AssertBoundingBox(t)
	return t
end

local FaceDetail_keys = { "Confidence" = true, "Eyeglasses" = true, "Sunglasses" = true, "Gender" = true, "Landmarks" = true, "Pose" = true, "Emotions" = true, "AgeRange" = true, "EyesOpen" = true, "BoundingBox" = true, "Smile" = true, "MouthOpen" = true, "Quality" = true, "Mustache" = true, "Beard" = true, nil }

function M.AssertFaceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceDetail to be of type 'table'")
	if struct["Confidence"] then M.AssertPercent(struct["Confidence"]) end
	if struct["Eyeglasses"] then M.AssertEyeglasses(struct["Eyeglasses"]) end
	if struct["Sunglasses"] then M.AssertSunglasses(struct["Sunglasses"]) end
	if struct["Gender"] then M.AssertGender(struct["Gender"]) end
	if struct["Landmarks"] then M.AssertLandmarks(struct["Landmarks"]) end
	if struct["Pose"] then M.AssertPose(struct["Pose"]) end
	if struct["Emotions"] then M.AssertEmotions(struct["Emotions"]) end
	if struct["AgeRange"] then M.AssertAgeRange(struct["AgeRange"]) end
	if struct["EyesOpen"] then M.AssertEyeOpen(struct["EyesOpen"]) end
	if struct["BoundingBox"] then M.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Smile"] then M.AssertSmile(struct["Smile"]) end
	if struct["MouthOpen"] then M.AssertMouthOpen(struct["MouthOpen"]) end
	if struct["Quality"] then M.AssertImageQuality(struct["Quality"]) end
	if struct["Mustache"] then M.AssertMustache(struct["Mustache"]) end
	if struct["Beard"] then M.AssertBeard(struct["Beard"]) end
	for k,_ in pairs(struct) do
		assert(FaceDetail_keys[k], "FaceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceDetail
-- &lt;p&gt;Structure containing attributes of the face that the algorithm detected.&lt;/p&gt;
-- @param Confidence [Percent] &lt;p&gt;Confidence level that the bounding box contains a face (and not a different object such as a tree).&lt;/p&gt;
-- @param Eyeglasses [Eyeglasses] &lt;p&gt;Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.&lt;/p&gt;
-- @param Sunglasses [Sunglasses] &lt;p&gt;Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.&lt;/p&gt;
-- @param Gender [Gender] &lt;p&gt;Gender of the face and the confidence level in the determination.&lt;/p&gt;
-- @param Landmarks [Landmarks] &lt;p&gt;Indicates the location of landmarks on the face.&lt;/p&gt;
-- @param Pose [Pose] &lt;p&gt;Indicates the pose of the face as determined by its pitch, roll, and yaw.&lt;/p&gt;
-- @param Emotions [Emotions] &lt;p&gt;The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY. &lt;/p&gt;
-- @param AgeRange [AgeRange] &lt;p&gt;The estimated age range, in years, for the face. Low represents the lowest estimated age and High represents the highest estimated age.&lt;/p&gt;
-- @param EyesOpen [EyeOpen] &lt;p&gt;Indicates whether or not the eyes on the face are open, and the confidence level in the determination.&lt;/p&gt;
-- @param BoundingBox [BoundingBox] &lt;p&gt;Bounding box of the face.&lt;/p&gt;
-- @param Smile [Smile] &lt;p&gt;Indicates whether or not the face is smiling, and the confidence level in the determination.&lt;/p&gt;
-- @param MouthOpen [MouthOpen] &lt;p&gt;Indicates whether or not the mouth on the face is open, and the confidence level in the determination.&lt;/p&gt;
-- @param Quality [ImageQuality] &lt;p&gt;Identifies image brightness and sharpness.&lt;/p&gt;
-- @param Mustache [Mustache] &lt;p&gt;Indicates whether or not the face has a mustache, and the confidence level in the determination.&lt;/p&gt;
-- @param Beard [Beard] &lt;p&gt;Indicates whether or not the face has a beard, and the confidence level in the determination.&lt;/p&gt;
function M.FaceDetail(Confidence, Eyeglasses, Sunglasses, Gender, Landmarks, Pose, Emotions, AgeRange, EyesOpen, BoundingBox, Smile, MouthOpen, Quality, Mustache, Beard, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FaceDetail")
	local t = { 
		["Confidence"] = Confidence,
		["Eyeglasses"] = Eyeglasses,
		["Sunglasses"] = Sunglasses,
		["Gender"] = Gender,
		["Landmarks"] = Landmarks,
		["Pose"] = Pose,
		["Emotions"] = Emotions,
		["AgeRange"] = AgeRange,
		["EyesOpen"] = EyesOpen,
		["BoundingBox"] = BoundingBox,
		["Smile"] = Smile,
		["MouthOpen"] = MouthOpen,
		["Quality"] = Quality,
		["Mustache"] = Mustache,
		["Beard"] = Beard,
	}
	M.AssertFaceDetail(t)
	return t
end

function M.AssertRekognitionUniqueId(str)
	assert(str)
	assert(type(str) == "string", "Expected RekognitionUniqueId to be of type 'string'")
	assert(str:match("[0-9A-Za-z]*"), "Expected string to match pattern '[0-9A-Za-z]*'")
end

--  
function M.RekognitionUniqueId(str)
	M.AssertRekognitionUniqueId(str)
	return str
end

function M.AssertExternalImageId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExternalImageId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.%-:]+"), "Expected string to match pattern '[a-zA-Z0-9_.%-:]+'")
end

--  
function M.ExternalImageId(str)
	M.AssertExternalImageId(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertFaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected FaceId to be of type 'string'")
	assert(str:match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.FaceId(str)
	M.AssertFaceId(str)
	return str
end

function M.AssertS3ObjectVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectVersion to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3ObjectVersion(str)
	M.AssertS3ObjectVersion(str)
	return str
end

function M.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("[0-9A-Za-z%.%-_]*"), "Expected string to match pattern '[0-9A-Za-z%.%-_]*'")
end

--  
function M.S3Bucket(str)
	M.AssertS3Bucket(str)
	return str
end

function M.AssertLandmarkType(str)
	assert(str)
	assert(type(str) == "string", "Expected LandmarkType to be of type 'string'")
end

--  
function M.LandmarkType(str)
	M.AssertLandmarkType(str)
	return str
end

function M.AssertImageId(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageId to be of type 'string'")
	assert(str:match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.ImageId(str)
	M.AssertImageId(str)
	return str
end

function M.AssertS3ObjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3ObjectName(str)
	M.AssertS3ObjectName(str)
	return str
end

function M.AssertEmotionName(str)
	assert(str)
	assert(type(str) == "string", "Expected EmotionName to be of type 'string'")
end

--  
function M.EmotionName(str)
	M.AssertEmotionName(str)
	return str
end

function M.AssertOrientationCorrection(str)
	assert(str)
	assert(type(str) == "string", "Expected OrientationCorrection to be of type 'string'")
end

--  
function M.OrientationCorrection(str)
	M.AssertOrientationCorrection(str)
	return str
end

function M.AssertAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected Attribute to be of type 'string'")
end

--  
function M.Attribute(str)
	M.AssertAttribute(str)
	return str
end

function M.AssertGenderType(str)
	assert(str)
	assert(type(str) == "string", "Expected GenderType to be of type 'string'")
end

--  
function M.GenderType(str)
	M.AssertGenderType(str)
	return str
end

function M.AssertCollectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected CollectionId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.%-]+"), "Expected string to match pattern '[a-zA-Z0-9_.%-]+'")
end

--  
function M.CollectionId(str)
	M.AssertCollectionId(str)
	return str
end

function M.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
end

--  
function M.Url(str)
	M.AssertUrl(str)
	return str
end

function M.AssertPercent(float)
	assert(float)
	assert(type(float) == "number", "Expected Percent to be of type 'number'")
end

function M.Percent(float)
	M.AssertPercent(float)
	return float
end

function M.AssertDegree(float)
	assert(float)
	assert(type(float) == "number", "Expected Degree to be of type 'number'")
end

function M.Degree(float)
	M.AssertDegree(float)
	return float
end

function M.AssertFloat(float)
	assert(float)
	assert(type(float) == "number", "Expected Float to be of type 'number'")
end

function M.Float(float)
	M.AssertFloat(float)
	return float
end

function M.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 4096, "Expected integer to be max 4096")
end

function M.PageSize(integer)
	M.AssertPageSize(integer)
	return integer
end

function M.AssertUInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.UInteger(integer)
	M.AssertUInteger(integer)
	return integer
end

function M.AssertMaxFaces(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxFaces to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 4096, "Expected integer to be max 4096")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxFaces(integer)
	M.AssertMaxFaces(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertImageBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected ImageBlob to be of type 'string'")
	assert(#blob <= 5242880, "Expected blob to be max 5242880")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.ImageBlob(blob)
	M.AssertImageBlob(blob)
	return blob
end

function M.AssertEmotions(list)
	assert(list)
	assert(type(list) == "table", "Expected Emotions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEmotion(v)
	end
end

--  
-- List of Emotion objects
function M.Emotions(list)
	M.AssertEmotions(list)
	return list
end

function M.AssertFaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFace(v)
	end
end

--  
-- List of Face objects
function M.FaceList(list)
	M.AssertFaceList(list)
	return list
end

function M.AssertUrls(list)
	assert(list)
	assert(type(list) == "table", "Expected Urls to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUrl(v)
	end
end

--  
-- List of Url objects
function M.Urls(list)
	M.AssertUrls(list)
	return list
end

function M.AssertAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected Attributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.Attributes(list)
	M.AssertAttributes(list)
	return list
end

function M.AssertLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected Labels to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLabel(v)
	end
end

--  
-- List of Label objects
function M.Labels(list)
	M.AssertLabels(list)
	return list
end

function M.AssertLandmarks(list)
	assert(list)
	assert(type(list) == "table", "Expected Landmarks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLandmark(v)
	end
end

--  
-- List of Landmark objects
function M.Landmarks(list)
	M.AssertLandmarks(list)
	return list
end

function M.AssertFaceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceIdList to be of type ''table")
	assert(#list <= 4096, "Expected list to be contain 4096 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertFaceId(v)
	end
end

--  
-- List of FaceId objects
function M.FaceIdList(list)
	M.AssertFaceIdList(list)
	return list
end

function M.AssertCompareFacesMatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompareFacesMatchList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCompareFacesMatch(v)
	end
end

--  
-- List of CompareFacesMatch objects
function M.CompareFacesMatchList(list)
	M.AssertCompareFacesMatchList(list)
	return list
end

function M.AssertCompareFacesUnmatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompareFacesUnmatchList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComparedFace(v)
	end
end

--  
-- List of ComparedFace objects
function M.CompareFacesUnmatchList(list)
	M.AssertCompareFacesUnmatchList(list)
	return list
end

function M.AssertFaceRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceRecordList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFaceRecord(v)
	end
end

--  
-- List of FaceRecord objects
function M.FaceRecordList(list)
	M.AssertFaceRecordList(list)
	return list
end

function M.AssertCollectionIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected CollectionIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCollectionId(v)
	end
end

--  
-- List of CollectionId objects
function M.CollectionIdList(list)
	M.AssertCollectionIdList(list)
	return list
end

function M.AssertFaceDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFaceDetail(v)
	end
end

--  
-- List of FaceDetail objects
function M.FaceDetailList(list)
	M.AssertFaceDetailList(list)
	return list
end

function M.AssertCelebrityList(list)
	assert(list)
	assert(type(list) == "table", "Expected CelebrityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCelebrity(v)
	end
end

--  
-- List of Celebrity objects
function M.CelebrityList(list)
	M.AssertCelebrityList(list)
	return list
end

function M.AssertModerationLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected ModerationLabels to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertModerationLabel(v)
	end
end

--  
-- List of ModerationLabel objects
function M.ModerationLabels(list)
	M.AssertModerationLabels(list)
	return list
end

function M.AssertComparedFaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ComparedFaceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComparedFace(v)
	end
end

--  
-- List of ComparedFace objects
function M.ComparedFaceList(list)
	M.AssertComparedFaceList(list)
	return list
end

function M.AssertFaceMatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceMatchList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFaceMatch(v)
	end
end

--  
-- List of FaceMatch objects
function M.FaceMatchList(list)
	M.AssertFaceMatchList(list)
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
			return "rekognition.amazonaws.com"
		end
	end
	local ss = { "rekognition" }
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
--- DeleteCollection
-- @param DeleteCollectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCollectionAsync(DeleteCollectionRequest, cb)
	assert(DeleteCollectionRequest, "You must provide a DeleteCollectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.DeleteCollection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCollectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFaces
-- @param ListFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFacesAsync(ListFacesRequest, cb)
	assert(ListFacesRequest, "You must provide a ListFacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.ListFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListFacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- IndexFaces
-- @param IndexFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.IndexFacesAsync(IndexFacesRequest, cb)
	assert(IndexFacesRequest, "You must provide a IndexFacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.IndexFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", IndexFacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SearchFaces
-- @param SearchFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SearchFacesAsync(SearchFacesRequest, cb)
	assert(SearchFacesRequest, "You must provide a SearchFacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.SearchFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SearchFacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCelebrityInfo
-- @param GetCelebrityInfoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCelebrityInfoAsync(GetCelebrityInfoRequest, cb)
	assert(GetCelebrityInfoRequest, "You must provide a GetCelebrityInfoRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.GetCelebrityInfo",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetCelebrityInfoRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetectLabels
-- @param DetectLabelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetectLabelsAsync(DetectLabelsRequest, cb)
	assert(DetectLabelsRequest, "You must provide a DetectLabelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectLabels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetectLabelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetectModerationLabels
-- @param DetectModerationLabelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetectModerationLabelsAsync(DetectModerationLabelsRequest, cb)
	assert(DetectModerationLabelsRequest, "You must provide a DetectModerationLabelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectModerationLabels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetectModerationLabelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCollections
-- @param ListCollectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCollectionsAsync(ListCollectionsRequest, cb)
	assert(ListCollectionsRequest, "You must provide a ListCollectionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.ListCollections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCollectionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCollection
-- @param CreateCollectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCollectionAsync(CreateCollectionRequest, cb)
	assert(CreateCollectionRequest, "You must provide a CreateCollectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.CreateCollection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCollectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CompareFaces
-- @param CompareFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CompareFacesAsync(CompareFacesRequest, cb)
	assert(CompareFacesRequest, "You must provide a CompareFacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.CompareFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CompareFacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFaces
-- @param DeleteFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFacesAsync(DeleteFacesRequest, cb)
	assert(DeleteFacesRequest, "You must provide a DeleteFacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.DeleteFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteFacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SearchFacesByImage
-- @param SearchFacesByImageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SearchFacesByImageAsync(SearchFacesByImageRequest, cb)
	assert(SearchFacesByImageRequest, "You must provide a SearchFacesByImageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.SearchFacesByImage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SearchFacesByImageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetectFaces
-- @param DetectFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetectFacesAsync(DetectFacesRequest, cb)
	assert(DetectFacesRequest, "You must provide a DetectFacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetectFacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RecognizeCelebrities
-- @param RecognizeCelebritiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RecognizeCelebritiesAsync(RecognizeCelebritiesRequest, cb)
	assert(RecognizeCelebritiesRequest, "You must provide a RecognizeCelebritiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "RekognitionService.RecognizeCelebrities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RecognizeCelebritiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M