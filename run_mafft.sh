#!/bin/bash
#PBS -q highmem_q                                                            
#PBS -N add_outgroup                                       
#PBS -l nodes=1:ppn=2 -l mem=200gb                                        
#PBS -l walltime=300:00:00                                                
#PBS -M rx32940@uga.edu                                                  
#PBS -m abe                                                              
#PBS -o /home/rx32940/PBIO8350_term_project                        
#PBS -e /home/rx32940/PBIO8350_term_project     
#PBS -j oe

module load MAFFT/7.407-foss-2018a-with-extensions

path="/home/rx32940/PBIO8350_term_project"

mafft --nomemsave --keeplength --add $path/GCF_000017605.1_ASM1760v1_genomic.fna $path/roary_host/core_gene_alignment.aln > $path/core_genes_aln_outgroup_Lbiflexa.aln
