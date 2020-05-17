USE [OCSBDB]
INSERT INTO [VehicleType] VALUES ('Sedan'),
									('Hatchback'),
									('Minivan'),
									('SUV'),
									('CUV'),
									('Pickup'),
									('Coupe'),
									('Convertible')
GO
INSERT INTO [FuelType] VALUES(0,'Common'),
                (1,'Petrol'),
								(2,'Diesel'),
								(3,'Electric'),
								(4,'ECV'),
								(5,'HEV')
GO
INSERT INTO [Brand] VALUES('Volkswagen','https://www.carlogos.org/logo/Volkswagen-logo-2019-1500x1500.png','https://www.volkswagen.nl/','Blue',0),
							('Toyota','https://www.carlogos.org/logo/Toyota-logo-1989-2560x1440.png','https://www.toyota.nl/','Red',0),
							('Ford','https://www.carlogos.org/logo/Ford-logo-2003-1366x768.png','https://www.ford.nl/','Purple',0),
							('Kia','https://www.carlogos.org/logo/Kia-logo-2560x1440.png','https://www.kia.nl/','Black',0)
GO
INSERT INTO [Model] VALUES('Volkswagen California',1,'The Volkswagen California is based on the Transporter by VWCV.',DEFAULT),
							('Volkswagen Amarok',1,'The Volkswagen Amarok is a pickup truck produced by Volkswagen Commercial Vehicles since 2010.',DEFAULT),
							('Volkswagen Ameo',1,'The Volkswagen Ameo pronouncedis a subcompact sedan launched by the German manufacturer',DEFAULT),
							('Volkswagen Arteon',1,'The Volkswagen Arteon is a four door fastback ',DEFAULT),
							('Toyota Camry',2,'The powerful, stylish 2020 Camry Hybrid gives up nothing with its optimized fuel economy, advanced tech and stirring drive. ',DEFAULT),
							('Toyota Corolla',2,'Corolla was the best-selling car worldwide by 1974 and has been one of the best-selling cars in the world since then.',DEFAULT),
							('Toyota Fortuner',2,'The Fortuner is built on the Hilux pickup truck platform. It features three rows of seats and is available in rear-wheel drive or four-wheel drive configuration.',DEFAULT),
							('Toyota Tarago',2,'The Toyota Tarago is the marketing name for several Toyota people mover vans sold in the Australian market from 1983 to 2019.',DEFAULT),
							('Ford Escape',3,'The Ford Escape is a compact crossover vehicle sold by Ford since 2000 over four generations.',DEFAULT),
							('Ford Everest',3,'The Ford Everest, also known as the Ford Endeavour in the Indian market, is a mid-sized sport utility vehicle (SUV) produced by Ford Motor Company since 2003 over three generations.',DEFAULT),
							('Ford Focus',3,'The Ford Focus is a compact car (C-segment in Europe) manufactured by the Ford Motor Company and created under Alexander Trotmans Ford 2000 plan, which aimed to globalize model development and sell one compact vehicle worldwide.',DEFAULT),
							('Ford EcoSport',3,'The Ford EcoSport (pronounced ek-ho sport) is a subcompact crossover SUV, originally built in Brazil by Ford Brazil since 2003, at the Camaçari plant. ',DEFAULT),
							('Kia Rio',4,'The Kia Rio is expected to be launched in the Indian market by the year 2020.',DEFAULT),
							('Kia Seltos',4,'Seltos is available in both petrol and diesel . Seltos petrol is powered by 1497cc and 1353cc engine claiming mileage of 16.8kmpl and Seltos diesel is powered by 1493cc engine claiming mileage of 20.8kmpl.',DEFAULT),
							('Kia Stinger',4,'Kia Stinger models are available with a 3.3 L-liter gas engine or a 2.0 L-liter gas engine, with output up to 365 hp, depending on engine type.',DEFAULT),
							('Kia Cerato',4,'Kia Cerato. ... The Kia Cerato (also known as Kia Spectra in the United States) is a compact car produced by the South Korean manufacturer Kia Motors since 2003.',DEFAULT)
