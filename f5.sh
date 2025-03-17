#!/bin/bash

sudo yum update -y

echo "Installing Java 17..."
sudo yum install java-17 -y
java -version

echo "Installing Maven..."
sudo yum install -y maven
mvn -version

echo "Java 17 and Maven installation completed successfully!"
