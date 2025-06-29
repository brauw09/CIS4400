# Project Readme

## A. Problem Context

	The project approaches the task of making analytical decisions about home purchases in Florida
by examining major variables such as home prices, cost of living, crime rates, and school ratings.
Buyers frequently have difficulty accessing and comparing data across counties and ZIP codes.
So by gathering these factors in an interactive Power BI dashboard, the project facilitates buyers 
to explore and analyze home purchase data based on their priorities, facilitating smarter, decisions based on data.

## B. Requirements

### 1. Requirements Analysis
- Business Personas
  - Roles
    - Data Analyst: Responsible for data analysis and reporting.
    - Homebuyer
    - Dashboard Developer: Design the dashboard in PowerBI
    - IT Project Manager: Overseas warehouse implementation.
    - Data Warehouse Specialist: Implements and manages the warehouse 
    - Big Data Specialist: Manages the big data technologies such as the Microsoft ecosystem 

- Risks
  - Identify potential risks and challenges.
    - Incomplete data 
    - Data inconsistency 
    - Cybersecurity concerns 
    - Can it integrate into our existing IT infrastructure or will we have to get people specifically for these softwares 
    - Employees could steal data, especially if it’s centralized into a data warehouse 

- Costs
  - Estimate the costs associated with the project.
      Software licenses: $200 monthly 
      Employees to manage these: $10k monthly 

- Timeline
  - **Week 1: Requirements Gathering & Planning**
    	- (1. Define project goals. 2. Draft business and functional requirements.)
  - **Week 2: Data Collection, Extraction & Cleaning**
    	- (1. Extract housing data and storage in Azures. 2.Clean and merge datasets by ZIP/county)
  - **Week 3: Data Analysis & Modeling Design**
    	- (1. Analyze key metrics (avg & media price, etc.).  2. Create comparison logic between counties/ZIPs)
  - **Week 4: Methodology, Implementation & Visualization**
    	- (1. Build dashboard (PowerBI / Python). 2. Visualize results using maps and charts)
  - **Week 5: Final Presentation & Delivery**
    	- ( 1.Finalize report and README documentation. 2. Upload completed files and visuals to GitHub)

- Benefits
  - Expected benefits of the project.
    - A reliable forecast House Purchases in Florida or other State
    - Consistent data and improved data accuracy 
    - Can create a personalized dashboard for the different department heads with the data that’s relevant to them 
    - Data warehouse gives decision makers enhanced decision-making capabilities


### 2. Business Requirements
- Business goals and objectives the project aims to achieve
 - The avg & median price for each county
 - The avg & medium price for each neighborhood (zipCode)
 - Home Purchases in Florida

### 3. Functional Requirements
- We will use a PowerBI which will allow us to select (Taking into account the year)
  - Number of transactions per county
  - Number transaction per zip code
  - Avg, median price for each county
  - Avg median price for each zip code

- We will have two maps 
  - One with all the county the numbers mentioned above meaning (number of transactions, avg, median)
  - The second one with all the zipcode with the number of transaction and the avg median 

### 4. Data Requirements
Outline the types and sources of data required for the project.
	https://www.dolthub.com/repositories/dolthub/us-housing-price...
 

## C. Architecture

### 1. Information Architecture
- Describe the structure and flow of the information.
- Include diagrams or images if necessary. 
  - [Information Architecture Diagram](https://github.com/brauw09/CIS4400/blob/main/docs/diagram/information_arc.png)

### 2. Data Architecture
- Defines how data is sourced, ingested, processed, stored, and accessed during the project.
     -	Data Sources- Azure-hosted CSV file 
     -	Data Ingestion- Data is extracted using Python scripts to download CSV files and place them in Azure blob storage.
     -  Data Cleaning & Transformation- Null value handling, normalization and filtering by Florida ZIPs/counties.
     -	Data Storage- Processed data is saved into an Azure Warehouse
     -	Data Modeling- Star schema dimensional modeling, including facts and dimensions. 
     -	BI Layer / Consumption- Power BI connects directly to the warehouse via Azure SQL.
     -	[Data Architecture Diagram](docs/diagram/Data Architecture.png)

### 3. Technical Architecture
- Define the software and hardware systems involved in the project.
   - **Data Sources**: External data from Dolthun and a shared azure csv data file.
   - **Data Integration**: We used for this project Python to extract, clean and merge data.
     To ensure a consistency and prepares the data for the analysis.
   - **Data Warehouse & Modeling**: We structured the data using a dimensional model created in DBschema.
   - **Business Intelligence (BI)**: We used Power BI tool to create the interactive dashboards/maps that
     are going to visualize the key metrics (avg/media prices, etc..) for both county and Zip code. 

### 4. Product Architecture
- Provide an overview of the product's overall structure.
- Include any major components and how they interact.

## D. Modeling

### 1. Dimensional Modeling
- Explain the dimensional modeling
- Example:
  - **Facts**: describe all the facts
  - **Dimension**: include all dimensions

*Include any necessary images or diagrams to clarify the architecture.*
  - ![Dimensional Modeling Diagram](path_to_image)


### 2. Medallion Architecture
- Explain the medallion architecture and its stages: Bronze, Silver, Gold.
- Example:
  - **Bronze**: Raw, unprocessed data
  - **Silver**: Cleaned and enriched data
  - **Gold**: Aggregated, ready-for-use data

*Include any necessary images or diagrams to clarify the architecture.*
  - ![Medallion Architecture Diagram](path_to_image)

## E. Methodology and Implementation
Describe the methodology used in the project and the steps followed during implementation.

- Outline the approach taken (e.g., Agile, Waterfall).
- Describe key phases, such as development, testing, deployment.
- Example:
  - Sprint 1: Setup and Data Collection
  - Sprint 2: Data Processing and Model Building
- Metadata Management
  - Data Dictionary
  - Mapping Sources and Target Systems
  - List of all functions
	- Function 1 
	- Function 2
	- Function 3
- ETL Extract Load Transform
- ELT Extract Transform Load
- Tools 

## F. Visualization
Provide details of the visualizations created for the project.

- Include charts, graphs, and any other visual representation of the data.
  - ![Visualization Example](path_to_image)
- Mention any libraries or tools used for visualization (e.g., Matplotlib, Power BI).

## G. Insights
Highlight any key insights gained from the project.

- Provide an overview of what was learned or discovered through data analysis.
- Example:
  - High correlation between customer satisfaction and response time.
  - Significant opportunity for cost reduction in supply chain operations.

## H. Conclusion
Summarize the outcomes of the project and any potential next steps.

- What was achieved?
- How can the results be used moving forward?
- Example:
  - The project successfully reduced costs by 20% through process automation.
  - Future work may include expanding the solution to new departments.

## I. References
- Provide a list of all references used in the project, formatted according to MLA style.

1. Author Last Name, First Name. *Title of Book*. Publisher, Year.
2. "Title of Article." *Name of Journal*, vol. 1, no. 1, Year, pp. 1-10.
3. *Title of Website*. Website Publisher, Year, URL.

---

*Replace placeholders like "path_to_image" with actual file paths or URLs.*
