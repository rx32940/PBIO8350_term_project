#!/bin/bash

# this bash script use python script extract_gene_from_fasta.py to extract core genome for every isolates


path="/home/rx32940/PBIO8350_term_project"

for fa in $path/wgs_fasta/*.ffn;
do

samn="$(basename "$fa" .ffn)"

# echo "${samn},${fa}"
python extract_gene_from_fasta.py \
$path/PBIO8350_term_project/extract_gene_from_fasta.py \
$fa \
$path/roary_host/individual_core_gene_list/$samn.txt \
$path/coreGene_fasta/${samn}_core.fasta

done

