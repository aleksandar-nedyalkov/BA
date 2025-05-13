SELECT 
	OM.ID as OfferMasterID,
	OM.OfferName,
	OM.Description,
	OM.OfferCode,
	OM.AvailableStartDate,
	OM.AvailableEndDate,
	OM.Active,
	O.PlayerID,
	OS.OfferStatusName,
	P.BirthDate,
	P.FirstName,
	P.LastName,
	P.UniversalPlayerID,
	P.EnrollmentPropertyId
	
FROM OFR.UC_X_OfferMaster OM											
JOIN OFR.UC_PL_Offer O ON OM.ID = O.OfferMasterId						 
JOIN OFR.UC_X_OfferStatus OS ON O.Status = OS.OfferStatusID				
JOIN UC_PL_Player P ON O.PlayerID = P.PlayerID							

------ Remove filter for all rows ---------
WHERE 1 = 1 
	AND OM.ID = 761
