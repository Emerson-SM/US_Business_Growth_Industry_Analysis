--revisar si coincide la cantidad de datos
select count(*) from companies;

--revisar los id
select 
	count(*) as total_records,
	count(distinct id) as unique_id
from companies;

--valores nulos
select
    count(*) filter (where workers is null) as missing_workers,
    count(*) filter (where metro is null) as missing_metro,
    count(*) filter (where revenue is null) as missing_revenue,
    count(*) filter (where growth is null) as missing_growth
from companies;