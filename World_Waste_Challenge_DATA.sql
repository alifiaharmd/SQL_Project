--Run in PostgreSQL v10.0

CREATE TABLE countries (
  "id" VARCHAR(3),
  "region_id" VARCHAR(3),
  "country_name" VARCHAR(25)
);

INSERT INTO countries
  ("id", "region_id", "country_name")
VALUES
  ('ABW', 'LCN', 'Aruba'),
  ('AND', 'ECS', 'Andorra'),
  ('ARE', 'MEA', 'United Arab Emirates'),
  ('ARG', 'LCN', 'Argentina'),
  ('ATG', 'LCN', 'Antigua and Barbuda'),
  ('AUS', 'EAS', 'Australia'),
  ('AUT', 'ECS', 'Austria'),
  ('BEL', 'ECS', 'Belgium'),
  ('BHR', 'MEA', 'Bahrain'),
  ('BHS', 'LCN', 'Bahamas The'),
  ('BMU', 'NAC', 'Bermuda'),
  ('BRB', 'LCN', 'Barbados'),
  ('BRN', 'EAS', 'Brunei Darussalam'),
  ('CAN', 'NAC', 'Canada'),
  ('CHE', 'ECS', 'Switzerland'),
  ('CHI', 'ECS', 'Channel Islands'),
  ('CHL', 'LCN', 'Chile'),
  ('CUW', 'LCN', 'Curacao'),
  ('CYM', 'LCN', 'Cayman Islands'),
  ('CYP', 'ECS', 'Cyprus'),
  ('CZE', 'ECS', 'Czech Republic'),
  ('DEU', 'ECS', 'Germany'),
  ('DNK', 'ECS', 'Denmark'),
  ('ESP', 'ECS', 'Spain'),
  ('EST', 'ECS', 'Estonia'),
  ('FIN', 'ECS', 'Finland'),
  ('FRA', 'ECS', 'France'),
  ('FRO', 'ECS', 'Faeroe Islands'),
  ('GBR', 'ECS', 'United Kingdom'),
  ('GIB', 'ECS', 'Gibraltar'),
  ('GRC', 'ECS', 'Greece'),
  ('GRL', 'ECS', 'Greenland'),
  ('GUM', 'EAS', 'Guam'),
  ('HKG', 'EAS', 'Hong Kong SAR China'),
  ('HRV', 'ECS', 'Croatia'),
  ('HUN', 'ECS', 'Hungary'),
  ('IMN', 'ECS', 'Isle of Man'),
  ('IRL', 'ECS', 'Ireland'),
  ('ISL', 'ECS', 'Iceland'),
  ('ISR', 'MEA', 'Israel'),
  ('ITA', 'ECS', 'Italy'),
  ('JPN', 'EAS', 'Japan'),
  ('KNA', 'LCN', 'St. Kitts and Nevis'),
  ('KOR', 'EAS', 'Korea Rep.'),
  ('KWT', 'MEA', 'Kuwait'),
  ('LIE', 'ECS', 'Liechtenstein'),
  ('LTU', 'ECS', 'Lithuania'),
  ('LUX', 'ECS', 'Luxembourg'),
  ('LVA', 'ECS', 'Latvia'),
  ('MAC', 'EAS', 'Macao SAR China'),
  ('MAF', 'LCN', 'St. Martin (French part)'),
  ('MCO', 'ECS', 'Monaco'),
  ('MLT', 'MEA', 'Malta'),
  ('MNP', 'EAS', 'Northern Mariana Islands'),
  ('NCL', 'EAS', 'New Caledonia'),
  ('NLD', 'ECS', 'Netherlands'),
  ('NOR', 'ECS', 'Norway'),
  ('NZL', 'EAS', 'New Zealand'),
  ('OMN', 'MEA', 'Oman'),
  ('PAN', 'LCN', 'Panama'),
  ('PLW', 'EAS', 'Palau'),
  ('POL', 'ECS', 'Poland'),
  ('PRI', 'LCN', 'Puerto Rico'),
  ('PRT', 'ECS', 'Portugal'),
  ('PYF', 'EAS', 'French Polynesia'),
  ('QAT', 'MEA', 'Qatar'),
  ('SAU', 'MEA', 'Saudi Arabia'),
  ('SGP', 'EAS', 'Singapore'),
  ('SMR', 'ECS', 'San Marino'),
  ('SVK', 'ECS', 'Slovak Republic'),
  ('SVN', 'ECS', 'Slovenia'),
  ('SWE', 'ECS', 'Sweden'),
  ('SXM', 'LCN', 'Sint Maarten (Dutch part)'),
  ('SYC', 'SSF', 'Seychelles'),
  ('TCA', 'LCN', 'Turks and Caicos Islands'),
  ('TTO', 'LCN', 'Trinidad and Tobago'),
  ('URY', 'LCN', 'Uruguay'),
  ('USA', 'NAC', 'United States'),
  ('VGB', 'LCN', 'British Virgin Islands'),
  ('VIR', 'LCN', 'Virgin Islands (U.S.)');

