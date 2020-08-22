DECLARE @currentDBVersion NVARCHAR(10);
SET @currentDBVersion = (SELECT TOP(1) DBVersion FROM [dbo].[DBVersion] ORDER BY Created DESC)

IF @currentDBVersion < '1.1'

ALTER TABLE Appliances
		ADD CategoryId TINYINT REFERENCES [Category] (Id) NULL
	GO

	UPDATE Appliances
	SET CategoryId = 1
	WHERE Appliances.NumberOfChambers IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 2
	WHERE Appliances.InnerCoating IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 3
	WHERE Appliances.BowlCover IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 4
	WHERE Appliances.SuctionPipe IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 5
	WHERE Appliances.TypeOfSensors IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 6
	WHERE Appliances.IntensiveWash IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 7
	WHERE Appliances.PanelMaterial IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 8
	WHERE Appliances.TypeOfLighting IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 9
	WHERE Appliances.MaximumSpinSpeed IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 10
	WHERE Appliances.WaterTankVolume IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 11
	WHERE Appliances.MaximumRoomArea IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 12
	WHERE Appliances.MaximumTemperature IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 13
	WHERE Appliances.TypeOfCoffeeUsed IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 14
	WHERE Appliances.BodyMaterial IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 15
	WHERE Appliances.Chopper IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 16
	WHERE Appliances.Juicer IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 17
	WHERE Appliances.Ionization IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 18
	WHERE Appliances.UserAge IS NOT NULL
	GO

	UPDATE Appliances
	SET CategoryId = 19
	WHERE Appliances.WeightLimit IS NOT NULL
	GO


	ALTER TABLE Appliances
	DROP COLUMN  [Width],[Height],[Depth],[Weight],[Power],[TypeOfInstallation],
				 [EnergyClass],[Volume],[NumberOfPrograms],[Grill],[Convection],
				 [BatteryLife],[ControlType],[Nozzle],[BodyMaterial],[WetCleaning],
			     [DustContainerSize],[DustContainerType],[NoiseLevel],[Drying],
				 [Freezer],[DefrostingCameras],[NumberOfChambers],[Switches],
				 [InnerCoating],[DelayedStart],[BowlCover],[KeepingWarm],[SuctionPipe],
				 [TypeOfSensors],[RemoteStart],[BuildingRoomMap],[Capacity],[FloorIndication],
				 [IntensiveWash],[OperatingMode],[Filter],[TypeOfLighting],[MaximumSpinSpeed],	
				 [WaterTankVolume],[ScaleProtection],[MaximumRoomArea],[MultiSplitSystem],
				 [MotionDetector],[MicrowaveFunction],[MaximumTemperature],[TypeOfCoffeeUsed],
				 [PumpPressure],[IntegratedCoffeeGrinder],[HeatingElementType],[WhiskForBeating],
				 [Chopper],[TravelBottle],[Juicer],[Ionization],[FoldingHandle],[UserAge],
				 [NumberOfPulsations],[WeightLimit],[MeasurementAccuracy],[NumberOfBurners],[PanelMaterial]
	GO