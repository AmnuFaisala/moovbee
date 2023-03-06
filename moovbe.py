from flask import *
from dbconnection import *

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/login', methods=['POST'])
def login():
    obj=Db()
    user_name=request.form['username']
    password=request.form['password']
    qry="SELECT * FROM `login` WHERE `user_name`='"+user_name+"' AND `password`='"+password+"'"
    res=obj.selectOne(qry)
    if res is not None:
        return jsonify(status="ok" ,lid=res['login_id'])
    else:
        return jsonify(status="no")


@app.route('/view_buslist',methods=['POST'])
def view_buslist():
    viewobj = Db()
    qry = "SELECT * FROM `bus`"
    viewdtl = viewobj.select(qry)
    qry2 = "SELECT COUNT(bus_id) as b FROM `bus`"
    ff=viewobj.selectOne(qry2)
    if ff is not None:
        count=ff["b"]
    else:
        count=0
    print(count,ff)
    # print(viewdt1)
    if len(viewdtl) > 0:
        return jsonify(status="ok",data=viewdtl,count=count)
    else:
        return jsonify(status="no")

@app.route('/insert_driver',methods=['POST'])
def insert_driver():
    drivername = request.form['driver_name']
    licensenumber = request.form['license_number']
    driverphone = request.form['driver_phone']
    obj = Db()
    qry = "INSERT INTO `driver`(`driver_name`,`license_number`,`driver_phone` )VALUES('"+drivername+"','"+licensenumber+"','"+driverphone+"')"
    userdtl = obj.insert(qry)
    return jsonify(status="ok")

@app.route('/view_driverlist',methods=['POST'])
def view_driverlist():
    viewobj = Db()
    qry = "SELECT * FROM `driver`"
    viewdtl = viewobj.select(qry)
    qry2 = "SELECT COUNT(driver_id) as b FROM `driver`"
    ff = viewobj.selectOne(qry2)
    if ff is not None:
        count = ff["b"]
    else:
        count = 0
    print(count, ff)
    # print(viewdt1)
    if len(viewdtl) > 0:
        return jsonify(status="ok",data=viewdtl,count=count)
    else:
        return jsonify(status="no")


@app.route('/delete_data',methods=['POST'])
def delete_data():
    driver_id = request.form['driver_id']
    obj = Db()
    qry = "DELETE FROM `driver` where driver_id ='"+driver_id+"'"
    res=obj.delete(qry)
    return jsonify(status = "ok")




if __name__ == '__main__':
    app.run(port=3500, host="0.0.0.0")
