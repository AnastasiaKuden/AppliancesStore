﻿	CREATE PROCEDURE [dbo].[Appliances_Add]	
	    @Id                      INT = NULL,
		@categoryId              TINYINT = NULL,
        @model                   NVARCHAR(30), 
		@company                 NVARCHAR(20),  
		@country                 NVARCHAR(20), 
		@productionYear          SMALLINT, 
		@price                   MONEY, 
		@width                   DECIMAL(4,1) = NULL, 
		@height                  DECIMAL(4,1) = NULL,
		@depth                   DECIMAL(4,1) = NULL, 
		@weight                  DECIMAL(3,1) = NULL,
		@color                   NVARCHAR(15),
		@power                   SMALLINT = NULL,
		@typeOfInstallation      NVARCHAR(15) = NULL,
		@energyClass             NVARCHAR(4) = NULL,
		@volume                  DECIMAL(4,1) = NULL,
		@numberOfPrograms        TINYINT = NULL,
		@grill                   BIT = NULL,
		@convection              BIT = NULL,
		@batteryLife             SMALLINT = NULL,
		@controlType             NVARCHAR(20) = NULL,
		@nozzle                  TINYINT = NULL,
		@bodyMaterial            NVARCHAR(10) = NULL,
		@wetCleaning             BIT = NULL,
		@dustContainerSize       DECIMAL(3,1) = NULL,
		@dustContainerType       NVARCHAR(15) = NULL,
		@noiseLevel              TINYINT = NULL,
		@drying                  NVARCHAR(25) = NULL,
		@freezer                 BIT = NULL,    
		@defrostingCameras       NVARCHAR(20) = NULL,
		@numberOfChambers        TINYINT = NULL,		
		@switches                NVARCHAR(20) = NULL,
		@innerCoating            NVARCHAR(20) = NULL,
		@delayedStart            BIT = NULL,
		@bowlCover               NVARCHAR(10) = NULL,
		@keepingWarm             BIT = NULL,
		@suctionPipe             NVARCHAR(15) = NULL, 
		@typeOfSensors           NVARCHAR(15) = NULL,
		@remoteStart             BIT = NULL,
		@buildingRoomMap         BIT = NULL,
		@capacity                TINYINT = NULL,
		@floorIndication         BIT = NULL,
		@IntensiveWash           BIT = NULL,
		@operatingMode           NVARCHAR(15) = NULL,
		@filter                  NVARCHAR(20) = NULL,
		@typeOfLighting          NVARCHAR(30) = NULL,
		@maximumSpinSpeed        SMALLINT = NULL,
		@waterTankVolume         SMALLINT = NULL,
		@scaleProtection         BIT = NULL,
		@maximumRoomArea         TINYINT = NULL,
		@multiSplitSystem        BIT = NULL,
		@motionDetector          BIT = NULL,
		@microwaveFunction       BIT = NULL,
		@maximumTemperature      SMALLINT = NULL,
		@typeOfCoffeeUsed        NVARCHAR(10) = NULL,
		@pumpPressure            TINYINT = NULL,
		@integratedCoffeeGrinder BIT = NULL,
		@heatingElementType      NVARCHAR(15) = NULL,
		@whiskForBeating         BIT = NULL,
		@chopper                 BIT = NULL,
		@travelBottle            BIT = NULL,
		@juicer                  BIT = NULL,
		@ionization              BIT = NULL,
		@foldingHandle           BIT = NULL,
		@userAge                 NVARCHAR(10) = NULL,
		@numberOfPulsations      BIGINT = NULL,
		@weightLimit             INT = NULL,
		@measurementAccuracy     DECIMAL(3,2) = NULL,
		@numberOfBurners         TINYINT = NULL,
		@panelMaterial           NVARCHAR(20) = NULL,
		@isDeleted               BIT
	as
	begin
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
        SET @id = CAST(SCOPE_IDENTITY() AS [INT])
		EXEC Appliances_GetById @id		
    end;