GO
INSERT INTO [Variant] VALUES 
				--Volkswagen California 
				('2.0 TDI',1,DEFAULT,'https://vwcaliforniaclub.com/threads/t6-owners-manual.13601/',1,DEFAULT),							  							 
				('2.0 TDI',1,DEFAULT,'https://vwcaliforniaclub.com/threads/t6-owners-manual.13601/',2,DEFAULT),
				--Volkswagen Amarok							  
				('V6 TDI',2,1,'https://vwcaliforniaclub.com/threads/t6-owners-manual.13601/',2,DEFAULT),
				('TDI 400',2,DEFAULT,'https://vwcaliforniaclub.com/threads/t6-owners-manual.13601/',2,DEFAULT),
				--Volkswagen Ameo										
				('1.5 TDI',3,DEFAULT,'https://vwcaliforniaclub.com/threads/t6-owners-manual.13601/',2,DEFAULT),					
				('1.0 MPI',3,DEFAULT,'https://vwcaliforniaclub.com/threads/t6-owners-manual.13601/',1,DEFAULT),											
				--Volkswagen Arteon							  
				('2.0L',4,1,'https://vwcaliforniaclub.com/threads/t6-owners-manual.13601/',1,DEFAULT),								
				--Toyota Camry
				('ASCENT 2.5L',5,1,'https://www.toyotabharat.com/showroom/camry/',1,DEFAULT),							  	
				('ASCENT SPORT 2.5L',5,1,'https://www.toyotabharat.com/showroom/camry/',1,DEFAULT),											
				--Toyota Corolla								  								 					
				('SX 2.0L',6,1,'https://www.toyotabharat.com/showroom/camry/',1,DEFAULT),							  							
				('ZR 2.0L',6,1,'https://www.toyotabharat.com/showroom/camry/',1,DEFAULT),
				--Toyota Fortuner							  							  
				('CRUSADE 2.8L',7,DEFAULT,'https://www.toyotabharat.com/showroom/camry/',2,DEFAULT),
				('GX 2.8L',7,DEFAULT,'https://www.toyotabharat.com/showroom/camry/',2,DEFAULT),											
				--Toyota Tarago
				('GLI 2.4L',8,1,'https://www.toyotabharat.com/showroom/camry/',1,DEFAULT),
				('GLX 2.4L',8,1,'https://www.toyotabharat.com/showroom/camry/',1,DEFAULT),
				--Ford Escape
				('AMBIENTE(AWD) 1.5L',9,1,'https://www.ford.com/suvs-crossovers/escape/',1,DEFAULT),
				('ST-LINE(AWD) 2.0L',9,1,'https://www.ford.com/suvs-crossovers/escape/',1,DEFAULT),
				--Ford Everest								
				('AMBIENTE(4WD) 1.5L',10,1,'https://www.ford.com/suvs-crossovers/escape/',2,DEFAULT),
				('AMBIENTE(RWD) 1.5L',10,1,'https://www.ford.com/suvs-crossovers/escape/',2,DEFAULT),
				--Ford Focus
				('ACTIVE 1.5L',11,1,'https://www.ford.com/suvs-crossovers/escape/',1,DEFAULT),
				('ST 2.3L',11,1,'https://www.ford.com/suvs-crossovers/escape/',1,DEFAULT),
				--Ford EcoSport
				('AMBIENTE 1.5L',12,1,'https://www.ford.com/suvs-crossovers/escape/',1,DEFAULT),
				('Titanium 1.0L',12,1,'https://www.ford.com/suvs-crossovers/escape/',1,DEFAULT),
				--Kia Rio
				('GT-LINE T3',13,1,'https://www.kia.com/us/en/rio',1,DEFAULT),
				('SPORT',13,1,'https://www.kia.com/us/en/rio',1,DEFAULT),
				--Kia Seltos							  
				('GT-LINE(AWD) 1.6',14,1,'https://www.kia.com/us/en/rio',1,DEFAULT),
				('S(FWD) 2.0',14,1,'https://www.kia.com/us/en/rio',1,DEFAULT),
				--Kia Stinger
				('200S(AEB) 2.0L',15,1,'https://www.kia.com/us/en/rio',1,DEFAULT),
				('330S(AEB) 3.3L',15,1,'https://www.kia.com/us/en/rio',1,DEFAULT),
				--Kia Cerato
				('S 2.0L',16,1,'https://www.kia.com/us/en/rio',1,DEFAULT),
				('SI 2.0L',16,1,'https://www.kia.com/us/en/rio',1,DEFAULT)
