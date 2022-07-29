#!/bin/sh

echo 'deleting Forum table...'
aws dynamodb delete-table --table-name Forum
echo 'done'