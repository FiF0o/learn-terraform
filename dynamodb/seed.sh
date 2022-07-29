#!/bin/sh

# https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SampleData.CreateTables.html

echo 'seeding Forum table...'
# PK: Name (S)
# aws dynamodb list-tables
aws dynamodb batch-write-item --request-items file://./dynamodb/Forum.json
echo 'seeding done'
