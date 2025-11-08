# ☕ ABIC Coffee — Brazilian Coffee Mini-DB

**ABIC_coffee** is a small database project built using official data from the **ABIC — Brazilian Coffee Industry Association**.  
It aims to organize, clean, and query information about Brazilian coffee products and their certification levels.

---

## 🗂️ Project Overview

This project provides a structured **SQLite database** containing information on certified Brazilian coffees, including company names, product types, states of origin, and ABIC quality seals.  

It serves as a practical example for:
- Learning SQL and data modeling concepts;  
- Practicing data import and cleaning using Python and SQLite;  
- Exploring coffee certification categories in Brazil.

---

## 🧱 Database Structure

**Main table: `cafes`**

| Column | Type | Description |
|---------|------|-------------|
| `id` | INTEGER (PK) | Unique identifier |
| `empresa` | TEXT | Coffee producer or brand |
| `estado` | TEXT | Brazilian state of origin |
| `produto` | TEXT UNIQUE | Product name |
| `tipo` | TEXT | Product type (e.g., TM, GR) |
| `categoria` | TEXT | ABIC category (Superior, Gourmet, Traditional, etc.) |

---

## ⚙️ Data Import

The source dataset, **ProdutosAutorizadosABIC.csv**, was released by ABIC in Excel format.  
To import it into SQLite, save it as CSV and:

```sql
.mode csv
.separator ";"
.import --skip 1 ProdutosAutorizadosABIC.csv temp

