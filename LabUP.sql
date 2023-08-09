CREATE TABLE Lab 
(
    labID INTEGER NOT NULL ,
    Name TEXT NOT NULL,
    Availability TEXT,
    Comments TEXT,
    PRIMARY KEY (labID,Name)
);

INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (252, 'معمل احياءدقيقة', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (253, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (254, 'معمل زراعة الانسجة', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (255, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (256, 'معمل فيزياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (257, 'معمل مركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (201, 'معمل مركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (210, 'معمل احياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (208, 'معمل احياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (205, 'معمل الكيمياء الحيوية', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (203, 'معمل الكيمياء', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (200, 'معامل البنك الحيوي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (202, 'معمل الاحياء الدقيقه المركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (204, ' معمل الكيمياءالحيوي المركزي', 'Availabil', null);
INSERT INTO Lab (labID, Name, Availability, Comments) 
 VALUES (220, 'معمل حاسب', 'Availabil', null);

CREATE TABLE UserReservtion(
    PhoneNumber INTEGER PRIMARY KEY,
    Email TEXT NOT NULL,
    UserName TEXT NOT NULL,
    Department TEXT NOT NULL
);
-- check ****************************************************
CREATE TABLE Reservation (
    DurationOfUse INTEGER NOT NULL,
    ReservationID INTEGER PRIMARY KEY,
    TotalPrice REAL NOT NULL,
    Payment TEXT NOT NULL,
    DateOfReservation TEXT NOT NULL,
    TimeOfReservation TEXT NOT NULL,
    Comments TEXT,
    labID INTEGER UNIQUE,
    PhoneNumber INTEGER UNIQUE,
    FOREIGN KEY (labID, ReservationID) REFERENCES Lab (labID, ReservationID),
    FOREIGN KEY (PhoneNumber) REFERENCES UserReservation (PhoneNumber)
);

CREATE TABLE Devices
(
    DeviceName TEXT,
    SerialNumber TEXT ,
    BaptismalNumber TEXT,
    DateOfBaptism DATE,
    CustodyOfTheStudent TEXT,
    DeviceFunction TEXT,
    PricePerHr REAL,
    PricePerDay REAL,
    PricePerWeek REAL,
    Comments TEXT,
    Maintenance TEXT,
    Name TEXT,
    labID INTEGER,
    ReservationID INTEGER,
    PRIMARY KEY (DeviceName,SerialNumber),
    FOREIGN KEY (labID, ReservationID) REFERENCES Lab ( labID, ReservationID) ,
    FOREIGN KEY (ReservationID) REFERENCES Devices (ReservationID)

);

CREATE TABLE bill
(
    PhoneNumber INTEGER UNIQUE ,
    ReservationID INTEGER UNIQUE,
    FOREIGN KEY (PhoneNumber) REFERENCES UserReservtion (PhoneNumber),
    FOREIGN KEY (ReservationID) REFERENCES Devices (ReservationID)

);


--Lab 252 -------------------------------------------
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('جهاز قياس الطيف المرئي', 'Se. 9423 UVG 1702E - UVG112602 - Typ. Helios Gamma - Thermo', null, null, 'ماجدة أبو راس', 'قياس درجة امتصاص اللون',  null, null, null, 'الزهراوي - أنظمة النيزك', null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('قرص صلب', 'LG', null, null, 'ماجدة أبو راس', 'حفظ وتخزين البيانات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('شاشة كمبيوتر', '999181412 - Mod.V773 - BenQ', null, null, 'ماجدة أبو راس', 'عرض البيانات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('لوحة مفاتيح وفأرة', 'Se.04673443 - Mod.KB-1925', null, null, 'ماجدة أبو راس', 'ادخال البيانات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('مجهر', '3A14126 - OLYMPUS', null, null, 'ماجدة أبو راس', 'فحص العينات', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('كاميرا', '3020379C5 - Mod.DP12-2 - OLYMPUS', null, null, 'ماجدة أبو راس', 'التصوير', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('شاشة تابعة للكاميرا', '3020379B3 - Mod.DP12-2 - OLYMPUS', null, null, 'ماجدة أبو راس', 'العرض', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('طابعة', 'HU31N1Q1F1 - hp deskjet 3325 -HP', null, null, 'ماجدة أبو راس', 'الطباعة', null, null, null, 'الزهراوي - أنظمة النيزك',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('خلاط للمحاليل', 'Mod.TTS2 - Yellow line', null, null, 'هدى الكريثي', 'المزج والخلط', null, null, null, null,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('سخان مع مقلب', '004n1370 - fisher scientific', null, null, 'زين الشريف', 'التسخين', null, null, null, null,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('فريزر - 20 (ثلاجة)', 'COO68IFM1109 - FRIMED', null, null, 'هدى الكريثي', 'التجميد', null, null, null, null, null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('مطحنة', 'Mod.SM300 - RETSCH', 1362, '1436-10-13', 'آمال عاشور', 'الطحن',null, null, null, 'شركة كوثر إبراهيم',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 

 VALUES ('جهاز تقطير الماء', 'CluvFL273363 - Mod.Classic UVF MK2 - ELGA', null, null, 'مجهول', 'تقطير الماء',null, null, null, null,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('ميزان خاص بوزن الفئران', 'Typ.Olympia Plus - SOEHNLE', NULL, NULL, 'أسماء الحربي', 'الوزن',null, null, null, 'لا يوجد تعميد',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('حضان مع هزاز', '127944 - MOD.4334 THERMO SCINTIFIC', 308, '1434-3-21', 'جيهان رحيمي', 'حفظ العينات',null, null, null, 'شركة الجيل الطبية',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('طحانة تحليلية صغيرة', 'mod.A10BS000 - IKA', 1323, '1436-10-10', 'آمال عاشور', 'الطحن', null, null, null,'مؤسسة نسيم الصفصاف',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('جهاز تعقيم المواد مع التجفيف', '22017 - Mod. GLS - Castle', NULL, NULL, 'مجهول', 'التعقيم',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('فرن', 'Se. 9509-303 - Preaision', NULL, NULL, 'مجهول', 'التسخين',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('جهاز طرد مركزي', 'Se.799090722 - mod. ALC PK 121R', NULL, NULL, 'مجهول', 'فصل المواد',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('ثلاجة', 'SAMSAUING', NULL, NULL, 'مجهول', 'التبريد',null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('جهاز كمبيوتر', NULL, NULL, NULL, 'الإشراف المشترك', NULL, null, null, null,'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('قرص صلب', 'Se.CZC1412LPX - HP', NULL, NULL, 'الإشراف المشترك', NULL, null, null, null,'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('شاشة', 'Se. 3CQ131B3YW - HP', NULL, NULL, 'الإشراف المشترك', NULL,null, null, null, 'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('لوحة مفاتيح وفأرة', 'Mod. KU - 0316 - HP', NULL, NULL, 'الإشراف المشترك', NULL,null, null, null, 'تم أخذه من الإدارة',  null, 'معمل احياءدقيقة',  252, null);

INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name,  labID, ReservationID) 

 VALUES ('ميزان', NULL, NULL, NULL, NULL, NULL,null, null, null, NULL,  null, 'معمل احياءدقيقة',  252, null);


--Lab 255 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID]) 

 VALUES ('حمام مائي', '9410-134 - mod.183 - PRECISION',null, null, 'فوزية النويصر', 'التسخين', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('مازج أنابيب', 'mod. KS501 - IKA', null, null, 'مجهول', 'الخلط', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('ميكروسكوب تشريحي', '148028 -Typ. 020-507.010 - LEICA', null, null, 'بلقيس المعينة', 'فحص العينات', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('ثلاجة', 'SR-57NXA - SAMSAUING', null, null, null, 'التبريد', null, null, null, null, null, 'معمل كيمياء حيويه',255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('جهاز التحليل المناعي مع ملحقاته', 'Mod. MAGPIX - Se.MAGPX14211701-Luminex', 666, '20-6-1436', 'جنى باشراحيل', 'تحليل المكونات الحيوية', null, null, null, null,null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('شاشة', 'Dell- Se.CN-GC97H-72872-460-A6LL', 666, '20-6-1436', 'جنى باشراحيل', 'العرض', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('قرص صلب', 'Dell- OPTIPLX 7010', 666, '20-6-1436', 'جنى باشراحيل', 'حفظ البيانات', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('لوحة مفاتيح', 'Se.CN-0DJ454-71581-45N-079V-A01', 666, '20-6-1436', 'جنى باشراحيل', 'ادخال البيانات', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID]) 

 VALUES ('ماسح معلومات', 'Datalogic-Typ.GD4330-WH- Se.G14D68067-CRYPHON', 666, '20-6-1436', 'جنى باشراحيل', 'المسح', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID]) 

 VALUES ('جهاز هزاز مداري السرعه', 'Mod. 4625-1CEM - Thermo Scientific - Se.C1882131264780', 666, null, 'جنى باشراحيل', 'المزج والخلط', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('هزاز للأنابيب دوراني', 'Typ. VM3 - MARIENFELD', null, null, 'لبنى نوار', 'المزج والخلط', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);

INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  

 VALUES ('كابينة اشعة فوق بنفسجية', '2097 - mod.mini2  ', null, null, 'مجهول', 'توفير بيئة مناسبة', null, null, null, null, null, 'معمل كيمياء حيويه', 255, null);


--Lab 256 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('حضان ثاني اكسيد الكربون', '1311N203XL104 - MOD.NB-203XL', 1629, '1434-11-12', 'رانيا مقادمي', 'حفظ العينات',null, null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('اسطوانةغاز ثاني اكسيد الكربون', null, null, null, 'أسماء الحربي', null,null, null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مجهر تشريح استيريو', '350255(SZ674S) - OPTIKA', 1629,'1434-11-12', 'رانيا مقادمي', 'فحص الشرائح', null, null,null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('حمام مائي مع هزاز', 'Se.1145110k - Mod. 1083 - GFL', null, null, 'جيهان خان', 'التسخين',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ملحق', 'TM-30A', null, null, 'جيهان خان', null,null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مازج أنابيب', '006N0332 - MOD.231 - FISHER SCIENTIFIC', null, null, 'مجهول', 'المزج والخلط',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مجهر ضوئي ', '9901917 - OPTIC IVYMEN SYSTEM', null, null, null, 'فحص الشرائح', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ثلاجة معملية', '398F0010 - Sanyo Medicool MPR-211F', null, null, 'أسماء الحربي', 'التبريد',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('spin coater', '37116 - Mod. KWUA', null, null, null, null,null, null, null, 'في منزل الطالبة', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ميزان حساس بحواجز (تحليلي رقمي)', '4600904 - Precisa', 924,'1432-7-9', 'أسماء الحربي', 'الوزن',null, null, null, 'شركة كوثر إبراهيم (في منزل الطالبة)', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مسخن مع محرك مغناطيسي', 'Mod. 1000 - JENWAY', null, null, null, 'التسخين وخلط العينات', null, null, null, 'في منزل الطالبة', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ميزان رقمي', 'SF-400 - Digital Balance', null, null, 'مجهول', 'الوزن', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مجهر ضوئي مع كاميرا', 'Se.13644 - Prior', null, null, 'لبنى نوار', 'فحص الشرائح',null, null, null,null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ملقط جراحة (4)', null, 1665, '1434-1-3', 'أسماء المحمدي', null, null, null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مقص جراحة عدد (4)', null, 1665, '1434-1-3', 'أسماء المحمدي', null, null, null, null, 'مؤسسة العصر القادم', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ماصة الكترونية عدد (3)', 'Se. 23041464 - AG8171 - SOCOREX', null, null, 'رانيا مقادمي', null, null, null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ماصة الكترونية', 'Se. 23041465 - AG8161 - SOCOREX', null, null, 'رانيا مقادمي', null, null, null, null, 'مؤسسة الشبكة للأجهزة المخبرية', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ماصة الكترونية', 'Se.22011158', null, null, null, null, null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('شاشة كمبيوتر', 'Se.CN904P5F5 - HP1710', null, null, null, 'عرض البيانات', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('لوحة مفاتيح', 'CT. BDMHEOCOKZX30H -HP', null, null, null, 'ادخال البيانات', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('قرص صلب', 'Se.TRF5020VOW', null, null, null, 'تخزين البيانات', null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('سخان مع مقلب', 'Se.03200904-Mod.HS10-2- Torrey pines scientific', null, null, 'مجهول', 'التسخين والمزج',null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ميزان حساس  ', 'Se.1113431099 - Mod.B303 - College', null, null, 'زين الشريف', null,null, null, null, null, null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز التدوير بغطاء له رف واحد', null, 526,'1438-11-18', null, null, null, null, null, 'مؤسسة سهام باغفار التجارية (في منزل الطالبة)', null, 'معمل فيزياء', 256, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ملحق مضخة للتفريغ', null, 526,'1438-11-18', null, null, null, null, null, 'مؤسسة سهام باغفار التجارية (في منزل الطالبة)', null, 'معمل فيزياء', 256, null);


--lab 257 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('معقم للانابيب(بالالترا سونيك)', 'Se.8891E-MTH - COLE PARMER', null, null, 'مجهول', 'التعقيم',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('دولاب غازات', 'HAMILTON', null, null, 'مجهول', 'التخلص من الغازات السامة',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ثلاجة', 'WHIRLPOOL', null, null, 'مجهول', 'حفظ العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('صانعة ثلج', 'Se.1L4164 - ILSHIN', null, null, 'مجهول', 'صانعة ثلج',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('فرن', 'Se.9508-205 - PRECISION', null, null, 'مجهول', 'التسخين', null, null,null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز هزاز (shaker)', 'Se.090913229 - titramax', null, null, 'مجهول', 'تحريك العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('سخان', 'Se.1755070902595 -Mod.HP130910-33 - BARNSTEAD INTER.',null, null, 'أسماء الحربي', 'التسخين',null, null, null, 'نتأكد من التعميد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES (null, null, null, null, null, 'مضاعفة ال دي إن أي',null, null, null, null, null, 'معمل مركزي',257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('دوار (محرك دوران) أزرق', 'Se.04005 - Schutt petriturn-c', null,null, 'مجهول', 'تحريك العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تجفيف عينات', '5305ZQ410254 - Vacufuge Plus', 930,'1432-7-9', 'أسماء الحربي', 'تجفيف العينات',null, null, null, 'مؤسسة أنظمة النيزك', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('قارئ لاطباق 96 فتحة', 'Se.1102006873 - PR3100TSC(Bio-rad)', null, null, 'أسماء الحربي', 'تحليل المكونات الحيوية',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('طابعة', 'CNBW82W5HM - HP LASer jet (2015)', null, null, 'أسماء الحربي', 'الطباعة',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('غاسل عينات أطباق 96 فتحة', 'Se.EC12D414309 - PW 40 Microplate Washer (Bio-rad)', 928,'1438-7-9', 'أسماء الحربي', 'غاسل أطباق 96 فتحة',null, null, null, 'شركة الجيل الطبية', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تحليل مثيلية الدي إن أي ', '53015 - Qigen', null,'1435-7-26', 'هديل السفياني', 'تحليل مثيلية الأحماض النووية',null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('كمبيوتر محمول', 'hp لا يوجد رقم ', null,'1436-26', 'هديل السفياني', 'معالجة وعرض البيانات',null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مضخة', 'Se.05266557- Typ.N816.1.2KN.18 - KIF LAB', null,'137-7-26', 'هديل السفياني', 'الضخ',null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ملحق WORK statin', '000003-12C - PyromarkQ96', null,'1438-7-26', 'هديل السفياني', null,null, null, null, 'شركة عبدالله فؤاد', null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تجفيف عينات', 'Se.DNA110-5H320725-1G - Mod.DNA110 - Savant', null, null, 'مجهول', 'تجفيف العينات', null, null,null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز طرد مركزي', 'Se.100386 - SIGMA - Typ.3-16K', null, null, 'خديجة بالعمش', 'فصل العينات',null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('فرن', 'LEEC mod.SSS - Se.9307', null, null, null, null,null, null, null, null, null, 'معمل مركزي',257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز ماك كو-كوبا كلنيكل قياس كثافة العظم ', 'Se.0105A0298 ', null, null, 'سوسن خوجة', null,null, null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('كمبيوتر محمول', 'Se.X4067050H - TOSHIBA', null, null, null, null, null,null, null, null, null, 'معمل مركزي', 257, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ملقب مغناطيسي ', '30361202 - SCHUTT PETRITUM', null, null, null , 'المزج',null, null, null,  'أزرق ', null, 'معمل مركزي', 257, null);

--lab 210 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مجهر', '9911036 - optic ivymen', null, null, null, 'فحص الشرائح',null, null, null, null, null, 'معمل احياء', 210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مولد طاقة', 'Auto stac - TMR-5082364 - Mod.ST1500W', null, null, 'نورة الأحمدي', 'توليد الطاقة',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('مولد طاقة', 'auto stac- Mod.ST1000W', null, null, 'نورة الأحمدي', 'توليد الطاقة', null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('شاشة كمبيوتر', 'Se.SN00F9HKAG100410W-Samsung', null, null, null, 'عرض البيانات',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('قرص صلب', 'LG IEEE488.2', null, null, null, 'حفظ البيانات', null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('طابعة', 'Se.CN-680D808W - HP', null, null, null, 'الطباعة', null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('لوحة مفاتيح', 'XP1471156329 - Genius', null, null, null, 'ادخال البيانات',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('سخان', 'Mod.4659-00 - Cole-Parmer Instrument Company', null, null, null, 'التسخين',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('سخان', 'Se.8593 - Nickel Electro LTD', null, null, null, 'التسخين',null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('اسطوانة غاز هيليوم', null, null, null, null, null, null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('ثلاجة صغيرة', '8102-202-454 - SAMSAUING', null, null, 'مجهول', null,null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('حمام مائي', '4081401 - LSB-045S', null, null, 'مجهول', null, null, null,null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('نظام تعداء-جهاز تثقيب كهربائي ذو خاصية شعرية', 'Se.MP924901 - Mod.MPK5000 - invitrogen', 427,'1439-8-10', 'روابي زاهد', null,null, null, null, 'توريدات الخليج', null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تعقيم تابع لجهاز تجفيف بالتبريد ', 'Se.SP20765 - Mod.ASB230 - Astell', null, null,null, null, null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تحليل كهربائي', '3040 - V20-SET SCIE-PLAS', null, null, null,null, null, null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('اضاءة ال سي دي للميكروسكوب', 'Se. 350365 - OPTIKA Mod. CL-01', 1674,'1434-1-4', 'أسماء المحمدي', null, null, null, null, 'شركة نجم الجزيرة', null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('حامل مع ذراع اصطناعية للميكروسكوب', 'Se. 347813 - OPTIKA Mod. SZ-STL3', 1674,'1434-1-4', 'أسماء المحمدي', null,null, null, null, 'شركة نجم الجزيرة', null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('فرن ', 'Se.5094-09-415 - GALLE NKAMP', null, null, 'دينا باخطمه', null, null,null, null, null, null, 'معمل احياء',210, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [PricePerHr], [PricePerDay], [PricePerWeek], [Comments], [Maintenance], [Name], [labID], [ReservationID])  
 VALUES ('وحدة رحلان كهربائي أفقي- صغير', 'Se. 2314 - Mod. HU13', null, null, null, null,null, null, null, null, null, 'معمل احياء',210, null);


--lab 201 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ميكروسكوب تشريحي  مع كاميرا', 'WZ25IC280 - 020-435.037 LEICA', null, null, 'لبنى نوار', null, null, null,  null, null, null, 'معمل مركزي عام', 201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز فصل البروتينات أحادي البعد', 'Se.1530092 - Ettan IPG phor3 (GE healthcare)', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز فصل البروتينات أحادي البعد', 'Se.526BR08613 - Protean IEFCell (Bio-rad)', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز فصل البروتينات (الهجرة الكهربائي)عمودي', 'Protean II xi cell(Bio-rad)', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مولد هجرة كهربائي عمودي', 'Se.044BR4942', null, null, 'أسماء الحربي', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مفتت خلايا بالموجات الفوق صوتية', 'Se.230-2000 - Mod.150 V/T - Biologics', null, null, 'أسماء الحربي', 'التفتيت', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مبرد جلات مائي', '10175439 - mod.F12 - Julabo', null, null, 'أسماء الحربي', 'التبريد', null, null, null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز قراءة الطيف المرئي خاص بالبروتينات والاحماض النوويةUV', 'Se.273BR05980 -BioRad', 928, '1432-7-9', 'أسماء الحربي', null, 'شركة الجيل الطبية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('حمام مائي هزاز', 'Se.10011402 - JSSB-30T - JSR', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ماسح ضوئي للجلات المصبوغة بصبغات مرئية', 'Se.F10020058 Mod. powerLook2100XL-USB', null, null, 'أسماء الحربي', 'المسح', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تصوير الهلام (جهاز المسح الضوئي الخاص بالهلام)', 'Se.721BR02795 - Bio-rad UV catalog no.1708181', null, null, 'أسماء الحربي', 'التصوير', 'شركة الجيل', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز القياس بالأشعة فوق بنفسجية(Spectrophotometer)', 'Se.137123 - Aqurius', null, null, 'زين الشريف', 'القياس', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز طرد مركزي', 'Se.58100047 - Hermle', null, null, 'الاشراف المشترك', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز هزاز', 'Se.10890187 - Lab-line', null, null, 'الاشراف المشترك', 'المزج', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('فريزر -80 ', 'Se.1110265 - Mod.MDF-U54V - sanyo', 105, '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مولد طاقة Power Supply', '56952 - Consort', null, null, null, 'توليد الطاقة', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('فرن', '2010072001 - LabTech', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تقطير المياه (معالجة المياه)', 'F5NN03703K - Milli-Q plus', null, null, 'زين الشريف', 'تقطير الماء', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ملحق', 'Se.F5MN88345D', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('خزان ', null, null, null, null, 'الحفظ', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('حمام مائي Water Bath', 'ecoline RE120 - B19015 - LAUDA brinkmann ', null, null, 'فوزية النويصر', 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تعقيم', 'Se.CL50353 - Astell Scientific', null, null, null, 'التعقيم', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('منظف بالموجات فوق الصوتية (معقم أنابيب)', 'Se.RLC9606047C - Mod. 2210E-MTH - BRANSONIC', null, null, 'خديجة بالعمش', 'التنظيف', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('سطح ساخن صغير', 'Se.01292 - Scientific Products', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز فصل المكونات Microfuge', 'Se.M1Z93G10 - Cat.342350 - Backman', null, null, null, 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مولد طاقة ', '151007 - Fisher Scientific', null, null, null, 'توليد الطاقة', 'غير موجود في المعمل', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مجهر تشريحي', 'Se.13643 - Mod.Zoom master - Prior', null, null, 'لبنى نوار', 'فحص العينات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مجهر', 'Typ.020-435036 - Leitz', null, null, null, 'فحص العينات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('سخان أزرق كبير', 'Se.105178818 - elctrothermal', null, null, null, 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ميزان', 'Se.35800047- AE163 - Metter', null, null, 'دينا باخطمة', 'الوزن', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ميزان فئران', 'Typ.Olympia Plus - Soehnle', null, null, 'أسماء الحربي', 'الوزن', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('حمام مائي', 'Se.9512-302 - Mod.183 - Precision', null, null, 'فوزية النويصر', 'التسخين', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مضخة شفط الهواء ', 'Se.TFTF091 - Today’s', null, null, 'أسماء الحربي', 'شفط الهواء', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز قياس الرطوبة ودرجة الحرارة', 'Cole-Parmer - Ja5006393', null, null, 'ماجدة', 'القياس', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('قرص صلب', 'Se.Du1165#ABV', null, null, null, 'تخزين البيانات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('شاشة', 'Se.CNC729NSW4 - HP L1706', null, null, null, 'العرض', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('لوحة مفاتيح ', 'Se.BC3380BQRUUX1U - HP', null, null, null, 'ادخال البيانات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('كمبيوتر محمول', 'Se.ZR6G93AZ400446L - Samsung', null, null, null, 'حفظ وعرض البيانات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز طرد مركزي  ', 'Se.100386 - sigma-16K', null, null, 'خديجة بالعمش', 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('روتر خاص بأطباق 96', 'sigma', null, null, 'هدى الشيبي', null, 'مؤسسة نسيم الصفصاف', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مولد طاقة', 'Mod.ST500W4 - AUTO STAC', null, null, 'هدى الكريثي', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تعقيم الأبر', 'Se. 08050085-3', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مجفف جلات', 'Se.271BR04665 - Mod.GelAir Dryer', 928, '1432-7-9', 'أسماءالحربي', null, 'شركة الجيل الطبية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('أسطوانة حفظ النيتروجين السائل عدد(1)', 'Se.511656293 - Mod 8127', 928, '1432-7-9', 'أسماءالحربي', null, 'شركة الجيل الطبية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز لهز أطباق تفاعل البلمرة', 'Se.Z3091364 - labnet', 1412, '1434-10-8', 'هديل السفياني', 'المزج', 'مؤسسة الشبكة للأجهزة المخبرية', null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('هوائي محطه', 'Se.AV103 - mod.A2VB - BASS AIRE', null, null, 'بلقيس المعينة', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تحليل كهربائي', '2105 - HU-20', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('صندوق ضوئي للشرائح', '290 - WATFORD', null, null, 'مجهول', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مجفف انابيب', 'Se. ND101002 - Mod. DCU012', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مجفف شرائح زجاجية', '10021816 - Electrothermal', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('حضان', 'Se.201052 - Mod.1LD-110HM ALP', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مجهر ضوئي', 'WZ25IC280 - LEITZ', null, null, 'بلقيس المعينة', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('حضان', 'Se.L6600/3 - Mod.IP100-u', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مجهر مع كاميرا', 'Typ.090135.002 - LEICA', null, null, 'حنان قاضي', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ملحق', 'Typ.3D1-185104-000', null, null, 'حنان قاضي', null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ميكروسكوب تشريحي', '13643 - Prior  Zoom master', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مولد طاقة', 'ST500w4 - Auto stac', null, null, null, null, null, null,  null, null, null, 'معمل مركزي عام',  201, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز طرد مركزي', 'Mod.D7200TUTTLINGEN - HETTICH', null, null, null, 'فصل المكونات', null, null,  null, null, null, 'معمل مركزي عام',  201, null);


--lab 203 -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('سخان مع مقلب مغناطيسي', 'Se.1069990552370 -Mod. SP46920 - Thermolyne', null, null, 'لبنى نوار', 'تسخين ومزج العينات', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز مسخن رقمي', 'Se.781449001 - GRANT', '1899', '1436/1/5', 'آمال عاشور', 'التسخين', 'مؤسسة عبدالله محمد الصانع', null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ميزان حساس', 'Se.1114501467 - Mod. B303 - College', null, null, 'خديجة بادحدح', 'الوزن', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('سخان بواتق دوار مع حمام مائي دوار', 'Se.WB01710 - Mod.RE100B', null, null, 'خديجة بادحدح', 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('فرن حتى 200 ْ م', 'Se.SG94/09/378 - callen kamp', null, null, 'مجهول', 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تبخير دوران ', 'Se.29611423 - Labconco', null, null, 'دينا باخطمة', 'التبخير', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('مضخة (كحلي)', 'Se.M - Cat.PUB580011J', null, null, 'دينا باخطمة', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تقطير', 'Mod. XC-200', null, null, 'مجهول', 'تنقية الماء', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('دولاب الغازات', 'Hamilton', null, null, 'مجهول', 'شفط الغازات', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ثلاجة عادية 6 قدم', 'Se.40600258 - DAEWOO', null, null, 'مجهول', 'التبريد', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('فرن حتى 400 ْ م', 'Se.23887 - Carbolite', null, null, 'مجهول', 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('أسطوانة نيتروجين', null, null, null, null, 'حفظ النيتروجين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('سخان مع مقلب مغناطيسي', 'Se.775951025439 - Thermolyne', null, null, null, 'التسخين', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز مضخة تفريغ (رمادي)', 'Se.XHL081940', null, null, 'خديجة بادحدح', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('هزاز أنابيب', 'Se.1068990655565 - Mod.S4615', null, null, 'أسماء الحربي', 'المزج والخلط', null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('هزاز  ', 'Se.1863070601999 - Mod. M63210-33', null, null, null, null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('خلاط كهربائي', '36BL23', null, null, 'هدى الكريثي', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز تفتيت الأنسجة', '71101129703', null, null, 'مجهول', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('جهاز هضم الطعام كيلدال', 'Se. 91890101', 1005566, '1443-8-3', 'هلا المرزوقي', null, 'مؤسسة البحاثة للتجهيزات الطبية', null,  null, null, null,'معمل الكيمياء', 203, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])  
 VALUES ('ملحق', 'Se. 91888198', 1005566, '1443-8-3', 'هلا المرزوقي', null, null, null,  null, null, null,'معمل الكيمياء', 203, null);

-- Lab 200
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (1)  صندوق حفظ (89) عينة', 'Se.12020060 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', '', null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (1)  رف واحد', 'Se.12020060 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (2)  صندوق حفظ (89) عينة', 'Se.12020056 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', null, null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (2)  رف واحد', 'Se.12020056 - Mod.MDF-U54V Sanyo', '349', '1437-9-24', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (3)  صندوق حفظ (89) عينة', 'Se.12010004 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (3)  رف واحد', 'Se.12010004 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (4)  صندوق حفظ (89) عينة', 'Se.12020046 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 5.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('فريزر -80  رقم (4)  رف واحد', 'Se.12020046 - Mod.MDF-U54V Sanyo', '1050', '1435-8-13', 'الاشراف المشترك', 'التجميد', null, null, 150.0, 'الشركة الأساسية للكترونيات', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('ثلاجة صندوق حفظ (89) عينة', '1209 - Whirpool', null, '', 'الإشراف', 'التبريد', null, null, 3.0, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('ثلاجة  رف واحد', '1209 - Whirpool', null, '', 'الإشراف', 'التبريد', null, null, 120.0, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('أسطوانة غاز أكسجين طبي عدد(1)أبيض', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('أسطوانة غاز أكسجين عدد(2)أخضر', null, null, '', 'عدد(1) خاصة بأسماء المحمدي(مؤسسة سلطانة دهلوي)', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('أسطوانة غاز نيتروجين عدد(1)أزرق', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('أسطوانة غاز هيدروجين عدد(2)أحمر', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('أسطوانة غاز هواء مختلط عدد(2)رمادي', null, null, '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('عربة لنقل أسطوانة الغاز', null, '1667', '1434-1-3', 'أسماء المحمدي', '', null, null, null, 'مؤسسة إبراهيم السقاف', null, 'وحدة البنك الحيوي',200, null);
INSERT INTO Devices (DeviceName, SerialNumber, BaptismalNumber, DateOfBaptism, CustodyOfTheStudent, DeviceFunction, PricePerHr, PricePerDay, PricePerWeek, Comments, Maintenance, Name, labID, ReservationID) 
 VALUES ('أسطوانة غاز هيليوم عدد(1)أصفر وأسود', null, '', '', '', '', null, null, null, '', null, 'وحدة البنك الحيوي', 200, null);


--lab 205, null -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ثلاجة', '2003152676 - Hassultima', null, null, 'ماجدة أبو راس', 'التبريد', null, null, null, null, null,'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('نظام تدفئة جاف من 5 إلى 130', '130429-08  - JSR', '1412', '1434/10/8', 'هديل السفياني', 'التدفئة', 'مؤسسة الشبكة للأجهزة المخبرية', null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز طرد مركزي', '117185 - sigma - Typ.2-16KC', null, null, 'هدى الكريثي', 'فصل العينات', null, null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('-مولد طاقة', 'ST500w4 - Auto stac', null, null, 'مجهول', 'توليد الطاقة', 'غير موحود', null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز البلمرة التسلسلي ', '272008317 - APPLIED BIOSYSTEM', 696, '1435-6-2', 'هدى الشيبي', 'مضاعفة ال دي إن أي', 'شركة توريدات الخليج', null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('طابعة', 'CNF1b47301 - hp laser jet pro200color', 696, '1435-6-2', 'هدى الشيبي', 'الطباعة', 'شركة توريدات الخليج', null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', 'DELL - Se.CN-0DJ454-71581-2CH-03MT-A00', 696, '143-6-2', 'هدى الشيبي', 'ادخال البيانات', 'شركة توريدات الخليج', null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', 'CN0VHPX3744452CJ627L - DELL', 696, '1435-6-2', 'هدى الشيبي', 'عرض البيانات', 'شركة توريدات الخليج', null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', '446539 - DELL', 696, '1435-6-2', 'هدى الشيبي', 'حفظ البيانات', 'شركة توريدات الخليج', null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('هزاز للأنابيب', 'Se.Z0051141 - LABNET', null, null, 'مجهول', 'المزج', null, null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('كابينة أعمال بيولوجية', '13092507 - JSR', 1065, '1434-7-3', ' جيهان رحيمي', 'توفير بيئة مناسبة', 'مؤسسة الشبكة للأجهزة المخبرية', null, null, null, null,'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('فرن', 'Se.G32236 - MOD.30GC - QL', null, null, null, null, null, null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز طرد مركزي مبرد للانابيب الابندروف', 'Se.LRM230-1003007Prismr (Labnet)', null, null, 'أسماء الحربي', null, null, null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز مضاعفة دي ان أي (pcr)', 'Se.533150720 - Master cycler gradient', null, null, 'مجهول', null, null, null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('سخان', 'DLC5531', null, null, null, null, null, null, null,null, null, 'معمل الكيمياء الحيوية', 205, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حضانة+هزاز', 'Se.0703-7082 - Mod.3526-ICE  LAB LINE', null, null, null, null, null, null, null, null, null,'معمل الكيمياء الحيوية', 205, null);

--lab 208,null R -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز خلط للعينات مع التسخين (موقد من السيراميك)', 'Cat.CB302 - Se.R000104893', null, null, 'سعدية باروم', 'التسخين والمزج', null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ميزان الكتروني', 'Se.0065539 - AA-200', null, null, null, 'الوزن', null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('فرن تعقيم ( فرن معملي وحاضنة 30ل)', 'Se.524860/1 - G209', null, null, null, 'التعقيم', null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ثلاجة', 'Mod.FR-063 - SE.TR081EA3380352', null, null, null, 'التبريد', null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('مجهر مع كاميرا ', 'Mod.C-DSD230 - Se.1002446', null, null, null, 'فحص الشرائح', null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('كاميرا', 'Se.12734142', null, null, null, 'التصوير', null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حمام مائي مع حضان', 'A04070 - mod.BT25  /Uamato', null, null, null, null, null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز دوار لاطباق بتري', '13744 - PBI', null, null, 'بلقيس المعينة', null, null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز تفتيت الأنسجة', 'SG99/09/285', null, null, null, null, null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('فرن حضان', 'Se.D-63450 - HERAEUS Typ.B6760', null, null, 'بلقيس المعينة', null, null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('سخان', 'Al-faris Mod.2610', null, null, 'بلقيس المعينة', null, null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حضان', 'Se.23886 - Mod.NR-30 - Carbolite', null, null, 'زين الشريف', null, null, null, null,null, null, 'معمل احياء', 208,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('خلاط للمحاليل', '20117728 - OXOID', 1667, '1434-1-3', 'أسماء المحمدي', null, 'مؤسسة إبراهيم السقاف', null, null,null, null, 'معمل احياء', 208,null);

--lab 254 R -------------------------------------------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('مجهر ضوئي فلوريسنت مع كاميرا', '3H22584 - OLYMPUS1*71', null, null, 'خديجة بالعمش', 'فحص الشرائح', null, null, null,null, null, 'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ملحق للكاميرا', 'Olympus PM10SP', null, null, 'خديجة بالعمش', null, null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ملحق', 'Olympus - TH4-200', null, null, 'خديجة بالعمش', null, null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز عد الخلايا الحية والميتة باستخدام صبغة التبيان الزرقا', 'Se.AV37420 - BECKMAN COULTER', null, '8/10/1434', 'هدى الشيبي', 'عد الخلايا', 'شركة الجيل الطبية', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', 'Se.PX7062601094 - VIEW SONIC', null, null, 'هدى الشيبي', 'عرض البيانات', 'شركة الجيل الطبية', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', 'mod.KU-0316 - HP', null, null, 'مجهول', 'ادخال البيانات', 'تم تغيير السابقة ', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'Se.CZC1414WVB - HP 8200', null, null, 'مجهول', 'حفظ البيانات', 'تم تغيير السابق', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TPDA50532 - CHIEFTEC', null, null, 'هدى الشيبي', 'حفظ البيانات', 'لابد من تكهينه الجيل', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز عد الخلايا صغير', 'Se.0891-049 - invitrogen', null, null, 'مجهول', 'عد الخلايا', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('مجهر عادي مع كمبيوتر', 'Se.913740 - 15012 - NIKON', null, null, 'هدى الكريثي', 'فحص الشرائح', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ملحق', 'Se.G10102 - NIKON', null, null, 'هدى الكريثي', null, null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ملحق', '212037 Digital sight', null, null, 'هدى الكريثي', null, null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'لا يوجد رقم تسلسلي', null, null, 'هدى الكريثي', 'حفظ البيانات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', 'HPL1706', null, null, 'هدى الكريثي', 'عرض البيانات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', 'Se. G 0028697 - cherry', null, null, 'هدى الكريثي', 'ادخال البيانات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حمام مائي', '11603806L - GFL', null, null, 'مجهول', 'التسخين', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('مجهر مقلوب متصل ب', 'Se. 1D75342-Mod.1X2-ILL30 - Olympus', 929, '1432-7-9', 'أسماء الحربي', 'فحص الشرائح', 'مؤسسة الصالحة', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('كاميرا رقمية', 'Mod.Olympus DP72', 929, '1432-7-9', 'أسماء الحربي', 'التصوير', 'مؤسسة الصالحة', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ملحق', 'Olympus TL4', 929, '1432-7-9', 'أسماء الحربي', null, 'مؤسسة الصالحة', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ملحق الكاميرا', 'Se. 9A17238Olympus', 929, '1432-7-9', 'أسماء الحربي', null, 'مؤسسة الصالحة', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('كمبيوتر محمول', 'Se.CZC05025Y1', null, null, null, 'حفظ وعرض البيانات', ' ', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('سخان مع مقلب', 'Se.089901262 - HEIDOLPH(VIBRA MAX10)', null, null, 'فوزية النويصر', 'التسخين', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('كابينة أعمال بيولوجية', '87630120103 - MUAIRE', null, null, 'حنان قاضي', 'توفير بيئة مناسبة', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حضان مع ثاني اكسيد الكربون', 'Se.9308002 - HOTPACK', null, null, 'خديجة بالعمش', 'حفظ العينات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حضانة للخلايا مع', 'Se.141692121310-Mod.NU-55105 - NUAIRE', 65, '1433-3-13', 'هدى الشيبي', 'حفظ العينات', 'مؤسسة نسيم الصفصاف', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('عدد 3اسطوانات غاز ثاني أكسيد الكربون ', null, null, null, 'هدى الشيبي', 'حفظ الغاز', 'مؤسسة نسيم الصفصاف', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES (null, null, '925', '1432/7/9', 'أسماء الحربي', null, null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز آلي لقياس نسبة CO2 في حضان CO2 ', '2363027 - BACHRACH', 1163, '1434-7-18', 'هدى الشيبي', 'قياس ثاني أكسيد الكربون', 'مؤسسة السلام العالمية', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز فيريت آلي لقياس نسبة CO2 في حضان CO2', 'BACHRACH', null, null, 'هدى الكريثي', 'حفظ العينات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حاوية لحفظ الخلايا داخل النيتروجين السائل عدد(5)', 'GHF03K110 - THERMOLYNE', null, null, 'خديجة بالعمش', 'حفظ العينات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حاوية لحفظ الخلايا داخل النيتروجين السائل', '14111002', null, null, 'مجهول', 'حفظ العينات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حاوية لحفظ الخلايا داخل النيتروجين السائل', '1968', null, null, 'مجهول', 'حفظ العينات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حاوية لحفظ الخلايا داخل النيتروجين السائل', 'Se.357763-32 - Mod. 8201 - Thermo Scientific', 930, '1432-7-9', 'أسماء الحربي', 'حفظ العينات', 'مؤسسة أنظمة النيزك', null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حاوية لحفظ الخلايا داخل النيتروجين السائل', '38537 -international cryogenics,inc', null, null, null, 'حفظ العينات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('أسطوانة نيتروجين كبيرة', '20622', null, null, null, 'حفظ العينات', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('عربة نقل أسطوانات غاز كبيرة', '154009B', null, null, null, 'النقل', null, null, null,null, null,  'معمل زراعة انسجة', 254,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حضان بغاز Co2', 'Se.700399 - Mod.5015', null, null, 'حنان قاضي', null, null, null, null,null, null,  'معمل زراعة انسجة', 254,null);

-----lab202---------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID]) 
 VALUES ('ثلاجة', 'Whirlpool', null, null, null, 'التبريد', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('سخان مع مقلب مغناطيسي', 'Se.110201 - Mod.MS400 - Bante', null, null, null, 'التسخين', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('فرن', 'Bestell no.50042293 - HERAEUS-Type T6 - Throm', null, null, 'هدى الكريثي', 'التسخين', null, null, null, null,null, 'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حمام مائي مع هزاز (درجة 37)', 'Se.8698863114297 -Mod. ST30 - NUVE', 1216, '1435-9-16', 'نهى زيلعي', 'تسخين ومزج العينات', 'شركة وليد أمين سمان', null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز الطرد المركزي', 'Se.96500 - MOD.3-16 - SIGMA', null, null, 'مجهول', 'فصل العينات', null, null, null,null, null, 'معمل الاحياء  الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('محطة معقمة لتحضير تفاعلات الحمض النووي', 'Se.T040032 - Labcompanion', 66, '13-3-1433', 'هدى الشيبي', 'توفير بيئة مناسبة', 'مؤسسة الشبكة للأجهزة المخبرية', null, null,null, null, 'معمل الاحياء الدقيقة  المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حضان مع هزاز', 'Se.10129600C -Mod.GFL 3033 - GFL', null, null, 'مجهول', 'حفظ العينات', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ميزان حساس', '16156 - Mod.SA80 - SCIENTECH', null, null, 'مجهول', 'الوزن', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('مازج أنابيب', 'Mod.34524 - Snijders', null, null, 'أسماء الحربي', 'المزج', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('مجهر', 'Se.9901916 - Optic ivymen', null, null, null, 'فحص العينات', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز الأمواج الصوتية (تعقيم)', 'MOD. 2210E-MTH   -  BRANSON', null, null, 'خديجة بالعمش', 'التعقيم', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز الطيف المرئي', 'Mod.6305 - Jenway', null, null, null, null, null, null, null,null, null, 'معمل الاحياء الدقيقة  المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز هزاز مداري', 'Se.10050147 - OrBit 1000(Labnet)', null, null, 'أسماء الحربي', 'المزج', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز تعقيم', 'Se. 06102401 -Lab tech ', null, null, 'هدى الكريثي', 'التعقيم', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز قياس الأس الهيدروجيني', 'Se. 56494 - mod.3510 - Jenway', null, null, null, 'قياس درجة الحموضة', null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز نفاذية الضوء  UV', 'JENWAY 6305', null, null, null, null, null, null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('سخان  ', 'Se.1068990655565 - Mod.S46415 ', null, null, 'أسماء الحربي', null, 'غير موجود في المعمل', null, null, null,null ,'معمل الاحياء الدقيقة المركزي', 202,null);

------lab204------
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('جهاز نانو دروب مع', 'Se.C494 -Mod.Nano drop 2000/thermo sientific', 64, '1433-3-13', 'هدى الشيبي', 'قياس تركيز العينة', 'شركة أبناء أحمد صالح كعكي', null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('كميوتر محمول', 'HP - 584032-001', 64, '1433-3-13', 'هدى الشيبي', 'حفظ وعرض البيانات', 'شركة أبناء أحمد صالح كعكي', null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('طابعة', 'Se.VNC4427673- HPLaser Jet P1102W', 64, '1433-3-13', 'هدى الشيبي', 'الطباعة', 'شركة أبناء أحمد صالح كعكي', null, null, null,null ,'معمل الكيمياء الحيوية المركزي',204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قارئ متعدد الانماط(فلوريسينت)مدى 200-900', 'Se.270274 - synergy ht / biotek', 1522, '1433-11-30', 'هدى الشيبي', null, 'مؤسسة دار الفارابي الطبية', null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'Se.17260686676 - DELL', 1522, '1433-11-30', 'هدى الشيبي', 'تخزين البيانات', 'مؤسسة دار الفارابي الطبية', null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', 'CN07C2r4-72872-312-A21M - DELL', 1522, '1433-11-30', 'هدى الشيبي', 'عرض البيانات', 'مؤسسة دار الفارابي الطبية', null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', 'CN-02H0NK-7158124S-02A7-A01 - DELL', 1522, '1433-11-30', 'هدى الشيبي', 'ادخال البيانات', 'مؤسسة دار الفارابي الطبية', null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('طابعة', 'Se.3177702713 - XEROX',1522, '1433-11-30', 'هدى الشيبي', 'الطباعة', 'مؤسسة دار الفارابي الطبية', null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('هزاز للانابيب', 'Se.Z90202,null98 - Labnet vortex mixer', null, null, '   ', 'المزج', null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('هزاز مداري', 'Se.8090369 - Labnet orbit 1900', null, null, 'مجهول', 'المزج', null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('فرن مركزي', 'Mod 400 - MEMMER', null, null, 'مجهول', 'التسخين  ', null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حضان CO2', '9311006 - Mod.740 HOTPACK', null, null, 'زين الشريف', 'حفظ العينات', null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي',204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('أسطوانة غاز ثاني أكسيد الكربون', null, null, null, 'مجهول', null, null, 'لابد من اضافتها في المعمل ', null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('ثلاجة', 'Kalvinator', null, null, null, 'التبريد', null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('طابعة', 'Se.CNBW72V598 - HP LaserJet P2015', null, null, null, 'الطباعة', null, 'سيتم طلب صيانه ', null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('كابينة أعمال بيولوجية', 'ser.508304 MOD.LCB1203B LABTEC', null, null, 'حنان قاضي', 'توفير بيئة مناسبة', null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('مولد طاقة كهربائية', 'Se.01061885 - Mod. EPS 601', null, null, null, null, null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حمام مائي هزاز', 'Se.9510101 - Precision Scientific', null, null, 'خديجة بالعمش', null, null, null, null, null,null ,'معمل الكيمياء الحيوية المركزي', 204,null);

-------lab220-----
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '753236001', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حاسب آلي', 'CZC141wx3', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ1316300', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '724720-171', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('حاسب آلي', 'CZC14142LRB', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ131B3YS', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WY2', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WF6', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WFB', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WKF', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TRF3140KPM', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WV2', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WX4', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WXG', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'CZC1414WYB', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TRF4280HLF', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TRF4280HCV', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TRF4280FBM', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TRF42710J', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TRF4280F5J', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'C2C1414WKL', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('قرص صلب', 'TRF4280HL2', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة مفاتيح', 'LE1711', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', 'MOD.KU-0316/537746-171', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('طابعة HP ملون ليزر', 'JP1ND012468', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('طابعة HP  ليزر', 'CN]W731QPJ', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3QC131BCJD', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3QC131B319', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3QC131B3W8', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ131B401', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3QC2511LHC', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ131B3Z5', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ131BCJN', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ131B3WR', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ131B3YJ', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ410KBN', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3QC4101CC7', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3QC4101CC4', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ4101CC5', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ4101CCG', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ4101CBW (1)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('شاشة كمبيوتر', '3CQ4101CBW (2)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (1)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (2)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (3)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (4)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '701429-171 (5)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (6)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (7)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (8)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (9)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '724720-171 (10)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '724720-171 (11)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '724720-171 (12)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '724720-171 (13)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '724720-171 (14)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '724720-171 (15)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (16)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);
 INSERT INTO [Devices] ([DeviceName], [SerialNumber], [BaptismalNumber], [DateOfBaptism], [CustodyOfTheStudent], [DeviceFunction], [Comments], [Maintenance], [PricePerHr], [PricePerDay], [PricePerWeek], [Name], [labID], [ReservationID])
 VALUES ('لوحة مفاتيح', '537746-171 (17)', null, null, null, null, null, null, null, null, null, 'معمل الحاسب', 220, null);


-- sqlite3 LabUP.db -init LabUP.sql