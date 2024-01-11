import pandas as pd
import json

def generate_sheet_config(file_path):
    try:
        excel_file = pd.ExcelFile(file_path)
        sheet_names = excel_file.sheet_names
        sheet_config = {}

        for sheet_name in sheet_names:
            sheet_config[sheet_name] = {
                "table_name": f"cw_{sheet_name.lower().replace(' ', '_')}",
                "start_cell": "A1",
                "end_cell": "Z100"  # You may adjust the end_cell as needed
            }

        return sheet_config
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

# Provide the path to your Excel file
#excel_file_path = 'C:\Users\HP\Desktop\Scott Sep 2023.xlsx'
excel_file_path = r'C:\Users\HP\Desktop\Coworking Report - August updated.xlsx'


generated_config = generate_sheet_config(excel_file_path)

if generated_config:
    print("Generated Configuration:")
    print(json.dumps({"sheet_config": generated_config}, indent=2))
else:
    print("Unable to generate configuration.")