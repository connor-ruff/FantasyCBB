from flask import Flask, render_template
import pyodbc

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

team = "CMoney"
@app.route(f'/{team}')
def TeamPage():
    info = SQLconnect(0)
    return render_template('teamPage.html', name=info)



def SQLconnect(squadID):
    conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server}; Server=betaserver69.database.windows.net; Database=testBase69; UID=connorruff; PWD=Charlotte99!;')
    curs = conn.cursor()
    curs.execute(f"SELECT player1, player2, player3, player4, player5, player6, player7, player8, player9, player10 FROM squadsTable WHERE squadKey = '{squadID}'" )
    results = curs.fetchone()
    return results

if __name__ == "__main__":
    app.run()
