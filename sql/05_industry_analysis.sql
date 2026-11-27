-- cantidad de empresas por industria
select
    industry,
    count(*) as company_count
from companies
group by industry
order by company_count desc;

-- Ingresos totales, promedio y mediano por industria.
select
    industry,
    count(*) as company_count,
    round(avg(revenue), 2) as avg_revenue,
    percentile_cont(0.5) within group (
        order by revenue
    ) as median_revenue
from companies
group by industry
order by avg_revenue desc;

--Crecimiento promedio y mediano por industria.
select
    industry,
    count(*) as company_count,
    round(avg(growth), 2) as avg_growth,
    percentile_cont(0.5) within group (
        order by growth
    ) as median_growth
from companies
group by industry
order by avg_growth desc;

--Cantidad total y promedio de trabajadores por industria.
select
    industry,
    count(workers) as companies_with_worker_data,
    sum(workers) as total_workers,
    round(avg(workers), 2) as avg_workers,
    percentile_cont(0.5) within group (
        order by workers
    ) as median_workers
from companies
group by industry
order by total_workers desc;

--Ingresos por trabajador por industria.
select
    industry,
    count(workers) as companies_with_worker_data,
    sum(revenue) as total_revenue,
    sum(workers) as total_workers,
    round(
        sum(revenue) / nullif(sum(workers), 0),2
    ) as revenue_per_worker
from companies
where workers is not null
group by industry
order by revenue_per_worker desc;