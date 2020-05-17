USE [OCSBDB]
GO
CREATE TABLE [DealerBrandRelation] ([DealerBrandRelation] INT PRIMARY KEY IDENTITY(1,1),
										[DealerId] INT FOREIGN KEY REFERENCES [Dealer]([DealerId]) NOT NULL,
										[BrandId] INT FOREIGN KEY REFERENCES [Brand]([BrandId]) NOT NULL)
GO											
CREATE TABLE [DealerHolidayRelation] ([DealerHolidayRelation] INT PRIMARY KEY IDENTITY(1,1),
										[DealerId] INT FOREIGN KEY REFERENCES [Dealer]([DealerId]) NOT NULL,
										[HolidayId] INT FOREIGN KEY REFERENCES [Holiday]([HolidayId]) NOT NULL)
GO
CREATE TABLE [DealerShiftRelation] ([DealerShiftRelation] INT PRIMARY KEY IDENTITY(1,1),
										[DealerId] INT FOREIGN KEY REFERENCES [Dealer]([DealerId]) NOT NULL,
										[ShiftId] INT FOREIGN KEY REFERENCES [Shift]([ShiftId]) NOT NULL)
GO
CREATE TABLE [MechanicServiceRelation] ([MechanicServiceRelation] INT PRIMARY KEY IDENTITY(1,1),
											[MechanicId] INT FOREIGN KEY REFERENCES [Mechanic]([MechanicId]) NOT NULL,
											[ServiceId] INT FOREIGN KEY REFERENCES [Service]([ServiceId]) NOT NULL)
GO
CREATE TABLE [MechanicBrandRelation] ([MechanicBrandRelation] INT PRIMARY KEY IDENTITY(1,1),
											[MechanicId] INT FOREIGN KEY REFERENCES [Mechanic]([MechanicId]) NOT NULL,
											[BrandId] INT FOREIGN KEY REFERENCES [Brand]([BrandId]) NOT NULL)
GO
CREATE TABLE [AppointmentServiceRelation] ([AppointmentServiceRelation] INT PRIMARY KEY IDENTITY(1,1),
												[AppointmentId] INT FOREIGN KEY REFERENCES [Appointment]([AppointmentId]) NOT NULL,
												[ServiceId] INT FOREIGN KEY REFERENCES [Service]([ServiceId]) NOT NULL,
												[MaterialCost] NUMERIC(5,2) NOT NULL,
												[LabourCost] NUMERIC(5,2) NOT NULL)
GO
