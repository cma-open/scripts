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

# Set name of environment file holding dependencies list
CONDA_ENV_FILE='environment.yml'

# envs dir will be at repo root
ENVS_DIR="${CODE_DIR}/envs"

# Confirm dir locations to user
echo "Code root directory: ${CODE_DIR}"
echo "Code env file name: ${CONDA_ENV_FILE}"
echo "Code envs directory: ${ENVS_DIR}"

echo "Creating conda environment"
conda env create -f "${ENVS_DIR}/${CONDA_ENV_FILE}"

echo " --------------------------------------------------"