CREATE TABLE composition (
  "country_id" VARCHAR(3),
  "organic_waste_pct" FLOAT,
  "glass_pct" FLOAT,
  "metal_pct" FLOAT,
  "other_pct" FLOAT,
  "paper_pct" FLOAT,
  "plastic_pct" FLOAT
);

INSERT INTO composition
  ("country_id", "organic_waste_pct", "glass_pct", "metal_pct", "other_pct", "paper_pct", "plastic_pct")
VALUES
  ('AND', '31.2', '8.2', '2.6', '11.6', '35.1', '11.3'),
  ('ARE', '39.0', '4.0', '3.0', '10.0', '25.0', '19.0'),
  ('ARG', '38.74', '3.16', '1.84', '15.36', '13.96', '14.61'),
  ('AUS', '48.44', '3.81', '19.38', '3.46', '17.3', '7.61'),
  ('AUT', '31.4', '7.0', '4.4', '18.5', '19.7', '11.1'),
  ('BEL', '14.18', '3.1', '1.91', '40.14', '18.38', '13.94'),
  ('BHR', '59.1', '3.4', '2.1', '15.2', '12.8', '7.4'),
  ('BHS', '46.0', '7.0', '7.0', '12.0', '15.0', '13.0'),
  ('BMU', '17.0', '9.0', '6.0', '26.0', '29.0', '13.0'),
  ('BRB', '18.3', '3.7', '4.9', '5.7', '19.7', '17.1'),
  ('BRN', '36.0', '3.0', '4.0', '15.0', '18.0', '16.0'),
  ('CAN', '24.0', '6.0', '13.0', '8.0', '47.0', '3.0'),
  ('CHE', '29.0', '4.0', '3.0', '29.0', '20.0', '15.0'),
  ('CHL', '53.3', '6.6', '2.3', '16.0', '12.4', '9.4'),
  ('CYM', '10.9', '3.5', '6.2', '11.4', '31.1', '11.0'),
  ('CYP', '41.47', '2.66', '3.25', '10.07', '25.7', '14.77'),
  ('CZE', '62.3', '2.4', '8.4', '14.899999999999995', '9.1', '2.2'),
  ('DEU', '30.0', '10.0', '1.4', '17.7', '24.0', '13.0'),
  ('DNK', '12.78', '5.78', '6.29', '23.86', '11.57', '1.61'),
  ('ESP', '49.0', '8.0', '3.0', '14.0', '15.0', '9.0'),
  ('EST', '36.7', '8.3', '2.6', '15.9', '17.5', '18.6'),
  ('FIN', '35.88', '9.24', '1.7', '13.13', '37.83', '1.45'),
  ('FRA', '32.0', '10.0', '3.0', '26.0', '20.0', '9.0'),
  ('GBR', '16.7', '2.2', '3.5', '28.2', '18.9', '20.2'),
  ('GIB', '24.57', '4.42', '4.37', '14.38', '33.65', '15.86'),
  ('GRC', '40.0', '3.0', '3.0', '9.0', '29.0', '14.0'),
  ('GRL', '42.8', '7.1', '2.0', '33.4', '11.4', '2.4'),
  ('GUM', '27.3', '4.6', '9.0', '8.7', '28.5', '12.4'),
  ('HKG', '35.0', '3.0', '2.0', '14.0', '22.0', '21.0'),
  ('HRV', '30.9', '3.7', '2.1', '11.5', '23.2', '22.9'),
  ('HUN', '22.5', '3.5', '1.8', '45.9', '13.4', '13.0'),
  ('IRL', '16.6', '8.5', '3.7', '25.8', '25.0', '12.4'),
  ('ISL', '10.0', '0.0', '0.0', '0.0', '38.0', '9.0'),
  ('ISR', '34.0', '3.0', '3.0', '16.0', '24.0', '18.0'),
  ('ITA', '34.4', '7.6', '4.3', '15.4', '22.8', '11.6'),
  ('JPN', '36.0', '5.0', '4.0', '6.0', '33.0', '11.0'),
  ('KNA', '27.2', '8.1', '8.8', '12.2', '20.5', '23.2'),
  ('KOR', '30.0', '2.5', '2.6', '0.0', '41.0', '24.3'),
  ('KWT', '45.0', '4.0', '2.0', '8.0', '20.0', '20.0'),
  ('LIE', '37.6', '5.0', '12.5', '9.1', '30.3', '5.4'),
  ('LTU', '40.4', '8.65', '2.75', '44.05', '10.05', '10.15'),
  ('LUX', '30.0', '4.0', '2.0', '27.0', '19.0', '18.0'),
  ('LVA', '46.7', '21.4', '2.6', '9.7', '6.1', '7.7'),
  ('MAC', '3.1', '3.3', '1.7', '3.1', '58.7', '7.9'),
  ('MCO', '0.0', '3.0', '2.2', '0.0', '2.2', '1.0'),
  ('MLT', '52.0', '6.0', '4.0', '9.5', '18.0', '12.0'),
  ('MNP', '43.6', '5.5', '10.0', '9.3', '10.9', '16.5'),
  ('NCL', '43.6', '5.5', '10.0', '9.3', '10.9', '16.5'),
  ('NLD', '35.0', '5.4', '4.3', '20.24', '21.0', '14.0'),
  ('NOR', '15.49', '4.6', '6.12', '13.15', '26.57', '2.25'),
  ('NZL', '28.0', '4.0', '4.5', '37.0', '7.0', '8.0'),
  ('OMN', '27.0', '6.0', '0.0', '24.0', '15.0', '21.0'),
  ('PAN', '46.4', '5.8', '3.8', '5.7', '26.3', '12.0'),
  ('PLW', '26.0', '5.0', '10.0', '9.0', '15.0', '32.0'),
  ('POL', '37.27', '10.07', '2.17', '26.69', '11.27', '12.13'),
  ('PRI', '13.1', '2.4', '10.4', '23.8', '19.4', '10.4'),
  ('PRT', '36.49', '6.73', '1.85', '27.680000000000003', '13.64', '10.72'),
  ('PYF', '47.0', '3.0', '3.0', '29.0', '16.0', '2.0'),
  ('QAT', '57.0', '4.0', '9.0', '5.0', '11.0', '14.0'),
  ('SAU', '45.5', '4.0', '5.0', '2.5', '27.0', '11.0'),
  ('SGP', '10.51', '0.93', '19.12', '32.3', '14.86', '10.58'),
  ('SMR', '5.35', '5.61', '0.9', '65.56', '13.21', '5.6'),
  ('SVK', '42.0', '19.0', '2.0', '1.0', '25.0', '11.0'),
  ('SWE', '23.34', '9.15', '9.2', '0.0', '36.4', '6.58'),
  ('SXM', '46.0', '7.0', '7.0', '12.0', '15.0', '13.0'),
  ('SYC', '48.5', '5.2', '4.6', '25.800000000000004', '5.9', '9.9'),
  ('TCA', '21.8', '20.5', '7.6', '2.4', '31.5', '16.3'),
  ('TTO', '27.15', '10.15', '3.74', '17.19', '22.6', '19.17'),
  ('URY', '53.5', '3.0', '5.0', '7.5', '20.0', '11.0'),
  ('USA', '14.9', '4.4', '9.0', '3.2', '26.6', '12.9'),
  ('VGB', '6.5', '18.1', '8.6', '4.8', '33.5', '6.3'),
  ('VIR', '46.0', '7.0', '7.0', '12.0', '15.0', '13.0');
  

