# University Data Exploratory Analysis



## Overview
This repository contains an exploratory data analysis (EDA) of university-related datasets. It includes:
- Data on North American universities (rankings, endowments, staff, students, tuition, etc.) from an Excel file, with cleaning and queries in SQL, and visualizations in Tableau.
- Admissions data for universities and vocational schools in Russia (2014-2023), analyzed using Python in a Jupyter notebook.

The analysis explores key metrics like student numbers, applications, professions, academic staff, and more. Insights include top universities by various criteria and trends in educational professions.


## Datasets
- **North American Universities**: Sourced from `Universities.xlsx` (multiple sheets with rankings by endowment, establishment year, staff, students, tuition, etc.) and referenced in `Universities.sql` and `Universities.twb`.
  - Key columns: Rank, Name, Country, Established, Academic Staff, Number of Students, Minimum Tuition Cost, Volumes in the Library, Endowment.
  - Total entries: ~200 universities (primarily US and Canada).
- **Russian University Admissions (2014-2023)**: Analyzed in `university.ipynb`. Includes education levels, degrees, tuition types, branches of science, professions, applications, and student numbers.
  - Key columns: Education Level, Degree, Tuition Fees, Branches of Science, Group of Professions, Year, Number of Applications, Number of Students.
  - Focus: Trends in professions like Economics, Jurisprudence, IT, etc.

Data sources are not explicitly linked but appear to be aggregated from public rankings (e.g., similar to QS or Times Higher Education).



## Key Findings
### North American Universities (from SQL Queries)
- **Top 10 by Academic Staff**: University of California, San Diego (10,810), New York University (9,835), etc.
- **Top 10 by Students**: Grand Canyon University (101,816), Liberty University (96,709), etc.
- **Oldest 10**: Harvard (1636), College of William & Mary (1693), Yale (1701), etc.
- **Country Breakdown**: 177 US, 23 Canada.
- Trends: High-endowment unis like Harvard ($50.7B) correlate with large libraries and staff.

### Russian Admissions (from Notebook)
- **Education Levels**: Higher Education dominates.
- **Degrees**: Bachelor's is most common.
- **Tuition Types**: Scholarship/tuition-free is prevalent.
- **Top Professions by Students (Overall)**: Economics and Management, Jurisprudence, Education Sciences.
- **2020 Insights**:
  - Most Students: Economics and Management (295,897), Jurisprudence (208,383).
  - Most Applications: Similar trends, with IT and Engineering rising.
- Branches: Humanities, Engineering, and Natural Sciences lead.

Use tables for clarity:

| Top Professions by Students (2020) | Total Students |
|------------------------------------|----------------|
| Economics and Management           | 295,897       |
| Jurisprudence                      | 208,383       |
| Education Sciences and Pedagogy    | 170,055       |
| ... (truncated)                    | ...           |

## Visualizations
- **Tableau Workbook (`Universities.twb`)**: Includes sheets like:
  - Sheet 9: Endowment rankings.
  - Sheet 7: Staff and students.
  - Embed or view on Tableau Public (upload if needed): [Link to Tableau Viz](https://public.tableau.com/views/YourViz).
- **Notebook Plots**: Add matplotlib/seaborn for bar charts of professions (e.g., `most_students.plot(kind='bar')`).

Example Thumbnail from Tableau:
![Sheet 6 Thumbnail](https://via.placeholder.com/192x192?text=Tableau+Sheet+6) <!-- Replace with base64 or link -->

## Folder Structure
```
university-eda/
├── Universities.xlsx       # North American data (multi-sheet Excel)
├── university.ipynb        # Python EDA on Russian admissions
├── Universities.twb        # Tableau visualizations
├── Universities.sql        # SQL cleaning and queries
└── README.md               # This file

MIT License - Free to use and modify.
