# extract core genes from roary output pan_genome_reference.fa
# for query core genes from the outgroup seq in blast

import sys
from Bio import SeqIO

fasta_file = sys.argv[1]  # Input fasta file
number_file = sys.argv[2] # core gene list, from first column in gene_presence_absence.csv
result_file = sys.argv[3] # Output fasta file

wanted = set() # unique seq
with open(number_file) as f:
    for line in f:
        line = line.strip() # stripe white space
        # print(line)
        if line != "":
            wanted.add(line)
print(len(wanted))
fasta_sequences = SeqIO.parse(open(fasta_file),'fasta')
end = False
i=0
with open(result_file, "w") as f:
    for seq in fasta_sequences:
        # gene_name = seq.description.split()[1]  # for the roary's output fasta, gene name is the second string in seq header
        gene_name = seq.id # for extracting from prokka output .ffn file
        # print(gene_name)
        if gene_name in wanted:
            SeqIO.write([seq], f, "fasta")
            i += 1
# print(i)