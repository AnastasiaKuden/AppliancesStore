CREATE PROCEDURE Appliances_GetByCategoryId
		@categoryId TINYINT
	AS
	BEGIN
		IF @categoryId = 1
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],
				 r.[Width],
				 r.[Height],
				 r.[Depth],
				 r.[Weight],
				 r.[EnergyClass],
				 r.[Volume],	
				 r.[NoiseLevel],
				 r.[Freezer],
				 r.[DefrostingCameras],
				 r.[NumberOfChambers]				 
			FROM RefrigeratorCharacteristics r
			JOIN Appliances a ON a.Id = r.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 2
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],
				 m.[Width],
	             m.[Height],
				 m.[Depth],
				 m.[Weight],
				 m.[Power],
				 m.[NumberOfPrograms],
				 m.[Grill],
				 m.[Volume],	
				 m.[Switches],
				 m.[TypeOfInstallation],
				 m.[Convection],
				 m.[InnerCoating] 			 
			FROM MicrowaveOvenCharacteristics m
			JOIN Appliances a ON a.Id = m.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;	
	ELSE IF @categoryId = 3
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],
				 m.[Width],
				 m.[Height],
				 m.[Depth],
				 m.[Weight],
				 m.[Power],
				 m.[NumberOfPrograms],	
				 m.[Volume],
				 m.[DelayedStart],
				 m.[ControlType],
				 m.[BowlCover],
				 m.[KeepingWarm]			 
			FROM MulticookerCharacteristics m
			JOIN Appliances a ON a.Id = m.ProductId	
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 4
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 v.[Width],
				 v.[Height],
				 v.[Depth],
				 v.[Weight],
				 v.[Power],
				 v.[WetCleaning],	
				 v.[DustContainerSize],
				 v.[DustContainerType],
				 v.[NoiseLevel],
				 v.[Nozzle],
				 v.[SuctionPipe]			 
			FROM VacuumCleanersCharacteristics v
			JOIN Appliances a ON a.Id = v.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;	
	ELSE IF @categoryId = 5
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],					 
				 r.[Width],
				 r.[Height],
				 r.[Depth],
				 r.[Weight],
				 r.[BatteryLife],
				 r.[WetCleaning],	
				 r.[DustContainerSize],
				 r.[Nozzle],
				 r.[NoiseLevel],
				 r.[TypeOfSensors],
				 r.[RemoteStart],
				 r.[BuildingRoomMap]			 
			FROM RobotVacuumCleanersCharacteristics r
			JOIN Appliances a ON a.Id = r.ProductId			
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 6
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 d.[Width],
				 d.[Height],
				 d.[Depth],
				 d.[Weight],
				 d.[Power],
				 d.[NumberOfPrograms],	
				 d.[EnergyClass],
				 d.[RemoteStart],
				 d.[NoiseLevel],
				 d.[TypeOfInstallation],
				 d.[Capacity],
				 d.[Drying],
				 d.[ControlType],
				 d.[FloorIndication],
				 d.[IntensiveWash]			 
			FROM DishwashersCharacteristics d
			JOIN Appliances a ON a.Id = d.ProductId	
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;	
	ELSE IF @categoryId = 7
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 h.[Width],
				 h.[Depth],	    
				 h.[Power],	   
				 h.[Switches],
				 h.[TypeOfInstallation],
				 h.[NumberOfBurners],
				 h.[PanelMaterial]	 
			FROM HobsCharacteristics h          
			JOIN Appliances a ON a.Id = h.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 8
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 h.[Width],
				 h.[Height],
				 h.[Depth],
				 h.[Weight],
				 h.[Power],
				 h.[TypeOfInstallation],	
				 h.[ControlType],
				 h.[OperatingMode],
				 h.[Filter],
				 h.[TypeOfLighting]	 
			FROM HoodsCharacteristics h        
			JOIN Appliances a ON a.Id = h.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 9
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 w.[Width],
				 w.[Height],
				 w.[Depth],
				 w.[Weight],
				 w.[Power],
				 w.[EnergyClass],	
				 w.[TypeOfInstallation],
				 w.[Capacity],
				 w.[Drying],
				 w.[MaximumSpinSpeed]	 
			FROM WashingMachinesCharacteristics w    
			JOIN Appliances a ON a.Id = w.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 10
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 i.[Weight],
				 i.[Power],
				 i.[NumberOfPrograms],	
				 i.[Nozzle],
				 i.[WaterTankVolume],
				 i.[ScaleProtection]	 
			FROM IronsCharacteristics i         
			JOIN Appliances a ON a.Id = i.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 11
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 air.[Width],
				 air.[Height],
				 air.[Depth],
				 air.[Weight],
				 air.[Power],
				 air.[NumberOfPrograms],
				 air.[EnergyClass],	
				 air.[NoiseLevel],
				 air.[MaximumRoomArea],
				 air.[MultiSplitSystem],
				 air.[MotionDetector]	 
			FROM AirConditionersCharacteristics air        
			JOIN Appliances a ON a.Id = air.ProductId	
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 12
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 o.[Width],
				 o.[Height],
				 o.[Depth],
				 o.[Weight],
				 o.[NumberOfPrograms],
				 o.[Grill],
				 o.[Volume],	
				 o.[EnergyClass],
				 o.[Switches],
				 o.[TypeOfInstallation],
				 o.[Convection],
				 o.[MicrowaveFunction],
				 o.[MaximumTemperature]	 
			FROM OvensCharacteristics  o      
			JOIN Appliances a ON a.Id = o.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 13
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 c.[Width],
				 c.[Height],
				 c.[Depth],
				 c.[Weight],
				 c.[Power],
				 c.[NumberOfPrograms],
				 c.[Volume],
				 c.[ControlType],	
				 c.[TypeOfCoffeeUsed],
				 c.[PumpPressure],
				 c.[IntegratedCoffeeGrinder] 
			FROM CoffeeMakersCharacteristics c   
			JOIN Appliances a ON a.Id = c.ProductId			
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 14
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 e.[Weight],
				 e.[Power],		 
				 e.[Volume],
				 e.[BodyMaterial],	
				 e.[HeatingElementType]
			FROM ElectricKettlesCharacteristics e
			JOIN Appliances a ON a.Id = e.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 15
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 b.[Width],
				 b.[Height],
				 b.[Depth],
				 b.[Weight],
				 b.[Power],
				 b.[NumberOfPrograms],
				 b.[Volume],
				 b.[WhiskForBeating],	
				 b.[Chopper],
				 b.[TravelBottle]
			FROM BlendersCharacteristics b     
			JOIN Appliances a ON a.Id = b.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 16
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 m.[Width],
				 m.[Height],
				 m.[Depth],
				 m.[Weight],
				 m.[Power],
				 m.[Nozzle],
				 m.[Juicer]
			FROM MeatGrinderCharacteristics m    
			JOIN Appliances a ON a.Id = m.ProductId	
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 17
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 h.[Weight],
				 h.[Power],
				 h.[NumberOfPrograms],
				 h.[Nozzle],
				 h.[Ionization],
				 h.[FoldingHandle]
			FROM HairDryersCharacteristics h
			JOIN Appliances a ON a.Id = h.ProductId
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 18
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 t.[Nozzle],
				 t.[BatteryLife],
				 t.[UserAge],
				 t.[NumberOfPulsations]
			FROM ToothbrushesCharacteristics t 
			JOIN Appliances a ON a.Id = t.ProductId	
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	ELSE IF @categoryId = 19
		BEGIN
			SELECT 			     
			  	 a.[Id],
				 a.[Model],
				 a.[Company],
				 a.[Country],
				 a.[ProductionYear],
				 a.[Price],
				 a.[Color],				 
				 l.[Width],
				 l.[Height],
				 l.[Depth],
				 l.[Weight],
				 l.[WeightLimit],
				 l.[MeasurementAccuracy]
			FROM LibraCharacteristics l
			JOIN Appliances a ON a.Id = l.ProductId		
			WHERE a.IsDeleted = 0
			ORDER BY [Model] 
		END;
	END;
	GO

	ALTER PROCEDURE Appliances_GetAll
	AS
	BEGIN
		SELECT
			a.[Id],
			a.[Model],
			a.[Company],
			a.[Country],
			a.[ProductionYear],
			a.[Price],		
			a.[Color]
			FROM dbo.Appliances a
			WHERE IsDeleted = 0
			ORDER BY [Model] 
	END;
	GO

	ALTER PROCEDURE Appliances_GetAllRemote
	AS
	BEGIN
		SELECT
			a.[Id],
			a.[Model],
			a.[Company],
			a.[Country],
			a.[ProductionYear],
			a.[Price],		
			a.[Color]
			FROM dbo.Appliances a
			WHERE IsDeleted = 1
			ORDER BY [Model] 
    END;
	GO

	ALTER PROCEDURE [dbo].[Appliances_GetById]
		@id INT
	AS
	BEGIN		
		    IF (SELECT ProductId FROM RefrigeratorCharacteristics WHERE ProductId = @id) > 0
				BEGIN
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],
						 r.[Width],
						 r.[Height],
						 r.[Depth],
						 r.[Weight],
						 r.[EnergyClass],
						 r.[Volume],	
						 r.[NoiseLevel],
						 r.[Freezer],
						 r.[DefrostingCameras],
						 r.[NumberOfChambers]				 
					FROM RefrigeratorCharacteristics r
					JOIN Appliances a ON a.Id = r.ProductId		
					WHERE a.Id = @id						
				END;
			IF (SELECT ProductId FROM MicrowaveOvenCharacteristics WHERE ProductId = @id) > 0
			BEGIN
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],
						 m.[Width],
						 m.[Height],
						 m.[Depth],
						 m.[Weight],
						 m.[Power],
						 m.[NumberOfPrograms],
						 m.[Grill],
						 m.[Volume],	
						 m.[Switches],
						 m.[TypeOfInstallation],
						 m.[Convection],
						 m.[InnerCoating] 			 
					FROM MicrowaveOvenCharacteristics m
					JOIN Appliances a ON a.Id = m.ProductId	
					WHERE a.Id = @id				
			END;
			IF (SELECT ProductId FROM MulticookerCharacteristics WHERE ProductId = @id) > 0
			BEGIN				
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],
						 m.[Width],
						 m.[Height],
						 m.[Depth],
						 m.[Weight],
						 m.[Power],
						 m.[NumberOfPrograms],	
						 m.[Volume],
						 m.[DelayedStart],
						 m.[ControlType],
						 m.[BowlCover],
						 m.[KeepingWarm]			 
					FROM MulticookerCharacteristics m
					JOIN Appliances a ON a.Id = m.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM VacuumCleanersCharacteristics WHERE ProductId = @id) > 0
			BEGIN				
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 v.[Width],
						 v.[Height],
						 v.[Depth],
						 v.[Weight],
						 v.[Power],
						 v.[WetCleaning],	
						 v.[DustContainerSize],
						 v.[DustContainerType],
						 v.[NoiseLevel],
						 v.[Nozzle],
						 v.[SuctionPipe]			 
					FROM VacuumCleanersCharacteristics v
					JOIN Appliances a ON a.Id = v.ProductId		
					WHERE a.Id = @id	
			END;
			IF (SELECT ProductId FROM RobotVacuumCleanersCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],					 
						 r.[Width],
						 r.[Height],
						 r.[Depth],
						 r.[Weight],
						 r.[BatteryLife],
						 r.[WetCleaning],	
						 r.[DustContainerSize],
						 r.[Nozzle],
						 r.[NoiseLevel],
						 r.[TypeOfSensors],
						 r.[RemoteStart],
						 r.[BuildingRoomMap]			 
					FROM RobotVacuumCleanersCharacteristics r
					JOIN Appliances a ON a.Id = r.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM DishwashersCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 d.[Width],
						 d.[Height],
						 d.[Depth],
						 d.[Weight],
						 d.[Power],
						 d.[NumberOfPrograms],	
						 d.[EnergyClass],
						 d.[RemoteStart],
						 d.[NoiseLevel],
						 d.[TypeOfInstallation],
						 d.[Capacity],
						 d.[Drying],
						 d.[ControlType],
						 d.[FloorIndication],
						 d.[IntensiveWash]			 
					FROM DishwashersCharacteristics d
					JOIN Appliances a ON a.Id = d.ProductId		
					WHERE a.Id = @id	
			END;
			IF (SELECT ProductId FROM HobsCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 h.[Width],
						 h.[Depth],	    
						 h.[Power],	   
						 h.[Switches],
						 h.[TypeOfInstallation],
						 h.[NumberOfBurners],
						 h.[PanelMaterial]	 
					FROM HobsCharacteristics h          
					JOIN Appliances a ON a.Id = h.ProductId		
					WHERE a.Id = @id	
			END;
			IF (SELECT ProductId FROM HoodsCharacteristics WHERE ProductId = @id) > 0
			BEGIN				
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 h.[Width],
						 h.[Height],
						 h.[Depth],
						 h.[Weight],
						 h.[Power],
						 h.[TypeOfInstallation],	
						 h.[ControlType],
						 h.[OperatingMode],
						 h.[Filter],
						 h.[TypeOfLighting]	 
					FROM HoodsCharacteristics h        
					JOIN Appliances a ON a.Id = h.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM WashingMachinesCharacteristics WHERE ProductId = @id) > 0
			BEGIN				
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 w.[Width],
						 w.[Height],
						 w.[Depth],
						 w.[Weight],
						 w.[Power],
						 w.[EnergyClass],	
						 w.[TypeOfInstallation],
						 w.[Capacity],
						 w.[Drying],
						 w.[MaximumSpinSpeed]	 
					FROM WashingMachinesCharacteristics w    
					JOIN Appliances a ON a.Id = w.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM IronsCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 i.[Weight],
						 i.[Power],
						 i.[NumberOfPrograms],	
						 i.[Nozzle],
						 i.[WaterTankVolume],
						 i.[ScaleProtection]	 
					FROM IronsCharacteristics i         
					JOIN Appliances a ON a.Id = i.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM AirConditionersCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 air.[Width],
						 air.[Height],
						 air.[Depth],
						 air.[Weight],
						 air.[Power],
						 air.[NumberOfPrograms],
						 air.[EnergyClass],	
						 air.[NoiseLevel],
						 air.[MaximumRoomArea],
						 air.[MultiSplitSystem],
						 air.[MotionDetector]	 
					FROM AirConditionersCharacteristics air        
					JOIN Appliances a ON a.Id = air.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM OvensCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 o.[Width],
						 o.[Height],
						 o.[Depth],
						 o.[Weight],
						 o.[NumberOfPrograms],
						 o.[Grill],
						 o.[Volume],	
						 o.[EnergyClass],
						 o.[Switches],
						 o.[TypeOfInstallation],
						 o.[Convection],
						 o.[MicrowaveFunction],
						 o.[MaximumTemperature]	 
					FROM OvensCharacteristics  o      
					JOIN Appliances a ON a.Id = o.ProductId		
					WHERE a.Id = @id	
			END;
			IF (SELECT ProductId FROM CoffeeMakersCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 c.[Width],
						 c.[Height],
						 c.[Depth],
						 c.[Weight],
						 c.[Power],
						 c.[NumberOfPrograms],
						 c.[Volume],
						 c.[ControlType],	
						 c.[TypeOfCoffeeUsed],
						 c.[PumpPressure],
						 c.[IntegratedCoffeeGrinder] 
					FROM CoffeeMakersCharacteristics c   
					JOIN Appliances a ON a.Id = c.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM ElectricKettlesCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 e.[Weight],
						 e.[Power],		 
						 e.[Volume],
						 e.[BodyMaterial],	
						 e.[HeatingElementType]
					FROM ElectricKettlesCharacteristics e
					JOIN Appliances a ON a.Id = e.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM BlendersCharacteristics WHERE ProductId = @id) > 0
			BEGIN				
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 b.[Width],
						 b.[Height],
						 b.[Depth],
						 b.[Weight],
						 b.[Power],
						 b.[NumberOfPrograms],
						 b.[Volume],
						 b.[WhiskForBeating],	
						 b.[Chopper],
						 b.[TravelBottle]
					FROM BlendersCharacteristics b     
					JOIN Appliances a ON a.Id = b.ProductId	
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM MeatGrinderCharacteristics WHERE ProductId = @id) > 0
			BEGIN				
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 m.[Width],
						 m.[Height],
						 m.[Depth],
						 m.[Weight],
						 m.[Power],
						 m.[Nozzle],
						 m.[Juicer]
					FROM MeatGrinderCharacteristics m    
					JOIN Appliances a ON a.Id = m.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM HairDryersCharacteristics WHERE ProductId = @id) > 0
			BEGIN				
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 h.[Weight],
						 h.[Power],
						 h.[NumberOfPrograms],
						 h.[Nozzle],
						 h.[Ionization],
						 h.[FoldingHandle]
					FROM HairDryersCharacteristics h
					JOIN Appliances a ON a.Id = h.ProductId		
					WHERE a.Id = @id
			END;
			IF (SELECT ProductId FROM ToothbrushesCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 t.[Nozzle],
						 t.[BatteryLife],
						 t.[UserAge],
						 t.[NumberOfPulsations]
					FROM ToothbrushesCharacteristics t 
					JOIN Appliances a ON a.Id = t.ProductId		
					WHERE a.Id = @id	
			END;
			IF (SELECT ProductId FROM LibraCharacteristics WHERE ProductId = @id) > 0
			BEGIN			
					SELECT 			     
			  			 a.[Id],
						 a.[Model],
						 a.[Company],
						 a.[Country],
						 a.[ProductionYear],
						 a.[Price],
						 a.[Color],				 
						 l.[Width],
						 l.[Height],
						 l.[Depth],
						 l.[Weight],
						 l.[WeightLimit],
						 l.[MeasurementAccuracy]
					FROM LibraCharacteristics l
					JOIN Appliances a ON a.Id = l.ProductId	
					WHERE a.Id = @id	
			END;
	END;
	GO


INSERT INTO dbo.[DbVersion] (Created, DbVersion) VALUES (SYSDATETIME(), '1.1')
GO