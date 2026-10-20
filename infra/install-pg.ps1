$PG_BIN = "C:\Program Files\PostgreSQL\15\bin"
$PSQL = "$PG_BIN\psql.exe"

$DB_NAME = "test_lab"
$PG_USER = "postgres"

# БД
& $PSQL -U $PG_USER -d postgres -c "CREATE DATABASE $DB_NAME;"



Write-Host "Настройка базы данных $DB_NAME завершена."