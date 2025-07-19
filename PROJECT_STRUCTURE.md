# Project Structure Documentation

## 📁 Directory Organization

### Root Directory
```
Olist_Project/
├── README.md                    # Main project documentation
├── PROJECT_STRUCTURE.md         # This file - detailed structure explanation
├── requirements.txt             # Python dependencies
├── .gitignore                  # Git ignore rules
└── LICENSE                     # Project license (to be added)
```

### 📊 Data Directory (`data/`)
```
data/
├── raw/                        # Original raw data files (if any)
├── cleaned/                    # Cleaned and processed data files
│   ├── FINAL_Customers.csv
│   ├── FINAL_Geolocation.csv
│   ├── FINAL_Order_Items.csv
│   ├── FINAL_Order_Payment.csv
│   ├── FINAL_Orders.CSV
│   ├── FINAL_Products.csv
│   ├── FINAL_Sellers.csv
│   ├── Final_Product_Name_Translate.csv
│   ├── FINAL_olist_clean_analytics_table.csv
│   ├── FINAL_LARGE_OLIST_TABLE
│   └── olist_clean_analytics_table_by_postsql.csv
└── ml_dataset/                 # Machine learning ready datasets
    ├── Machine_learning_dataset_olist.csv
    └── Machine_learning_dataset_olist
```

### 📈 Notebooks Directory (`notebooks/`)
```
notebooks/
├── data_cleaning/              # Data cleaning and preprocessing notebooks
│   ├── customers.ipynb
│   ├── geolocation.ipynb
│   ├── order_items.ipynb
│   ├── order_payment.ipynb
│   ├── order_reviews.ipynb
│   ├── orders.ipynb
│   ├── product_category_name_translation.ipynb
│   ├── products.ipynb
│   └── sellers.ipynb
├── exploratory_analysis/        # EDA and visualization notebooks
│   └── joining tables.ipynb
└── ml_models/                  # Machine learning model notebooks
    └── customer_churn_prediction.ipynb
```

### 🗄️ SQL Directory (`sql/`)
```
sql/
├── table_creation.sql          # Database schema creation scripts
├── individual _table _queries.sql  # Table-specific queries
└── top 10 sql queries for olist.sql  # Top analysis queries
```

### 📊 Dashboards Directory (`dashboards/`)
```
dashboards/
├── olist dashboard Final.pdf   # Final dashboard report
└── images/                     # Dashboard screenshots and visualizations
    ├── final olist dashboard page1.png
    ├── OLIST dashboard page 2.png
    └── olist dashboard page 3.png
```

## 📋 File Descriptions

### Data Files
- **FINAL_*.csv**: Cleaned and processed data files for each table
- **Machine_learning_dataset_olist.csv**: Combined dataset ready for ML modeling
- **olist_clean_analytics_table_by_postsql.csv**: Analytics table created via PostgreSQL

### Notebooks
- **Data Cleaning Notebooks**: Individual notebooks for cleaning each table
- **joining tables.ipynb**: Notebook for combining cleaned tables
- **customer_churn_prediction.ipynb**: Main ML model for churn prediction

### SQL Files
- **table_creation.sql**: Database schema definitions
- **individual _table _queries.sql**: Queries for individual table analysis
- **top 10 sql queries for olist.sql**: Key business intelligence queries

### Dashboard Files
- **olist dashboard Final.pdf**: Comprehensive dashboard report
- **Dashboard Images**: Screenshots of key visualizations and insights

## 🔄 Workflow

1. **Data Cleaning**: Individual notebooks clean each table
2. **Data Integration**: Tables are joined and combined
3. **Exploratory Analysis**: SQL queries and visualizations
4. **Machine Learning**: Churn prediction model development
5. **Dashboard Creation**: Final insights and visualizations

## 📝 Notes

- Large CSV files are excluded from Git via .gitignore
- All notebooks include detailed documentation and comments
- SQL queries are organized by complexity and purpose
- Dashboard provides executive summary of key findings 