#!/bin/bash
#PBS -q batch                                                            
#PBS -N roary_host                                       
#PBS -l nodes=1:ppn=12 -l mem=80gb                                        
#PBS -l walltime=300:00:00                                                
#PBS -M rx32940@uga.edu                                                  
#PBS -m abe                                                              
#PBS -o /home/rx32940/PBIO8350_term_project                        
#PBS -e /home/rx32940/PBIO8350_term_project     
#PBS -j oe


module load Roary/3.12.0

# -n mafft, otherwise prank codon aware alignment
roary -e -p 12 /home/rx32940/PBIO8350_term_project/host_gff/*.gff -v -f /home/rx32940/PBIO8350_term_project/
