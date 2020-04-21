#!/bin/bash
#PBS -q highmem_q                                                            
#PBS -N roary_host                                       
#PBS -l nodes=1:ppn=12 -l mem=100gb                                        
#PBS -l walltime=300:00:00                                                
#PBS -M rx32940@uga.edu                                                  
#PBS -m abe                                                              
#PBS -o /scratch/rx32940                        
#PBS -e /scratch/rx32940                        
#PBS -j oe


module load Roary/3.12.0

# roary -e -n -p 12 /home/rx32940/PBIO8350_term_project/host_gff/*.gff -v -f /home/rx32940/PBIO8350_term_project/