GO
INSERT INTO [Holiday] VALUES('2020-01-01','2020-01-01','New Year Day'),
							('2020-04-09','2020-04-09','Maundy Thursday'),
							('2020-04-10','2020-04-10','Good Friday'),
							('2020-04-12','2020-04-12','Easter Sunday'),
							('2020-04-13','2020-04-13','Easter Monday'),
							('2020-05-01','2020-05-01','Labour Day'),
							('2020-05-17','2020-05-17','Constitution Day'),
							('2020-05-21','2020-05-21','Ascension Day'),
							('2020-05-31','2020-05-31','Whit Sunday'),
							('2020-06-01','2020-06-01','Whit Monday'),
							('2020-12-25','2020-12-27','Christmas Day'),
							('2020-06-05','2020-06-05','Kabirdas Jayanti'),
              ('2020-06-15','2020-06-15','YMA Day'),
              ('2020-06-23','2020-06-23','Rath Yatra'),
              ('2020-06-28','2020-06-28','Kharchi Puja'),
              ('2020-06-30','2020-06-30','Remna Ni')

GO
INSERT INTO [Shift] VALUES
          --Mon
              --Dealer1
              (1,'9:00','13:00'),
							(1,'14:00','19:00'),
              --Dealer2
              (1,'10:00','14:00'),
							(1,'15:00','20:00'),
              --Dealer3
              (1,'9:30','13:30'),
							(1,'14:30','19:30'),
              --Dealer4
              (1,'9:00','13:00'),
							(1,'14:00','19:00'),
              --Dealer5
              (1,'10:00','14:00'),
							(1,'15:00','20:00'),
              --Dealer6
              (1,'9:30','13:30'),
							(1,'14:30','19:30'),
          --Tues
              --Dealer1 
							(2,'9:00','13:00'),
							(2,'14:00','19:00'),
              --Dealer2
              (2,'10:00','14:00'),
							(2,'15:00','20:00'),
              --Dealer3
              (2,'9:30','13:30'),
							(2,'14:30','19:30'),
              --Dealer4
              (2,'9:00','13:00'),
							(2,'14:00','19:00'),
              --Dealer5
              (2,'10:00','14:00'),
							(2,'15:00','20:00'),
              --Dealer6
              (2,'9:30','13:30'),
							(2,'14:30','19:30'),
          --Wed
              --Dealer1 
							(3,'9:00','13:00'),
							(3,'14:00','19:00'),
              --Dealer2
              (3,'10:00','14:00'),
							(3,'15:00','20:00'),
              --Dealer3
              (3,'9:30','13:30'),
							(3,'14:30','19:30'),
              --Dealer4
              (3,'9:00','13:00'),
							(3,'14:00','19:00'),
              --Dealer5
              (3,'10:00','14:00'),
							(3,'15:00','20:00'),
              --Dealer6
              (3,'9:30','13:30'),
							(3,'14:30','19:30'),
          --Thurs
              --Dealer1 
							(4,'9:00','13:00'),
							(4,'14:00','19:00'),
              --Dealer2
              (4,'10:00','14:00'),
							(4,'15:00','20:00'),
              --Dealer3
              (4,'9:30','13:30'),
							(4,'14:30','19:30'),
              --Dealer4
              (4,'9:00','13:00'),
							(4,'14:00','19:00'),
              --Dealer5
              (4,'10:00','14:00'),
							(4,'15:00','20:00'),
              --Dealer6
              (4,'9:30','13:30'),
							(4,'14:30','19:30'),
          --Fri
              --Dealer1 
							(5,'9:00','13:00'),
							(5,'14:00','19:00'),
              --Dealer2
              (5,'10:00','14:00'),
							(5,'15:00','20:00'),
              --Dealer3
              (5,'9:30','13:30'),
							(5,'14:30','19:30'),
              --Dealer4
              (5,'9:00','13:00'),
							(5,'14:00','19:00'),
              --Dealer5
              (5,'10:00','14:00'),
							(5,'15:00','20:00'),
              --Dealer6
              (5,'9:30','13:30'),
							(5,'14:30','19:30'),
           --Sat
              --Dealer1 
							(6,'9:00','12:00'),
							(6,'13:00','15:00'),
              --Dealer2
              (6,'10:00','13:00'),
							(6,'14:00','16:00'),
              --Dealer3
              (6,'9:30','12:30'),
							(6,'13:00','15:30'),
              --Dealer4
              (6,'9:00','12:00'),
							(6,'13:00','15:00'),
              --Dealer5
              (6,'10:00','13:00'),
							(6,'14:00','16:00'),
              --Dealer6
              (6,'9:30','12:30'),
							(6,'13:00','15:30')

						
