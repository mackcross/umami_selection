#!/bin/bash
#$ -S /bin/bash
#$ -N paml_array
#$ -cwd
#$ -pe smp 1
#$ -l mem_free=4G
#$ -t 1-2
#$ -o logs/
#$ -e logs/

echo "Job started on $(date)"
echo "Task ID: $SGE_TASK_ID"

# 1. Map task ID to gene name
GENES=(TAS1R1 TAS1R3)
GENE=${GENES[$((SGE_TASK_ID-1))]}

# 2. Set base directory for this gene
BASE_DIR=$HOME/projects/umami_selection/$GENE/03_PAML

# 3. List of clade directories to run codeml in
CLADE_DIRS=(ape homininae hominini homo null)

# 4. Loop through each clade and run codeml
for CLADE in "${CLADE_DIRS[@]}"; do
    cd "$BASE_DIR/$CLADE"
    echo "Running codeml in $GENE/$CLADE"
    codeml
done

echo "Job finished on $(date)"

