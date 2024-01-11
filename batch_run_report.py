from google.analytics.data_v1beta import BetaAnalyticsDataClient
from google.analytics.data_v1beta.types import (
    DateRange,
    Dimension,
    Metric,
    RunReportRequest,
    BatchRunReportsRequest,
    BatchRunReportsResponse,
)
from google.oauth2 import service_account
import pandas as pd

property_id = '419227297'
credentials_info = {
    "type": "service_account",
    "project_id": "insightsfactoryproject-on-ga4",
    "private_key_id": "c646c941e82aae19f07be5b9680641be3477a2f2",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQClRhIP2tgTpQIa\nLOCqVBQ5cvgZN7+GFQg89PgM659qi4aIBPP5QE2udxTXbyNNPK32NpKyHIHCJiHM\nQzX8j1xqGng01SQm4jxbfspvHe9gMhp4Q0ptqVisJGtVIBUCyF8f2sojwWLWh2LD\nDXKVTxBm+DuxMGUY3aCXja1HatyU2WJMHy2I6AP70XCoXu86fflRUe2CfaNV9P2z\nGiqgjRq1OVArX7d0rJtmvuTN45q86i7yGzrcrIkLSnAV2eir6AtdVJkigqcf5uzG\nkpMZej8oTkTSY1unblMufh8aDbjmEdbR2qyrv1iTKOe22yXKr4usEc6StKV5ZHge\nQalO8ilRAgMBAAECggEAEUQJNgPQR/kYh6CBlfmzpS7IEWZcCUdgNXIICd2BqXFL\nDCGsVTEtDFlfYYQ4RWTd7ZdU6uuEeMJgDIVG+gwGBQWf4jEUFkXTNWHBByuy6rNB\nRagN+ffTjiQ93EY+O6ywF1VVgbe9uhipriPVARkh5wfuwHuETD02/i4sWIYm5hvG\nluLxmA2vuxeIkSwjaWed0VbLPoHYmMmVgvE0BTUQ6E8QapSYZT5NMwuNP4dA7V/P\n421qxY5g8lvB6XHGQdtOh58v5waII8I9Fi99kXKyF2y7/Tum6SPYT6IDQcI8YVZ7\nROX5mduFQmvzMe6E0U3MvEQ8ed6DQf84M6YlMUG1mQKBgQDZ+GkNiB2QCoEWvWHC\n71jMBZ78QnAhf2f7hfVlBuVRk41eccA6fdkLKEPoOGhKo0cOnyFjp4gWNBKhAfyw\nE3FQJbID8vYiL9E9bYRaaYVARne0RbWn4ooFpJp46W97RejzhJ/7Y47qrC22pow8\nonjE9lc42lAesORlUXhzJy1YdQKBgQDCG/p1XiC91hVEVd1P+2Ns3NkdqO6i/84w\nbbEaY3QRsbRK9EVbbh3ABGvB5SmiE3CjWmyRkTG9uguLzY+4TQY5lYkP7wOMbIcZ\nR8vqxBnheChvrwkxivG/NY9Cz+ygZGUQt83iNwDYK7LfVKIKiRcynm9huUDLVwSx\ndNjia8mR7QKBgBYKc30FzY96MHF/NvqCP2VqEBiME1Cf1IDvm8/acafdFsd9EyYX\nAbKKIMvDoHAjsJS+7J5qG227WELls4qOfL/Q//48PD1avnrKrz6BOxMzzPjyr5rJ\nYpGNgn1FhZteh17Qg2jlOVdrj7fPgZDEERhBnLJICSABXScNpPNn+8LdAoGAOOxh\nh5fB/EnS1MZlb3YmUx904FjRGqXvvo38eOOffyzg1XZK/KQPP2dMfoEIs4oF5zG2\nUv4EW0I67pWqxv53i92JY03ReZW+DLDcYQ1/FXraSN5I0OmROWSojYxSNTsb1EpC\nq0s8CSjPfOTh3DsVvXdu7HaaRMdRDgVZMRUw+IUCgYEAoll4vcBOIfJOP3z+kZja\nxodkKstiPbe0tN7k9btYCR3K4mrzfUQHicZt5AmD4Z4571jNgpsDC+mkvDlF7gys\n4f8KiukJTDACRbpaZVMuI+aqltEVBcpmVeCVQM3mBoRfgSWHFVERLYQoBMLRFy0W\nDebavz/VTt9kxkymRifurSo=\n-----END PRIVATE KEY-----\n",
    "client_email": "insightsfactory-service-accoun@insightsfactoryproject-on-ga4.iam.gserviceaccount.com",
    "client_id": "104472804956312923402",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/insightsfactory-service-accoun%40insightsfactoryproject-on-ga4.iam.gserviceaccount.com",
    "universe_domain": "googleapis.com"
    # Your credentials_info here...
}

dimensions = ['userGender']  # Using a dimension for the query
metrics = ['activeUsers']  # Using a metric for the query

credentials = service_account.Credentials.from_service_account_info(
    info=credentials_info, scopes=['https://www.googleapis.com/auth/analytics.readonly']
)

client = BetaAnalyticsDataClient(credentials=credentials)


def batch_run_reports(property_id, dimensions, metrics):
    request = BatchRunReportsRequest(
        property=f"properties/{property_id}",
        requests=[
            RunReportRequest(
                dimensions=[Dimension(name=name) for name in dimensions],
                metrics=[Metric(name=name) for name in metrics],
                date_ranges=[DateRange(start_date="2023-12-08", end_date="today")],
            )
        ],
    )
    response = client.batch_run_reports(request)
    print (response)
    return response


def format_response(response: BatchRunReportsResponse):
    columns = [dimension.name for dimension in response.reports[0].dimension_headers]
    columns += [metric.name for metric in response.reports[0].metric_headers]

    data = []
    for row in response.reports[0].rows:
        row_data = [dimension_value.value for dimension_value in row.dimension_values]
        row_data += [metric_value.value for metric_value in row.metric_values]
        data.append(row_data)

    df = pd.DataFrame(data, columns=columns)
    return df


response = batch_run_reports(property_id, dimensions, metrics)
df = format_response(response)
print(df)
