#!/bin/bash

#######################################################################################
# Script to create named conda environment
# Uses environment.yml file
# Assume conda is available
#
# Production use would likely use .lock files, these .yml files are sufficient for
# these example and test repo projects
######################################################################################

# Set code root directory as script constant
CODE_DIR="$(dirname $(dirname "${PWD}"))"
# Confirm root dir to user
echo "Code root directory: ${CODE_DIR}"

# Set name of environment file holding dependencies list
CONA_ENV_FILE='environment.yml'

# envs dir will be at repo root
ENVS_DIR = "${CODE_DIR}/envs"

echo "Creating conda environment"
conda env create -f "${ENVS_DIR}/${CONA_ENV_FILE}"

echo " --------------------------------------------------"