import pyodbc



key=1
p1='Aunt Jamima'
p2='Lebron James'
p3='The Cookie Monster'
p4='Waffle House'
p5='Steve'
p6='Spiderman'
p7='That Tree Over There'
p8='PHubb'
p9='Ugly'
p10='Bithc'

conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server}; Server=betaserver69.database.windows.net; Database=testBase69; UID=connorruff; PWD=Charlotte99!;')
cursor = conn.cursor()

cursor.execute("""
                INSERT INTO squadsTable (squadKey, player1, player2, player3, player4, player5, player6, player7, player8, player9, player10)
                VALUES (?,?,?,?,?,?,?,?,?,?,?)
                """,
                (key, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
                )

cursor.commit()
