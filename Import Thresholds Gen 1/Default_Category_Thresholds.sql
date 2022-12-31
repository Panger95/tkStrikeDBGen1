DROP TABLE IF EXISTS TKS_CATEGORY;
CREATE TABLE TKS_CATEGORY(ID VARCHAR(45) NOT NULL PRIMARY KEY,VERSION INTEGER,NAME VARCHAR(400),GENDER VARCHAR(10),SUBCATEGORY_ID VARCHAR(45),BODY_LEVEL INTEGER,HEAD_LEVEL INTEGER);
INSERT INTO TKS_CATEGORY VALUES
-- DRAGONS MALE
('001',0,'FIN -19KG','MALE','0',14,5),
('002',0,'LIGHT -23KG','MALE','0',14,5),
('003',0,'MIDDLE -27KG','MALE','0',14,5),
('004',0,'HEAVY +27KG','MALE','0',14,5),
-- DRAGONS FEMALE
('005',0,'FIN -19KG','FEMALE','0',14,5),
('006',0,'LIGHT -23KG','FEMALE','0',14,5),
('007',0,'MIDDLE -27KG','FEMALE','0',14,5),
('008',0,'HEAVY +27KG','FEMALE','0',14,5),
-- TIGERS MALE
('009',0,'FIN -21KG','MALE','1',15,5),
('010',0,'LIGHT -25KG','MALE','1',15,5),
('011',0,'MIDDLE -30KG','MALE','1',15,5),
('012',0,'HEAVY +30KG','MALE','1',15,5),
-- TIGERS FEMALE
('013',0,'FIN -21KG','FEMALE','1',15,5),
('014',0,'LIGHT -25KG','FEMALE','1',15,5),
('015',0,'MIDDLE -30KG','FEMALE','1',15,5),
('016',0,'HEAVY +30KG','FEMALE','1',15,5),
-- YOUTH MALE
('017',0,'FIN -30KG','MALE','2',16,5),
('018',0,'LIGHT -35KG','MALE','2',17,5),
('019',0,'MIDDLE -40KG','MALE','2',18,5),
('020',0,'HEAVY +40KG','MALE','2',19,5),
-- YOUTH FEMALE
('021',0,'FIN -30KG','FEMALE','2',16,5),
('022',0,'LIGHT -35KG','FEMALE','2',17,5),
('023',0,'MIDDLE -40KG','FEMALE','2',18,5),
('024',0,'HEAVY +40KG','FEMALE','2',19,5),
-- CADET MALE
('025',0,'FIN -33KG','MALE','3',17,5),
('026',0,'FLY -37KG','MALE','3',18,5),
('027',0,'BANTAM -41KG','MALE','3',19,5),
('028',0,'FEATHER -45KG','MALE','3',21,5),
('029',0,'LIGHT -49KG','MALE','3',22,5),
('030',0,'WELTER -53KG','MALE','3',24,5),
('031',0,'LIGHT MIDDLE -57KG','MALE','3',25,5),
('032',0,'MIDDLE -61KG','MALE','3',27,5),
('033',0,'LIGHT HEAVY -65KG','MALE','3',28,5),
('034',0,'HEAVY +65KG','MALE','3',30,5),
-- CADET FEMALE
('035',0,'FIN -29KG','FEMALE','3',16,5),
('036',0,'FLY -33KG','FEMALE','3',17,5),
('037',0,'BANTAM -37KG','FEMALE','3',18,5),
('038',0,'FEATHER -41KG','FEMALE','3',19,5),
('039',0,'LIGHT -44KG','FEMALE','3',20,5),
('040',0,'WELTER -47KG','FEMALE','3',21,5),
('041',0,'LIGHT MIDDLE -51KG','FEMALE','3',22,5),
('042',0,'MIDDLE -55KG','FEMALE','3',23,5),
('043',0,'LIGHT HEAVY -59KG','FEMALE','3',24,5),
('044',0,'HEAVY +59KG','FEMALE','3',25,5),
-- JUNIOR MALE
('045',0,'FIN -45KG','MALE','4',24,5),
('046',0,'FLY -48KG','MALE','4',26,5),
('047',0,'BANTAM -51KG','MALE','4',28,5),
('048',0,'FEATHER -55KG','MALE','4',30,5),
('049',0,'LIGHT -59KG','MALE','4',32,5),
('050',0,'WELTER -63KG','MALE','4',34,5),
('051',0,'LIGHT MIDDLE -68KG','MALE','4',36,5),
('052',0,'MIDDLE -73KG','MALE','4',38,5),
('053',0,'LIGHT HEAVY -78KG','MALE','4',40,5),
('054',0,'HEAVY +78KG','MALE','4',42,5),
-- JUNIOR FEMALE
('055',0,'FIN -42KG','FEMALE','4',20,5),
('056',0,'FLY -44KG','FEMALE','4',21,5),
('057',0,'BANTAM -46KG','FEMALE','4',22,5),
('058',0,'FEATHER -49KG','FEMALE','4',24,5),
('059',0,'LIGHT -52KG','FEMALE','4',26,5),
('060',0,'WELTER -55KG','FEMALE','4',28,5),
('061',0,'LIGHT MIDDLE -59KG','FEMALE','4',30,5),
('062',0,'MIDDLE -63KG','FEMALE','4',32,5),
('063',0,'LIGHT HEAVY -68KG','FEMALE','4',34,5),
('064',0,'HEAVY +68KG','FEMALE','4',36,5),
-- SENIOR MALE
('065',0,'FIN -54KG','MALE','5',32,5),
('066',0,'FLY -58KG','MALE','5',36,5),
('067',0,'BANTAM -63KG','MALE','5',38,5),
('068',0,'FEATHER -68KG','MALE','5',40,5),
('069',0,'LIGHT -74KG','MALE','5',42,5),
('070',0,'WELTER -80KG','MALE','5',44,5),
('071',0,'MIDDLE -87KG','MALE','5',46,5),
('072',0,'HEAVY +87KG','MALE','5',48,5),
-- SENIOR FEMALE
('073',0,'FIN -46KG','FEMALE','5',26,5),
('074',0,'FLY -49KG','FEMALE','5',28,5),
('075',0,'BANTAM -53KG','FEMALE','5',30,5),
('076',0,'FEATHER -57KG','FEMALE','5',32,5),
('077',0,'LIGHT -62KG','FEMALE','5',34,5),
('078',0,'WELTER -67KG','FEMALE','5',35,5),
('079',0,'MIDDLE -73KG','FEMALE','5',36,5),
('080',0,'HEAVY +73KG','FEMALE','5',38,5),
-- ULTRA MALE
('081',0,'FLY -58KG','MALE','6',36,5),
('082',0,'LIGHT -68KG','MALE','6',40,5),
('083',0,'MIDDLE -80KG','MALE','6',44,5),
('084',0,'HEAVY +80KG','MALE','6',48,5),
-- ULTRA FEMALE
('085',0,'FLY -49KG','FEMALE','6',28,5),
('086',0,'LIGHT -57KG','FEMALE','6',32,5),
('087',0,'MIDDLE -67KG','FEMALE','6',35,5),
('088',0,'HEAVY +67KG','FEMALE','6',38,5),
-- CADET MIN MALE
('089',0,'FLY -37KG','MALE','7',18,5),
('090',0,'FEATHER -45KG','MALE','7',12,5),
('091',0,'WELTER -53KG','MALE','7',24,5),
('092',0,'MIDDLE -61KG','MALE','7',27,5),
('093',0,'HEAVY +61KG','MALE','7',30,5),
-- CADET MIN FEMALE
('094',0,'FLY -33KG','FEMALE','7',17,5),
('095',0,'FEATHER -41KG','FEMALE','7',19,5),
('096',0,'WELTER -47KG','FEMALE','7',21,5),
('097',0,'MIDDLE -55KG','FEMALE','7',23,5),
('098',0,'HEAVY +55KG','FEMALE','7',25,5),
-- JUNIOR MIN MALE
('099',0,'FLY -48KG','MALE','8',26,5),
('100',0,'FEATHER -55KG','MALE','8',30,5),
('101',0,'WELTER -63KG','MALE','8',34,5),
('102',0,'MIDDLE -73KG','MALE','8',38,5),
('103',0,'HEAVY +73KG','MALE','8',42,5),
-- JUNIOR MIN FEMALE
('104',0,'FLY -44KG','FEMALE','8',21,5),
('105',0,'FEATHER -49KG','FEMALE','8',24,5),
('106',0,'WELTER -55KG','FEMALE','8',28,5),
('107',0,'MIDDLE -63KG','FEMALE','8',32,5),
('108',0,'HEAVY +63KG','FEMALE','8',36,5),
-- SENIOR MIN MALE
('109',0,'FLY -58KG','MALE','9',36,5),
('110',0,'FEATHER -68KG','MALE','9',40,5),
('111',0,'WELTER -80KG','MALE','9',44,5),
('112',0,'HEAVY +80KG','MALE','9',48,5),
-- SENIOR MIN FEMALE
('113',0,'FLY -49KG','FEMALE','9',28,5),
('114',0,'FEATHER -57KG','FEMALE','9',32,5),
('115',0,'WELTER -67KG','FEMALE','9',35,5),
('116',0,'HEAVY +67KG','FEMALE','9',38,5),
-- PARA K41 MALE
('117',0,'FLY -58KG','MALE','10',36,5),
('118',0,'FEATHER -63KG','MALE','10',38,5),
('119',0,'WELTER -70KG','MALE','10',40,5),
('120',0,'MIDDLE -80KG','MALE','10',44,5),
('121',0,'HEAVY +80KG','MALE','10',48,5),
-- PARA K41 FEMALE
('122',0,'FLY -47KG','FEMALE','10',27,5),
('123',0,'FEATHER -52KG','FEMALE','10',30,5),
('124',0,'WELTER -57KG','FEMALE','10',32,5),
('125',0,'MIDDLE -65KG','FEMALE','10',35,5),
('126',0,'HEAVY +65KG','FEMALE','10',37,5),
-- PARA K44 MALE
('127',0,'FLY -58KG','MALE','11',36,5),
('128',0,'FEATHER -63KG','MALE','11',38,5),
('129',0,'WELTER -70KG','MALE','11',40,5),
('130',0,'MIDDLE -80KG','MALE','11',44,5),
('131',0,'HEAVY +80KG','MALE','11',48,5),
-- PARA K44 FEMALE
('132',0,'FLY -47KG','FEMALE','11',27,5),
('133',0,'FEATHER -52KG','FEMALE','11',30,5),
('134',0,'WELTER -57KG','FEMALE','11',32,5),
('135',0,'MIDDLE -65KG','FEMALE','11',35,5),
('136',0,'HEAVY +65KG','FEMALE','11',37,5);