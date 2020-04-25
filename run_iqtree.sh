#!/bin/bash
#PBS -q batch                                                            
#PBS -N iqtree_outgroup_core                                    
#PBS -l nodes=1:ppn=24
#PBS -l mem=10gb                                        
#PBS -l walltime=300:00:00                                                
#PBS -M rx32940@uga.edu                                                  
#PBS -m abe                                                              
#PBS -o /home/rx32940/PBIO8350_term_project
#PBS -e /home/rx32940/PBIO8350_term_project     
#PBS -j oe

module load IQ-TREE/1.6.5-omp

iqtree -nt AUTO -m MFP -b 100 -o outgroup_biflexa -pre /home/rx32940/PBIO8350_term_project/outgroup_roary/iqtree/outgroup_core_interrogans -s /home/rx32940/PBIO8350_term_project/outgroup_roary/core_gene_alignment.aln
