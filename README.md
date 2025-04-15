# 🗃️ Prison Management Database System 🚔

This is a relational database project created for the **Database Systems** course.  
The project models a real-world **prison management system**, supporting inmate tracking, visitation records, incident reports, and program participation.

---

## 📌 Project Scope

The main goal was to design and implement a normalized relational database that allows prison staff to:

- Track current and past **inmates** and their **sentences**
- Manage **prison cell assignments**, **visitation schedules**, and **personal belongings**
- Log **incidents** and associate prisoners with roles in each event
- Assign prisoners to **rehabilitation programs** and monitor progress

---

## 🧱 Technologies

- **SQL Server** (T-SQL)
- .sql files include:
  - `SQLQuery Creates.sql` – schema creation
  - `SQLQuery Inserts.sql` – sample data
  - `SQLQuery Deletes_Updates.sql` – update/delete operations
  - `Query1.sql`–`Query6.sql` – example queries for use cases
  - `SQLQuery Drops.sql` – full schema teardown

---

## 🧾 Entities Overview

- **Prisoners** – Identity and demographic data  
- **Stay** – Track each imprisonment period  
- **Sentences** – Legal judgment details per prisoner  
- **Prison Cells** & **Allocations** – Cell types, occupancy, and prisoner history  
- **Programs** – Resocialization offerings with status tracking  
- **Visits** – Scheduling and logging of prison visitations  
- **Visitors** – Metadata of all visitors  
- **Incidents** – Security-related events and prisoners’ roles  
- **Personal Items** – Confiscated belongings with return info

---

## 🔗 Key Relationships

- A prisoner has one or more **sentences** and **stays**  
- Each stay links to **prison cells**, **personal items**, **visits**, and **programs**  
- **Visitors** are linked to specific **visits**  
- **Incidents** are related to **stays** and include one or more **prisoner roles**

---

## 📂 Example Use Cases (Queries)

- Retrieve all data about a specific prisoner (joins across multiple entities)
- List of current stays only
- Incident reports and prisoner involvement
- Inmates in active rehabilitation programs
- Visit history and visitor relations

---

## 📝 Assumptions

- All data is up-to-date and entered correctly  
- Entities like prisoners or stays are **never deleted**, ensuring full history retention  
- Relationships are strictly defined to avoid ambiguity (e.g. a visit always links to a stay and visitor)

---

## ▶️ How to Use

1. Open `SQLQuery Creates.sql` to generate the schema  
2. Populate tables with `SQLQuery Inserts.sql`  
3. Run `Query1.sql` to `Query6.sql` to explore the system  
4. Use `SQLQuery Deletes_Updates.sql` for modifications  
5. Use `SQLQuery Drops.sql` to remove all tables (if needed)

---

## 📁 ERD & Report

The PDF report (`Database raport.pdf`) contains:
- Entity descriptions with attribute breakdowns
- Full ERD structure and relationship definitions
- Database use scenarios and expected query behaviors

