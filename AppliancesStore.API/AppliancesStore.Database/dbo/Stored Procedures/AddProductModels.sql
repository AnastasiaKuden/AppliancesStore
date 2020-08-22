CREATE PROCEDURE [dbo].[AddProductModels]
	@rowValue INT
AS 
BEGIN
	CREATE TABLE #RandomAppliances
		(id INT,
		 [product] NVARCHAR(20))
	INSERT INTO #RandomAppliances
		(id, [product])
		SELECT 1,'Refrigerator' UNION
		SELECT 2,'Microwave' UNION
		SELECT 3,'Multicooker' UNION
		SELECT 4,'VacuumCleaner' UNION
		SELECT 5,'RobotVacuumCleaner' UNION
		SELECT 6,'Dishwasher' UNION
		SELECT 7,'Hob' UNION
		SELECT 8,'Hood' UNION
		SELECT 9,'Washer' UNION
		SELECT 10,'Iron' UNION
		SELECT 11,'AirConditioning' UNION
		SELECT 12,'Oven' UNION
		SELECT 13,'CoffeeMaker' UNION
		SELECT 14,'ElectricKettle' UNION
		SELECT 15,'Blender' UNION
		SELECT 16,'MeatGrinder' UNION
		SELECT 17,'HairDryer' UNION
		SELECT 18,'Toothbrush' UNION
		SELECT 19,'Libra'

	CREATE TABLE #ToothbrushCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #ToothbrushCompanies
		(id, [company])
		SELECT 1,'B.Well' UNION
		SELECT 2,'Colgate' UNION
		SELECT 3,'Donfeel' UNION
		SELECT 4,'Hapica' UNION
		SELECT 5,'Oclean' UNION
		SELECT 6,'BrushBaby' UNION
		SELECT 7,'FireFly' UNION
		SELECT 8,'Jetpik' UNION
		SELECT 9,'MyBliss' UNION
		SELECT 10,'Philips' UNION
		SELECT 11,'Soocas' UNION
		SELECT 12,'SoWash' UNION
		SELECT 13,'WaterPik' UNION
		SELECT 14,'Xiaomi' UNION
		SELECT 15,'SmileGuard' UNION
		SELECT 16,'PLayBrush' UNION
		SELECT 17,'PECHAM' UNION
		SELECT 18,'Panasonic' UNION
		SELECT 19,'Oral-B' UNION
		SELECT 20,'Longa-Vita' UNION
		SELECT 21,'Kenwell' UNION
		SELECT 22,'Fuchs' UNION
		SELECT 23,'FOREO' UNION
		SELECT 24,'Dentalpik' UNION
		SELECT 25,'D.I.E.S.' 
    
	CREATE TABLE #RefrMicrDishHobHoodWashCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #RefrMicrDishHobHoodWashCompanies
		(id, [company])
		SELECT 1,'ATLANT' UNION
		SELECT 2,'Beko' UNION
		SELECT 3,'Bosh' UNION
		SELECT 4,'Gorenje' UNION
		SELECT 5,'Haier' UNION
		SELECT 6,'Indesit' UNION
		SELECT 7,'LG' UNION
		SELECT 8,'Pozis' UNION
		SELECT 9,'Samsung' UNION
		SELECT 10,'Stinol' UNION
		SELECT 11,'Biryusa' UNION
		SELECT 12,'DON' UNION
		SELECT 13,'Galaxy' UNION
		SELECT 14,'Hansa' UNION
		SELECT 15,'IKEA' UNION
		SELECT 16,'LEX' UNION
		SELECT 17,'SUPRA' UNION
		SELECT 18,'Xiaomi' UNION
		SELECT 19,'Olto' UNION
		SELECT 20,'Electrolux' UNION
		SELECT 21,'Korting' UNION
		SELECT 22,'Siemens' UNION
		SELECT 23,'NEFF' UNION
		SELECT 24,'Vestel' UNION
		SELECT 25,'Weissgauff' 

	CREATE TABLE #HairDryerCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #HairDryerCompanies
		(id, [company])
		SELECT 1,'Babyliss' UNION
		SELECT 2,'Braun' UNION
		SELECT 3,'BBK' UNION
		SELECT 4,'Be-Uni' UNION
		SELECT 5,'Bellissima' UNION
		SELECT 6,'Brayer' UNION
		SELECT 7,'Carrera' UNION
		SELECT 8,'Connex' UNION
		SELECT 9,'Dyson' UNION
		SELECT 10,'Delta' UNION
		SELECT 11,'Erika' UNION
		SELECT 12,'Goodhelper' UNION
		SELECT 13,'Hairway' UNION
		SELECT 14,'Hottek' UNION
		SELECT 15,'HomeElement' UNION
		SELECT 16,'Jaguar' UNION
		SELECT 17,'Kelli' UNION
		SELECT 18,'Kondor' UNION
		SELECT 19,'Lira' UNION
		SELECT 20,'LUMME' UNION
		SELECT 21,'Nofer' UNION
		SELECT 22,'NOVA' UNION
		SELECT 23,'Puff' UNION
		SELECT 24,'Valera' UNION
		SELECT 25,'Wahl' 

	CREATE TABLE #MulticookerCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #MulticookerCompanies
		(id, [company])
		SELECT 1,'Atlanta' UNION
		SELECT 2,'Bork' UNION
		SELECT 3,'Bosh' UNION
		SELECT 4,'Cuckoo' UNION
		SELECT 5,'BRAND' UNION
		SELECT 6,'Caso' UNION
		SELECT 7,'Chicco' UNION
		SELECT 8,'DELTA' UNION
		SELECT 9,'Hitachi' UNION
		SELECT 10,'Hotter' UNION
		SELECT 11,'Leran' UNION
		SELECT 12,'Normann' UNION
		SELECT 13,'Galaxy' UNION
		SELECT 14,'Philips' UNION
		SELECT 15,'Polaris' UNION
		SELECT 16,'Redmond' UNION
		SELECT 17,'Scarlett' UNION
		SELECT 18,'Sinbo' UNION
		SELECT 19,'Tefal' UNION
		SELECT 20,'Vitesse' UNION
		SELECT 21,'VITEK' UNION
		SELECT 22,'Vasilisa' UNION
		SELECT 23,'Xiaomi' UNION
		SELECT 24,'UNIT' UNION
		SELECT 25,'Steba' 

	CREATE TABLE #VacuumCleanerIronCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #VacuumCleanerIronCompanies
		(id, [company])
		SELECT 1,'Atlanta' UNION
		SELECT 2,'Beon' UNION
		SELECT 3,'Bosh' UNION
		SELECT 4,'BERKUT' UNION
		SELECT 5,'Bork' UNION
		SELECT 6,'Bravo' UNION
		SELECT 7,'Candy' UNION
		SELECT 8,'Daewoo' UNION
		SELECT 9,'Deerma' UNION
		SELECT 10,'DELTA' UNION
		SELECT 11,'Dyson' UNION
		SELECT 12,'Electrolux' UNION
		SELECT 13,'Energy' UNION
		SELECT 14,'Gorenje' UNION
		SELECT 15,'Holt' UNION
		SELECT 16,'Hoover' UNION
		SELECT 17,'KRAFT' UNION
		SELECT 18,'LG' UNION
		SELECT 19,'MARTA' UNION
		SELECT 20,'Philips' UNION
		SELECT 21,'Pioneer' UNION
		SELECT 22,'Tefal' UNION
		SELECT 23,'VAX' UNION
		SELECT 24,'Zelmer' UNION
		SELECT 25,'Xiaomi' 

	CREATE TABLE #AirConditioningOvenCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #AirConditioningOvenCompanies
		(id, [company])
		SELECT 1,'Aero' UNION
		SELECT 2,'Airwell' UNION
		SELECT 3,'Alaska' UNION
		SELECT 4,'Ballu' UNION
		SELECT 5,'Bork' UNION
		SELECT 6,'Chigo' UNION
		SELECT 7,'Dantex' UNION
		SELECT 8,'Denko' UNION
		SELECT 9,'Faura' UNION
		SELECT 10,'Fuji' UNION
		SELECT 11,'Gree' UNION
		SELECT 12,'GREEN' UNION
		SELECT 13,'Haier' UNION
		SELECT 14,'Hotpoint' UNION
		SELECT 15,'Jax' UNION
		SELECT 16,'Leberg' UNION
		SELECT 17,'Marsa' UNION
		SELECT 18,'LG' UNION
		SELECT 19,'MDV' UNION
		SELECT 20,'Oasis' UNION
		SELECT 21,'Panasonic' UNION
		SELECT 22,'Pioneer' UNION
		SELECT 23,'Rapid' UNION
		SELECT 24,'Roland' UNION
		SELECT 25,'Samsung' 
	
	CREATE TABLE #CoffeeMakerCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #CoffeeMakerCompanies
		(id, [company])
		SELECT 1,'Bosh' UNION
		SELECT 2,'BFS' UNION
		SELECT 3,'Braun' UNION
		SELECT 4,'Caso' UNION
		SELECT 5,'CoffeeQueen' UNION
		SELECT 6,'DELTA' UNION
		SELECT 7,'Electrolux' UNION
		SELECT 8,'Energy' UNION
		SELECT 9,'Franke' UNION
		SELECT 10,'Galaxy' UNION
		SELECT 11,'GINO' UNION
		SELECT 12,'HOMESTAR' UNION
		SELECT 13,'Jardeko' UNION
		SELECT 14,'Leben' UNION
		SELECT 15,'Magio' UNION
		SELECT 16,'Moulinex' UNION
		SELECT 17,'Normann' UNION
		SELECT 18,'Phillips' UNION
		SELECT 19,'Ritter' UNION
		SELECT 20,'Sencor' UNION
		SELECT 21,'Sinbo' UNION
		SELECT 22,'Tefal' UNION
		SELECT 23,'VITEK' UNION
		SELECT 24,'Zimber' UNION
		SELECT 25,'Vasilisa' 

	CREATE TABLE #MeatGrinderCompanies
		(id INT,
		 [company] NVARCHAR(30))
	INSERT INTO #MeatGrinderCompanies
		(id, [company])
		SELECT 1,'Chudesniza' UNION
		SELECT 2,'Umniza' UNION
		SELECT 3,'Rotor' UNION
		SELECT 4,'Penzmash' UNION
		SELECT 5,'Masteriza' UNION
		SELECT 6,'LEPSE' UNION
		SELECT 7,'Ladomir' UNION
		SELECT 8,'Comfort' UNION
		SELECT 9,'Zarya' UNION
		SELECT 10,'Dobrynya' UNION
		SELECT 11,'VelikieReki' UNION
		SELECT 12,'Vasilisa' UNION
		SELECT 13,'Belvar' UNION
		SELECT 14,'Aksinya' UNION
		SELECT 15,'Aksion' UNION
		SELECT 16,'Zarget' UNION
		SELECT 17,'Wollmer' UNION
		SELECT 18,'VEKTA' UNION
		SELECT 19,'VAIL' UNION
		SELECT 20,'Tefal' UNION
		SELECT 21,'SUPRA' UNION
		SELECT 22,'Redmond' UNION
		SELECT 23,'Polaris' UNION
		SELECT 24,'Olto' UNION
		SELECT 25,'Maxima' 

	CREATE TABLE #RefrigeratorModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #RefrigeratorModels
		(id, [model])
		SELECT 1,'XM-' UNION
		SELECT 2,'RID-' UNION
		SELECT 3,'GA-' UNION
		SELECT 4,'RCSK-' UNION
		SELECT 5,'CNMV-' UNION
		SELECT 6,'WCD-' UNION
		SELECT 7,'NRK-' UNION
		SELECT 8,'EF-' UNION
		SELECT 9,'MR-' UNION
		SELECT 10,'RB-' 	
		
	CREATE TABLE #MicrowaveModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #MicrowaveModels
		(id, [model])
		SELECT 1,'MS-' UNION
		SELECT 2,'MO-' UNION
		SELECT 3,'MW-' UNION
		SELECT 4,'CMW-' UNION
		SELECT 5,'ME-' UNION
		SELECT 6,'XO-' UNION
		SELECT 7,'HMT-' UNION
		SELECT 8,'MWS-' UNION
		SELECT 9,'HMT-' UNION
		SELECT 10,'SC-MW-' 	
		
	CREATE TABLE #MulticookerModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #MulticookerModels
		(id, [model])
		SELECT 1,'RMC-' UNION
		SELECT 2,'DFB-' UNION
		SELECT 3,'QF-' UNION
		SELECT 4,'KT-' UNION
		SELECT 5,'MK-' UNION
		SELECT 6,'CY-' UNION
		SELECT 7,'RMC-IHM-' UNION
		SELECT 8,'CE-' UNION
		SELECT 9,'VS-' UNION
		SELECT 10,'HX-' 	

	CREATE TABLE #VacuumCleanerModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #VacuumCleanerModels
		(id, [model])
		SELECT 1,'VK-' UNION
		SELECT 2,'LU-' UNION
		SELECT 3,'FC' UNION
		SELECT 4,'V-C' UNION
		SELECT 5,'BGS' UNION
		SELECT 6,'MVC' UNION
		SELECT 7,'SC' UNION
		SELECT 8,'VC' UNION
		SELECT 9,'KT-' UNION
		SELECT 10,'JV' 
		
	CREATE TABLE #RobotVacuumCleanerModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #RobotVacuumCleanerModels
		(id, [model])
		SELECT 1,'MI ROBOT-' UNION
		SELECT 2,'1C-' UNION
		SELECT 3,'LDS' UNION
		SELECT 4,'MIJIA' UNION
		SELECT 5,'O5-' UNION
		SELECT 6,'U100-' UNION
		SELECT 7,'U80-' UNION
		SELECT 8,'ROBOWASH' UNION
		SELECT 9,'004M-' UNION
		SELECT 10,'U90-' 

	CREATE TABLE #DishWasherModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #DishWasherModels
		(id, [model])
		SELECT 1,'BDW' UNION
		SELECT 2,'TDW' UNION
		SELECT 3,'DW' UNION
		SELECT 4,'DW-' UNION
		SELECT 5,'ESL' UNION
		SELECT 6,'EEA-' UNION
		SELECT 7,'SPV25CX' UNION
		SELECT 8,'SMV-' UNION
		SELECT 9,'EMG' UNION
		SELECT 10,'MCFD' 

	CREATE TABLE #BlenderModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #BlenderModels
		(id, [model])
		SELECT 1,'BL' UNION
		SELECT 2,'HB' UNION
		SELECT 3,'RHB-' UNION
		SELECT 4,'L' UNION
		SELECT 5,'MSM' UNION
		SELECT 6,'MX' UNION
		SELECT 7,'ECO-' UNION
		SELECT 8,'HR-' UNION
		SELECT 9,'CD-BL' UNION
		SELECT 10,'MQ' 

	CREATE TABLE #HobModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #HobModels
		(id, [model])
		SELECT 1,'EHH' UNION
		SELECT 2,'IPE' UNION
		SELECT 3,'HV' UNION
		SELECT 4,'EHF-' UNION
		SELECT 5,'PIE' UNION
		SELECT 6,'PKE-' UNION
		SELECT 7,'EVI' UNION
		SELECT 8,'CPE-' UNION
		SELECT 9,'HGG' UNION
		SELECT 10,'HI' 

	CREATE TABLE #MeatGrinderModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #MeatGrinderModels
		(id, [model])
		SELECT 1,'M-' UNION
		SELECT 2,'FW2' UNION
		SELECT 3,'MFW' UNION
		SELECT 4,'ME-' UNION
		SELECT 5,'CS-MG' UNION
		SELECT 6,'HV1 ME' UNION
		SELECT 7,'RMG-' UNION
		SELECT 8,'MT-' UNION
		SELECT 9,'PMG' UNION
		SELECT 10,'UGR' 

	CREATE TABLE #HoodModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #HoodModels
		(id, [model])
		SELECT 1,'RubinS-' UNION
		SELECT 2,'Flat 52P-' UNION
		SELECT 3,'TEL' UNION
		SELECT 4,'LUKA' UNION
		SELECT 5,'TEL' UNION
		SELECT 6,'GALTONIA' UNION
		SELECT 7,'FLATBOX' UNION
		SELECT 8,'Casper-52' UNION
		SELECT 9,'TALLY' UNION
		SELECT 10,'Idan-' 

	CREATE TABLE #LibraModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #LibraModels
		(id, [model])
		SELECT 1,'Body' UNION
		SELECT 2,'Smart' UNION
		SELECT 3,'MAX-' UNION
		SELECT 4,'MINI WH' UNION
		SELECT 5,'MINI BK' UNION
		SELECT 6,'FAT SCALE' UNION
		SELECT 7,'S1 PRO' UNION
		SELECT 8,'ECO-' UNION
		SELECT 9,'PP' UNION
		SELECT 10,'LITE-' 

	CREATE TABLE #WasherModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #WasherModels
		(id, [model])
		SELECT 1,'WM-' UNION
		SELECT 2,'F-' UNION
		SELECT 3,'CS4-' UNION
		SELECT 4,'WLG' UNION
		SELECT 5,'EW' UNION
		SELECT 6,'40M' UNION
		SELECT 7,'FH-' UNION
		SELECT 8,'IWUB' UNION
		SELECT 9,'WSRE' UNION
		SELECT 10,'CS34-' 

	CREATE TABLE #ToothbrushModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #ToothbrushModels
		(id, [model])
		SELECT 1,'Vitality' UNION
		SELECT 2,'HX' UNION
		SELECT 3,'RL' UNION
		SELECT 4,'Pro' UNION
		SELECT 5,'Smart' UNION
		SELECT 6,'MI' UNION
		SELECT 7,'X5-' UNION
		SELECT 8,'X3U' UNION
		SELECT 9,'Genius' UNION
		SELECT 10,'Sonicare' 

	CREATE TABLE #IronModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #IronModels
		(id, [model])
		SELECT 1,'GC' UNION
		SELECT 2,'Z' UNION
		SELECT 3,'YD-' UNION
		SELECT 4,'FV' UNION
		SELECT 5,'TS' UNION
		SELECT 6,'RI-C' UNION
		SELECT 7,'SC-' UNION
		SELECT 8,'TDA' UNION
		SELECT 9,'DW' UNION
		SELECT 10,'SI-' 

	CREATE TABLE #AirConditioningModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #AirConditioningModels
		(id, [model])
		SELECT 1,'ASW-H' UNION
		SELECT 2,'SRK' UNION
		SELECT 3,'EACS' UNION
		SELECT 4,'BPAC-' UNION
		SELECT 5,'AR' UNION
		SELECT 6,'CHW-' UNION
		SELECT 7,'BCD-' UNION
		SELECT 8,'P' UNION
		SELECT 9,'HSU-' UNION
		SELECT 10,'RS-A' 

	CREATE TABLE #HairDryerModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #HairDryerModels
		(id, [model])
		SELECT 1,'HP' UNION
		SELECT 2,'HPS' UNION
		SELECT 3,'4350-' UNION
		SELECT 4,'PHS-' UNION
		SELECT 5,'BAB' UNION
		SELECT 6,'CF-' UNION
		SELECT 7,'H3S-' UNION
		SELECT 8,'6604E' UNION
		SELECT 9,'AS-' UNION
		SELECT 10,'RF' 

	CREATE TABLE #OvenModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #OvenModels
		(id, [model])
		SELECT 1,'OEF' UNION
		SELECT 2,'EZB' UNION
		SELECT 3,'MBC DG-' UNION
		SELECT 4,'HBF-' UNION
		SELECT 5,'OKD' UNION
		SELECT 6,'EOV-' UNION
		SELECT 7,'HBN-' UNION
		SELECT 8,'HBJ' UNION
		SELECT 9,'BO-' UNION
		SELECT 10,'BSM' 

	CREATE TABLE #CoffeeMakerModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #CoffeeMakerModels
		(id, [model])
		SELECT 1,'KT-' UNION
		SELECT 2,'HD' UNION
		SELECT 3,'M' UNION
		SELECT 4,'TKA-' UNION
		SELECT 5,'RCM' UNION
		SELECT 6,'CM-' UNION
		SELECT 7,'MW-' UNION
		SELECT 8,'SC-CM' UNION
		SELECT 9,'ATCM-' UNION
		SELECT 10,'GL' 

	CREATE TABLE #KettleModels
		(id INT,
		 [model] NVARCHAR(10))
	INSERT INTO #KettleModels
		(id, [model])
		SELECT 1,'YM-K' UNION
		SELECT 2,'KT-' UNION
		SELECT 3,'G2-' UNION
		SELECT 4,'TWK-' UNION
		SELECT 5,'KO' UNION
		SELECT 6,'RK-M' UNION
		SELECT 7,'LU-' UNION
		SELECT 8,'WK' UNION
		SELECT 9,'1A' UNION
		SELECT 10,'KBOV' 

	CREATE TABLE #Countries
		(id INT,
		 [country] NVARCHAR(20))
	INSERT INTO #Countries
		(id, [country])
		SELECT 1,'Russia' UNION
		SELECT 2,'Germany' UNION
		SELECT 3,'USA' UNION
		SELECT 4,'France' UNION
		SELECT 5,'England' UNION
		SELECT 6,'Australia' UNION
		SELECT 7,'Japan' UNION
		SELECT 8,'China' UNION
		SELECT 9,'Samsung' UNION
		SELECT 10,'Norway' UNION
		SELECT 11,'Canada' UNION
		SELECT 12,'Turkey' UNION
		SELECT 13,'Spain' UNION
		SELECT 14,'Greece' UNION
		SELECT 15,'Italy' UNION
		SELECT 16,'Finland' UNION
		SELECT 17,'Sweden' UNION
		SELECT 18,'Denmark' UNION
		SELECT 19,'Portugal' UNION
		SELECT 20,'Holland' UNION
		SELECT 21,'Wales' UNION
		SELECT 22,'HUngary' 
		
	CREATE TABLE #DefrostingCameras
		(id INT,
		 [defrosing] NVARCHAR(20))
	INSERT INTO #DefrostingCameras
		(id, [defrosing])
		SELECT 1,'No Frost' UNION
		SELECT 2,'Drip System' UNION
		SELECT 3,'Manual' 

	CREATE TABLE #Colors
		(id INT,
		 [color] NVARCHAR(15))
	INSERT INTO #Colors
		(id, [color])
		SELECT 1,'Black' UNION
		SELECT 2,'Brown' UNION
		SELECT 3,'Gray' UNION
		SELECT 4,'White' UNION
		SELECT 5,'Yellow' UNION
		SELECT 6,'Orange' UNION
		SELECT 7,'Red' UNION
		SELECT 8,'Pink' UNION
		SELECT 9,'Blue' UNION
		SELECT 10,'Green' UNION
		SELECT 11,'Purple' 

	CREATE TABLE #EnergyClasses
		(id INT,
		 [class] NVARCHAR(4))
	INSERT INTO #EnergyClasses
		(id, [class])
		SELECT 1,'A' UNION
		SELECT 2,'A+' UNION
		SELECT 3,'A++' UNION
		SELECT 4,'A+++' UNION
		SELECT 5,'B' UNION
		SELECT 6,'D' 	
		
	CREATE TABLE #Switches
		(id INT,
		 [switches] NVARCHAR(20))
	INSERT INTO #Switches
		(id, [switches])
		SELECT 1,'Push-button' UNION
		SELECT 2,'Rotary mechanical' UNION
		SELECT 3,'Rotary clock' UNION
		SELECT 4,'Sensory' 
		
	CREATE TABLE #InnerCoating
		(id INT,
		 [coating] NVARCHAR(20))
	INSERT INTO #InnerCoating
		(id, [coating])
		SELECT 1,'Bioceramic Enamel' UNION
		SELECT 2,'Ceramics' UNION
		SELECT 3,'Stainless Steel' UNION
		SELECT 4,'Enamel' 		

	CREATE TABLE #Power
		(id INT,
		 [power] SMALLINT)
	INSERT INTO #Power
		(id, [power])
		SELECT 1,850 UNION
		SELECT 2,900 UNION
		SELECT 3,1000 UNION
		SELECT 4,1500 UNION
		SELECT 5, 2000 UNION
		SELECT 6, 2500

	CREATE TABLE #TypeOfInstallation
		(id INT,
		 [type] NVARCHAR(15))
	INSERT INTO #TypeOfInstallation
		(id, [type])
		SELECT 1,'Built-in' UNION
		SELECT 2,'Freestanding'	UNION
		SELECT 3,'PartlyFlashed'

	CREATE TABLE #TypeOfInstallationHob
		(id INT,
		 [type] NVARCHAR(15))
	INSERT INTO #TypeOfInstallationHob
		(id, [type])
		SELECT 1,'Embedded' UNION
		SELECT 2,'Fireplace' UNION
		SELECT 3,'Suspended' UNION
		SELECT 4,'Ceiling' 

	CREATE TABLE #TypeOfInstallationHood
		(id INT,
		 [type] NVARCHAR(15))
	INSERT INTO #TypeOfInstallationHood
		(id, [type])
		SELECT 1,'Dependent' UNION
		SELECT 2,'Independent'	

	CREATE TABLE #TypeOfCoffee
		(id INT,
		 [type] NVARCHAR(10))
	INSERT INTO #TypeOfCoffee
		(id, [type])
		SELECT 1,'Ground' UNION
		SELECT 2,'Grain' UNION
		SELECT 3,'Capsules' UNION
		SELECT 4,'Chalda' 

	CREATE TABLE #BowlCover
		(id INT,
		 [cover] NVARCHAR(10))
	INSERT INTO #BowlCover
		(id, [cover])
		SELECT 1,'Ceramic' UNION
		SELECT 2,'Teflon' UNION
		SELECT 3,'Titanium' UNION
		SELECT 4,'Coal' 

	CREATE TABLE #BodyMaterial
		(id INT,
		 [material] NVARCHAR(10))
	INSERT INTO #BodyMaterial
		(id, [material])
		SELECT 1,'Metal' UNION
		SELECT 2,'Plastic' UNION
		SELECT 3,'Ceramics' UNION
		SELECT 4,'Glass' 
	
	CREATE TABLE #ControlType
		(id INT,
		 [type] NVARCHAR(20))
	INSERT INTO #ControlType
		(id, [type])
		SELECT 1,'Mechanical' UNION
		SELECT 2,'Electronic' UNION
		SELECT 3,'Sensory' 	

	CREATE TABLE #HeatingElementType
		(id INT,
		 [type] NVARCHAR(15))
	INSERT INTO #HeatingElementType
		(id, [type])
		SELECT 1,'ClosedSpiral' UNION
		SELECT 2,'OpenSpiral' 

	CREATE TABLE #DustContainerType
		(id INT,
		 [type] NVARCHAR(15))
	INSERT INTO #DustContainerType
		(id, [type])
		SELECT 1,'Container' UNION
		SELECT 2,'Bag' UNION
		SELECT 3,'Aquafilter' 	
		
	CREATE TABLE #SuctionPipe
		(id INT,
		 [pipe] NVARCHAR(15))
	INSERT INTO #SuctionPipe
		(id, [pipe])
		SELECT 1,'Compound' UNION
		SELECT 2,'Telescopic' UNION
		SELECT 3,'Solid' 		

	CREATE TABLE #TypeOfSensors
		(id INT,
		 [type] NVARCHAR(15))
	INSERT INTO #TypeOfSensors
		(id, [type])
		SELECT 1,'Infrared' UNION
		SELECT 2,'Ultrasonic' UNION
		SELECT 3,'Optical' 	

	CREATE TABLE #TypeOfDrying
		(id INT,
		 [type] NVARCHAR(15))
	INSERT INTO #TypeOfDrying
		(id, [type])
		SELECT 1,'Ventilation' UNION
		SELECT 2,'Intense' UNION
		SELECT 3,'Condensation' UNION	
		SELECT 4,'TurboDrying' UNION
		SELECT 5,'Zeolite' 

	CREATE TABLE #TypeOfDryingWasher
		(id INT,
		 [type] NVARCHAR(25))
	INSERT INTO #TypeOfDryingWasher
		(id, [type])
		SELECT 1,'TimedDrying' UNION
		SELECT 2,'ResidualMoistureDrying' UNION
		SELECT 3,'WithoutDrying' 

	CREATE TABLE #TypeOfLighting
		(id INT,
		 [type] NVARCHAR(30))
	INSERT INTO #TypeOfLighting
		(id, [type])
		SELECT 1,'HalogenLamp' UNION
		SELECT 2,'IncandescentLamp' UNION
		SELECT 3,'FluorescentLamp' UNION	
		SELECT 4,'NeonLamp' UNION
		SELECT 5,'LEDLamp' 

	CREATE TABLE #PanelMaterial
		(id INT,
		 [material] NVARCHAR(20))
	INSERT INTO #PanelMaterial
		(id, [material])
		SELECT 1,'StrainedGlass' UNION
		SELECT 2,'StainlessSteel' UNION
		SELECT 3,'Enamel' UNION	
		SELECT 4,'GlassCeramics' 

	CREATE TABLE #OperatingMode
		(id INT,
		 [mode] NVARCHAR(15))
	INSERT INTO #OperatingMode
		(id, [mode])
		SELECT 1,'Diversion' UNION
		SELECT 2,'Circulation' 

	CREATE TABLE #Filter
		(id INT,
		 [filter] NVARCHAR(15))
	INSERT INTO #Filter
		(id, [filter])
		SELECT 1,'Fatty' UNION
		SELECT 2,'Carbonic' 		

	CREATE TABLE #UserAge
		(id INT,
		 [age] NVARCHAR(10))
	INSERT INTO #UserAge
		(id, [age])
		SELECT 1,'Child' UNION
		SELECT 2,'Adult'    

	DECLARE @length INT = 0

	WHILE @length < @rowValue
		BEGIN				
			DECLARE @model                   NVARCHAR(30) 
			DECLARE @company                 NVARCHAR(20)  
			DECLARE @country                 NVARCHAR(20) 
			DECLARE @productionYear          SMALLINT 
			DECLARE @price                   MONEY 
			DECLARE @freezer                 BIT = null         
			DECLARE @defrostingCameras       NVARCHAR(20) = null   
			DECLARE @numberOfChambers        TINYINT = null       
			DECLARE @width                   DECIMAL(4,1) = null 
			DECLARE @height                  DECIMAL(4,1) = null 
			DECLARE @depth                   DECIMAL(4,1) = null 
			DECLARE @weight                  DECIMAL(3,1) = null 
			DECLARE @color                   NVARCHAR(15) = null 
			DECLARE @energyClass             NVARCHAR(4) = null 
			DECLARE @volume                  DECIMAL(4,1) = null 
			DECLARE @switches                NVARCHAR(20) = null 
			DECLARE @convection              BIT = null 
			DECLARE @grill                   BIT = null 
			DECLARE @innerCoating            NVARCHAR(20) = null 
			DECLARE @power                   SMALLINT = null 
			DECLARE @numberOfPrograms        TINYINT = null 
			DECLARE @typeOfInstallation      NVARCHAR(15) = null 			
			DECLARE @bowlCover               NVARCHAR(10) = null 
			DECLARE @delayedStart            BIT = null 
			DECLARE @keepingWarm             BIT = null 
			DECLARE @controlType             NVARCHAR(20) = null 
			DECLARE @dustContainerType       NVARCHAR(15) = null 
			DECLARE @wetCleaning             BIT = null 
			DECLARE @dustContainerSize       DECIMAL(3,1) = null 
			DECLARE @nozzle                  TINYINT = null 
			DECLARE @suctionPipe             NVARCHAR(15) = null 
			DECLARE @noiseLevel              TINYINT = null 
			DECLARE @batteryLife             SMALLINT = null 
			DECLARE @buildingRoomMap         BIT = null 
			DECLARE @typeOfSensors           NVARCHAR(15) = null 
			DECLARE @remoteStart             BIT = null 
			DECLARE @capacity                TINYINT = null 
			DECLARE @drying                  NVARCHAR(25) = null 
			DECLARE @floorIndication         BIT = null 
			DECLARE @IntensiveWash           BIT = null 
			DECLARE @numberOfBurners         TINYINT = null 
			DECLARE @panelMaterial           NVARCHAR(20) = null 
			DECLARE @operatingMode           NVARCHAR(15) = null 
			DECLARE @filter                  NVARCHAR(20) = null 
			DECLARE @typeOfLighting          NVARCHAR(30) = null 
			DECLARE @maximumSpinSpeed        SMALLINT = null 
			DECLARE @waterTankVolume         SMALLINT = null 
			DECLARE @scaleProtection         BIT = null 
			DECLARE @multiSplitSystem        BIT = null 
			DECLARE @maximumRoomArea         TINYINT = null 
			DECLARE @motionDetector          BIT = null 
			DECLARE @maximumTemperature      SMALLINT = null 
			DECLARE @microwaveFunction       BIT = null 
			DECLARE @typeOfCoffeeUsed        NVARCHAR(10) = null 
			DECLARE @pumpPressure            TINYINT = null 
			DECLARE @integratedCoffeeGrinder BIT = null 
			DECLARE @bodyMaterial            NVARCHAR(10) = null 
			DECLARE @heatingElementType      NVARCHAR(15) = null 
			DECLARE @whiskForBeating         BIT = null 
			DECLARE @chopper                 BIT = null 
			DECLARE @travelBottle            BIT = null 
			DECLARE @juicer                  BIT = null 
			DECLARE @ionization              BIT = null 
			DECLARE @foldingHandle           BIT = null 
			DECLARE @userAge                 NVARCHAR(10) = null 
			DECLARE @numberOfPulsations      BIGINT = null 
			DECLARE @weightLimit             INT = null 
			DECLARE @measurementAccuracy     DECIMAL(3,2) = null 
			DECLARE @productId INT = (SELECT TOP 1 id
							FROM #RandomAppliances
							ORDER BY NEWID())
			IF @productId = 1
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #RefrMicrDishHobHoodWashCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #RefrigeratorModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 900000 + 4000),2)
					SET @freezer = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @defrostingCameras = (SELECT TOP 1 defrosing
							FROM #DefrostingCameras
							ORDER BY NEWID())
					SET @numberOfChambers =  ROUND((RAND()* 6 + 1),0)
					SET @width = ROUND((RAND()* 70 + 80),1)
					SET @height = ROUND((RAND()* 140 + 80),1)
					SET @depth = ROUND((RAND()* 30 + 60),1)
					SET @weight = ROUND((RAND()* 50 + 40),0)
					SET @energyClass = (SELECT TOP 1 class
							FROM #EnergyClasses
							ORDER BY NEWID())
					SET @volume = ROUND((RAND()* 600 + 100),0)
					SET @noiseLevel = ROUND((RAND()* 40 + 3),0)
				END;

			IF @productId = 2
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #RefrMicrDishHobHoodWashCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #MicrowaveModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 137000 + 3000),2)
					SET @volume = ROUND((RAND()* 23 + 17),0)
					SET @switches = (SELECT TOP 1 switches
							FROM #Switches
							ORDER BY NEWID())
					SET @convection = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @grill = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @innerCoating = (SELECT TOP 1 coating
							FROM #InnerCoating
							ORDER BY NEWID())
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @width = ROUND((RAND()* 20 + 40),1)
					SET @height = ROUND((RAND()* 20 + 25),1)
					SET @depth = ROUND((RAND()* 30 + 30),1)
					SET @weight = ROUND((RAND()* 23 + 10),0)
					SET @numberOfPrograms = ROUND((RAND()* 7 + 1),0)
					SET @typeOfInstallation = (SELECT TOP 1 [type]
							FROM #TypeOfInstallation
							ORDER BY NEWID())
				END;

			IF @productId = 3
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #MulticookerCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #MulticookerModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 62500 + 1500),2)
					SET @volume = ROUND((RAND()* 12 + 1),1)
					SET @numberOfPrograms = ROUND((RAND()* 14 + 1),0)
					SET @bowlCover = (SELECT TOP 1 cover
							FROM #BowlCover
							ORDER BY NEWID())
					SET @delayedStart = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @keepingWarm = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @controlType = (SELECT TOP 1 [type]
							FROM #ControlType
							ORDER BY NEWID())
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @width = ROUND((RAND()* 23 + 23),1)
					SET @height = ROUND((RAND()* 3 + 26),1)
					SET @depth = ROUND((RAND()* 2 + 25),1)
					SET @weight = ROUND((RAND()* 3 + 4),0)					
				END;

			IF @productId = 4
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #VacuumCleanerIronCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #VacuumCleanerModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 71600 + 400),2)					
					SET @dustContainerType = (SELECT TOP 1 [type]
							FROM #DustContainerType
							ORDER BY NEWID())
					SET @wetCleaning = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @power = (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @dustContainerSize = ROUND((RAND()* 14 + 1),0)
					SET @nozzle = ROUND((RAND()* 1 + 1),0)
					SET @suctionPipe = (SELECT TOP 1 [pipe]
							FROM #SuctionPipe
							ORDER BY NEWID())
					SET @noiseLevel = ROUND((RAND()* 92 + 3),0)
					SET @width = ROUND((RAND()* 52 + 6),1)
					SET @height = ROUND((RAND()* 126 + 4),1)
					SET @depth = ROUND((RAND()* 73 + 4),1)
					SET @weight = ROUND((RAND()* 10 + 2),0)	
				END;

			IF @productId = 5
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #VacuumCleanerIronCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #RobotVacuumCleanerModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 116000 + 2000),2)
					SET @wetCleaning = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @dustContainerSize = ROUND((RAND()* 2.3 + 0.2),1)
					SET @batteryLife = ROUND((RAND()* 280 + 20),0)
					SET @buildingRoomMap = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @typeOfSensors = (SELECT TOP 1 [type]
							FROM #TypeOfSensors
							ORDER BY NEWID())
					SET @nozzle = ROUND((RAND()* 1 + 1),0)
					SET @width = ROUND((RAND()* 8 + 23),1)
					SET @height = ROUND((RAND()* 7 + 6),1)
					SET @depth = ROUND((RAND()* 5 + 26),1)
					SET @weight = ROUND((RAND()* 3 + 1),0)	
					SET @remoteStart = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @noiseLevel = ROUND((RAND()* 10 + 50),0)					
				END;

			IF @productId = 6
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #RefrMicrDishHobHoodWashCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #DishWasherModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 200000 + 12500),2)
					SET @typeOfInstallation = (SELECT TOP 1 [type]
							FROM #TypeOfInstallation
							ORDER BY NEWID())					
					SET @width = ROUND((RAND()* 44 + 42),1)
					SET @height = ROUND((RAND()* 46 + 43),1)
					SET @depth = ROUND((RAND()* 25 + 39),1)
					SET @weight = ROUND((RAND()* 43 + 17),0)
					SET @capacity = ROUND((RAND()* 15 + 2),0)
					SET @drying = (SELECT TOP 1 [type]
							FROM #TypeOfDrying
							ORDER BY NEWID())
					SET @controlType = (SELECT TOP 1 [type]
							FROM #ControlType
							ORDER BY NEWID())
					SET @delayedStart = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @floorIndication = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @IntensiveWash = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @numberOfPrograms = ROUND((RAND()* 3 + 1),0)
					SET @noiseLevel = ROUND((RAND()* 19 + 30),0)
					SET @energyClass = (SELECT TOP 1 class
							FROM #EnergyClasses
							ORDER BY NEWID())
				END;

			IF @productId = 7
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #RefrMicrDishHobHoodWashCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #HobModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 320000 + 4000),2)					
					SET @numberOfBurners = ROUND((RAND()* 9 + 1),0)
					SET @typeOfInstallation = (SELECT TOP 1 [type]
							FROM #TypeOfInstallationHob
							ORDER BY NEWID())
					SET @switches = (SELECT TOP 1 switches
							FROM #Switches
							ORDER BY NEWID())
					SET @panelMaterial = (SELECT TOP 1 [material]
							FROM #PanelMaterial
							ORDER BY NEWID())
					SET @width = ROUND((RAND()* 91 + 27),1)					
					SET @depth = ROUND((RAND()* 54 + 6),1)
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
				END;

			IF @productId = 8
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #RefrMicrDishHobHoodWashCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #HoodModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 446000 + 1600),2)
					SET @typeOfInstallation = (SELECT TOP 1 [type]
							FROM #TypeOfInstallationHood
							ORDER BY NEWID())
					SET @width = ROUND((RAND()* 171 + 9),1)
					SET @height = ROUND((RAND()* 96 + 22),1)
					SET @depth = ROUND((RAND()* 15 + 28),1)
					SET @weight = ROUND((RAND()* 10 + 4),0)
					SET @operatingMode =  (SELECT TOP 1 [mode]
							FROM #OperatingMode
							ORDER BY NEWID())
					SET @filter = (SELECT TOP 1 [filter]
							FROM #Filter
							ORDER BY NEWID())
					SET @typeOfLighting = (SELECT TOP 1 [type]
							FROM #TypeOfLighting
							ORDER BY NEWID())
					SET @controlType = (SELECT TOP 1 [type]
							FROM #ControlType
							ORDER BY NEWID())
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
				END;

			IF @productId = 9
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #RefrMicrDishHobHoodWashCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #WasherModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 497500 + 2500),2)
					SET @capacity = ROUND((RAND()* 3 + 4),0)
					SET @width = ROUND((RAND()* 57 + 32),1)
					SET @height = ROUND((RAND()* 84 + 36),1)
					SET @depth = ROUND((RAND()* 56 + 29),1)
					SET @typeOfInstallation = (SELECT TOP 1 [type]
							FROM #TypeOfInstallation
							ORDER BY NEWID())
					SET @drying = (SELECT TOP 1 [type]
							FROM #TypeOfDryingWasher
							ORDER BY NEWID())
					SET @maximumSpinSpeed = ROUND((RAND()* 500 + 600),0)
					SET @energyClass = (SELECT TOP 1 class
							FROM #EnergyClasses
							ORDER BY NEWID())
					SET @weight = ROUND((RAND()* 20 + 50),0)
					SET @numberOfPrograms = ROUND((RAND()* 14 + 1),0)
				END;

			IF @productId = 10
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #VacuumCleanerIronCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #IronModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 30460 + 360),2)
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @waterTankVolume = ROUND((RAND()* 2465 + 35),0)
					SET @nozzle = ROUND((RAND()* 1 + 1),0)
					SET @scaleProtection = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @weight = ROUND((RAND()* 4.8 + 0.2),1)
					SET @numberOfPrograms = ROUND((RAND()* 4 + 1),0)
				END;

			IF @productId = 11
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #AirConditioningOvenCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #AirConditioningModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 610000 + 8900),2)					
					SET @multiSplitSystem = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @maximumRoomArea = ROUND((RAND()* 15 + 15),0)
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
				    SET @motionDetector = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @energyClass = (SELECT TOP 1 class
							FROM #EnergyClasses
							ORDER BY NEWID())
					SET @noiseLevel = ROUND((RAND()* 63 + 19),0)
					SET @width = ROUND((RAND()* 10 + 70),1)
					SET @height = ROUND((RAND()* 10 + 55),1)
					SET @depth = ROUND((RAND()* 10 + 28),1)
					SET @weight = ROUND((RAND()* 10 + 20),0)
					SET @numberOfPrograms = ROUND((RAND()* 1 + 1),0)
				END;

			IF @productId = 12
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #AirConditioningOvenCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #OvenModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 381200 + 7800),2)					
					SET @typeOfInstallation = (SELECT TOP 1 [type]
							FROM #TypeOfInstallationHood
							ORDER BY NEWID())
					SET @volume = ROUND((RAND()* 84 + 32),0)
					SET @numberOfPrograms = ROUND((RAND()* 24 + 1),0)
					SET @maximumTemperature = ROUND((RAND()* 495 + 5),0)
					SET @switches = (SELECT TOP 1 switches
							FROM #Switches
							ORDER BY NEWID())
					SET @convection = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @grill = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @width = ROUND((RAND()* 48 + 42),1)
					SET @height = ROUND((RAND()* 34 + 38),1)
					SET @depth = ROUND((RAND()* 3 + 54),1)
					SET @microwaveFunction = ROUND((RAND()* 34 + 38),0)
					SET @energyClass = (SELECT TOP 1 class
							FROM #EnergyClasses
							ORDER BY NEWID())
					SET @weight = ROUND((RAND()* 5 + 35),0)
				END;

			IF @productId = 13
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #CoffeeMakerCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #CoffeeMakerModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 1700000 + 450),2)					
					SET @typeOfCoffeeUsed = (SELECT TOP 1 [type]
							FROM #TypeOfCoffee
							ORDER BY NEWID())
					SET @numberOfPrograms = ROUND((RAND()* 7 + 1),0)
					SET @pumpPressure = ROUND((RAND()* 19 + 1),0)
					SET @integratedCoffeeGrinder = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @volume = ROUND((RAND()* 21 + 1),0)
					SET @controlType = (SELECT TOP 1 [type]
							FROM #ControlType
							ORDER BY NEWID())
					SET @width = ROUND((RAND()* 2 + 24),1)
					SET @height = ROUND((RAND()* 2 + 31),1)
					SET @depth = ROUND((RAND()* 6 + 24),1)
					SET @weight = ROUND((RAND()* 3 + 2),0)
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
				END;

			IF @productId = 14
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #CoffeeMakerCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #KettleModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 46000 + 150),2)
					SET @bodyMaterial = (SELECT TOP 1 material
							FROM #BodyMaterial
							ORDER BY NEWID())
					SET @volume = ROUND((RAND()* 6 + 1),0)
					SET @heatingElementType = (SELECT TOP 1 [type]
							FROM #HeatingElementType
							ORDER BY NEWID())
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @weight = ROUND((RAND()* 1 + 1),0)
				END;

			IF @productId = 15
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #CoffeeMakerCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #BlenderModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 137000 + 370),2)					
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @whiskForBeating = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))  
					SET @chopper = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))           
					SET @travelBottle = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))      
					SET @width = ROUND((RAND()* 1 + 5),1)
					SET @height = ROUND((RAND()* 19 + 21),1)
					SET @depth = ROUND((RAND()* 2 + 5),1)
					SET @weight = ROUND((RAND()* 1 + 1),0)
					SET @volume = ROUND((RAND()* 2 + 1),0)
					SET @numberOfPrograms = ROUND((RAND()* 2 + 1),0)
				END;

			IF @productId = 16
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #MeatGrinderCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #MeatGrinderModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 35000 + 1250),2)
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @juicer = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @nozzle = ROUND((RAND()* 5 + 1),0)
					SET @width = ROUND((RAND()* 100 + 170),1)
					SET @height = ROUND((RAND()* 10 + 300),1)
					SET @depth = ROUND((RAND()* 200 + 160),1)
					SET @weight = ROUND((RAND()* 4 + 1),0)
				END;

			IF @productId = 17
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #HairDryerCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #HairDryerModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 46000 + 200),2)
					SET @power =  (SELECT TOP 1 [power]
							FROM #Power
							ORDER BY NEWID())
					SET @nozzle = ROUND((RAND()* 2 + 1),0)
					SET @ionization = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @foldingHandle = CONVERT(BIT, ROUND((RAND()* 1 + 0),0))
					SET @numberOfPrograms = ROUND((RAND()* 7 + 1),0)
					SET @weight = ROUND((RAND()* 0.2 + 0.5),1)
				END;
				
			IF @productId = 18
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #ToothbrushCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #ToothbrushModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 27000 + 200),2)					
					SET @userAge = (SELECT TOP 1 [age]
							FROM #UserAge
							ORDER BY NEWID())
					SET @nozzle = ROUND((RAND()* 7 + 1),0)
					SET @batteryLife = ROUND((RAND()* 280 + 20),0)
					SET @numberOfPulsations = ROUND((RAND()* 101000000 + 6000),0)
				END;

			IF @productId = 19
				BEGIN
					SET @company = (SELECT TOP 1 company
							FROM #VacuumCleanerIronCompanies
							ORDER BY NEWID())
					SET @model = @company + ' ' + (SELECT TOP 1 model
							FROM #LibraModels
							ORDER BY NEWID()) + CONVERT(NVARCHAR(7), ROUND((RAND()* 10000 + 10),0))
					SET @price = ROUND((RAND()* 214000 + 300),2)					
					SET @weightLimit = ROUND((RAND()* 200 + 100),2)
					SET @measurementAccuracy = ROUND((RAND()* 1.95 + 0.05),2)
					SET @width = ROUND((RAND()* 14 + 26),1)
					SET @height = ROUND((RAND()* 6 + 2),1)
					SET @depth = @width
					SET @weight = ROUND((RAND()* 2 + 1.9),1)
				END;

			SET @country = (SELECT TOP 1 country
							FROM #Countries
							ORDER BY NEWID())
			SET @productionYear = ROUND((RAND()* 10 + 2010),0)
			SET @color = (SELECT TOP 1 color
							FROM #Colors
							ORDER BY NEWID())

			INSERT INTO [dbo].[Appliances]
			([Model],
             [Company],
             [Country],
			 [ProductionYear],
			 [Price],
			 [Width],
			 [Height],
			 [Depth],
			 [Weight],
			 [Color],
			 [Power],			 
			 [TypeOfInstallation],
			 [EnergyClass],
			 [Volume],	
			 [NumberOfPrograms],
			 [Grill],
			 [Convection],
			 [BatteryLife],	
			 [ControlType],
			 [Nozzle],
			 [BodyMaterial],
			 [WetCleaning],
			 [DustContainerSize],
			 [DustContainerType],
			 [NoiseLevel],
			 [Drying],
			 [Freezer],
			 [DefrostingCameras],
			 [NumberOfChambers],
			 [Switches],
			 [InnerCoating],
			 [DelayedStart],	
			 [BowlCover],
			 [KeepingWarm],
			 [SuctionPipe],
			 [TypeOfSensors],
			 [RemoteStart],
			 [BuildingRoomMap],
			 [Capacity],
			 [FloorIndication],
			 [IntensiveWash],
			 [OperatingMode],	
			 [Filter],
			 [TypeOfLighting],
			 [MaximumSpinSpeed],	
			 [WaterTankVolume],
			 [ScaleProtection],
			 [MaximumRoomArea],
			 [MultiSplitSystem],
			 [MotionDetector],
			 [MicrowaveFunction],
			 [MaximumTemperature],
			 [TypeOfCoffeeUsed],
			 [PumpPressure],
			 [IntegratedCoffeeGrinder],
			 [HeatingElementType],
			 [WhiskForBeating],
			 [Chopper],
			 [TravelBottle],
			 [Juicer],
			 [Ionization],
			 [FoldingHandle],
			 [UserAge],
			 [NumberOfPulsations],
			 [WeightLimit],
			 [MeasurementAccuracy],
			 [NumberOfBurners],
			 [PanelMaterial],
			 [IsDeleted])
			VALUES
			(@model,
			 @company,
			 @country,
			 @productionYear,
			 @price,
			 @width,
			 @height,
			 @depth,
			 @weight,
			 @color,
			 @power,			 
			 @typeOfInstallation,
			 @energyClass,
			 @volume,
			 @numberOfPrograms,
			 @grill,
			 @convection,
			 @batteryLife,
			 @controlType,
			 @nozzle,
			 @bodyMaterial,
			 @wetCleaning,
			 @dustContainerSize,
			 @dustContainerType,
			 @noiseLevel,
			 @drying,
			 @freezer,
			 @defrostingCameras,
			 @numberOfChambers,
			 @switches,
			 @innerCoating,
			 @delayedStart,
			 @bowlCover,
			 @keepingWarm,
			 @suctionPipe,
			 @typeOfSensors,
			 @remoteStart,
			 @buildingRoomMap,
			 @capacity,
			 @floorIndication,
			 @IntensiveWash,
			 @operatingMode,
			 @filter,
			 @typeOfLighting,
			 @maximumSpinSpeed,
			 @waterTankVolume,
			 @scaleProtection,
			 @maximumRoomArea,
			 @multiSplitSystem,
			 @motionDetector,
			 @microwaveFunction,
			 @maximumTemperature,
			 @typeOfCoffeeUsed,
			 @pumpPressure,
			 @integratedCoffeeGrinder,
			 @heatingElementType,
			 @whiskForBeating,
			 @chopper,
			 @travelBottle,
			 @juicer,
			 @ionization,
			 @foldingHandle,
			 @userAge,
			 @numberOfPulsations,
			 @weightLimit,
			 @measurementAccuracy,
			 @numberOfBurners,
			 @panelMaterial,
			 DEFAULT);

			 SET @length = @length + 1
		END;

	DROP TABLE #RandomAppliances
	DROP TABLE #ToothbrushCompanies
	DROP TABLE #RefrMicrDishHobHoodWashCompanies
	DROP TABLE #HairDryerCompanies
	DROP TABLE #MulticookerCompanies
	DROP TABLE #VacuumCleanerIronCompanies
	DROP TABLE #AirConditioningOvenCompanies
	DROP TABLE #CoffeeMakerCompanies
	DROP TABLE #MeatGrinderCompanies
	DROP TABLE #RefrigeratorModels
	DROP TABLE #MicrowaveModels
	DROP TABLE #MulticookerModels
	DROP TABLE #VacuumCleanerModels
	DROP TABLE #RobotVacuumCleanerModels
	DROP TABLE #DishWasherModels
	DROP TABLE #BlenderModels
	DROP TABLE #HobModels
	DROP TABLE #MeatGrinderModels
	DROP TABLE #HoodModels
	DROP TABLE #LibraModels
	DROP TABLE #WasherModels
	DROP TABLE #ToothbrushModels
	DROP TABLE #IronModels
	DROP TABLE #AirConditioningModels
	DROP TABLE #HairDryerModels
	DROP TABLE #OvenModels
	DROP TABLE #CoffeeMakerModels
	DROP TABLE #KettleModels
	DROP TABLE #Countries
	DROP TABLE #DefrostingCameras
	DROP TABLE #Colors
	DROP TABLE #EnergyClasses
	DROP TABLE #Switches
	DROP TABLE #InnerCoating
	DROP TABLE #Power
	DROP TABLE #TypeOfInstallation
	DROP TABLE #TypeOfInstallationHob
	DROP TABLE #TypeOfInstallationHood
	DROP TABLE #TypeOfCoffee
	DROP TABLE #BowlCover
	DROP TABLE #BodyMaterial
	DROP TABLE #ControlType	
	DROP TABLE #HeatingElementType
	DROP TABLE #DustContainerType
	DROP TABLE #SuctionPipe
	DROP TABLE #TypeOfSensors
	DROP TABLE #TypeOfDrying
	DROP TABLE #TypeOfDryingWasher
	DROP TABLE #TypeOfLighting
	DROP TABLE #PanelMaterial
	DROP TABLE #OperatingMode
	DROP TABLE #Filter
	DROP TABLE #UserAge
END;


			
			

			
		