INSERT INTO todo_administrative_divisions (
    _type, identifier, name

) VALUES ('Country', 'GT', 'Guatemala');

INSERT INTO todo_administrative_divisions (
    _sup, _type, identifier, name

) VALUES
    (1, 'Department', 'GT-AV', 'Alta Verapaz'),
    (1, 'Department', 'GT-BV', 'Baja Verapaz'),
    (1, 'Department', 'GT-CM', 'Chimaltenango'),
    (1, 'Department', 'GT-CQ', 'Chiquimula'),
    (1, 'Department', 'GT-PR', 'El Progreso'),
    (1, 'Department', 'GT-ES', 'Escuintla'),
    (1, 'Department', 'GT-GU', 'Guatemala'),
    (1, 'Department', 'GT-HU', 'Huehuetenango'),
    (1, 'Department', 'GT-IZ', 'Izabal'),
    (1, 'Department', 'GT-JA', 'Jalapa'),
    (1, 'Department', 'GT-JU', 'Jutiapa'),
    (1, 'Department', 'GT-PT', 'Petén'),
    (1, 'Department', 'GT-QZ', 'Quetzaltenango'),
    (1, 'Department', 'GT-QC', 'Quiché'),
    (1, 'Department', 'GT-RE', 'Retalhuleu'),
    (1, 'Department', 'GT-SA', 'Sacatepéquez'),
    (1, 'Department', 'GT-SM', 'San Marcos'),
    (1, 'Department', 'GT-SR', 'Santa Rosa'),
    (1, 'Department', 'GT-SO', 'Sololá'),
    (1, 'Department', 'GT-SU', 'Suchitepéquez'),
    (1, 'Department', 'GT-TO', 'Totonicapán'),
    (1, 'Department', 'GT-ZA', 'Zacapa');