GO
INSERT INTO [Dealer] VALUES('Marcus Svensson','8501089810','BriceQuerry@dayrep.com','Judges Bungalow Road, Ahmedabad, Gujarat, 380054,Vikram Nagar Ahmedabad India','https://www.kia.com/us/en/rio',23.0387, 72.5119,DEFAULT),
							('Marcus Svensson','3044063387','BurnellPoulin@dayrep.com','Shri Arvind Marg, Ahmedabad, Gujarat, 380009,Vasant Vihar Phase II Ahmedabad India','https://www.ford.com/suvs-crossovers/escape/',23.0365, 72.5611,DEFAULT),
							('Raymond Lacasse','8809225330','FulcoWindt@dayrep.com','1281 Relief Road, Ahmedabad, Gujarat, 380001, Ratanpur Pole Ahmedabad India','https://www.toyotabharat.com/showroom/camry/',23.0283, 72.5937,DEFAULT),
							('Gaetan Arcouet','9007127559','JannesNijhuis@rhyta.com','Navroji Pestonji Vaki Marg, Ahmedabad, Gujarat, 380004, Shahibagh Ahmedabad India','https://vwcaliforniaclub.com',23.0561, 72.5962,DEFAULT),
							('Steffan Mark','9856715645','SteffMark@dayrep.com','Nava Naroda, Ahmadabad City Taluka, Ahmedabad District, Gujarat, 380001, India','https://www.toyotabharat.com/showroom/camry/',23.0500, 72.6700,DEFAULT),
							('Bassanio Stavart','9517538462','BassVinton@rhyta.com','Sabarmati, Ahmadabad City Taluka, Ahmedabad District, Gujarat, 382424, India','https://vwcaliforniaclub.com',23.1049, 72.6029,DEFAULT)
GO
INSERT INTO [Mechanic] VALUES('Brice Querry',8501089810,'BriceQuerry@dayrep.com',1,DEFAULT,DEFAULT,1,DEFAULT),
							('Burnell Poulin',3044063387,'BurnellPoulin@dayrep.com',2,DEFAULT,DEFAULT,2,DEFAULT),
							('Fulco Windt',8809225330,'FulcoWindt@dayrep.com',3,DEFAULT,DEFAULT,3,DEFAULT),
							('Jannes Nijhuis',9007127559,'JannesNijhuis@rhyta.com',4,DEFAULT,DEFAULT,4,DEFAULT),
							('Joan Theunis',051072721,'BriceQuerry@dayrep.com',1,DEFAULT,DEFAULT,1,DEFAULT),
							('Paul Deinum',0504878239,'PaulDeinum@rhyta.com',1,DEFAULT,DEFAULT,2,DEFAULT),
							('Nour Lemmens',2604586597,'NourLemmens@jourrapide.com',2,DEFAULT,DEFAULT,3,DEFAULT),
							('Gareth van Maurik',2301410594,'GarethvanMaurik@jourrapide.com',2,DEFAULT,DEFAULT,4,DEFAULT),
							('George van Ginneken',0402365105,'GeorgevanGinneken@rhyta.com',4,DEFAULT,DEFAULT,1,DEFAULT),
							('Jeremie Leenman',0425507991,'JeremieLeenman@dayrep.com',2,DEFAULT,DEFAULT,2,DEFAULT)
