mongo admin --eval 'db.createUser({
user:"admin",
pwd:"admin",
roles:[{
role:"userAdminAnyDatabase",
db:"admin"
}]
});
db.auth("admin", "admin");' \
&& mongo xtest --eval 'db.createUser({
user:"xtest",
pwd:"xtest@2018",
roles:[{
role:"readWrite",
db:"xtest"
}]
});
db.auth("xtest", "xtest@2018");'