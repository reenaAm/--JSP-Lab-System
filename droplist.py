import os
import sqlite3
from flask import Flask, redirect, render_template, g, request, session, url_for

app = Flask(__name__)

# Replace 'database.db' with the path to your SQLite database file
app.config['DATABASE'] = 'LabUP.db'
app.config['SECRET_KEY'] = os.urandom(24)  # Generate a random secret key

def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(app.config['DATABASE'])
    return db

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()

@app.route('/', methods=['GET', 'POST'])
def labinter():
    if request.method == 'POST':
        lab_id = request.form['Labs']  # Get the selected labID from the form
        session['selected_lab_id'] = lab_id 
        return redirect(url_for('labinfo'))  # Redirect to the 'devices' route

    # Fetch options from the database
    cursor = get_db().cursor()
    cursor.execute('SELECT Name, labID FROM Lab')
    options = cursor.fetchall()
    cursor.close()
    return render_template('labinter.html', options=options)

@app.route('/labinfo', methods=['GET'])
def labinfo():
    lab_id = session.get('selected_lab_id')
    db = get_db()
    cursor = db.cursor()
    cursor.execute('SELECT * FROM Devices WHERE labID = ?', (lab_id,))
    devices_data = cursor.fetchall()
    # Close the database connection
    cursor.close()
    return render_template('labinfo.html', devices_data=devices_data)


if __name__ == '__main__':
    app.run(debug=True)