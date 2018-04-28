create table company
(
  company_name varchar2(100) not null,
  description varchar2(500),
  constraint pk_company_name primary key (company_name)
);

insert into company (company_name, description)
          select 'Wal-Mart Stores, Inc', 'this is description for company Wal-Mart Stores, Inc' from dual
union all select 'Exxon Mobil Corporation', 'this is description for company Exxon Mobil Corporation' from dual
union all select 'Chevron Corporation', 'this is description for company Chevron Corporation' from dual
union all select 'Berkshire Hathaway Inc.', 'this is description for company Berkshire Hathaway Inc.' from dual
union all select 'Apple Inc.', 'this is description for company Apple Inc.' from dual
union all select 'General Motors Company', 'this is description for company General Motors Company' from dual
union all select 'Phillips 66', 'this is description for company Phillips 66' from dual
union all select 'General Electric Company', 'this is description for company General Electric Company' from dual
union all select 'Ford Motor Company', 'this is description for company Ford Motor Company' from dual
union all select 'CVS Health', 'this is description for company CVS Health' from dual
union all select 'McKesson Corporation', 'this is description for company McKesson Corporation' from dual
union all select 'ATnT', 'this is description for company ATnT' from dual
union all select 'Valero Marketing and Supply Company', 'this is description for company Valero Marketing and Supply Company' from dual
union all select 'UnitedHealth Group', 'this is description for company UnitedHealth Group' from dual
union all select 'Verizon Communications Inc.', 'this is description for company Verizon Communications Inc.' from dual
union all select 'AmerisourceBergen', 'this is description for company AmerisourceBergen' from dual
union all select 'Federal National Mortgage Association (Fannie Mae)', 'this is description for company Federal National Mortgage Association (Fannie Mae)' from dual
union all select 'Costco Wholesale Corporation', 'this is description for company Costco Wholesale Corporation' from dual
union all select 'Hewlett-Packard', 'this is description for company Hewlett-Packard' from dual
union all select 'The Kroger Co.', 'this is description for company The Kroger Co.' from dual
union all select 'JPMorgan Chase n Co.', 'this is description for company JPMorgan Chase n Co.' from dual
union all select 'Express Scripts Holding Company', 'this is description for company Express Scripts Holding Company' from dual
union all select 'International Business Machines Corporation', 'this is description for company International Business Machines Corporation' from dual
union all select 'Marathon Petroleum Company', 'this is description for company Marathon Petroleum Company' from dual
union all select 'Cardinal Health', 'this is description for company Cardinal Health' from dual
union all select 'The Boeing Company', 'this is description for company The Boeing Company' from dual
union all select 'Citigroup Incorporated', 'this is description for company Citigroup Incorporated' from dual
union all select 'Wells Fargo n Company', 'this is description for company Wells Fargo n Company' from dual
union all select 'Microsoft Corporation', 'this is description for company Microsoft Corporation' from dual
union all select 'The Procter n Gamble Company', 'this is description for company The Procter n Gamble Company' from dual
union all select 'The Home Depot, Inc', 'this is description for company The Home Depot, Inc' from dual
union all select 'Archer Daniels Midland Company', 'this is description for company Archer Daniels Midland Company' from dual
union all select 'Walgreens', 'this is description for company Walgreens' from dual
union all select 'Target Corporation, Inc.', 'this is description for company Target Corporation, Inc.' from dual
union all select 'Johnson n Johnson', 'this is description for company Johnson n Johnson' from dual
union all select 'Anthem, Inc.', 'this is description for company Anthem, Inc.' from dual
union all select 'MetLife Inc.', 'this is description for company MetLife Inc.' from dual
union all select 'Google, Inc.', 'this is description for company Google, Inc.' from dual
union all select 'State Farm Insurance', 'this is description for company State Farm Insurance' from dual
union all select 'Freddie Mac', 'this is description for company Freddie Mac' from dual
union all select 'Comcast Corporation', 'this is description for company Comcast Corporation' from dual
union all select 'PepsiCo, Inc.', 'this is description for company PepsiCo, Inc.' from dual
union all select 'American International Group (AIG)', 'this is description for company American International Group (AIG)' from dual
union all select 'United Parcel Service, Inc.', 'this is description for company United Parcel Service, Inc.' from dual
union all select 'The Dow Chemical Company', 'this is description for company The Dow Chemical Company' from dual
union all select 'Aetna, Inc.', 'this is description for company Aetna, Inc.' from dual
union all select 'Lowe s Companies, Inc.', 'this is description for company Lowe s Companies, Inc.' from dual
union all select 'ConocoPhillips', 'this is description for company ConocoPhillips' from dual
union all select 'Energy Transfer Partners, L.P.', 'this is description for company Energy Transfer Partners, L.P.' from dual
union all select 'Caterpillar Inc.', 'this is description for company Caterpillar Inc.' from dual
union all select 'Prudential Financial, Incorporated', 'this is description for company Prudential Financial, Incorporated' from dual
union all select 'Pfizer Incorporated', 'this is description for company Pfizer Incorporated' from dual
union all select 'The Walt Disney Company', 'this is description for company The Walt Disney Company' from dual
union all select 'Humana Inc.', 'this is description for company Humana Inc.' from dual
union all select 'Enterprise Products Partners L.P.', 'this is description for company Enterprise Products Partners L.P.' from dual
union all select 'Cisco Systems, Inc.', 'this is description for company Cisco Systems, Inc.' from dual
union all select 'SYSCO Corporation', 'this is description for company SYSCO Corporation' from dual
union all select 'Ingram Micro Inc.', 'this is description for company Ingram Micro Inc.' from dual
union all select 'The Coca-Cola Company', 'this is description for company The Coca-Cola Company' from dual
union all select 'Lockheed Martin Corporation', 'this is description for company Lockheed Martin Corporation' from dual
union all select 'FedEx Corporation', 'this is description for company FedEx Corporation' from dual
union all select 'Johnson Controls, Inc.', 'this is description for company Johnson Controls, Inc.' from dual
union all select 'Plains All American Pipeline, L.P.', 'this is description for company Plains All American Pipeline, L.P.' from dual
union all select 'World Fuel Services Corporation', 'this is description for company World Fuel Services Corporation' from dual
union all select 'CHS, Inc.', 'this is description for company CHS, Inc.' from dual
union all select 'American Airlines', 'this is description for company American Airlines' from dual
union all select 'Merck n Co., Inc.', 'this is description for company Merck n Co., Inc.' from dual
union all select 'Best Buy Co. Inc.', 'this is description for company Best Buy Co. Inc.' from dual
union all select 'Delta Air Lines, Inc.', 'this is description for company Delta Air Lines, Inc.' from dual
union all select 'Honeywell', 'this is description for company Honeywell' from dual
union all select 'Honeywell International Inc.', 'this is description for company Honeywell International Inc.' from dual
union all select 'HCA Holdings, Inc.', 'this is description for company HCA Holdings, Inc.' from dual
union all select 'Goldman Sachs', 'this is description for company Goldman Sachs' from dual
union all select 'Andeavor, Inc.', 'this is description for company Andeavor, Inc.' from dual
union all select 'Liberty Mutual Insurance Company', 'this is description for company Liberty Mutual Insurance Company' from dual
union all select 'United Continental Holdings	0', 'this is description for company United Continental Holdings	0' from dual
union all select 'New York Life Insurance Company', 'this is description for company New York Life Insurance Company' from dual
union all select 'Oracle Corporation', 'this is description for company Oracle Corporation' from dual
union all select 'Morgan Stanley', 'this is description for company Morgan Stanley' from dual
union all select 'Tyson Foods, Inc.', 'this is description for company Tyson Foods, Inc.' from dual
union all select 'Safeway, Inc.', 'this is description for company Safeway, Inc.' from dual
union all select 'Nationwide Mutual Insurance Company', 'this is description for company Nationwide Mutual Insurance Company' from dual
union all select 'John Deere Company', 'this is description for company John Deere Company' from dual
union all select 'DuPont', 'this is description for company DuPont' from dual
union all select 'American Express Company', 'this is description for company American Express Company' from dual
union all select 'Allstate Insurance Company', 'this is description for company Allstate Insurance Company' from dual
union all select 'CIGNA Corporation', 'this is description for company CIGNA Corporation' from dual
union all select 'Mondelez International Inc', 'this is description for company Mondelez International Inc' from dual
union all select 'TIAA', 'this is description for company TIAA' from dual
union all select 'INTL FCStone Inc.', 'this is description for company INTL FCStone Inc.' from dual
union all select 'Massachusetts Mutual Financial Group', 'this is description for company Massachusetts Mutual Financial Group' from dual
union all select 'DIRECTV', 'this is description for company DIRECTV' from dual
union all select 'Halliburton Company', 'this is description for company Halliburton Company' from dual
union all select '21st Century Fox', 'this is description for company 21st Century Fox' from dual
union all select '3M Company', 'this is description for company 3M Company' from dual
union all select 'Sears Holdings Corporation', 'this is description for company Sears Holdings Corporation' from dual
union all select 'general Dynamics Mission Systems', 'this is description for company general Dynamics Mission Systems' from dual
union all select 'General Dynamics Corporation', 'this is description for company General Dynamics Corporation' from dual
union all select 'Publix Super Markets, Inc.', 'this is description for company Publix Super Markets, Inc.' from dual
union all select 'Philip Morris International', 'this is description for company Philip Morris International' from dual;

commit;

--drop table company;

create table operation
(
  company_name varchar2(50) not null,
  company_name_client varchar2(50) not null,
  "period" number,
  
  constraint fk_company_name
    foreign key (company_name)
    references company(company_name),
  constraint fk_company_name_client
    foreign key (company_name_client)
    references company(company_name)
);