# US Business Growth & Industry Analysis (2014)

## Project Overview

This project explores the 2014 Inc. 5000 dataset to identify business growth patterns, industry trends, revenue distribution, employment characteristics, and geographic concentration among the fastest-growing private companies in the United States.

The goal is to transform raw business data into meaningful insights through data exploration, cleaning, statistical analysis, SQL queries, and interactive data visualization.

The project combines Python, PostgreSQL, and Power BI to demonstrate an end-to-end data analysis workflow.

## Objectives

The analysis focuses on answering the following business questions:

- Which industries have the largest number of companies?
- Which industries generate the highest total revenue?
- Is there a relationship between company revenue and growth rate?
- Which industries exhibit the highest average and median growth?
- How is employment distributed across industries?
- Which states have the highest concentration of companies?
- How does revenue compare to the number of employees across industries?

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data exploration and analysis |
| Pandas | Data manipulation and cleaning |
| NumPy | Numerical operations |
| Matplotlib & Seaborn | Data visualization |
| PostgreSQL | Data storage and SQL analysis |
| Power BI | Interactive dashboards |
| Jupyter Notebook | Analysis documentation |
| Git & GitHub | Version control and project management |

## Dataset

**Source:** [Inc. 5000 Company List 2014 – Tableau Sample Data](https://public.tableau.com/app/sample-data/Data%20Set-%20Inc5000%20Company%20List_2014.csv)

The dataset contains information about 5,000 companies included in the 2014 Inc. 5000 ranking.

It includes variables such as:

- Company name and ranking
- Number of employees
- Revenue
- Four-year revenue growth
- Industry classification
- State and city
- Metropolitan area
- Number of years on the Inc. 5000 list

The dataset is historical and represents a selected ranking of high-growth private companies, rather than the entire U.S. business population.

## Project Structure

```text
inc-5000-business-analysis/
│
├── data/
│   ├── raw/
│   │   └── inc5000_2014.csv
│   │
│   ├── processed/
│   │   └── inc5000_2014_clean.csv
│   │
│   └── README.md
│
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_business_analysis.ipynb
│   └── 04_industry_analysis.ipynb
│
├── sql/
│   ├── 01_schema.sql
│   ├── 02_data_import.sql
│   ├── 03_data_validation.sql
│   ├── 04_growth_analysis.sql
│   ├── 05_industry_analysis.sql
│   └── 06_geographic_analysis.sql
│
├── powerbi/
│   └── dashboards/
│       └── inc5000_analysis.pbix
│   └── figures/
|       └── Business_Overview_Dashboard.png
│
├── README.md
└── requirements.txt
```

## Data Analysis Workflow

### 1. Data Exploration

The initial exploration examines the dataset structure, column types, descriptive statistics, missing values, and distributions.

The purpose is to understand the data before making any transformations or analytical decisions.

### 2. Data Cleaning

The cleaning process includes:

- Removing unnecessary metadata columns.
- Identifying missing values.
- Checking duplicate records and company identifiers.
- Converting zero employee counts into missing values where appropriate.
- Preparing a cleaned dataset for subsequent analysis.

The original dataset contains 5,000 records and 19 columns. After removing unnecessary metadata, the cleaned dataset contains 5,000 records and 13 analytical columns.

### 3. Exploratory and Business Analysis

Python is used to investigate:

- Top-performing companies by revenue growth.
- Largest companies by revenue and workforce.
- Correlations between growth, revenue, and employees.
- Growth differences across industries.
- Geographic distribution of companies.

### 4. Industry Analysis

The industry analysis focuses on:

- Company distribution by industry.
- Total, average, and median revenue.
- Average and median growth rates.
- Employment distribution.
- Revenue per employee as a descriptive business metric.

### 5. SQL Analysis

PostgreSQL is used to store and query the cleaned dataset.

SQL scripts reproduce and extend key analytical questions using:

- Aggregations and grouping.
- Sorting and filtering.
- Common table expressions and window functions where appropriate.
- Median calculations.
- Correlation analysis.

### 6. Data Visualization

Power BI is used to develop interactive dashboards that communicate the main findings through charts, KPI cards, and filters.

The planned report includes:

- **Business Overview:** General business indicators and company comparisons.
- **Industry Analysis:** Revenue, growth, and employment by industry.
- **Geographic Analysis:** Company distribution across U.S. states and metropolitan areas.

The dashboard is currently under development.

## Key Findings

The preliminary analysis has identified several interesting patterns:

- IT Services represents the largest industry group, with 733 companies (14.66% of the dataset).
- Health leads in total industry revenue, with approximately $22.02 billion.
- Energy has the highest average revenue per company, although its median is considerably lower, indicating the influence of large companies.
- Consumer Products & Services has the highest average growth rate, while Government Services has a higher median growth rate.
- California leads the geographic distribution with 694 companies, representing 13.88% of the dataset.
- The correlation between revenue and growth is approximately 0.0017, indicating virtually no linear association in this sample.
- The correlation between workforce size and growth is approximately -0.0126, also indicating virtually no linear association.

These findings describe the selected 2014 Inc. 5000 companies and should not be interpreted as representative of all businesses.

## Limitations

Several limitations must be considered when interpreting the results:

- The dataset represents a single annual ranking.
- It contains selected high-growth companies, not a random sample of U.S. businesses.
- The dataset does not provide profit, operating costs, or detailed financial statements.
- Missing employee information affects some workforce-related calculations.
- Correlation does not establish causation.
- Revenue per employee is a descriptive ratio and should not be interpreted as a direct measure of productivity or profitability.

## Installation & Usage

Clone the repository:

```bash
git clone https://github.com/Emerson-SM/inc-5000-business-analysis.git
```

Navigate to the project directory:

```bash
cd inc-5000-business-analysis
```

Create and activate a virtual environment:

```bash
python -m venv venv
```

Install the required dependencies:

```bash
pip install -r requirements.txt
```

Open the Jupyter notebooks:

```bash
jupyter notebook
```

To reproduce the SQL analysis, create a PostgreSQL database and execute the SQL scripts in the appropriate order.

To explore the dashboard, open the `.pbix` file using Power BI Desktop.


## Author

**Emerson Solano**

Aspiring Data Analyst interested in data analysis, business intelligence, and data-driven decision-making.

- GitHub: [Emerson-SM](https://github.com/Emerson-SM)

---