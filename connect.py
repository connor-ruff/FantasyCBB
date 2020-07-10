import pyodbc



conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server}; Server=betaserver69.database.windows.net; Database=testBase69; UID=connorruff; PWD=Charlotte99!;')

curs = conn.cursor()

vari = "CMoney"
curs.execute(f"SELECT * FROM teamList WHERE teamName = '{vari}'")
results = curs.fetchone()

for result in results:

    print(result)