CREATE TABLE treatment (
  "country_id" VARCHAR(3),
  "compost_percent" FLOAT,
  "incineration_percent" FLOAT,
  "recycling_percent" FLOAT
);

INSERT INTO treatment
  ("country_id", "compost_percent", "incineration_percent", "recycling_percent")
VALUES
  ('ARE', '9.0', '0.0', '20.0'),
  ('AUS', '0.0', '9.77', '42.1'),
  ('AUT', '31.24', '37.9', '25.66'),
  ('BEL', '19.14', '43.39', '34.3'),
  ('BGR', '10.32', '2.75', '19.03'),
  ('BMU', '18.3', '67.6', '2.0'),
  ('BOL', '0.4', '0.0', '12.11'),
  ('BRA', '0.2', '0.0', '1.4'),
  ('BTN', '1.39', '0.0', '0.86'),
  ('CAN', '4.08', '3.0', '20.59'),
  ('CHE', '21.0', '47.0', '32.0'),
  ('CHI', '15.91', '16.44', '28.43'),
  ('CHL', '0.44', '0.14', '0.37'),
  ('CHN', '3.0', '29.84', '0.0'),
  ('CYP', '4.62', '0.0', '13.31'),
  ('CZE', '4.22', '17.68', '25.5'),
  ('DEU', '18.23', '31.71', '47.83'),
  ('DNK', '18.99', '52.59', '27.27'),
  ('DZA', '1.0', '0.0', '8.0'),
  ('EGY', '7.0', '0.0', '12.5'),
  ('ESP', '16.45', '11.62', '16.84'),
  ('EST', '3.6', '51.37', '24.74'),
  ('FIN', '12.45', '47.92', '28.12'),
  ('FRA', '17.26', '34.7', '22.26'),
  ('GBR', '16.23', '31.38', '27.25'),
  ('HRV', '1.69', '0.0', '16.32'),
  ('HUN', '6.22', '14.14', '25.94'),
  ('IMN', '0.0', '25.0', '50.0'),
  ('IND', '18.0', '0.0', '5.0'),
  ('IRL', '6.0', '17.0', '33.0'),
  ('IRN', '12.0', '0.4', '5.0'),
  ('ISL', '2.86', '1.9', '55.81'),
  ('ITA', '17.6', '19.0', '25.9'),
  ('JPN', '0.4', '80.2', '4.9'),
  ('KOR', '1.0', '25.0', '58.0'),
  ('LBN', '15.0', '0.0', '8.0'),
  ('LKA', '5.0', '0.0', '12.79'),
  ('LTU', '10.15', '11.54', '22.92'),
  ('LUX', '19.66', '33.99', '28.37'),
  ('LVA', '5.48', '0.0', '21.23'),
  ('MAR', '1.0', '0.0', '8.0'),
  ('MCO', '0.0', '85.0', '5.4'),
  ('MDV', '7.0', '6.0', '0.0'),
  ('MHL', '6.0', '0.0', '30.8'),
  ('MKD', '0.1', '0.0', '0.18'),
  ('MLT', '0.0', '0.37', '6.69'),
  ('MYS', '1.0', '0.0', '17.5'),
  ('NLD', '27.1', '47.37', '24.61'),
  ('NOR', '16.69', '52.35', '26.16'),
  ('PAK', '2.0', '0.0', '8.0'),
  ('POL', '16.11', '13.24', '26.39'),
  ('PRT', '14.12', '20.68', '16.23'),
  ('PSE', '0.5', '0.0', '0.5'),
  ('QAT', '0.0', '4.0', '3.0'),
  ('ROU', '7.46', '2.37', '5.67'),
  ('SGP', '0.0', '37.0', '61.0'),
  ('SVK', '7.29', '10.71', '7.62'),
  ('SVN', '7.67', '17.06', '46.44'),
  ('SWE', '15.63', '51.2', '32.37'),
  ('SYR', '1.5', '0.0', '2.5'),
  ('TGO', '1.8', '0.0', '2.0'),
  ('THA', '0.0', '0.4', '19.1'),
  ('TUN', '5.0', '0.0', '4.0'),
  ('UKR', '0.0', '2.73', '3.2'),
  ('USA', '0.0', '12.8', '34.6'),
  ('VNM', '15.0', '0.0', '23.0');
  
  
  
  
  
  UPDATE treatment
  set compost_percent = NULL
WHERE compost_percent = 0;
  
UPDATE treatment
  set incineration_percent = NULL
WHERE incineration_percent = 0;
  
UPDATE treatment
  set recycling_percent = NULL
WHERE recycling_percent = 0;
  
UPDATE composition
  set organic_waste_pct = NULL
WHERE organic_waste_pct = 0;

UPDATE composition
  set glass_pct = NULL
WHERE glass_pct = 0;

UPDATE composition
  set metal_pct = NULL
WHERE metal_pct = 0;

UPDATE composition
  set other_pct = NULL
WHERE other_pct = 0;

UPDATE composition
  set paper_pct = NULL
WHERE paper_pct = 0;

UPDATE composition
  set plastic_pct = NULL
WHERE plastic_pct = 0;

