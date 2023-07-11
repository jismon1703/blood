from flask import Flask, render_template,request
import mysql.connector

app = Flask(__name__)

connection = mysql.connector.connect(host="localhost",user="root",password="",database="jeepro")

mycursor = connection.cursor()

@app.route('/')
def home():
    return render_template('bank.html')


@app.route('/ernakulam')
def ernakulam():
    query = "SELECT * FROM `ernakulam`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/bankekm.html",sqldata=data)

@app.route('/thrissur')
def thrissur():
    query = "SELECT * FROM `thrissur`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/bankthri.html",sqldata=data)
    
    

@app.route('/trivandrum')
def trivandrum():
    query = "SELECT * FROM `trivandrum`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/bankthiru.html",sqldata=data)


@app.route('/donthiru')
def donthiru():
    query = "SELECT * FROM `donation_thiru`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/donationthiru.html",sqldata=data)


@app.route('/donekm')
def donekm():
    query = "SELECT * FROM `donation_ekm`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/donationekm.html",sqldata=data)


@app.route('/donthri')
def donthri():
    query = "SELECT * FROM `donation_thri`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/donationthri.html",sqldata=data)
@app.route("/selection",methods=["GET","POST"])
def select():
    if request.method=='POST':
       district=request.form["distmenu"]
    if district=="ernakulam":
        return ernakulam()
        
    else:

        if district=="thrissur":
            return thrissur()
        else:
            return trivandrum()
    



if __name__=='__main__':
    
    app.run(debug=True,port=3600)