INSERT INTO todo_administrative_divisions (
    _sup, _type, identifier, postal_code, name

) VALUES 
    (2, 'Municipality', 'GT.1614', '16014', 'Chahal'),
    (2, 'Municipality', 'GT.1613', '16013', 'Chisec'),
    (2, 'Municipality', 'GT.1601', '16001', 'Cobán'),
    (2, 'Municipality', 'GT.1615', '16015', 'Fray Bartolomé de las Casas'),
    (2, 'Municipality', 'GT.1616', '16016', 'La Tinta'),
    (2, 'Municipality', 'GT.1611', '16011', 'Lanquín'),
    (2, 'Municipality', 'GT.1607', '16007', 'Panzós'),
    (2, 'Municipality', 'GT.1617', '16026', 'Raxruhá'),
    (2, 'Municipality', 'GT.1603', '16003', 'San Cristobal Verapaz'),
    (2, 'Municipality', 'GT.1610', '16010', 'San Juan Chamelco'),
    (2, 'Municipality', 'GT.1606', '16006', 'San Miguel Tucurú'),
    (2, 'Municipality', 'GT.1609', '16009', 'San Pedro Carchá'),
    (2, 'Municipality', 'GT.1602', '16002', 'Santa Cruz Verapaz'),
    (2, 'Municipality', 'GT.1612', '16012', 'Santa María Cahabón'),
    (2, 'Municipality', 'GT.1608', '16008', 'Senahú'),
    (2, 'Municipality', 'GT.1604', '16004', 'Tactic'),
    (2, 'Municipality', 'GT.1605', '16005', 'Tamahú'),
    
    (3, 'Municipality', 'GT.1504', '15004', 'Cubulco'),
    (3, 'Municipality', 'GT.1505', '15005', 'Granados'),
    (3, 'Municipality', 'GT.1508', '15008', 'Purulhá'),
    (3, 'Municipality', 'GT.1503', '15003', 'Rabinal'),
    (3, 'Municipality', 'GT.1501', '15001', 'Salamá'),
    (3, 'Municipality', 'GT.1507', '15007', 'San Jerónimo'),
    (3, 'Municipality', 'GT.1502', '15002', 'San Miguel Chicaj'),
    (3, 'Municipality', 'GT.1506', '15006', 'Santa Cruz El Chol'),

    (4, 'Municipality', 'GT.0411', '04011', 'Acatenango'),
    (4, 'Municipality', 'GT.0401', '04001', 'Chimaltenango'),
    (4, 'Municipality', 'GT.0416', '04016', 'El Tejar'),
    (4, 'Municipality', 'GT.0414', '04014', 'Parramos'),
    (4, 'Municipality', 'GT.0409', '04009', 'Patzicía'),
    (4, 'Municipality', 'GT.0407', '04007', 'Patzún'),
    (4, 'Municipality', 'GT.0413', '04013', 'San Andrés Itzapa'),
    (4, 'Municipality', 'GT.0402', '04002', 'San José Poaquil'),
    (4, 'Municipality', 'GT.0404', '04004', 'San Juan Comalapa'),
    (4, 'Municipality', 'GT.0403', '04003', 'San Martín Jilotepeque'),
    (4, 'Municipality', 'GT.0408', '04008', 'San Miguel Pochuta'),
    (4, 'Municipality', 'GT.0412', '04012', 'San Pedro Yepocapa'),
    (4, 'Municipality', 'GT.0405', '04005', 'Santa Apolonia'),
    (4, 'Municipality', 'GT.0410', '04010', 'Santa Cruz Balanya'),
    (4, 'Municipality', 'GT.0406', '04006', 'Tecpán'),
    (4, 'Municipality', 'GT.0415', '04015', 'Zaragoza'),

    (5, 'Municipality', 'GT.2005', '20005', 'Camotán'),
    (5, 'Municipality', 'GT.2001', '20001', 'Chiquimula'),
    (5, 'Municipality', 'GT.2008', '20008', 'Concepción Las Minas'),
    (5, 'Municipality', 'GT.2007', '20007', 'Esquipulas'),
    (5, 'Municipality', 'GT.2011', '20011', 'Ipala'),
    (5, 'Municipality', 'GT.2004', '20004', 'Jocotán'),
    (5, 'Municipality', 'GT.2006', '20006', 'Olopa'),
    (5, 'Municipality', 'GT.2009', '20009', 'Quetzaltepeque'),
    (5, 'Municipality', 'GT.2010', '20010', 'San Jacinto'),
    (5, 'Municipality', 'GT.2002', '20002', 'San José La Arada'),
    (5, 'Municipality', 'GT.2003', '20003', 'San Juan La Ermita'),

    (6, 'Municipality', 'GT.0205', '02005', 'El Jícaro'),
    (6, 'Municipality', 'GT.0201', '02001', 'Guastatoya'),
    (6, 'Municipality', 'GT.0202', '02002', 'Morazán'),
    (6, 'Municipality', 'GT.0203', '02003', 'San Agustín Acasaguastlán'),
    (6, 'Municipality', 'GT.0208', '02008', 'San Antonio La Paz'),
    (6, 'Municipality', 'GT.0204', '02004', 'San Cristobal Acasaguastlán'),
    (6, 'Municipality', 'GT.0207', '02007', 'Sanarate'),
    (6, 'Municipality', 'GT.0206', '02006', 'Sansare'),

    (7, 'Municipality', 'GT.0501', '05001', 'Escuintla'),
    (7, 'Municipality', 'GT.0508', '05008', 'Guanagazapa'),
    (7, 'Municipality', 'GT.0510', '05010', 'Iztapa'),
    (7, 'Municipality', 'GT.0503', '05003', 'La Democracia'),
    (7, 'Municipality', 'GT.0507', '05007', 'La Gomera'),
    (7, 'Municipality', 'GT.0505', '05005', 'Masagua'),
    (7, 'Municipality', 'GT.0513', '05013', 'Nueva Concepción'),
    (7, 'Municipality', 'GT.0511', '05011', 'Palín'),
    (7, 'Municipality', 'GT.0509', '05009', 'San José'),
    (7, 'Municipality', 'GT.0512', '05012', 'San Vicente Pacaya'),
    (7, 'Municipality', 'GT.0502', '05002', 'Santa Lucía Cotzumalguapa'),
    (7, 'Municipality', 'GT.0504', '05004', 'Siquinalá'),
    (7, 'Municipality', 'GT.0506', '05006', 'Tiquisate'),

    (8, 'Municipality', 'GT.0114', '01063', 'Amatitlán'),
    (8, 'Municipality', 'GT.0106', '01055', 'Chinautla'),
    (8, 'Municipality', 'GT.0112', '01061', 'Chuarrancho'),
    (8, 'Municipality', 'GT.0113', '01062', 'Fraijanes'),
    (8, 'Municipality', 'GT.0101', NULL, 'Guatemala'),
    (8, 'Municipality', 'GT.0108', '01057', 'Mixco'),
    (8, 'Municipality', 'GT.0105', '01054', 'Palencia'),
    (8, 'Municipality', 'GT.0103', '01052', 'San José Pinula'),
    (8, 'Municipality', 'GT.0104', '01053', 'San José del Golfo'),
    (8, 'Municipality', 'GT.0110', '01059', 'San Juan Sacatepéquez'),
    (8, 'Municipality', 'GT.0117', '01066', 'San Miguel Petapa'),
    (8, 'Municipality', 'GT.0107', '01056', 'San Pedro Ayampuc'),
    (8, 'Municipality', 'GT.0109', '01058', 'San Pedro Sacatepéquez'),
    (8, 'Municipality', 'GT.0102', '01051', 'Santa Catarina Pinula'),
    (8, 'Municipality', 'GT.0111', '01060', 'Say Raymundo'),
    (8, 'Municipality', 'GT.0116', '01065', 'Villa Canales'),
    (8, 'Municipality', 'GT.0115', '01064', 'Villa Nueva'),

    (9, 'Municipality', 'GT.1327', '13027', 'Aguacatán'),
    (9, 'Municipality', 'GT.1302', '13002', 'Chiantla'),
    (9, 'Municipality', 'GT.1319', '13019', 'Colotenango'),
    (9, 'Municipality', 'GT.1322', '13022', 'Concepción Huista'),
    (9, 'Municipality', 'GT.1304', '13004', 'Cuilco'),
    (9, 'Municipality', 'GT.1301', '13001', 'Huehuetenango'),
    (9, 'Municipality', 'GT.1307', '13007', 'Jacaltenango'),
    (9, 'Municipality', 'GT.1312', '13012', 'La Democracia'),
    (9, 'Municipality', 'GT.1311', '13011', 'La Libertad'),
    (9, 'Municipality', 'GT.1303', '13003', 'Malacatancito'),
    (9, 'Municipality', 'GT.1305', '13005', 'Nentón'),
    (9, 'Municipality', 'GT.1324', '13024', 'San Antonio Huista'),
    (9, 'Municipality', 'GT.1329', '13029', 'San Gaspar Ixchil'),
    (9, 'Municipality', 'GT.1309', '13009', 'San Ildefonso Ixtahuacán'),
    (9, 'Municipality', 'GT.1316', '13016', 'San Juan Atitán'),
    (9, 'Municipality', 'GT.1323', '13023', 'San Juan Ixcoy'),
    (9, 'Municipality', 'GT.1318', '13018', 'San Mateo Ixtatán'),
    (9, 'Municipality', 'GT.1313', '13013', 'San Miguel Acatán'),
    (9, 'Municipality', 'GT.1306', '13006', 'San Pedro Necta'),
    (9, 'Municipality', 'GT.1308', '13008', 'San Pedro Soloma'),
    (9, 'Municipality', 'GT.1314', '13014', 'San Rafael La Independencia'),
    (9, 'Municipality', 'GT.1328', '13028', 'San Rafael Petzal'),
    (9, 'Municipality', 'GT.1325', '13025', 'San Sebastian Coatán'),
    (9, 'Municipality', 'GT.1320', '13020', 'San Sebastián Huehuetenango'),
    (9, 'Municipality', 'GT.1331', '13031', 'Santa Ana Huista'),
    (9, 'Municipality', 'GT.1310', '13010', 'Santa Bárbara'),
    (9, 'Municipality', 'GT.1326', '13026', 'Santa Cruz Barillas'),
    (9, 'Municipality', 'GT.1317', '13017', 'Santa Eulalia'),
    (9, 'Municipality', 'GT.1330', '13030', 'Santiago Chimaltenango'),
    (9, 'Municipality', 'GT.1321', '13021', 'Tectitán'),
    (9, 'Municipality', 'GT.1315', '13015', 'Todos Santos Cuchumatán'),
    (9, 'Municipality', 'GT.1332', NULL, 'Unión Cantinil'),

    (10, 'Municipality', 'GT.1803', '18003', 'El Estor'),
    (10, 'Municipality', 'GT.1802', '18002', 'Livingston'),
    (10, 'Municipality', 'GT.1805', '18005', 'Los Amates'),
    (10, 'Municipality', 'GT.1804', '18004', 'Morales'),
    (10, 'Municipality', 'GT.1801', '18001', 'Puerto Barrios'),

    (11, 'Municipality', 'GT.2101', '21001', 'Jalapa'),
    (11, 'Municipality', 'GT.2107', '21007', 'Mataquescuintla'),
    (11, 'Municipality', 'GT.2106', '21006', 'Monjas'),
    (11, 'Municipality', 'GT.2105', '21005', 'San Carlos Alzatate'),
    (11, 'Municipality', 'GT.2103', '21003', 'San Luis Jilotepeque'),
    (11, 'Municipality', 'GT.2104', '21004', 'San Manuel Chaparrón'),
    (11, 'Municipality', 'GT.2102', '21002', 'San Pedro Pinula'),

    (12, 'Municipality', 'GT.2204', '22004', 'Agua Blanca'),
    (12, 'Municipality', 'GT.2205', '22005', 'Asunción Mita'),
    (12, 'Municipality', 'GT.2207', '22007', 'Atescatempa'),
    (12, 'Municipality', 'GT.2211', '22011', 'Comapa'),
    (12, 'Municipality', 'GT.2213', '22013', 'Conguaco'),
    (12, 'Municipality', 'GT.2209', '22009', 'El Adelanto'),
    (12, 'Municipality', 'GT.2202', '22002', 'El Progreso'),
    (12, 'Municipality', 'GT.2212', '22012', 'Jalpatagua'),
    (12, 'Municipality', 'GT.2208', '22008', 'Jeréz'),
    (12, 'Municipality', 'GT.2201', '22001', 'Jutiapa'),
    (12, 'Municipality', 'GT.2214', '22014', 'Moyuta'),
    (12, 'Municipality', 'GT.2215', '22015', 'Pasaco'),
    (12, 'Municipality', 'GT.2217', '22017', 'Quesada'),
    (12, 'Municipality', 'GT.2216', '22016', 'San José Acatempa'),
    (12, 'Municipality', 'GT.2203', '22003', 'Santa Catarina Mita'),
    (12, 'Municipality', 'GT.2206', '22006', 'Yupiltepeque'),
    (12, 'Municipality', 'GT.2210', '22010', 'Zapotitlán'),

    (13, 'Municipality', 'GT.1708', '17008', 'Dolores'),
    (13, 'Municipality', 'GT.1701', '17001', 'Flores'),
    (13, 'Municipality', 'GT.1705', '17005', 'La Libertad'),
    (13, 'Municipality', 'GT.1711', '17011', 'Melchor de Mencos'),
    (13, 'Municipality', 'GT.1712', '17012', 'Poptún'),
    (13, 'Municipality', 'GT.1704', '17004', 'San Andrés'),
    (13, 'Municipality', 'GT.1703', '17003', 'San Benito'),
    (13, 'Municipality', 'GT.1706', '17006', 'San Francisco'),
    (13, 'Municipality', 'GT.1702', '17002', 'San José'),
    (13, 'Municipality', 'GT.1709', '17009', 'San Luis'),
    (13, 'Municipality', 'GT.1707', '17007', 'Santa Ana'),
    (13, 'Municipality', 'GT.1710', '17010', 'Sayaxché'),

    (14, 'Municipality', 'GT.0913', '09013', 'Almolonga'),
    (14, 'Municipality', 'GT.0906', '09006', 'Cabricán'),
    (14, 'Municipality', 'GT.0907', '09007', 'Cajolá'),
    (14, 'Municipality', 'GT.0914', '09014', 'Cantel'),
    (14, 'Municipality', 'GT.0920', '09020', 'Coatepeque'),
    (14, 'Municipality', 'GT.0917', '09017', 'Colomba Costa Cuca'),
    (14, 'Municipality', 'GT.0911', '09011', 'Concepción Chiquirichapa'),
    (14, 'Municipality', 'GT.0919', '09019', 'El Palmar'),
    (14, 'Municipality', 'GT.0922', '09022', 'Flores Costa Cuca'),
    (14, 'Municipality', 'GT.0921', '09021', 'Génova'),
    (14, 'Municipality', 'GT.0915', '09015', 'Huitán'),
    (14, 'Municipality', 'GT.0923', '09023', 'La Esperanza'),
    (14, 'Municipality', 'GT.0903', '09003', 'Olintepeque'),
    (14, 'Municipality', 'GT.0924', '09024', 'Palestina de Los Altos'),
    (14, 'Municipality', 'GT.0901', '09001', 'Quetzaltenango'),
    (14, 'Municipality', 'GT.0902', '09002', 'Salcajá'),
    (14, 'Municipality', 'GT.0904', '09004', 'San Carlos Sija'),
    (14, 'Municipality', 'GT.0918', '09018', 'San Francisco La Unión'),
    (14, 'Municipality', 'GT.0909', '09009', 'San Juan Ostuncalco'),
    (14, 'Municipality', 'GT.0912', '09012', 'San Martín Sacatepéquez'),
    (14, 'Municipality', 'GT.0910', '09010', 'San Mateo'),
    (14, 'Municipality', 'GT.0908', '09008', 'San Miguel Sigüilá'),
    (14, 'Municipality', 'GT.0905', '09005', 'Sibilia'),
    (14, 'Municipality', 'GT.0916', '09016', 'Zunil'),

    (15, 'Municipality', 'GT.1418', '14018', 'Canillá'),
    (15, 'Municipality', 'GT.1405', '14005', 'Chajul'),
    (15, 'Municipality', 'GT.1419', '14020', 'Chicamán'),
    (15, 'Municipality', 'GT.1402', '14002', 'Chiché'),
    (15, 'Municipality', 'GT.1403', '14003', 'Chinique'),
    (15, 'Municipality', 'GT.1410', '14010', 'Cunén'),
    (15, 'Municipality', 'GT.1412', '14012', 'Joyabaj'),
    (15, 'Municipality', 'GT.1413', '14013', 'Nebaj'),
    (15, 'Municipality', 'GT.1421', '14022', 'Pachalum'),
    (15, 'Municipality', 'GT.1407', '14007', 'Patzité'),
    (15, 'Municipality', 'GT.1420', '14019', 'Playa Grande (Ixcán)'),
    (15, 'Municipality', 'GT.1416', '14016', 'Sacapulas'),
    (15, 'Municipality', 'GT.1414', '14014', 'San Andrés Sajcabajá'),
    (15, 'Municipality', 'GT.1408', '14008', 'San Antonio Ilotenango'),
    (15, 'Municipality', 'GT.1417', '14017', 'San Bartolomé Jocotenango'),
    (15, 'Municipality', 'GT.1411', '14011', 'San Juan Cotzal'),
    (15, 'Municipality', 'GT.1415', '14015', 'San Miguel Uspantán'),
    (15, 'Municipality', 'GT.1409', '14009', 'San Pedro Jocopilas'),
    (15, 'Municipality', 'GT.1401', '14001', 'Santa Cruz del Quiché'),
    (15, 'Municipality', 'GT.1406', '14006', 'Santo Tomás Chichicastenango'),
    (15, 'Municipality', 'GT.1404', '14004', 'Zacualpa'),

    (16, 'Municipality', 'GT.1107', '11007', 'Champerico'),
    (16, 'Municipality', 'GT.1109', '11009', 'El Asintal'),
    (16, 'Municipality', 'GT.1108', '11008', 'Nuevo San Carlos'),
    (16, 'Municipality', 'GT.1101', '11001', 'Retalhuleu'),
    (16, 'Municipality', 'GT.1106', '11006', 'San Andrés Villa Seca'),
    (16, 'Municipality', 'GT.1105', '11005', 'San Felipe'),
    (16, 'Municipality', 'GT.1104', '11004', 'San Martín Zapotitlán'),
    (16, 'Municipality', 'GT.1102', '11002', 'San Sebastián'),
    (16, 'Municipality', 'GT.1103', '11003', 'Santa Cruz Muluá'),

    (17, 'Municipality', 'GT.0314', '03014', 'Alotenango'),
    (17, 'Municipality', 'GT.0301', '03001', 'Antigua Guatemala'),
    (17, 'Municipality', 'GT.0312', '03012', 'Ciudad Vieja'),
    (17, 'Municipality', 'GT.0302', '03002', 'Jocotenango'),
    (17, 'Municipality', 'GT.0310', '03010', 'Magdalena Milpas Altas'),
    (17, 'Municipality', 'GT.0303', '03003', 'Pastores'),
    (17, 'Municipality', 'GT.0315', '03015', 'San Antonio Aguas Calientes'),
    (17, 'Municipality', 'GT.0307', '03007', 'San Bartolomé Milpas Altas'),
    (17, 'Municipality', 'GT.0308', '03008', 'San Lucas Sacatepéquez'),
    (17, 'Municipality', 'GT.0313', '03013', 'San Miguel Dueñas'),
    (17, 'Municipality', 'GT.0316', '03016', 'Santa Catarina Barahona'),
    (17, 'Municipality', 'GT.0309', '03009', 'Santa Lucía Milpas Altas'),
    (17, 'Municipality', 'GT.0311', '03011', 'Santa María de Jesús'),
    (17, 'Municipality', 'GT.0306', '03006', 'Santiago Sacatepéquez'),
    (17, 'Municipality', 'GT.0305', '03005', 'Santo Domingo Xenacoj'),
    (17, 'Municipality', 'GT.0304', '03004', 'Sumpango'),

    (18, 'Municipality', 'GT.1217', '12017', 'Ayutla (Tecún Umán)'),
    (18, 'Municipality', 'GT.1216', '12016', 'Catarina'),
    (18, 'Municipality', 'GT.1204', '12004', 'Comitancillo'),
    (18, 'Municipality', 'GT.1206', '12006', 'Concepción Tutuapa'),
    (18, 'Municipality', 'GT.1220', '12020', 'El Quetzal'),
    (18, 'Municipality', 'GT.1213', '12013', 'El Tumbador'),
    (18, 'Municipality', 'GT.1227', '12027', 'Esquipulas Palo Gordo'),
    (18, 'Municipality', 'GT.1223', '12023', 'Ixchiguán'),
    (18, 'Municipality', 'GT.1221', '12021', 'La Reforma'),
    (18, 'Municipality', 'GT.1215', '12015', 'Malacatán'),
    (18, 'Municipality', 'GT.1212', '12012', 'Nuevo Progreso'),
    (18, 'Municipality', 'GT.1218', '12018', 'Ocós'),
    (18, 'Municipality', 'GT.1222', '12022', 'Pajapita'),
    (18, 'Municipality', 'GT.1228', '12028', 'Río Blanco'),
    (18, 'Municipality', 'GT.1203', '12003', 'San Antonio Sacatepéquez'),
    (18, 'Municipality', 'GT.1225', '12025', 'San Cristobal Cucho'),
    (18, 'Municipality', 'GT.1214', '12014', 'San José El Rodeo'),
    (18, 'Municipality', 'GT.1224', '12024', 'San José Ojetenam'),
    (18, 'Municipality', 'GT.1229', '12029', 'San Lorenzo'),
    (18, 'Municipality', 'GT.1201', '12001', 'San Marcos'),
    (18, 'Municipality', 'GT.1205', '12005', 'San Miguel Ixtahuacán'),
    (18, 'Municipality', 'GT.1219', '12019', 'San Pablo'),
    (18, 'Municipality', 'GT.1202', '12002', 'San Pedro Sacatepéquez'),
    (18, 'Municipality', 'GT.1211', '12011', 'San Rafael Pie de La Cuesta'),
    (18, 'Municipality', 'GT.1208', '12008', 'Sibinal'),
    (18, 'Municipality', 'GT.1226', '12026', 'Sipacapa'),
    (18, 'Municipality', 'GT.1207', '12007', 'Tacaná'),
    (18, 'Municipality', 'GT.1209', '12009', 'Tajumulco'),
    (18, 'Municipality', 'GT.1210', '12010', 'Tejutla'),

    (19, 'Municipality', 'GT.0602', '06002', 'Barberena'),
    (19, 'Municipality', 'GT.0604', '06004', 'Casillas'),
    (19, 'Municipality', 'GT.0608', '06008', 'Chiquimulilla'),
    (19, 'Municipality', 'GT.0601', '06001', 'Cuilapa'),
    (19, 'Municipality', 'GT.0611', '06011', 'Guazacapán'),
    (19, 'Municipality', 'GT.0614', '06014', 'Nueva Santa Rosa'),
    (19, 'Municipality', 'GT.0606', '06006', 'Oratorio'),
    (19, 'Municipality', 'GT.0613', '06013', 'Pueblo Nuevo Viñas'),
    (19, 'Municipality', 'GT.0607', '06007', 'San Juan Tecuaco'),
    (19, 'Municipality', 'GT.0605', '06005', 'San Rafael Las Flores'),
    (19, 'Municipality', 'GT.0612', '06012', 'Santa Cruz Naranjo'),
    (19, 'Municipality', 'GT.0610', '06010', 'Santa María Ixhuatán'),
    (19, 'Municipality', 'GT.0603', '06003', 'Santa Rosa de Lima'),
    (19, 'Municipality', 'GT.0609', '06009', 'Taxisco'),

    (20, 'Municipality', 'GT.0708', '07008', 'Concepción'),
    (20, 'Municipality', 'GT.0705', '07005', 'Nahualá'),
    (20, 'Municipality', 'GT.0710', '07010', 'Panajachel'),
    (20, 'Municipality', 'GT.0709', '07009', 'San Andrés Semetabaj'),
    (20, 'Municipality', 'GT.0712', '07012', 'San Antonio Palopó'),
    (20, 'Municipality', 'GT.0702', '07002', 'San José Chacayá'),
    (20, 'Municipality', 'GT.0717', '07017', 'San Juan La Laguna'),
    (20, 'Municipality', 'GT.0713', '07013', 'San Lucas Tolimán'),
    (20, 'Municipality', 'GT.0716', '07016', 'San Marcos La Laguna'),
    (20, 'Municipality', 'GT.0715', '07015', 'San Pablo La Laguna'),
    (20, 'Municipality', 'GT.0718', '07018', 'San Pedro La Laguna'),
    (20, 'Municipality', 'GT.0706', '07006', 'Santa Catarina Ixtahuacán'),
    (20, 'Municipality', 'GT.0711', '07011', 'Santa Catarina Palopó'),
    (20, 'Municipality', 'GT.0707', '07007', 'Santa Clara La Laguna'),
    (20, 'Municipality', 'GT.0714', '07014', 'Santa Cruz La Laguna'),
    (20, 'Municipality', 'GT.0704', '07004', 'Santa Lucía Utatlán'),
    (20, 'Municipality', 'GT.0703', '07003', 'Santa María Visitación'),
    (20, 'Municipality', 'GT.0719', '07019', 'Santiago Atitlán'),
    (20, 'Municipality', 'GT.0701', '07001', 'Sololá'),

    (21, 'Municipality', 'GT.1013', '10013', 'Chicacao'),
    (21, 'Municipality', 'GT.1002', '10002', 'Cuyotenango'),
    (21, 'Municipality', 'GT.1001', '10001', 'Mazatenango'),
    (21, 'Municipality', 'GT.1014', '10014', 'Patulul'),
    (21, 'Municipality', 'GT.1019', '10019', 'Pueblo Nuevo'),
    (21, 'Municipality', 'GT.1020', '10020', 'Río Bravo'),
    (21, 'Municipality', 'GT.1008', '10008', 'Samayac'),
    (21, 'Municipality', 'GT.1010', '10010', 'San Antonio Suchitepéquez'),
    (21, 'Municipality', 'GT.1004', '10004', 'San Bernardino'),
    (21, 'Municipality', 'GT.1003', '10003', 'San Francisco Zapotitlán'),
    (21, 'Municipality', 'GT.1012', '10012', 'San Gabriel'),
    (21, 'Municipality', 'GT.1005', '10005', 'San José El Ídolo'),
    (21, 'Municipality', 'GT.1016', '10016', 'San Juan Bautista'),
    (21, 'Municipality', 'GT.1007', '10007', 'San Lorenzo'),
    (21, 'Municipality', 'GT.1011', '10011', 'San Miguel Panán'),
    (21, 'Municipality', 'GT.1009', '10009', 'San Pablo Jocopilas'),
    (21, 'Municipality', 'GT.1015', '10015', 'Santa Bárbara'),
    (21, 'Municipality', 'GT.1006', '10006', 'Santo Domingo Suchitepéquez'),
    (21, 'Municipality', 'GT.1017', '10017', 'Santo Tomás La Unión'),
    (21, 'Municipality', 'GT.1018', '10018', 'Zunilito'),

    (22, 'Municipality', 'GT.0805', '08005', 'Momostenango'),
    (22, 'Municipality', 'GT.0804', '08004', 'San Andrés Xecul'),
    (22, 'Municipality', 'GT.0808', '08008', 'San Bartolo Aguas Calientes'),
    (22, 'Municipality', 'GT.0802', '08002', 'San Cristobal Totonicapán'),
    (22, 'Municipality', 'GT.0803', '08003', 'San Franciso El Alto'),
    (22, 'Municipality', 'GT.0807', '08007', 'Santa Lucía La Reforma'),
    (22, 'Municipality', 'GT.0806', '08006', 'Santa María Chiquimula'),
    (22, 'Municipality', 'GT.0801', '08001', 'Totonicapán'),

    (23, 'Municipality', 'GT.1907', '19007', 'Cabañas'),
    (23, 'Municipality', 'GT.1902', '19002', 'Estanzuela'),
    (23, 'Municipality', 'GT.1904', '19004', 'Gualán'),
    (23, 'Municipality', 'GT.1910', '19010', 'Huité'),
    (23, 'Municipality', 'GT.1909', '19009', 'La Unión'),
    (23, 'Municipality', 'GT.1903', '19003', 'Río Hondo'),
    (23, 'Municipality', 'GT.1908', '19008', 'San Diego'),
    (23, 'Municipality', 'GT.1905', '19005', 'Teculután'),
    (23, 'Municipality', 'GT.1906', '19006', 'Usumatlán'),
    (23, 'Municipality', 'GT.1901', '19001', 'Zacapa');

