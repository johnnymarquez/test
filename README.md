# Trattoria

### Java 11 & PSQL required

## Create Database PSQL
`psql -U postgres -d trattoria_db -f restorantPoblado.sql`

## If clean install is necessary
`mvn clean install`

## Run Project
`mvn spring-boot:run`

## Homepage
`http://localhost:8080/`

## API
`http://localhost:8080/api/comandas`
