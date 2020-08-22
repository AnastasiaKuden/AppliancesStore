DECLARE @currentDBVersion NVARCHAR(10);
SET @currentDBVersion = (SELECT TOP(1) DBVersion FROM [dbo].[DBVersion] ORDER BY Created DESC)

IF @currentDBVersion < '1.1'

    CREATE TABLE dbo.Category                            
	([Id]    TINYINT PRIMARY KEY NOT NULL,
	[Name]   NVARCHAR(25) UNIQUE NOT NULL)
    GO
	 
    INSERT INTO Category                                   
	    (Id, [Name])
    VALUES
		(1, 'Refrigerator'),
		(2, 'MicrowaveOven'),
		(3, 'Multicooker'),
		(4, 'VacuumCleaners'),
		(5, 'RobotVacuumCleaners'),
		(6, 'Dishwashers'),
		(7, 'Hobs'),
		(8, 'Hoods'),
		(9, 'WashingMachines'),
		(10, 'Irons'),
		(11, 'AirConditioners'),
		(12, 'Ovens'),
		(13, 'CoffeeMakers'),
		(14, 'ElectricKettles'),
		(15, 'Blenders'),
		(16, 'MeatGrinder'),
		(17, 'HairDryers'),
		(18, 'Toothbrushes'),
		(19, 'Libra')
    GO

	CREATE TABLE dbo.RefrigeratorCharacteristics           
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [EnergyClass]              NVARCHAR(4) NULL,
	     [Volume]	                DECIMAL(4,1) NULL,	
		 [NoiseLevel]               TINYINT NULL,
		 [Freezer]                  BIT NULL,
	     [DefrostingCameras]        NVARCHAR(20) NULL,
	     [NumberOfChambers]         TINYINT NULL,
		 foreign key (ProductId)    references [Appliances] (Id))
	GO

	INSERT INTO dbo.RefrigeratorCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [EnergyClass],
	     [Volume],	
		 [NoiseLevel],
		 [Freezer],
	     [DefrostingCameras],
	     [NumberOfChambers])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[EnergyClass] AS EnergeClass,
			a.[Volume] AS Volume,
		    a.[NoiseLevel] AS NoiseLevel,
		    a.[Freezer] AS Frezzer,
	        a.[DefrostingCameras] AS DefrostingCameras,
	        a.[NumberOfChambers] AS NumberOfChambers
		FROM dbo.Appliances a WHERE a.NumberOfChambers IS NOT NULL
	GO

	CREATE TABLE dbo.MicrowaveOvenCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,
	     [Grill]                    BIT NULL,
		 [Volume]	                DECIMAL(4,1) NULL,	
		 [Switches]                 NVARCHAR(20) NULL,
		 [TypeOfInstallation]       NVARCHAR(15) NULL,
		 [Convection]               BIT NULL,
		 [InnerCoating]             NVARCHAR(20) NULL)
	GO


	INSERT INTO dbo.MicrowaveOvenCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
	     [NumberOfPrograms],	
		 [Grill],
		 [Volume],
	     [Switches],
	     [TypeOfInstallation],
		 [Convection],
		 [InnerCoating])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
		    a.[Grill] AS Grill,
		    a.[Volume] AS Volume,
	        a.[Switches] AS Switches,
	        a.[TypeOfInstallation] AS TypeOfInstallation,
			a.[Convection] AS Convection,
	        a.[InnerCoating] AS InnerCoating
		FROM dbo.Appliances a WHERE a.InnerCoating IS NOT NULL
	GO


	CREATE TABLE dbo.MulticookerCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,	     
		 [Volume]	                DECIMAL(4,1) NULL,	
		 [DelayedStart]             BIT NULL,	
		 [ControlType]              NVARCHAR(20) NULL,
		 [BowlCover]                NVARCHAR(10) NULL,
	     [KeepingWarm]              BIT NULL)
	GO


	INSERT INTO dbo.MulticookerCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
	     [NumberOfPrograms],	
		 [Volume],
		 [DelayedStart],
	     [ControlType],
	     [BowlCover],
		 [KeepingWarm])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
		    a.[Volume] AS Volume,
		    a.[DelayedStart] AS DelayedStart,
	        a.[ControlType] AS ControlType,
	        a.[BowlCover] AS BowlCover,
			a.[KeepingWarm] AS KeepingWarm	        
		FROM dbo.Appliances a WHERE a.BowlCover IS NOT NULL
	GO


	CREATE TABLE dbo.VacuumCleanersCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [WetCleaning]              BIT NULL,	     
		 [DustContainerSize]        DECIMAL(3,1) NULL,
		 [DustContainerType]        NVARCHAR(15) NULL,         
		 [NoiseLevel]               TINYINT NULL,
		 [Nozzle]                   TINYINT NULL,
	     [SuctionPipe]              NVARCHAR(15) NULL)
	GO


	INSERT INTO dbo.VacuumCleanersCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
	     [WetCleaning],	
		 [DustContainerSize],
		 [DustContainerType],
	     [NoiseLevel],
	     [Nozzle],
		 [SuctionPipe])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[WetCleaning] AS WetCleaning,
		    a.[DustContainerSize] AS DustContainerSize,
		    a.[DustContainerType] AS DustContainerType,
	        a.[NoiseLevel] AS NoiseLevel,
	        a.[Nozzle] AS Nozzle,
			a.[SuctionPipe] AS SuctionPipe	        
		FROM dbo.Appliances a WHERE a.SuctionPipe IS NOT NULL
	GO


	CREATE TABLE dbo.RobotVacuumCleanersCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [BatteryLife]              SMALLINT NULL,	
		 [WetCleaning]              BIT NULL,	     
		 [DustContainerSize]        DECIMAL(3,1) NULL,
		 [Nozzle]                   TINYINT NULL,        
		 [NoiseLevel]               TINYINT NULL,
		 [TypeOfSensors]            NVARCHAR(15) NULL,
	     [RemoteStart]              BIT NULL,
	     [BuildingRoomMap]          BIT NULL)
		 GO


	INSERT INTO dbo.RobotVacuumCleanersCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [BatteryLife],
	     [WetCleaning],	
		 [DustContainerSize],
		 [Nozzle],
	     [NoiseLevel],
	     [TypeOfSensors],
		 [RemoteStart],
		 [BuildingRoomMap])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[BatteryLife] AS BatteryLife,
			a.[WetCleaning] AS WetCleaning,
		    a.[DustContainerSize] AS DustContainerSize,
		    a.[Nozzle] AS Nozzle,
	        a.[NoiseLevel] AS NoiseLevel,
	        a.[TypeOfSensors] AS TypeOfSensors,
			a.[RemoteStart] AS RemoteStart,	
			a.[BuildingRoomMap] AS BuildingRoomMap
		FROM dbo.Appliances a WHERE a.TypeOfSensors IS NOT NULL
	GO


	CREATE TABLE dbo.DishwashersCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,	  
		 [EnergyClass]              NVARCHAR(4) NULL,
		 [RemoteStart]              BIT NULL,       
		 [NoiseLevel]               TINYINT NULL,
		 [TypeOfInstallation]       NVARCHAR(15) NULL,
	     [Capacity]                 TINYINT NULL,
	     [Drying]                   NVARCHAR(25) NULL,
		 [ControlType]              NVARCHAR(20) NULL,
		 [FloorIndication]          BIT NULL,
	     [IntensiveWash]            BIT NULL)
	GO


	INSERT INTO dbo.DishwashersCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
	     [NumberOfPrograms],	
		 [EnergyClass],
		 [RemoteStart],
	     [NoiseLevel],
	     [TypeOfInstallation],
		 [Capacity],
		 [Drying],
		 [ControlType],
		 [FloorIndication],
		 [IntensiveWash])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
		    a.[EnergyClass] AS EnergyClass,
		    a.[RemoteStart] AS RemoteStart,
	        a.[NoiseLevel] AS NoiseLevel,
	        a.[TypeOfInstallation] AS TypeOfInstallation,
			a.[Capacity] AS Capacity,	
			a.[Drying] AS Drying,
			a.[ControlType] AS ControlType,
			a.[FloorIndication] AS FloorIndication,
			a.[IntensiveWash] AS IntensiveWash
		FROM dbo.Appliances a WHERE a.IntensiveWash IS NOT NULL
	GO


	CREATE TABLE dbo.HobsCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Power]                    SMALLINT NULL,		 
		 [Switches]                 NVARCHAR(20) NULL,
		 [TypeOfInstallation]       NVARCHAR(15) NULL,  
		 [NumberOfBurners]          TINYINT NULL,
	     [PanelMaterial]            NVARCHAR(20) NULL)
	GO

	INSERT INTO dbo.HobsCharacteristics
		([ProductId],
		 [Width],
	     [Depth],	    
		 [Power],	   
		 [Switches],
		 [TypeOfInstallation],
	     [NumberOfBurners],
	     [PanelMaterial])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Depth] AS Depth,
			a.[Power] AS [Power],					
		    a.[Switches] AS Switches,
		    a.[TypeOfInstallation] AS TypeOfInstallation,
	        a.[NumberOfBurners] AS NumberOfBurners,	        
			a.[PanelMaterial] AS PanelMaterial
		FROM dbo.Appliances a WHERE a.PanelMaterial IS NOT NULL
	GO

	CREATE TABLE dbo.HoodsCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [TypeOfInstallation]       NVARCHAR(15) NULL, 
		 [ControlType]              NVARCHAR(20) NULL,
		 [OperatingMode]		    NVARCHAR(15) NULL,	
	     [Filter]                   NVARCHAR(20) NULL,
	     [TypeOfLighting]           NVARCHAR(30) NULL)
	GO


	INSERT INTO dbo.HoodsCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
	     [TypeOfInstallation],	
		 [ControlType],
		 [OperatingMode],
	     [Filter],
		 [TypeOfLighting])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[TypeOfInstallation] AS TypeOfInstallation,
		    a.[ControlType] AS ControlType,
		    a.[OperatingMode] AS OperatingMode,
	        a.[Filter] AS Filter,	        
			a.[TypeOfLighting] AS TypeOfLighting			
		FROM dbo.Appliances a WHERE a.TypeOfLighting IS NOT NULL
	GO


	CREATE TABLE dbo.WashingMachinesCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [EnergyClass]              NVARCHAR(4) NULL,
		 [TypeOfInstallation]       NVARCHAR(15) NULL,
		 [Capacity]                 TINYINT NULL,	
	     [Drying]                   NVARCHAR(25) NULL,
	     [MaximumSpinSpeed]         SMALLINT NULL)
	GO


	INSERT INTO dbo.WashingMachinesCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
	     [EnergyClass],	
		 [TypeOfInstallation],
		 [Capacity],
	     [Drying],
		 [MaximumSpinSpeed])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[EnergyClass] AS EnergyClass,
		    a.[TypeOfInstallation] AS TypeOfInstallation,
		    a.[Capacity] AS Capacity,
	        a.[Drying] AS Drying,	        
			a.[MaximumSpinSpeed] AS MaximumSpinSpeed			
		FROM dbo.Appliances a WHERE a.MaximumSpinSpeed IS NOT NULL
	GO


	CREATE TABLE dbo.IronsCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,
		 [Nozzle]                   TINYINT NULL,
	     [WaterTankVolume]          SMALLINT NULL,
	     [ScaleProtection]          BIT NULL)
	GO

	INSERT INTO dbo.IronsCharacteristics
		([ProductId],		
	     [Weight],
		 [Power],
	     [NumberOfPrograms],	
		 [Nozzle],
		 [WaterTankVolume],
	     [ScaleProtection])	 
		SELECT
			a.[Id] AS ProductId,			
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
		    a.[Nozzle] AS Nozzle,
		    a.[WaterTankVolume] AS WaterTankVolume,
	        a.[ScaleProtection] AS ScaleProtection					
		FROM dbo.Appliances a WHERE a.WaterTankVolume IS NOT NULL
	GO


	CREATE TABLE dbo.AirConditionersCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,	     
		 [EnergyClass]              NVARCHAR(4) NULL,
		 [NoiseLevel]               TINYINT NULL,
		 [MaximumRoomArea]          TINYINT NULL,
	     [MultiSplitSystem]         BIT NULL,
	     [MotionDetector]           BIT NULL)
	GO


	INSERT INTO dbo.AirConditionersCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
		 [NumberOfPrograms],
	     [EnergyClass],	
		 [NoiseLevel],
		 [MaximumRoomArea],
	     [MultiSplitSystem],
		 [MotionDetector])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
			a.[EnergyClass] AS EnergyClass,
		    a.[NoiseLevel] AS NoiseLevel,
		    a.[MaximumRoomArea] AS MaximumRoomArea,
	        a.[MultiSplitSystem] AS MultiSplitSystem,	        
			a.[MotionDetector] AS MotionDetector			
		FROM dbo.Appliances a WHERE a.MaximumRoomArea IS NOT NULL
	GO


	CREATE TABLE dbo.OvensCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [NumberOfPrograms]         TINYINT NULL,	     
	     [Grill]                    BIT NULL,
		 [Volume]	                DECIMAL(4,1) NULL,	
		 [EnergyClass]              NVARCHAR(4) NULL,
		 [Switches]                 NVARCHAR(20) NULL,
		 [TypeOfInstallation]       NVARCHAR(15) NULL,
	     [Convection]               BIT NULL,
	     [MicrowaveFunction]        BIT NULL,
	     [MaximumTemperature]       SMALLINT NULL)
	GO


	INSERT INTO dbo.OvensCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [NumberOfPrograms],
		 [Grill],
	     [Volume],	
		 [EnergyClass],
		 [Switches],
	     [TypeOfInstallation],
		 [Convection],
		 [MicrowaveFunction],
		 [MaximumTemperature])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[NumberOfPrograms] AS NumberOfPrograms,
			a.[Grill] AS Grill,
			a.[Volume] AS Volume,
		    a.[EnergyClass] AS EnergyClass,
		    a.[Switches] AS Switches,
	        a.[TypeOfInstallation] AS TypeOfInstallation,	        
			a.[Convection] AS Convection,	
			a.[MicrowaveFunction] AS MicrowaveFunction,
			a.[MaximumTemperature] AS MaximumTemperature
		FROM dbo.Appliances a WHERE a.MaximumTemperature IS NOT NULL
	GO

	CREATE TABLE dbo.CoffeeMakersCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,	     	
		 [Volume]	                DECIMAL(4,1) NULL,	
		 [ControlType]              NVARCHAR(20) NULL,
		 [TypeOfCoffeeUsed]         NVARCHAR(10) NULL,
	     [PumpPressure]             TINYINT NULL,
	     [IntegratedCoffeeGrinder]  BIT NULL)
	GO


	INSERT INTO dbo.CoffeeMakersCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
		 [NumberOfPrograms],
		 [Volume],
	     [ControlType],	
		 [TypeOfCoffeeUsed],
		 [PumpPressure],
	     [IntegratedCoffeeGrinder])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
			a.[Volume] AS Volume,
		    a.[ControlType] AS ControlType,
		    a.[TypeOfCoffeeUsed] AS TypeOfCoffeeUsed,
	        a.[PumpPressure] AS PumpPressure,	        
			a.[IntegratedCoffeeGrinder] AS IntegratedCoffeeGrinder
		FROM dbo.Appliances a WHERE a.TypeOfCoffeeUsed IS NOT NULL
	GO


	CREATE TABLE dbo.ElectricKettlesCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,	 
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [Volume]	                DECIMAL(4,1) NULL,     	
		 [BodyMaterial]             NVARCHAR(10) NULL,
		 [HeatingElementType]       NVARCHAR(15) NULL)
	GO


	INSERT INTO dbo.ElectricKettlesCharacteristics
		([ProductId],		 
	     [Weight],
		 [Power],		 
		 [Volume],
	     [BodyMaterial],	
		 [HeatingElementType])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,			
			a.[Power] AS [Power],			
			a.[Volume] AS Volume,
		    a.[BodyMaterial] AS BodyMaterial,
		    a.[HeatingElementType] AS HeatingElementType
		FROM dbo.Appliances a WHERE a.BodyMaterial IS NOT NULL
	GO


	CREATE TABLE dbo.BlendersCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,	  
		 [Volume]	                DECIMAL(4,1) NULL,	
		 [WhiskForBeating]          BIT NULL,
	     [Chopper]                  BIT NULL,
	     [TravelBottle]             BIT NULL)
	GO


	INSERT INTO dbo.BlendersCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
		 [NumberOfPrograms],
		 [Volume],
	     [WhiskForBeating],	
		 [Chopper],
		 [TravelBottle])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
			a.[Volume] AS Volume,
		    a.[WhiskForBeating] AS WhiskForBeating,
		    a.[Chopper] AS Chopper,
	        a.[TravelBottle] AS TravelBottle
		FROM dbo.Appliances a WHERE a.Chopper IS NOT NULL
	GO


	CREATE TABLE dbo.MeatGrinderCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [Nozzle]                   TINYINT NULL,  
		 [Juicer]                   BIT NULL)
	GO


	INSERT INTO dbo.MeatGrinderCharacteristics
		([ProductId],
		 [Width],
	     [Height],
	     [Depth],
	     [Weight],
		 [Power],
		 [Nozzle],
		 [Juicer])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[Nozzle] AS Nozzle,
			a.[Juicer] AS Juicer
		FROM dbo.Appliances a WHERE a.Juicer IS NOT NULL
	GO


	CREATE TABLE dbo.HairDryersCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,		 
	     [Weight]                   DECIMAL(3,1) NULL,
		 [Power]                    SMALLINT NULL,
		 [NumberOfPrograms]         TINYINT NULL,	   
		 [Nozzle]                   TINYINT NULL,
		 [Ionization]               BIT NULL,
	     [FoldingHandle]            BIT NULL)
	GO
  

	INSERT INTO dbo.HairDryersCharacteristics
		([ProductId],
		 [Weight],
		 [Power],
	     [NumberOfPrograms],
	     [Nozzle],
		 [Ionization],
		 [FoldingHandle])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Weight] AS [Weight],
			a.[Power] AS [Power],
			a.[NumberOfPrograms] AS NumberOfPrograms,
			a.[Nozzle] AS Nozzle,
			a.[Ionization] AS Ionization,
			a.[FoldingHandle] AS FoldingHandle			
		FROM dbo.Appliances a WHERE a.Ionization IS NOT NULL
	GO


	CREATE TABLE dbo.ToothbrushesCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Nozzle]                   TINYINT NULL,
		 [BatteryLife]              SMALLINT NULL,	
		 [UserAge]                  NVARCHAR(10) NULL,
	     [NumberOfPulsations]       BIGINT NULL)
    GO


	INSERT INTO dbo.ToothbrushesCharacteristics
		([ProductId],
		 [Nozzle],
		 [BatteryLife],
	     [UserAge],
	     [NumberOfPulsations])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Nozzle] AS Nozzle,
			a.[BatteryLife] AS BatteryLife,
			a.[UserAge] AS UserAge,
			a.[NumberOfPulsations] AS NumberOfPulsations		
		FROM dbo.Appliances a WHERE a.UserAge IS NOT NULL
	GO


	CREATE TABLE dbo.LibraCharacteristics          
		([Id]                       INT PRIMARY KEY IDENTITY NOT NULL,
		 [ProductId]                INT UNIQUE REFERENCES [Appliances] (Id) NOT NULL,
		 [Width]                    DECIMAL(4,1) NULL,
	     [Height]                   DECIMAL(4,1) NULL,
	     [Depth]                    DECIMAL(4,1) NULL,
	     [Weight]                   DECIMAL(3,1) NULL,
		 [WeightLimit]              INT NULL,
	     [MeasurementAccuracy]      DECIMAL(3,2) NULL)
	GO
  

	INSERT INTO dbo.LibraCharacteristics
		([ProductId],
		 [Width],
		 [Height],
	     [Depth],
	     [Weight],
		 [WeightLimit],
		 [MeasurementAccuracy])	 
		SELECT
			a.[Id] AS ProductId,
			a.[Width] AS Width,
			a.[Height] AS Height,
			a.[Depth] AS Depth,
			a.[Weight] AS [Weight],	
		    a.[WeightLimit] AS WeightLimit,
		    a.[MeasurementAccuracy] AS MeasurementAccuracy
		FROM dbo.Appliances a WHERE a.WeightLimit IS NOT NULL	
	GO