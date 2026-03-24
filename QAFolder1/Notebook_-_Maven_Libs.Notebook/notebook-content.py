# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "0d87a307-70be-4967-a45d-c113e49fab01",
# META       "default_lakehouse_name": "WebScraping",
# META       "default_lakehouse_workspace_id": "ef5a308a-663a-470c-8e73-55dce572f95c"
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!
from bs4 import BeautifulSoup
import requests
import json
import smtplib
import time
import datetime
from datetime import date

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

url = 'https://search.maven.org/solrsearch/select?q=junit&rows=20&wt=json'
headers = ({  })

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

page = requests.get(url, headers=headers)
page
# page.content

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

soup = BeautifulSoup(page.content,'html.parser')
site_json=json.loads(soup.text)
junit_count = site_json['response']['numFound']
# site_json
# junit_count

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

current_timestamp = datetime.datetime.now()
# current_timestamp

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

from pyspark.sql import Row
df = spark.createDataFrame([
    Row(DateTime = current_timestamp, Count = junit_count, Library = 'Junit')
])
# display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

delta_table_path = "Tables/Libs"
# data = spark.range(5,10) 
df.write.format("delta").mode("append").save(delta_table_path)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
