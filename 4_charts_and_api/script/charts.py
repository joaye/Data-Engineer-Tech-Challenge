import streamlit as st
import plotly.express as px
import http.client
import pandas as pd
import json

# Getting the data
conn = http.client.HTTPSConnection("api.covid19api.com")
payload = ''
headers = {}
conn.request("GET", "/country/singapore/status/confirmed", payload, headers)
res = conn.getresponse()
data = res.read()
json_data = json.loads(data)
df = pd.DataFrame.from_dict(json_data, orient = 'columns')

# time based line chart
fig = px.line(df, x="Date", y="Cases", title='Covid19 Cases in Singapore over Time')
fig.update_xaxes(
    rangeselector=dict(
        buttons=list([
            dict(count=1, label="1m", step="month", stepmode="backward"),
            dict(count=6, label="6m", step="month", stepmode="backward"),
            dict(count=1, label="YTD", step="year", stepmode="todate"),
            dict(count=1, label="1y", step="year", stepmode="backward"),
            dict(step="all")
        ])
    ))
st.write(fig)


