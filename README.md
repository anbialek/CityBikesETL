# MEL city bikes ETL

## Objectif du projet
Ce projet présente la création d’un pipeline ETL basé sur le jeu de données *detaMEL/Lille Metropole Open Data*.

Le projet illustre l’ensemble du cycle de vie d’un pipeline de données, depuis l’extraction et le nettoyage des données brutes jusqu’aux transformations réalisées avec Talend Open Studio (distribué via Talaxie DI) et au chargement dans la base de données PostgreSQL.

## Technologies utilisées
- Python
- Pandas
- Jupyter Notebook
- Docker
- PostgreSQL
- Talend Open Studio (distribué via Talaxie DI)


## Description du dataset
- Ilévia - *Comptages vélos depuis 2013*, dataMEL, [link](https://data.lillemetropole.fr/catalogue/dataset/fb7cf2fb-9466-48eb-a141-3869a4c1860b)
- Ilévia -*Populations des communes et de la MEL*, dataMEL, [link](https://data.lillemetropole.fr/catalogue/dataset/1106c6dc-a5ec-4eb8-a4e0-9cc813a2aeda)
- Ilévia -*Communes et communes associées de la Métropole Européenne de Lille*, dataMEL, [link](https://data.lillemetropole.fr/catalogue/dataset/25e38054-3194-46ab-ab88-f2b144ef26ed)

Ces jeux de données sont mis à disposition sous la **Licence Ouverte Etalab 2.0**.  
Ils ont été téléchargés en **3 décembre 2025**.


## Étapes réalisées
- Nettoyage et validation des données  
- Conception d’un schéma en étoile 
- Création d’une base de données (**mini data warehouse**)  
- Mise en œuvre du processus ETL avec Talend Open Studio (distribué via Talaxie DI)

## Instructions pour exécuter le notebook
1. Cloner le repo :
```bash
git clone https://github.com/anbialek/CityBikesETL.git
```
2. Installer les dépendances :
```bash
pip install -r requirements.txt
```
3. Ouvrir les notebooks Jupyter nécessaires :
```bash
jupyter notebook
```
---

### 🇬🇧 Summary (for non-French readers)

This project simulates an ETL process, covering:
- Initial exploratory data analysis with Pandas and Jupyter Notebook
- Star schema design
- Dataset preparation, including splitting into fact and dimension tables
- Data cleaning and validation with Talend Open Studio (Talaxie DI)
- Building a mini data warehouse in PostgreSQL

