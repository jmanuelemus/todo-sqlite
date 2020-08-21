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
    (2, 'Municipality', 'AV-14', '16014', 'Chahal'),
    (2, 'Municipality', 'AV-13', '16013', 'Chisec'),
    (2, 'Municipality', 'AV-01', '16001', 'Cobán'),
    (2, 'Municipality', 'AV-15', '16015', 'Fray Bartolomé de las Casas'),
    (2, 'Municipality', 'AV-16', '16016', 'La Tinta'),
    (2, 'Municipality', 'AV-11', '16011', 'Lanquín'),
    (2, 'Municipality', 'AV-07', '16007', 'Panzós'),
    (2, 'Municipality', 'AV-17', '16026', 'Raxruhá'),
    (2, 'Municipality', 'AV-03', '16003', 'San Cristobal Verapaz'),
    (2, 'Municipality', 'AV-10', '16010', 'San Juan Chamelco'),
    (2, 'Municipality', 'AV-06', '16006', 'San Miguel Tucurú'),
    (2, 'Municipality', 'AV-09', '16009', 'San Pedro Carchá'),
    (2, 'Municipality', 'AV-02', '16002', 'Santa Cruz Verapaz'),
    (2, 'Municipality', 'AV-12', '16012', 'Santa María Cahabón'),
    (2, 'Municipality', 'AV-08', '16008', 'Senahú'),
    (2, 'Municipality', 'AV-04', '16004', 'Tactic'),
    (2, 'Municipality', 'AV-05', '16005', 'Tamahú'),
    
    (3, 'Municipality', 'BV-04', '15004', 'Cubulco'),
    (3, 'Municipality', 'BV-05', '15005', 'Granados'),
    (3, 'Municipality', 'BV-08', '15008', 'Purulhá'),
    (3, 'Municipality', 'BV-03', '15003', 'Rabinal'),
    (3, 'Municipality', 'BV-01', '15001', 'Salamá'),
    (3, 'Municipality', 'BV-07', '15007', 'San Jerónimo'),
    (3, 'Municipality', 'BV-02', '15002', 'San Miguel Chicaj'),
    (3, 'Municipality', 'BV-06', '15006', 'Santa Cruz El Chol'),

    (4, 'Municipality', 'CM-11', '04011', 'Acatenango'),
    (4, 'Municipality', 'CM-01', '04001', 'Chimaltenango'),
    (4, 'Municipality', 'CM-16', '04016', 'El Tejar'),
    (4, 'Municipality', 'CM-14', '04014', 'Parramos'),
    (4, 'Municipality', 'CM-09', '04009', 'Patzicía'),
    (4, 'Municipality', 'CM-07', '04007', 'Patzún'),
    (4, 'Municipality', 'CM-13', '04013', 'San Andrés Itzapa'),
    (4, 'Municipality', 'CM-02', '04002', 'San José Poaquil'),
    (4, 'Municipality', 'CM-04', '04004', 'San Juan Comalapa'),
    (4, 'Municipality', 'CM-03', '04003', 'San Martín Jilotepeque'),
    (4, 'Municipality', 'CM-08', '04008', 'San Miguel Pochuta'),
    (4, 'Municipality', 'CM-12', '04012', 'San Pedro Yepocapa'),
    (4, 'Municipality', 'CM-05', '04005', 'Santa Apolonia'),
    (4, 'Municipality', 'CM-10', '04010', 'Santa Cruz Balanya'),
    (4, 'Municipality', 'CM-06', '04006', 'Tecpán'),
    (4, 'Municipality', 'CM-15', '04015', 'Zaragoza'),

    (5, 'Municipality', 'CQ-05', '20005', 'Camotán'),
    (5, 'Municipality', 'CQ-01', '20001', 'Chiquimula'),
    (5, 'Municipality', 'CQ-08', '20008', 'Concepción Las Minas'),
    (5, 'Municipality', 'CQ-07', '20007', 'Esquipulas'),
    (5, 'Municipality', 'CQ-11', '20011', 'Ipala'),
    (5, 'Municipality', 'CQ-04', '20004', 'Jocotán'),
    (5, 'Municipality', 'CQ-06', '20006', 'Olopa'),
    (5, 'Municipality', 'CQ-09', '20009', 'Quetzaltepeque'),
    (5, 'Municipality', 'CQ-10', '20010', 'San Jacinto'),
    (5, 'Municipality', 'CQ-02', '20002', 'San José La Arada'),
    (5, 'Municipality', 'CQ-03', '20003', 'San Juan La Ermita'),

    (6, 'Municipality', 'PR-05', '02005', 'El Jícaro'),
    (6, 'Municipality', 'PR-01', '02001', 'Guastatoya'),
    (6, 'Municipality', 'PR-02', '02002', 'Morazán'),
    (6, 'Municipality', 'PR-03', '02003', 'San Agustín Acasaguastlán'),
    (6, 'Municipality', 'PR-08', '02008', 'San Antonio La Paz'),
    (6, 'Municipality', 'PR-04', '02004', 'San Cristobal Acasaguastlán'),
    (6, 'Municipality', 'PR-07', '02007', 'Sanarate'),
    (6, 'Municipality', 'PR-06', '02006', 'Sansare'),

    (7, 'Municipality', 'ES-01', '05001', 'Escuintla'),
    (7, 'Municipality', 'ES-08', '05008', 'Guanagazapa'),
    (7, 'Municipality', 'ES-10', '05010', 'Iztapa'),
    (7, 'Municipality', 'ES-03', '05003', 'La Democracia'),
    (7, 'Municipality', 'ES-07', '05007', 'La Gomera'),
    (7, 'Municipality', 'ES-05', '05005', 'Masagua'),
    (7, 'Municipality', 'ES-13', '05013', 'Nueva Concepción'),
    (7, 'Municipality', 'ES-11', '05011', 'Palín'),
    (7, 'Municipality', 'ES-09', '05009', 'San José'),
    (7, 'Municipality', 'ES-12', '05012', 'San Vicente Pacaya'),
    (7, 'Municipality', 'ES-02', '05002', 'Santa Lucía Cotzumalguapa'),
    (7, 'Municipality', 'ES-04', '05004', 'Siquinalá'),
    (7, 'Municipality', 'ES-06', '05006', 'Tiquisate'),

    (8, 'Municipality', 'GU-14', '01063', 'Amatitlán'),
    (8, 'Municipality', 'GU-06', '01055', 'Chinautla'),
    (8, 'Municipality', 'GU-12', '01061', 'Chuarrancho'),
    (8, 'Municipality', 'GU-13', '01062', 'Fraijanes'),
    (8, 'Municipality', 'GU-01', NULL, 'Guatemala'),
    (8, 'Municipality', 'GU-08', '01057', 'Mixco'),
    (8, 'Municipality', 'GU-05', '01054', 'Palencia'),
    (8, 'Municipality', 'GU-03', '01052', 'San José Pinula'),
    (8, 'Municipality', 'GU-04', '01053', 'San José del Golfo'),
    (8, 'Municipality', 'GU-10', '01059', 'San Juan Sacatepéquez'),
    (8, 'Municipality', 'GU-17', '01066', 'San Miguel Petapa'),
    (8, 'Municipality', 'GU-07', '01056', 'San Pedro Ayampuc'),
    (8, 'Municipality', 'GU-09', '01058', 'San Pedro Sacatepéquez'),
    (8, 'Municipality', 'GU-02', '01051', 'Santa Catarina Pinula'),
    (8, 'Municipality', 'GU-11', '01060', 'Say Raymundo'),
    (8, 'Municipality', 'GU-16', '01065', 'Villa Canales'),
    (8, 'Municipality', 'GU-15', '01064', 'Villa Nueva'),

    (9, 'Municipality', 'HU-27', '13027', 'Aguacatán'),
    (9, 'Municipality', 'HU-02', '13002', 'Chiantla'),
    (9, 'Municipality', 'HU-19', '13019', 'Colotenango'),
    (9, 'Municipality', 'HU-22', '13022', 'Concepción Huista'),
    (9, 'Municipality', 'HU-04', '13004', 'Cuilco'),
    (9, 'Municipality', 'HU-01', '13001', 'Huehuetenango'),
    (9, 'Municipality', 'HU-07', '13007', 'Jacaltenango'),
    (9, 'Municipality', 'HU-12', '13012', 'La Democracia'),
    (9, 'Municipality', 'HU-11', '13011', 'La Libertad'),
    (9, 'Municipality', 'HU-03', '13003', 'Malacatancito'),
    (9, 'Municipality', 'HU-05', '13005', 'Nentón'),
    (9, 'Municipality', 'HU-24', '13024', 'San Antonio Huista'),
    (9, 'Municipality', 'HU-29', '13029', 'San Gaspar Ixchil'),
    (9, 'Municipality', 'HU-09', '13009', 'San Ildefonso Ixtahuacán'),
    (9, 'Municipality', 'HU-16', '13016', 'San Juan Atitán'),
    (9, 'Municipality', 'HU-23', '13023', 'San Juan Ixcoy'),
    (9, 'Municipality', 'HU-18', '13018', 'San Mateo Ixtatán'),
    (9, 'Municipality', 'HU-13', '13013', 'San Miguel Acatán'),
    (9, 'Municipality', 'HU-06', '13006', 'San Pedro Necta'),
    (9, 'Municipality', 'HU-08', '13008', 'San Pedro Soloma'),
    (9, 'Municipality', 'HU-14', '13014', 'San Rafael La Independencia'),
    (9, 'Municipality', 'HU-28', '13028', 'San Rafael Petzal'),
    (9, 'Municipality', 'HU-25', '13025', 'San Sebastian Coatán'),
    (9, 'Municipality', 'HU-20', '13020', 'San Sebastián Huehuetenango'),
    (9, 'Municipality', 'HU-31', '13031', 'Santa Ana Huista'),
    (9, 'Municipality', 'HU-10', '13010', 'Santa Bárbara'),
    (9, 'Municipality', 'HU-26', '13026', 'Santa Cruz Barillas'),
    (9, 'Municipality', 'HU-17', '13017', 'Santa Eulalia'),
    (9, 'Municipality', 'HU-30', '13030', 'Santiago Chimaltenango'),
    (9, 'Municipality', 'HU-21', '13021', 'Tectitán'),
    (9, 'Municipality', 'HU-15', '13015', 'Todos Santos Cuchumatán'),
    (9, 'Municipality', 'HU-32', NULL, 'Unión Cantinil'),

    (10, 'Municipality', 'IZ-03', '18003', 'El Estor'),
    (10, 'Municipality', 'IZ-02', '18002', 'Livingston'),
    (10, 'Municipality', 'IZ-05', '18005', 'Los Amates'),
    (10, 'Municipality', 'IZ-04', '18004', 'Morales'),
    (10, 'Municipality', 'IZ-01', '18001', 'Puerto Barrios'),

    (11, 'Municipality', 'JA-01', '21001', 'Jalapa'),
    (11, 'Municipality', 'JA-07', '21007', 'Mataquescuintla'),
    (11, 'Municipality', 'JA-06', '21006', 'Monjas'),
    (11, 'Municipality', 'JA-05', '21005', 'San Carlos Alzatate'),
    (11, 'Municipality', 'JA-03', '21003', 'San Luis Jilotepeque'),
    (11, 'Municipality', 'JA-04', '21004', 'San Manuel Chaparrón'),
    (11, 'Municipality', 'JA-02', '21002', 'San Pedro Pinula'),

    (12, 'Municipality', 'JU-04', '22004', 'Agua Blanca'),
    (12, 'Municipality', 'JU-05', '22005', 'Asunción Mita'),
    (12, 'Municipality', 'JU-07', '22007', 'Atescatempa'),
    (12, 'Municipality', 'JU-11', '22011', 'Comapa'),
    (12, 'Municipality', 'JU-13', '22013', 'Conguaco'),
    (12, 'Municipality', 'JU-09', '22009', 'El Adelanto'),
    (12, 'Municipality', 'JU-02', '22002', 'El Progreso'),
    (12, 'Municipality', 'JU-12', '22012', 'Jalpatagua'),
    (12, 'Municipality', 'JU-08', '22008', 'Jeréz'),
    (12, 'Municipality', 'JU-01', '22001', 'Jutiapa'),
    (12, 'Municipality', 'JU-14', '22014', 'Moyuta'),
    (12, 'Municipality', 'JU-15', '22015', 'Pasaco'),
    (12, 'Municipality', 'JU-17', '22017', 'Quesada'),
    (12, 'Municipality', 'JU-16', '22016', 'San José Acatempa'),
    (12, 'Municipality', 'JU-03', '22003', 'Santa Catarina Mita'),
    (12, 'Municipality', 'JU-06', '22006', 'Yupiltepeque'),
    (12, 'Municipality', 'JU-10', '22010', 'Zapotitlán'),

    (13, 'Municipality', 'PE-08', '17008', 'Dolores'),
    (13, 'Municipality', 'PE-01', '17001', 'Flores'),
    (13, 'Municipality', 'PE-05', '17005', 'La Libertad'),
    (13, 'Municipality', 'PE-11', '17011', 'Melchor de Mencos'),
    (13, 'Municipality', 'PE-12', '17012', 'Poptún'),
    (13, 'Municipality', 'PE-04', '17004', 'San Andrés'),
    (13, 'Municipality', 'PE-03', '17003', 'San Benito'),
    (13, 'Municipality', 'PE-06', '17006', 'San Francisco'),
    (13, 'Municipality', 'PE-02', '17002', 'San José'),
    (13, 'Municipality', 'PE-09', '17009', 'San Luis'),
    (13, 'Municipality', 'PE-07', '17007', 'Santa Ana'),
    (13, 'Municipality', 'PE-10', '17010', 'Sayaxché'),

    (14, 'Municipality', 'QZ-13', '09013', 'Almolonga'),
    (14, 'Municipality', 'QZ-06', '09006', 'Cabricán'),
    (14, 'Municipality', 'QZ-07', '09007', 'Cajolá'),
    (14, 'Municipality', 'QZ-14', '09014', 'Cantel'),
    (14, 'Municipality', 'QZ-20', '09020', 'Coatepeque'),
    (14, 'Municipality', 'QZ-17', '09017', 'Colomba Costa Cuca'),
    (14, 'Municipality', 'QZ-11', '09011', 'Concepción Chiquirichapa'),
    (14, 'Municipality', 'QZ-19', '09019', 'El Palmar'),
    (14, 'Municipality', 'QZ-22', '09022', 'Flores Costa Cuca'),
    (14, 'Municipality', 'QZ-21', '09021', 'Génova'),
    (14, 'Municipality', 'QZ-15', '09015', 'Huitán'),
    (14, 'Municipality', 'QZ-23', '09023', 'La Esperanza'),
    (14, 'Municipality', 'QZ-03', '09003', 'Olintepeque'),
    (14, 'Municipality', 'QZ-24', '09024', 'Palestina de Los Altos'),
    (14, 'Municipality', 'QZ-01', '09001', 'Quetzaltenango'),
    (14, 'Municipality', 'QZ-02', '09002', 'Salcajá'),
    (14, 'Municipality', 'QZ-04', '09004', 'San Carlos Sija'),
    (14, 'Municipality', 'QZ-18', '09018', 'San Francisco La Unión'),
    (14, 'Municipality', 'QZ-09', '09009', 'San Juan Ostuncalco'),
    (14, 'Municipality', 'QZ-12', '09012', 'San Martín Sacatepéquez'),
    (14, 'Municipality', 'QZ-10', '09010', 'San Mateo'),
    (14, 'Municipality', 'QZ-08', '09008', 'San Miguel Sigüilá'),
    (14, 'Municipality', 'QZ-05', '09005', 'Sibilia'),
    (14, 'Municipality', 'QZ-16', '09016', 'Zunil'),

    (15, 'Municipality', 'QC-18', '14018', 'Canillá'),
    (15, 'Municipality', 'QC-05', '14005', 'Chajul'),
    (15, 'Municipality', 'QC-19', '14020', 'Chicamán'),
    (15, 'Municipality', 'QC-02', '14002', 'Chiché'),
    (15, 'Municipality', 'QC-03', '14003', 'Chinique'),
    (15, 'Municipality', 'QC-10', '14010', 'Cunén'),
    (15, 'Municipality', 'QC-12', '14012', 'Joyabaj'),
    (15, 'Municipality', 'QC-13', '14013', 'Nebaj'),
    (15, 'Municipality', 'QC-21', '14022', 'Pachalum'),
    (15, 'Municipality', 'QC-07', '14007', 'Patzité'),
    (15, 'Municipality', 'QC-20', '14019', 'Playa Grande (Ixcán)'),
    (15, 'Municipality', 'QC-16', '14016', 'Sacapulas'),
    (15, 'Municipality', 'QC-14', '14014', 'San Andrés Sajcabajá'),
    (15, 'Municipality', 'QC-08', '14008', 'San Antonio Ilotenango'),
    (15, 'Municipality', 'QC-17', '14017', 'San Bartolomé Jocotenango'),
    (15, 'Municipality', 'QC-11', '14011', 'San Juan Cotzal'),
    (15, 'Municipality', 'QC-15', '14015', 'San Miguel Uspantán'),
    (15, 'Municipality', 'QC-09', '14009', 'San Pedro Jocopilas'),
    (15, 'Municipality', 'QC-01', '14001', 'Santa Cruz del Quiché'),
    (15, 'Municipality', 'QC-06', '14006', 'Santo Tomás Chichicastenango'),
    (15, 'Municipality', 'QC-04', '14004', 'Zacualpa'),

    (16, 'Municipality', 'RE-07', '11007', 'Champerico'),
    (16, 'Municipality', 'RE-09', '11009', 'El Asintal'),
    (16, 'Municipality', 'RE-08', '11008', 'Nuevo San Carlos'),
    (16, 'Municipality', 'RE-01', '11001', 'Retalhuleu'),
    (16, 'Municipality', 'RE-06', '11006', 'San Andrés Villa Seca'),
    (16, 'Municipality', 'RE-05', '11005', 'San Felipe'),
    (16, 'Municipality', 'RE-04', '11004', 'San Martín Zapotitlán'),
    (16, 'Municipality', 'RE-02', '11002', 'San Sebastián'),
    (16, 'Municipality', 'RE-03', '11003', 'Santa Cruz Muluá'),

    (17, 'Municipality', 'SA-14', '03014', 'Alotenango'),
    (17, 'Municipality', 'SA-01', '03001', 'Antigua Guatemala'),
    (17, 'Municipality', 'SA-12', '03012', 'Ciudad Vieja'),
    (17, 'Municipality', 'SA-02', '03002', 'Jocotenango'),
    (17, 'Municipality', 'SA-10', '03010', 'Magdalena Milpas Altas'),
    (17, 'Municipality', 'SA-03', '03003', 'Pastores'),
    (17, 'Municipality', 'SA-15', '03015', 'San Antonio Aguas Calientes'),
    (17, 'Municipality', 'SA-07', '03007', 'San Bartolomé Milpas Altas'),
    (17, 'Municipality', 'SA-08', '03008', 'San Lucas Sacatepéquez'),
    (17, 'Municipality', 'SA-13', '03013', 'San Miguel Dueñas'),
    (17, 'Municipality', 'SA-16', '03016', 'Santa Catarina Barahona'),
    (17, 'Municipality', 'SA-09', '03009', 'Santa Lucía Milpas Altas'),
    (17, 'Municipality', 'SA-11', '03011', 'Santa María de Jesús'),
    (17, 'Municipality', 'SA-06', '03006', 'Santiago Sacatepéquez'),
    (17, 'Municipality', 'SA-05', '03005', 'Santo Domingo Xenacoj'),
    (17, 'Municipality', 'SA-04', '03004', 'Sumpango'),

    (18, 'Municipality', 'SM-17', '12017', 'Ayutla (Tecún Umán)'),
    (18, 'Municipality', 'SM-16', '12016', 'Catarina'),
    (18, 'Municipality', 'SM-04', '12004', 'Comitancillo'),
    (18, 'Municipality', 'SM-06', '12006', 'Concepción Tutuapa'),
    (18, 'Municipality', 'SM-20', '12020', 'El Quetzal'),
    (18, 'Municipality', 'SM-13', '12013', 'El Tumbador'),
    (18, 'Municipality', 'SM-27', '12027', 'Esquipulas Palo Gordo'),
    (18, 'Municipality', 'SM-23', '12023', 'Ixchiguán'),
    (18, 'Municipality', 'SM-21', '12021', 'La Reforma'),
    (18, 'Municipality', 'SM-15', '12015', 'Malacatán'),
    (18, 'Municipality', 'SM-12', '12012', 'Nuevo Progreso'),
    (18, 'Municipality', 'SM-18', '12018', 'Ocós'),
    (18, 'Municipality', 'SM-22', '12022', 'Pajapita'),
    (18, 'Municipality', 'SM-28', '12028', 'Río Blanco'),
    (18, 'Municipality', 'SM-03', '12003', 'San Antonio Sacatepéquez'),
    (18, 'Municipality', 'SM-25', '12025', 'San Cristobal Cucho'),
    (18, 'Municipality', 'SM-14', '12014', 'San José El Rodeo'),
    (18, 'Municipality', 'SM-24', '12024', 'San José Ojetenam'),
    (18, 'Municipality', 'SM-29', '12029', 'San Lorenzo'),
    (18, 'Municipality', 'SM-01', '12001', 'San Marcos'),
    (18, 'Municipality', 'SM-05', '12005', 'San Miguel Ixtahuacán'),
    (18, 'Municipality', 'SM-19', '12019', 'San Pablo'),
    (18, 'Municipality', 'SM-02', '12002', 'San Pedro Sacatepéquez'),
    (18, 'Municipality', 'SM-11', '12011', 'San Rafael Pie de La Cuesta'),
    (18, 'Municipality', 'SM-08', '12008', 'Sibinal'),
    (18, 'Municipality', 'SM-26', '12026', 'Sipacapa'),
    (18, 'Municipality', 'SM-07', '12007', 'Tacaná'),
    (18, 'Municipality', 'SM-09', '12009', 'Tajumulco'),
    (18, 'Municipality', 'SM-10', '12010', 'Tejutla'),

    (19, 'Municipality', 'SR-02', '06002', 'Barberena'),
    (19, 'Municipality', 'SR-04', '06004', 'Casillas'),
    (19, 'Municipality', 'SR-08', '06008', 'Chiquimulilla'),
    (19, 'Municipality', 'SR-01', '06001', 'Cuilapa'),
    (19, 'Municipality', 'SR-11', '06011', 'Guazacapán'),
    (19, 'Municipality', 'SR-14', '06014', 'Nueva Santa Rosa'),
    (19, 'Municipality', 'SR-06', '06006', 'Oratorio'),
    (19, 'Municipality', 'SR-13', '06013', 'Pueblo Nuevo Viñas'),
    (19, 'Municipality', 'SR-07', '06007', 'San Juan Tecuaco'),
    (19, 'Municipality', 'SR-05', '06005', 'San Rafael Las Flores'),
    (19, 'Municipality', 'SR-12', '06012', 'Santa Cruz Naranjo'),
    (19, 'Municipality', 'SR-10', '06010', 'Santa María Ixhuatán'),
    (19, 'Municipality', 'SR-03', '06003', 'Santa Rosa de Lima'),
    (19, 'Municipality', 'SR-09', '06009', 'Taxisco'),

    (20, 'Municipality', 'SO-08', '07008', 'Concepción'),
    (20, 'Municipality', 'SO-05', '07005', 'Nahualá'),
    (20, 'Municipality', 'SO-10', '07010', 'Panajachel'),
    (20, 'Municipality', 'SO-09', '07009', 'San Andrés Semetabaj'),
    (20, 'Municipality', 'SO-12', '07012', 'San Antonio Palopó'),
    (20, 'Municipality', 'SO-02', '07002', 'San José Chacayá'),
    (20, 'Municipality', 'SO-17', '07017', 'San Juan La Laguna'),
    (20, 'Municipality', 'SO-13', '07013', 'San Lucas Tolimán'),
    (20, 'Municipality', 'SO-16', '07016', 'San Marcos La Laguna'),
    (20, 'Municipality', 'SO-15', '07015', 'San Pablo La Laguna'),
    (20, 'Municipality', 'SO-18', '07018', 'San Pedro La Laguna'),
    (20, 'Municipality', 'SO-06', '07006', 'Santa Catarina Ixtahuacán'),
    (20, 'Municipality', 'SO-11', '07011', 'Santa Catarina Palopó'),
    (20, 'Municipality', 'SO-07', '07007', 'Santa Clara La Laguna'),
    (20, 'Municipality', 'SO-14', '07014', 'Santa Cruz La Laguna'),
    (20, 'Municipality', 'SO-04', '07004', 'Santa Lucía Utatlán'),
    (20, 'Municipality', 'SO-03', '07003', 'Santa María Visitación'),
    (20, 'Municipality', 'SO-19', '07019', 'Santiago Atitlán'),
    (20, 'Municipality', 'SO-01', '07001', 'Sololá'),

    (21, 'Municipality', 'SU-13', '10013', 'Chicacao'),
    (21, 'Municipality', 'SU-02', '10002', 'Cuyotenango'),
    (21, 'Municipality', 'SU-01', '10001', 'Mazatenango'),
    (21, 'Municipality', 'SU-14', '10014', 'Patulul'),
    (21, 'Municipality', 'SU-19', '10019', 'Pueblo Nuevo'),
    (21, 'Municipality', 'SU-20', '10020', 'Río Bravo'),
    (21, 'Municipality', 'SU-08', '10008', 'Samayac'),
    (21, 'Municipality', 'SU-10', '10010', 'San Antonio Suchitepéquez'),
    (21, 'Municipality', 'SU-04', '10004', 'San Bernardino'),
    (21, 'Municipality', 'SU-03', '10003', 'San Francisco Zapotitlán'),
    (21, 'Municipality', 'SU-12', '10012', 'San Gabriel'),
    (21, 'Municipality', 'SU-05', '10005', 'San José El Ídolo'),
    (21, 'Municipality', 'SU-16', '10016', 'San Juan Bautista'),
    (21, 'Municipality', 'SU-07', '10007', 'San Lorenzo'),
    (21, 'Municipality', 'SU-11', '10011', 'San Miguel Panán'),
    (21, 'Municipality', 'SU-09', '10009', 'San Pablo Jocopilas'),
    (21, 'Municipality', 'SU-15', '10015', 'Santa Bárbara'),
    (21, 'Municipality', 'SU-06', '10006', 'Santo Domingo Suchitepéquez'),
    (21, 'Municipality', 'SU-17', '10017', 'Santo Tomás La Unión'),
    (21, 'Municipality', 'SU-18', '10018', 'Zunilito'),

    (22, 'Municipality', 'TO-05', '08005', 'Momostenango'),
    (22, 'Municipality', 'TO-04', '08004', 'San Andrés Xecul'),
    (22, 'Municipality', 'TO-08', '08008', 'San Bartolo Aguas Calientes'),
    (22, 'Municipality', 'TO-02', '08002', 'San Cristobal Totonicapán'),
    (22, 'Municipality', 'TO-03', '08003', 'San Franciso El Alto'),
    (22, 'Municipality', 'TO-07', '08007', 'Santa Lucía La Reforma'),
    (22, 'Municipality', 'TO-06', '08006', 'Santa María Chiquimula'),
    (22, 'Municipality', 'TO-01', '08001', 'Totonicapán'),

    (23, 'Municipality', 'ZA-07', '19007', 'Cabañas'),
    (23, 'Municipality', 'ZA-02', '19002', 'Estanzuela'),
    (23, 'Municipality', 'ZA-04', '19004', 'Gualán'),
    (23, 'Municipality', 'ZA-10', '19010', 'Huité'),
    (23, 'Municipality', 'ZA-09', '19009', 'La Unión'),
    (23, 'Municipality', 'ZA-03', '19003', 'Río Hondo'),
    (23, 'Municipality', 'ZA-08', '19008', 'San Diego'),
    (23, 'Municipality', 'ZA-05', '19005', 'Teculután'),
    (23, 'Municipality', 'ZA-06', '19006', 'Usumatlán'),
    (23, 'Municipality', 'ZA-01', '19001', 'Zacapa');

# ---

INSERT INTO todo_emails (
    _type, _obj, _str, verified_at

) VALUES ('Person', 1, 'github@jmanuelemus.com', CURRENT_TIMESTAMP);

# ---

INSERT INTO todo_people(
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
    _type, _obj, _uid, start_date, name, description

) VALUES ('User', 1, 1, datetime('2020-08-07 16:00:00'), 'todo-sqlite', 'A ToDo sample application to teach about SQLite.');