GO
INSERT INTO[Customer] VALUES('Juan K. Rodriguez',5738998461,'JuanKRodriguez@armyspy.com','3762 Sharon Lane Saint James, MO 65559',1,DEFAULT),
							('Michael D. Ware',7016407580,'Khizir@gmail.com','879 Hidden Meadow Drive Wahpeton, ND 58075',2,DEFAULT),
							('Glenn J. Pantoja',0272345276,'GlennJPantoja@armyspy.com','216 Roosevelt Road Western Heights Rotorua 3015',3,DEFAULT),
							('Khizir Bataev',0209559336,'KhizirBataev@jourrapide.com','46 Makora Street Riccarton Christchurch 8041',4,DEFAULT),
							('Milano Hauser',6135963081,'MilanoSKennedy@dayrep.com','537 Merivale Road Ottawa, ON K2H 5B6',1,DEFAULT),
							('Jared S. Kennedy',6506418819,'Eric@gmail.com','531 Rardin Drive San Francisco, CA 94103',1,DEFAULT),
							('James P. Stewart',6364527888,'JamesPStewart@armyspy.com','3743 Rodney Street Ware, MO 63050',2,DEFAULT),
							('Eric E. Hall',4146255785,'EricEHall@rhyta.com','685 Woodlawn Drive West Allis, WI 53227',3,DEFAULT),
							('Ernest C. Sargent',2698723887,'ErnestCSargent@dayrep.com','2913 Echo Lane Grand Rapids, MI 49503',4,DEFAULT),
							('James D. Ohagan',6466381791,'JamesDOhagan@dayrep.com','842 Cantebury Drive New York, NY 10011',1,DEFAULT)
GO
INSERT INTO [Vehicle] VALUES('GJ01AB1234',1,'1HGBH41JXMN109186','2020-07-01',2010,1,1,2,5,1),
							('GJ18GH5674',1,'2MBTY54JKJN110557','2020-05-13',2009,2,1,3,7,2),
							('GJ27NM3324',5,'1KJYU54LKYT110584','2020-06-03',2007,3,2,6,14,3),
							('RJ34JK1234',1,'2JHUI58JKJN568545','2020-07-04',2013,4,2,7,10,4),
							('RJ34LK9834',1,'1LKHI41MNJU555486','2020-05-05',2002,5,2,5,12,5),
							('GJ23NM5424',5,'3OUYR54LKYT110544','2020-07-10',2010,1,3,10,20,6),
							('MH05HJ7777',1,'4EFRJ54LKLY454058','2020-11-20',2018,2,3,12,21,6),
							('DD03SG6677',1,'5JUBH41JXMN109186','2020-10-28',2017,3,3,11,18,8),
							('GJ01HG6655',5,'2LNTY54JKJN110557','2020-08-02',2006,4,4,13,25,9),
							('RJ05TH5533',1,'1OUYR41JBHN104786','2020-09-12',2008,5,4,14,26,1),
							('MH03HJ7788',1,'2OTTY54JKJN548557','2020-05-25',2019,1,4,15,27,6),
							('GJ07HY4574',5,'1OUYR54LKYT178556','2020-07-21',2019,2,4,15,29,3)
GO
INSERT INTO [ServiceGroup] VALUES ('AC'),
								  ('Wheel and Rim Care'),
								  ('Battery'),
                  ('Engine')
