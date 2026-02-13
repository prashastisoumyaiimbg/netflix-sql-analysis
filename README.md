# netflix-sql-analysis
SQL analysis of 100k+ Netflix ratings using Joins, Aggregations, and Window Functions\
Netflix User Behavior & Movie Popularity Analysis
Project Overview
This project analyzes a dataset of 100,000+ Netflix ratings using MySQL. The goal was to transform raw data into business intelligence by identifying content trends and segmenting user engagement.
Key Skills Demonstrated
Data Integration: Linked movie metadata and ratings using Inner Joins to analyze quality vs. popularity.
Performance Metrics: Identified quality leaders (e.g., Immortal Beloved) and high-engagement hits (e.g., Something's Gotta Give) via Aggregations.
User Segmentation: Isolated Top 5 Power Users (led by User 2118461) to identify key drivers for recommendation algorithms.
Competitive Benchmarking: Applied Window Functions (RANK, PARTITION BY) to determine annual #1 films, such as What the #$! Do We Know!?* for 2004.
Dataset Description
The analysis was performed on two primary tables:
netflix_dataset_movie: Contains Movie IDs, Names, and Release Years.
netflix_dataset_rating: Contains User IDs, Movie IDs, and Ratings.
How to Run the Analysis
Load the provided .csv files into your MySQL instance.
Run the analysis.sql script to generate the insights report.
Business Value
This framework enables data-driven content licensing and user retention strategies by highlighting enduring "Rank 1" content and high-value user segments.
