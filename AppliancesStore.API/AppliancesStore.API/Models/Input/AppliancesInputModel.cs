﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AppliancesStore.API.Models.Input
{
	public class AppliancesInputModel
	{
		public string Model { get; set; }
		public string Company { get; set; }
		public string Country { get; set; }
		public int? ProductionYear { get; set; }
		public decimal? Price { get; set; }
		public decimal? Width { get; set; }
		public decimal? Height { get; set; }
		public decimal? Depth { get; set; }
		public decimal? Weight { get; set; }
		public string Color { get; set; }
		public int? Power { get; set; }
		public string TypeOfInstallation { get; set; }
		public string EnergyClass { get; set; }
		public decimal? Volume { get; set; }
		public byte? NumberOfPrograms { get; set; }
		public bool? Grill { get; set; }
		public bool? Convection { get; set; }
		public int? BatteryLife { get; set; }
		public string ControlType { get; set; }
		public byte? Nozzle { get; set; }
		public string BodyMaterial { get; set; }
		public bool? WetCleaning { get; set; }
		public decimal? DustContainerSize { get; set; }
		public string DustContainerType { get; set; }
		public byte? NoiseLevel { get; set; }
		public string Drying { get; set; }
		public bool? Freezer { get; set; }
		public string DefrostingCameras { get; set; }
		public byte? NumberOfChambers { get; set; }
		public string Switches { get; set; }
		public string InnerCoating { get; set; }
		public bool? DelayedStart { get; set; }
		public string BowlCover { get; set; }
		public bool? KeepingWarm { get; set; }
		public string SuctionPipe { get; set; }
		public string TypeOfSensors { get; set; }
		public bool? RemoteStart { get; set; }
		public bool? BuildingRoomMap { get; set; }
		public byte? Capacity { get; set; }
		public bool? FloorIndication { get; set; }
		public bool? IntensiveWash { get; set; }
		public string OperatingMode { get; set; }
		public string Filter { get; set; }
		public string TypeOfLighting { get; set; }
		public int? MaximumSpinSpeed { get; set; }
		public int? WaterTankVolume { get; set; }
		public bool? ScaleProtection { get; set; }
		public byte? MaximumRoomArea { get; set; }
		public bool? MultiSplitSystem { get; set; }
		public bool? MotionDetector { get; set; }
		public bool? MicrowaveFunction { get; set; }
		public int? MaximumTemperature { get; set; }
		public string TypeOfCoffeeUsed { get; set; }
		public byte? PumpPressure { get; set; }
		public bool? IntegratedCoffeeGrinder { get; set; }
		public string HeatingElementType { get; set; }
		public bool? WhiskForBeating { get; set; }
		public bool? Chopper { get; set; }
		public bool? TravelBottle { get; set; }
		public bool? Juicer { get; set; }
		public bool? Ionization { get; set; }
		public bool? FoldingHandle { get; set; }
		public string UserAge { get; set; }
		public long? NumberOfPulsations { get; set; }
		public int? WeightLimit { get; set; }
		public decimal? MeasurementAccuracy { get; set; }
		public byte? NumberOfBurners { get; set; }
		public string PanelMaterial { get; set; }
	}
}