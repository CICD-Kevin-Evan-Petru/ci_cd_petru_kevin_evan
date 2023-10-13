#!/bin/bash
mysqldump -h localhost:3306 -u root -p rootpassword mysql > /dumps/database.sql