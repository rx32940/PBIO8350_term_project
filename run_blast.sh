#!/bin/bash
#PBS -q highmem_q                                                            
#PBS -N build_blast_db                                       
#PBS -l nodes=1:ppn=12 -l mem=100gb                                        
#PBS -l walltime=300:00:00                                                
#PBS -M rx32940@uga.edu                                                  
#PBS -m abe                                                              
#PBS -o /scratch/rx32940                        
#PBS -e /scratch/rx32940                        
#PBS -j oe

path="/home/rx32940/PBIO8350_term_project"
module load BLAST+/2.7.1-foss-2016b-Python-2.7.14

# create a db for the outgroup (biflexa)
makdeblastdb -in $path/roary_host/GCF_000017605.1_ASM1760v1_genomic.fna -out $path/outgroup_db \
-dbtype nucl -title outgroup_biflexa -parse_seqids