GO
INSERT INTO[Service] VALUES

			  --Group 1 services
			  (1,'AC Gas Replacement',992.00,2,0,DEFAULT),
        (1,'AC Filter Cleaning',828.00,2,0,DEFAULT),
        (1,'Condenser Cleaning',828.00,2,0,DEFAULT),
        (1,'Compressor Oil Topup',992.00,2,0,DEFAULT),

			  --Group 2 services

			  (2,'Wheel Balancing',600.00,1,0,DEFAULT),
			  (2,'Wheel Alignment',536.00,1,0,DEFAULT),
			  (2,'Tyre Rotation',600.00,1,0,DEFAULT),
			  (2,'Wheel Replacement',600.00,2,0,DEFAULT),

        --Group 3 services
         
         (3,'Battery Charging',600.00,12,0,DEFAULT),
         (3,'Battery Repair',500.00,2,0,DEFAULT),
         (3,'Battery Replacement',999.99,2,0,DEFAULT),
         (3,'Battery Acid Topup',700.00,2,0,DEFAULT),

		    --Group 4 services

         (4,'Engine Oil Change',600.00,2,0,DEFAULT),
         (4,'Oil Filter Replacemnet',400.00,2,0,DEFAULT),
         (4,'Air Filter Replacemnet',400.00,2,0,DEFAULT),
         (4,'Spark Plugs Replacemnet',500.00,2,1,DEFAULT),
         (4,'Fuel Filter Replacemnet',500.00,2,2,DEFAULT)

GO

INSERT INTO[ServiceDetails] VALUES

              --AC services
              (1,'AC Gas Topup, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, AC Inspection','Material',150.00,'1',42.00,1,DEFAULT),
              (1,'AC Gas Topup, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, AC Inspection','Labour',200.00,'2',36.00,1,DEFAULT),

			        (2,'AC Gas Replacement, Cooling Coil Cleaning, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, Dashboard Fitting','Material',200.00,'3',56.00,1,DEFAULT),
              (2,'AC Gas Replacement, Cooling Coil Cleaning, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, Dashboard Fitting','Labour',200.00,'4',36.00,1,DEFAULT),

   			      (3,'AC Gas Topup, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, AC Inspection','Material',150.00,'5',42.00,1,DEFAULT),
              (3,'AC Gas Topup, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, AC Inspection','Labour',200.00,'6',36.00,1,DEFAULT),

			        (4,'AC Gas Replacement, Cooling Coil Cleaning, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, Dashboard Fitting','Material',200.00,'7',56.00,1,DEFAULT),
              (4,'AC Gas Replacement, Cooling Coil Cleaning, Condenser Cleaning, AC Filter Cleaning, AC Vent Cleaning, Dashboard Fitting','Labour',200.00,'8',36.00,1,DEFAULT),

			        
              --Wheel And Rim Care
              (5,'Automated Wheel Balancing, Weight Correction, Alloy/Steel, Wheel Rigidity Inspection','Material',250.00,'9',45.00,1,DEFAULT),
              (5,'Automated Wheel Balancing, Weight Correction, Alloy/Steel, Wheel Rigidity Inspection','Labour',250.00,'10',45.00,1,DEFAULT),

              (6,'Laser-assisted Alignmnet, Toe-Thrust-Camber and Castor Adjustment, Steering Adjustment and Correction','Material',200.00,'11',36.00,1,DEFAULT),
              (6,'Laser-assisted Alignmnet, Toe-Thrust-Camber and Castor Adjustment, Steering Adjustment and Correction','Labour',200.00,'12',36.00,1,DEFAULT),

              (7,'Automated Wheel Balancing, Weight Correction, Alloy/Steel, Wheel Rigidity Inspection','Material',250.00,'13',45.00,1,DEFAULT),
              (7,'Automated Wheel Balancing, Weight Correction, Alloy/Steel, Wheel Rigidity Inspection','Labour',250.00,'14',45.00,1,DEFAULT),

              (8,'Laser-assisted Alignmnet, Toe-Thrust-Camber and Castor Adjustment, Steering Adjustment and Correction','Material',200.00,'15',36.00,1,DEFAULT),
              (8,'Laser-assisted Alignmnet, Toe-Thrust-Camber and Castor Adjustment, Steering Adjustment and Correction','Labour',200.00,'16',36.00,1,DEFAULT),


              --Battery
              (9,'Complete Battery Charging','Material',100.00,'17',28.00,1,DEFAULT),
              (9,'Complete Battery Charging','Labour',200.00,'18',36.00,1,DEFAULT),

              (10,'Repairing Battery wires, terminals & other parts','Material',100.00,'19',28.00,1,DEFAULT),
              (10,'Repairing Battery wires, terminals & other parts','Labour',150.00,'20',27.00,1,DEFAULT),

              (11,'Whole Battery Replacement','Material',100.00,'21',28.00,1,DEFAULT),
              (11,'Whole Battery Replacement','Labour',200.00,'22',36.00,1,DEFAULT),

              (12,'Acid top-up for Acid Stratification issue','Material',100.00,'23',28.00,1,DEFAULT),
              (12,'Acid top-up for Acid Stratification issue','Labour',200.00,'24',36.00,1,DEFAULT),
              

			        --Engine
              (13,'Synthetic/Conventional Oil Replacemnet','Material',100.00,'25',28.00,1,DEFAULT),
              (13,'Synthetic/Conventional Oil Replacemnet','Labour',200.00,'26',36.00,1,DEFAULT),

              (14,'Oil Filter Change in case of filter clogging','Material',100.00,'27',28.00,1,DEFAULT),
              (14,'Oil Filter Change in case of filter clogging','Labour',150.00,'28',27.00,1,DEFAULT),

              (15,'High Quality Air Filter Replacement','Material',100.00,'29',28.00,1,DEFAULT),
              (15,'High Quality Air Filter Replacement','Labour',200.00,'30',36.00,1,DEFAULT),

              (16,'Replacement of damaged Spark Plugs','Material',100.00,'31',28.00,1,DEFAULT),
              (16,'Replacement of damaged Spark Plugs','Labour',150.00,'32',27.00,1,DEFAULT),

              (17,'High Quality Fuel Filter Replacement','Material',100.00,'33',28.00,1,DEFAULT),
              (17,'High Quality Fuel Filter Replacement','Labour',150.00,'34',27.00,1,DEFAULT)

