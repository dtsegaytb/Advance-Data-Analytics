use people;

Select count(distinct CompanyId) as 'Companies' from customer;

create table newCustomer 
(
select CustomerId, Title, FirstName, LastName, PositionId, StreetAddress, CityId, StateId, ZipCode, EmailAddress, CompanyId from customer);