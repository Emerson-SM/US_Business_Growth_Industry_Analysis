# Data Directory

This directory contains the datasets used in the US Business Growth & Industry Analysis (2014) project.

## Folder Structure

- `raw/`: Original, unmodified dataset obtained from Tableau Public.
- `processed/`: Cleaned dataset prepared for analysis.

## Processed Dataset

**File:** `inc5000_2014_clean.csv`

- Records: 5,000 companies
- Columns: 13
- Missing values:
  - `workers`: 13
  - `metro`: 58
- Duplicate records: 0

The cleaning process removed six unnecessary metadata columns and converted zero values in the `workers` column into missing values (`NaN`). No company records were removed.

The original dataset remains unchanged.