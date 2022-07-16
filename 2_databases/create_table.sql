-- create cars table
CREATE TABLE Car (
manufacturer varchar(255),
model_name varchar(255),
serial_number varchar(255),
weight float,
price numeric (10,2),
CONSTRAINT PK_Car PRIMARY KEY (serial_number));

-- create transaction table
CREATE TABLE Transaction (
transaction_id varchar(255),
transaction_datetime timestamp,
customer_name varchar(255),
customer_phone varchar(255),
salesperson varchar(255),
serial_number varchar(255),
CONSTRAINT PK_Transaction PRIMARY KEY (transaction_id),
CONSTRAINT FK_serialno FOREIGN KEY (serial_number) REFERENCES Car(serial_number)
);

-- fake data car
INSERT INTO Car VALUES ('Toyota','Avalon','JTMBD192940089353','1700', '136275');
INSERT INTO Car VALUES ('Toyota','Estima','KNEJE55155K124582','1740', '172800');
INSERT INTO Car VALUES ('Honda','Accord','W0L000085T9007650','1420' ,'221999');
INSERT INTO Car VALUES ('Honda','City','U5YHM81BAJL253835','1107', '134999');
INSERT INTO Car VALUES ('Honda', 'All-New Civic', '2C3CDXCT9EH246696','1337','127999');
INSERT INTO Car VALUES ('BMW','Series 1','W1K2130531A980747','1360', '189888');
INSERT INTO Car VALUES ('BMW','Series 2','3N1CP5C96KL465245','1685', '194888');
INSERT INTO Car VALUES ('BMW','Series 3','JTDKB20U387783447','1660', '196888');
INSERT INTO Car VALUES ('BMW','Series 4','WDF63970513458378','1430', '304888');
INSERT INTO Car VALUES ('BMW','Series 5','WF0SXXGBWSBE09663','1685', '361888');

-- fake transaction data
INSERT INTO Transaction VALUES ('101', '20220620 10:34:09 AM', 'Amy', '81818181', 'Karen', 'JTMBD192940089353');
INSERT INTO Transaction VALUES ('102', '20220620 09:34:09 AM', 'Ben', '82828282', 'Sol', 'KNEJE55155K124582');
INSERT INTO Transaction VALUES ('103', '20220621 11:34:09 AM', 'Carol', '83838383', 'Karen', 'KNEJE55155K124582');
INSERT INTO Transaction VALUES ('104', '20220623 08:34:09 PM', 'Lux', '84848484', 'Karen', 'JTMBD192940089353');
INSERT INTO Transaction VALUES ('105', '20220624 05:34:09 PM', 'Garen', '85858585', 'Sol', '2C3CDXCT9EH246696');
INSERT INTO Transaction VALUES ('106', '20220626 07:34:09 PM', 'Amy', '81818181', 'Sol', '3N1CP5C96KL465245');
INSERT INTO Transaction VALUES ('107', '20220630 06:34:09 PM', 'Amy', '81818181', 'Karen', 'WDF63970513458378');
INSERT INTO Transaction VALUES ('108', '20220701 03:34:09 PM', 'Luther', '86868686', 'Karen', 'WDF63970513458378');
INSERT INTO Transaction VALUES ('109', '20220702 12:34:09 PM', 'Den', '87878787', 'Karen', 'W0L000085T9007650');
INSERT INTO Transaction VALUES ('110', '20220713 01:34:09 PM', 'Ben', '82828282', 'Sol', 'WF0SXXGBWSBE09663');
