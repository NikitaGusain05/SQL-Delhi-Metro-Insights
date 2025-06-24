🚇 Metro System Analytics using MySQL

🧩 The Challenge
Metro systems constantly expand, but the data behind them often sits unused.
City planners and analysts need answers to questions like:

Which lines have the most or fewest stations?

How far apart are stations on each line?

How fast is the metro network growing year by year?

Without proper analysis, planning future expansions or improving current operations becomes guesswork.

💡 The Solution
This project uses MySQL to turn raw metro station data into clear, actionable insights.

We apply:

📊 Descriptive Analytics — to understand the current metro layout

📅 Temporal Analytics — to track how the network has grown over time

All done through simple, powerful SQL queries.

🔍 What You’ll Learn
Descriptive:
Station count per line

Average spacing between stations

Longest and shortest lines

Total length of each line

Temporal:
Stations opened per year

Network growth over time

Lines with the newest stations

🗂 Dataset Overview
Column	Description
station_id	Station order on the line
station_number	Unique station ID
stationName	Station name
distFromFristStation	Distance from first station
metroLine	Metro line name
Opened	Station opening date
Layout	Station layout info
Latitude / Longitude	Location coordinates

🛠 Tech Stack
MySQL 8.0+ (uses window functions for advanced analytics)

✅ Outcome
By the end, you'll be able to:

Analyze metro systems with SQL

Visualize growth trends

Support smart planning with data

From raw data to smart insights — all with SQL. 🛤️📈
