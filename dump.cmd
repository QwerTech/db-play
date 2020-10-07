# restore from sql file
psql -h localhost -d fias -U postgres -p 5435 -f fias_localhost-2020_10_06_12_03_03-dump.sql

# dump compressed
pg_dump --dbname=fias --schema='public' --table=public.house --file="d:\\fias-house-20201007-11-59-dump.dump" --create -Fc -Z 9 -d fias -h localhost -p 5432 -U postgres
# restore from compressed
pg_restore -Fce1  -j 8 -h localhost -p 5435 -U postgres "d:\\fias-house-20201007-11-59-dump.dump"