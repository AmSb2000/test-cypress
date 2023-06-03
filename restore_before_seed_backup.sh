#!/bin/bash
source ./.env
PGPASSWORD=$POSTGRES_PASSWORD psql -U $POSTGRES_USER -h $POSTGRES_HOST -p $POSTGRES_PORT -d $POSTGRES_DB < "/tmp/postgres_backup.sql_BEFORE_SEED"