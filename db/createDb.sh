#!/bin/bash

#
# Script to create MySQL db + user
#
# @author   Raj KB <magepsycho@gmail.com>
# @website  http://www.magepsycho.com
# @version  0.1.0

################################################################################
# CORE FUNCTIONS - Do not edit
################################################################################
#
# VARIABLES
#
mysql -e DROP DATABASE domocom;
mysql -e CREATE DATABASE domocom;
#mysql -e CREATE USER 'admin'@'localhost' IDENTIFIED BY 'domocom01';
mysql -e GRANT ALL PRIVILEGES ON <domocom>.* TO 'admin'@'localhost';
mysql -e FLUSH PRIVILEGES;

