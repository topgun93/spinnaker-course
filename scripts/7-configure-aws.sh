#!/bin/bash

hal config provider aws account add $1 \
  --account-id $2 \
  --assume-role role/spinnakerManaged
  
echo $4 | hal config provider aws edit --access-key-id $ 3 \
  --secret-access-key
