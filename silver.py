from pyspark.sql import SparkSession

# Create Spark session
spark = SparkSession.builder.appName("TableCopy").getOrCreate()

# Read tables from bronze folder's manual_data schema
bronze_df = spark.read.format("delta").load("/path_to_bronze_folder/manual_data")

# List distinct table names in the bronze manual_data schema
table_names = bronze_df.select("tableName").distinct().rdd.flatMap(lambda x: x).collect()

# Loop through each table and write it to silver folder's manual_data schema
for table_name in table_names:
    table_df = bronze_df.filter(f"tableName = '{table_name}'")
    table_df.write.format("delta").mode("append").save("/path_to_silver_folder/manual_data/{}".format(table_name))
