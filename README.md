# MapJur

Para criação de usuario Dev utilizar o comando abaixo:
```
use admin
db.createUser(
  {
    user: "Dev",
    pwd: "12345",
    roles: [ { role: "readWriteAnyDatabase", db: "admin" },
	     { role: "dbAdminAnyDatabase", db: "admin" }]
  }
)
```

Para criação do usuario Application o comando abaixo:
```
use db_legal
db.createUser(
  {
    user: "Application",
    pwd: "&cHP332964F6",
    roles: [ { role: "readWrite", db: "db_legal" },
             { role: "read", db: "reporting" } ]
  }
)
```
