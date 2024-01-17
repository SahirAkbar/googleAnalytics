from pyspark.sql import SparkSession

# Create a Spark session
spark = SparkSession.builder.appName("GenesysTableProcessor").getOrCreate()

# Load configuration table
config_table = spark.read.format("your_data_source").option("schema", "genesis").option("table", "configuration_table").load()

# Filter active tables
active_tables = config_table.filter(config_table.active == True)

# Loop through active tables and fetch them from Genesis
for row in active_tables.rdd.collect():
    schema_name = row.schema_name
    table_name = row.table_name

    # Fetch table from Genesis, replace the following line with your logic
    genesis_table = spark.read.format("your_data_source").option("schema", schema_name).option("table", table_name).load()

    # Save the fetched table to bronze.genesys.table_name
    genesis_table.write.format("your_data_sink").option("schema", "bronze").option("table", f"genesys_{table_name}").saveAsTable(f"bronze.genesys.{table_name}")

# Stop the Spark session
spark.stop()

