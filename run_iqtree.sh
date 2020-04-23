#!/bin/bash
#PBS -q highmem_q                                                            
#PBS -N iqtree_interrogans                                    
#PBS -l nodes=1:ppn=24 -l mem=300gb                                        
#PBS -l walltime=300:00:00                                                
#PBS -M rx32940@uga.edu                                                  
#PBS -m abe                                                              
#PBS -o /scratch/rx32940                        
#PBS -e /scratch/rx32940                        
#PBS -j oe

module load IQ-TREE/1.6.5-omp

iqtree -nt AUTO -m MFP -pre /home/rx32940/PBIO8350_term_project/interrogans_host_unrooted -s /home/rx32940/PBIO8350_term_project/roary_host/core_gene_alignment.aln
