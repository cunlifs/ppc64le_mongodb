#!/bin/bash
mongoimport --authenticationDatabase admin \
  --username $MONGO_INITDB_ROOT_USERNAME --password $MONGO_INITDB_ROOT_PASSWORD \
  --db $MONGO_DB_NAME \
  --collection $MONGO_COLLECTION_NAME \
  --type $MONGO_DB_TYPE \
  --file /tmp/chicago_listings.csv \
  --headerline
