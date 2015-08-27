#! /bin/bash

echo "Iniciando deploy"

curDir = pwd
$curDir/tsuru service-add mysql marcelo-quinta-mysql 

$curDir/tsuru app-create $1

serviceName = "mysql-$1"
$curDir/tsuru service-add mysql $serviceName

echo "relacionando servico"

$curDir/tsuru service-bind $serviceName -a $1

echo "clonando"