GO

INSERT INTO [DealerBrandRelation] VALUES (1,3),(2,4),(3,4),(4,1)
GO

INSERT INTO [DealerHolidayRelation] VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),
										   (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),
										   (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),
										   (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),
										   (1,12),(1,13),(1,14),(1,15),(1,16),
										   (2,12),(2,13),(2,14),(2,15),(2,16),
										   (3,12),(3,13),(3,14),(3,15),(3,16),
										   (4,12),(4,13),(4,14),(4,15),(4,16)
GO
INSERT INTO [DealerShiftRelation] VALUES (1,1),(1,2),(1,13),(1,14),(1,25),(1,26),(1,37),(1,38),(1,49),(1,50),(1,61),(1,62),
										 (2,3),(2,4),(2,15),(2,16),(2,27),(2,28),(2,39),(2,40),(2,51),(2,52),(2,63),(2,64),
										 (3,5),(3,6),(3,17),(3,18),(3,29),(3,30),(3,41),(3,42),(3,53),(3,54),(3,65),(3,66),
										 (4,7),(4,8),(4,19),(4,20),(4,31),(4,32),(4,43),(4,44),(4,55),(4,56),(4,67),(4,68),
                     (5,9),(5,10),(5,21),(5,22),(5,33),(5,34),(5,45),(5,46),(5,57),(5,58),(5,69),(5,70),
										 (6,11),(6,12),(6,23),(6,24),(6,35),(6,36),(6,47),(6,48),(6,59),(6,60),(6,71),(6,72)

GO									 
INSERT INTO [MechanicBrandRelation] VALUES (1,1),(2,3),(1,4),(3,2),(3,1),(4,4),(4,2)
GO
