SELECT TOP 1000
	OM.ID as OfferMasterID,
	OM.OfferName,
	OM.Description,
	OM.OfferCode,
	OM.AvailableStartDate,
	OM.AvailableEndDate,
	OM.Active,
	XP.PropertyName,
	XP.PropertyDesc,
	C.CampaignName,
	OT.OfferTypeName,
	S.SegmentName,
	DC.Name as 'Distr. Channel',
	NULL AS 'Player columns>>',
	O.PlayerID,
	OS.OfferStatusName,
	P.BirthDate,
	P.FirstName,
	P.LastName
	
FROM OFR.UC_X_OfferMaster OM
JOIN OFR.UC_X_OfferMasterProperty OMP ON OM.ID = OMP.OfferMasterId
JOIN UC_X_Property XP ON OMP.PropertyId = XP.PropertyID
JOIN OFR.UC_X_Campaign C ON OM.CampaignID = C.CampaignID
JOIN OFR.UC_X_OfferType OT ON OM.OfferTypeId = OT.OfferTypeId
JOIN OFR.UC_PL_Offer O ON OM.ID = O.OfferMasterId
JOIN OFR.UC_X_OfferStatus OS ON O.Status = OS.OfferStatusID
JOIN UC_PL_Player P ON O.PlayerID = P.PlayerID
JOIN OFR.UC_X_OfferMasterDistributionChannel ODC ON OM.ID = ODC.OfferMasterID
JOIN OFR.UC_X_DistributionChannel DC ON ODC.DistributionChannelID = DC.ID
JOIN OFR.UC_X_Segment S ON OM.SegmentID = S.SegmentID

------ Remove filter for all rows ---------
WHERE 1 = 1 
	AND OM.ID = 761



	  



