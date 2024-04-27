#!/bin/bash
. /tmp/scripts/orcl19c/install.env

echo "setting hostname"
echo "======================================"
hostnamectl set-hostname ${HOSTNAME}

echo "******************************************************************************"
echo "Set root and oracle password and change ownership of /u01." `date`
echo "******************************************************************************"
echo -e "${ROOT_PASSWORD}\n${ROOT_PASSWORD}" | passwd

mkdir -p ${SCRIPTS_DIR}
mkdir -p ${SOFTWARE_DIR}
mkdir -p ${DATA_DIR}