# ---

INSERT INTO todo_emails (
    _type, _obj, verified_at, name

) VALUES ('Person', 1, CURRENT_TIMESTAMP, 'github@jmanuelemus.com');

# ---

INSERT INTO todo_people (
    verified_at, given_name, family_name, alternate_name

) VALUES (CURRENT_TIMESTAMP, 'Juan Manuel', 'Lemus Ponciano', 'Juanma');

# ---

INSERT INTO todo_urls (
    _type, _obj, _str, additional_type

) VALUES ('Person', 1, 'https://github.com/jmanuelemus', 'GitHub');

# ---

INSERT INTO todo_users (
    _type, _obj, verified_at, name, password

) VALUES ('Person', 1, CURRENT_TIMESTAMP, 'jmanuelemus', '$2y$10$aM3M4xfwniFpmvLPI5ztmeT6.VwxU9UYfBN.WVLpjcv3HK/ci9lvq');

# ---

INSERT INTO todo_projects (
    _type, _obj, start_date, name, description

) VALUES ('User', 1, datetime('2020-08-07 16:00:00'), 'todo-sqlite', 'A ToDo sample application to teach about SQLite.');

# ---

INSERT INTO todo_boards (
    _sup, _pos, name, _created_at

) VALUES
    (1, 1, 'ToDo', CURRENT_TIMESTAMP),
    (1, 2, 'Doing', CURRENT_TIMESTAMP),
    (1, 3, 'Done', CURRENT_TIMESTAMP);