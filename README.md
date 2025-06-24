# 🚇 Metro System Analytics using MySQL

## 🧩 The Challenge

Metro systems are growing fast—but making sense of their data isn't always easy.  
City planners, analysts, and transit teams often struggle to answer simple yet important questions:

- How many stations does each metro line have?
- How far apart are the stations?
- Which lines have grown the fastest?
- What does the expansion look like over time?

Without data analysis, planning new routes or improving service becomes guesswork.

---

## 💡 The Solution

This project uses **MySQL** to perform powerful analytics on metro system data—helping uncover trends, patterns, and gaps.

By writing SQL queries, we extract meaningful insights through:

- 📊 **Descriptive Analytics** — Understand the current structure of metro lines
- 📅 **Temporal Analytics** — Track how the system has expanded over time

---

## 🔍 What You’ll Learn

### Descriptive Analysis:
- Number of stations per metro line  
- Average distance between consecutive stations  
- Lines with the most or fewest stations  
- Estimated total length of each line

### Temporal Analysis:
- Number of stations opened each year  
- Cumulative station openings over time  
- Lines with the most recently opened stations

---

## 🗂 Dataset Overview

This dataset contains information for each metro station, including its location, line, sequence, and opening date.

| Column               | Description                                          |
|----------------------|------------------------------------------------------|
| `station_id`         | Sequence/order of the station on its metro line     |
| `station_number`     | Unique identifier for each station                  |
| `stationName`        | Name of the metro station                           |
| `distFromFristStation` | Distance from the first station on the line (km/mi) |
| `metroLine`          | Name of the metro line the station belongs to       |
| `Opened`             | Date the station was opened                         |
| `Layout`             | Layout/structure details of the station             |
| `Latitude`           | Latitude coordinate of the station                  |
| `Longitude`          | Longitude coordinate of the station                 |

---

## 🛠️ Technology

- **MySQL 8.0+**  
  This version is required for advanced features like window functions (e.g. `SUM() OVER()`).

---

## 🚀 How to Use

1. Import your metro station dataset into a **MySQL** database.
2. Use the provided SQL queries to:
   - Explore station counts and distances
   - Track station openings by year
   - Analyze network growth over time

---

## ✅ Outcome

With just SQL, this project helps turn metro system data into:
- Visual insights
- Strategic recommendations
- Better decisions for urban planning and transit development

---

*Simple queries. Powerful insights.* 📈
