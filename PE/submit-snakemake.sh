#!/bin/bash

# Run snakemake
snakemake \
    --snakefile Snakefile_procdata_fastq_PE \
    --rerun-incomplete \
    --jobs 50 \
    --cluster-config cluster.yml \
    --cluster "sbatch \
                  -A {cluster.account} \
                  -t {cluster.time} \
                  -p {cluster.partition} \
                  -n {cluster.N} \
                  -J {cluster.jobname}"


