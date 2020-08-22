﻿CREATE TABLE [dbo].[Appliances] (
    [Id]                      INT            IDENTITY (1, 1) NOT NULL,
    [Model]                   NVARCHAR (30)  NOT NULL,
    [Company]                 NVARCHAR (20)  NOT NULL,
    [Country]                 NVARCHAR (20)  NOT NULL,
    [ProductionYear]          SMALLINT       NOT NULL,
    [Price]                   MONEY          NOT NULL,
    [Width]                   DECIMAL (4, 1) NULL,
    [Height]                  DECIMAL (4, 1) NULL,
    [Depth]                   DECIMAL (4, 1) NULL,
    [Weight]                  DECIMAL (3, 1) NULL,
    [Color]                   NVARCHAR (15)  NULL,
    [Power]                   SMALLINT       NULL,
    [TypeOfInstallation]      NVARCHAR (15)  NULL,
    [EnergyClass]             NVARCHAR (4)   NULL,
    [Volume]                  DECIMAL (4, 1) NULL,
    [NumberOfPrograms]        TINYINT        NULL,
    [Grill]                   BIT            NULL,
    [Convection]              BIT            NULL,
    [BatteryLife]             SMALLINT       NULL,
    [ControlType]             NVARCHAR (20)  NULL,
    [Nozzle]                  TINYINT        NULL,
    [BodyMaterial]            NVARCHAR (10)  NULL,
    [WetCleaning]             BIT            NULL,
    [DustContainerSize]       DECIMAL (3, 1) NULL,
    [DustContainerType]       NVARCHAR (15)  NULL,
    [NoiseLevel]              TINYINT        NULL,
    [Drying]                  NVARCHAR (25)  NULL,
    [Freezer]                 BIT            NULL,
    [DefrostingCameras]       NVARCHAR (20)  NULL,
    [NumberOfChambers]        TINYINT        NULL,
    [Switches]                NVARCHAR (20)  NULL,
    [InnerCoating]            NVARCHAR (20)  NULL,
    [DelayedStart]            BIT            NULL,
    [BowlCover]               NVARCHAR (10)  NULL,
    [KeepingWarm]             BIT            NULL,
    [SuctionPipe]             NVARCHAR (15)  NULL,
    [TypeOfSensors]           NVARCHAR (15)  NULL,
    [RemoteStart]             BIT            NULL,
    [BuildingRoomMap]         BIT            NULL,
    [Capacity]                TINYINT        NULL,
    [FloorIndication]         BIT            NULL,
    [IntensiveWash]           BIT            NULL,
    [OperatingMode]           NVARCHAR (15)  NULL,
    [Filter]                  NVARCHAR (20)  NULL,
    [TypeOfLighting]          NVARCHAR (30)  NULL,
    [MaximumSpinSpeed]        SMALLINT       NULL,
    [WaterTankVolume]         SMALLINT       NULL,
    [ScaleProtection]         BIT            NULL,
    [MaximumRoomArea]         TINYINT        NULL,
    [MultiSplitSystem]        BIT            NULL,
    [MotionDetector]          BIT            NULL,
    [MicrowaveFunction]       BIT            NULL,
    [MaximumTemperature]      SMALLINT       NULL,
    [TypeOfCoffeeUsed]        NVARCHAR (10)  NULL,
    [PumpPressure]            TINYINT        NULL,
    [IntegratedCoffeeGrinder] BIT            NULL,
    [HeatingElementType]      NVARCHAR (15)  NULL,
    [WhiskForBeating]         BIT            NULL,
    [Chopper]                 BIT            NULL,
    [TravelBottle]            BIT            NULL,
    [Juicer]                  BIT            NULL,
    [Ionization]              BIT            NULL,
    [FoldingHandle]           BIT            NULL,
    [UserAge]                 NVARCHAR (10)  NULL,
    [NumberOfPulsations]      BIGINT         NULL,
    [WeightLimit]             INT            NULL,
    [MeasurementAccuracy]     DECIMAL (3, 2) NULL,
    [NumberOfBurners]         TINYINT        NULL,
    [PanelMaterial]           NVARCHAR (20)  NULL,
    [IsDeleted]               BIT            DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Model] ASC)
);
