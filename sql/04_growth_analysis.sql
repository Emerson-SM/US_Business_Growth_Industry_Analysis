--Las 10 empresas con mayor crecimiento.
select company, industry, growth, revenue, workers
from companies
order by growth desc
limit 10;

--El crecimiento promedio y mediano por industria.
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

--La relación entre crecimiento e ingresos.
select
    corr(growth, revenue) as growth_revenue_correlation
from companies;

--La relación entre crecimiento y cantidad de trabajadores.
select
    corr(growth, workers) as growth_workers_corr
from companies;