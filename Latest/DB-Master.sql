CREATE DATABASE [OCSBDB]
GO
USE [OCSBDB]
GO 
CREATE TABLE [VehicleType] ([VehicleTypeId] INT PRIMARY KEY IDENTITY(1,1),
							[VehicleTypeName] VARCHAR(56) NOT NULL)
GO
CREATE TABLE [FuelType] ([FuelTypeId] INT PRIMARY KEY,
							[FuelTypeName] VARCHAR(56) NOT NULL)
GO
CREATE TABLE [Brand] ([BrandId] INT PRIMARY KEY IDENTITY(1,1),
						[Name] NVARCHAR(56) NOT NULL,
						[ImagePath] NVARCHAR(512),
						[WebsiteLink] NVARCHAR(MAX),
						[ThemeColour] NVARCHAR(15),
						[IsDeleted] BIT DEFAULT 0)
GO
CREATE TABLE [Model] ([ModelId] INT PRIMARY KEY IDENTITY(1,1),
						[Name] NVARCHAR(56) NOT NULL,
						[BrandId] INT FOREIGN KEY REFERENCES [Brand]([BrandId]) NOT NULL,
						[Description] NVARCHAR(512),
						[IsDeleted] BIT DEFAULT 0)
GO
CREATE TABLE [Variant] ([VariantId] INT PRIMARY KEY IDENTITY(1,1),
							[VariantName] VARCHAR(56) NOT NULL,
							[ModelId] INT FOREIGN KEY REFERENCES [Model]([ModelId]) NOT NULL,
							[IsAutomatic] BIT DEFAULT 0,
							[UserManualLink] NVARCHAR(MAX),
							[FuelType] INT FOREIGN KEY REFERENCES [FuelType]([FuelTypeId]) NOT NULL,
							[IsDeleted] BIT DEFAULT 0)
GO
CREATE TABLE [Holiday] ([HolidayId] INT PRIMARY KEY IDENTITY(1,1),
							[StartDate] DATE NOT NULL,
							[EndDate] DATE NOT NULL,
							[Name] VARCHAR(56) NOT NULL)
GO
CREATE TABLE [Shift] ([ShiftId] INT PRIMARY KEY IDENTITY(1,1),
						[Day] TINYINT NOT NULL CHECK ([Day] > 0 AND [Day] < 8),
						[StartTime] TIME NOT NULL,
						[EndTime] TIME NOT NULL)
GO
CREATE TABLE [ShiftBreak] ([BreakId] INT PRIMARY KEY IDENTITY(1,1),
							[Name] VARCHAR(56) NOT NULL,
							[ShiftId] INT NOT NULL REFERENCES [Shift]([ShiftId]),
							[StartTime] TIME NOT NULL,
							[EndTime] TIME NOT NULL)
GO
CREATE TABLE [Dealer] ([DealerId] INT PRIMARY KEY IDENTITY(1,1),
						[Name] VARCHAR(56) NOT NULL,
						[ContactNo] VARCHAR(15) NOT NULL,
						[EmailId] NVARCHAR(512) NOT NULL,
						[Address] NVARCHAR(255) NOT NULL,
						[WebSite] NVARCHAR(512),
						[Lat] NUMERIC(10,8) NOT NULL,  
						[Long] NUMERIC(11,8) NOT NULL,
						[IsDeleted] BIT DEFAULT 0)
GO
CREATE TABLE [Customer] ([CustomerId] INT PRIMARY KEY IDENTITY(1,1),							
							[Name] VARCHAR(56) NOT NULL,
							[ContactNo] VARCHAR(15) NOT NULL,
							[EmailId] NVARCHAR(512) NOT NULL,
							[Address] NVARCHAR(255) NOT NULL,
							[PreferredDealerId] INT FOREIGN KEY REFERENCES [Dealer]([DealerId]),
							[IsDeleted] BIT DEFAULT 0)
GO
CREATE TABLE [Vehicle] ([VehicleId] INT PRIMARY KEY IDENTITY(1,1),
							[LicensePlateNumber] NVARCHAR(56) NOT NULL,							
							[VehicleType] INT FOREIGN KEY REFERENCES [VehicleType]([VehicleTypeId]) NOT NULL,
							[VIN] NVARCHAR(30) NOT NULL,
							[NECD] DATETIME,
							[ManufacturingYear] INT NOT NULL,
							[FuelTypeId] INT FOREIGN KEY REFERENCES [FuelType]([FuelTypeId]) NOT NULL,
							[BrandId] INT FOREIGN KEY REFERENCES [Brand]([BrandId]) NOT NULL,
							[ModelId] INT FOREIGN KEY REFERENCES [Model]([ModelId]) NOT NULL,
							[VariantId] INT FOREIGN KEY REFERENCES [Variant]([VariantId]) NOT NULL,
							[CustomerId] INT FOREIGN KEY REFERENCES [Customer]([CustomerId]) NOT NULL)
