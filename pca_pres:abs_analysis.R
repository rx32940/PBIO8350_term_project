library(factoextra)
library(tidyverse)
library(ggrepel)
library(ggplot2)
all_genes <- read.table("/Users/rx32940/Desktop/pbio8350TermProject/roary_host/gene_presence_absence.Rtab",header = TRUE,row.names = "Gene")

colnames(all_genes) <- 1:168
all_genes <- t(all_genes)
# colnames(all_genes)
pca <- prcomp(all_genes)


fviz_eig(pca) # sree plot

names(pca)
rownames(pca$x)
pca$x[,1:2] # get PC1 and PC2 for each sample (coordinates for the pca plots below)
eig.val <- get_eigenvalue(pca) # get eigen value
pca_variables <- get_pca_var(pca) # get variables for pca analysis

pca$x %>% 
  as.data.frame %>%
  ggplot(aes(x=PC1,y=PC2,label = rownames(pca$x))) + geom_point(size=1)+
  theme_bw(base_size =12) + # theme and text size
  geom_text_repel(segment.size=0.5,box.padding = 0)+ # labels use lines to repel from each other
  ggtitle("L. Interrogans Gene Presence VS Absence PCA Analysis")+
  labs(x="PC1 (10.97%)", y="PC2 (9.22%)")

