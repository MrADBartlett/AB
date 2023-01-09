select *
from [EU Vehicles]..[New Vehicles Types Europe Traditional];

Select *
from [EU Vehicles]..[New Vehicles Types Europe EV+]

Select Entity, Diesel, Year
From [EU Vehicles]..[New Vehicles Types Europe Traditional]
Where Diesel >100000

Select Entity, Gas, Year
From [EU Vehicles]..[New Vehicles Types Europe Traditional]
Where Gas >250000 AND Year >2012

Select Entity,
AVG (Diesel) as 'AVG Diesel Sales'
From [EU Vehicles]..[New Vehicles Types Europe Traditional]
Group by Entity

Select Entity,
SUM (Gas) as 'Total Gas Sales'
From [EU Vehicles]..[New Vehicles Types Europe Traditional]
Where year >2010
Group by Entity 

Select Entity,
AVG (Full_Mild_Hybrid) as 'AVG Full Mild Hybrid'
From [EU Vehicles]..[New Vehicles Types Europe EV+]
Group by Entity

Select Entity, MAX(Battery_Electric) as 'EV Sales'
From [EU Vehicles]..[New Vehicles Types Europe EV+]
Group by Entity
Order by 'EV Sales' desc

Select Entity, MIN(Battery_Electric) as 'EV Sales'
From [EU Vehicles]..[New Vehicles Types Europe EV+]
Where Year >2012
Group by Entity
Order by 'EV Sales' desc

Select Entity, MIN(Gas) as 'Gas Sales'
From [EU Vehicles]..[New Vehicles Types Europe Traditional]
Where Year >2012
Group by Entity
Order by 'Gas Sales' desc

Select *
From [EU Vehicles]..[New Vehicles Types Europe Traditional] T
Join [EU Vehicles]..[New Vehicles Types Europe EV+] E 
On T.Entity = E.Entity
And T.Year = E.Year

Select T.Entity, T.Year, T.Gas, E.Battery_Electric
From [EU Vehicles]..[New Vehicles Types Europe Traditional] T
Join [EU Vehicles]..[New Vehicles Types Europe EV+] E 
On T.Entity = E.Entity
And T.Year = E.Year
Where T.Year >2014