GO
CREATE TABLE [Mechanic] ([MechanicId] INT PRIMARY KEY IDENTITY(1,1),
							[Name] NVARCHAR(56) NOT NULL,
							[ContactNo] VARCHAR(15) NOT NULL,
							[EmailId] NVARCHAR(512),
							[SpecialityBrandId] INT FOREIGN KEY REFERENCES [Brand]([BrandId]),
							[IsOnline] BIT NOT NULL DEFAULT 1,
							[IsActive] BIT NOT NULL DEFAULT 1,
							[DealerId] INT FOREIGN KEY REFERENCES [Dealer]([DealerId]) NOT NULL,
							[IsDeleted] BIT DEFAULT 0)
GO
CREATE TABLE [MechanicLeave]([MechanicLeave] INT PRIMARY KEY IDENTITY(1,1),
							[MechanicId] INT FOREIGN KEY REFERENCES [Mechanic]([MechanicId]) NOT NULL,
							[LeaveType] VARCHAR(56) NOT NULL,
							[StartDate] DATE NOT NULL,
							[EndDate] DATE NOT NULL)
GO
CREATE TABLE [ServiceGroup] ([ServiceGroupId] INT PRIMARY KEY IDENTITY(1,1),
							 [ServiceGroupeName] NVARCHAR(56) NOT NULL)
GO
CREATE TABLE [Service] ([ServiceId] INT PRIMARY KEY IDENTITY(1,1),
						[ServiceGroupId] INT FOREIGN KEY REFERENCES [ServiceGroup]([ServiceGroupId]) NOT NULL,
						[Name] NVARCHAR(56) NOT NULL,												
						[Cost] NUMERIC(5,2) NOT NULL,
						[Duration] INT NOT NULL,							
						[FuelType] INT FOREIGN KEY REFERENCES [FuelType]([FuelTypeId]) NOT NULL,
						[IsDeleted] BIT DEFAULT 0)
GO
CREATE TABLE [ServiceDetails] ([ServiceDetailsId] INT PRIMARY KEY IDENTITY(1,1),
								[ServiceId] INT FOREIGN KEY REFERENCES [Service]([ServiceId]) NOT NULL,
								[Description] NVARCHAR(512) NOT NULL,
								[Type] VARCHAR(56) NOT NULL,
								[Cost] NUMERIC(5,2) NOT NULL, 
								[PartNo] VARCHAR(56) NOT NULL,
								[VAT] NUMERIC(5,2),								
								[Qauntity] INT NOT NULL,
								[IsDeleted] BIT DEFAULT 0)
GO							
CREATE TABLE [Otp] ([OtpId] INT PRIMARY KEY IDENTITY(1,1),
						[OtpNumber] INT NOT NULL,
						[CreationTime] DATETIME NOT NULL,
						[ExpiryTime] DATETIME NOT NULL,
						[CustomerId] INT FOREIGN KEY REFERENCES [Customer](CustomerId) NOT NULL)
GO
CREATE TABLE [Appointment] ([AppointmentId] INT PRIMARY KEY IDENTITY(1,1),
							[VehicleId] INT FOREIGN KEY REFERENCES [Vehicle]([VehicleId]) NOT NULL,
							[CustomerName] VARCHAR(56) NOT NULL,
							[LicensePlateNumber] VARCHAR(56) NOT NULL,
							[PlanDateTime] DATETIME NOT NULL,
							[FinishDateTime] DATETIME,														
							[PickUpLat] NUMERIC(10,8),
							[PickUpLong] NUMERIC(11,8),
							[DropLat] NUMERIC(10,8),
							[DropLong] NUMERIC(11,8),
							[PickUpAddress] NVARCHAR(MAX),
							[DropAddress] NVARCHAR(MAX),
							[CustomerNote] NVARCHAR(MAX),
							[DealerId] INT FOREIGN KEY REFERENCES [Dealer]([DealerId]) NOT NULL,
							[IsDeleted] BIT DEFAULT 0  NOT NULL)
GO