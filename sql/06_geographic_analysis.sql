-- Number of companies by state
select
    state_l,
    count(*) as company_count
from companies
group by state_l
order by company_count desc;

-- Percentage of companies by state
select
    state_l,
    count(*) as company_count,
    round(
        count(*) * 100.0 / sum(count(*)) over (),2
    ) as percentage
from companies
group by state_l
order by company_count desc;


-- Top 10 cities by number of companies
select
    city,
    state_l,
    count(*) as company_count
from companies
group by city, state_l
order by company_count desc
limit 10;

-- Top 10 metropolitan areas
select
    metro,
    count(*) as company_count
from companies
where metro is not null
group by metro
order by company_count desc
limit 10;

-- Average and median growth by state
select
    state_l,
    count(*) as company_count,
    round(avg(growth), 2) as avg_growth,
    percentile_cont(0.5) within group (
        order by growth
    ) as median_growth
from companies
group by state_l
having count(*) >= 10
order by avg_growth desc;


