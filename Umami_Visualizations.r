# install.packages("ape") for phylogenetic trees
# install.packages("ggtree") for advanced plots (from Bioconductor)

rm(list = ls()) 

library(ape)

TAS1R1 <- "(Tupaia_chinensis:0.130370,((((((Saimiri_boliviensis:0.020118,Cebus_imitator:0.012827):0.001548,Callithrix_jacchus:0.017253):0.000740,Aotus_nancymaae:0.016615):0.033187,((((Piliocolobus_tephrosceles:0.005719,Colobus_angolensis:0.006536):0.002445,(Rhinopithecus_bieti:0.001218,Rhinopithecus_roxellana:0.000800):0.004947):0.002583,(((((Theropithecus_gelada:0.002030,Papio_anubis:0.001615):0.001216,Cercocebus_atys:0.002425):0.000001,((Macaca_fascicularis:0.002425,Macaca_nemestrina:0.002022):0.000001,Macaca_mulatta:0.001211):0.003239):0.000001,Mandrillus_leucophaeus:0.002428):0.003544,Chlorocebus_sabaeus:0.007514):0.002418):0.021385,(((Hylobates_moloch:0.004729,Symphalangus_syndactylus:0.003106):0.000410,Nomascus_leucogenys:0.040250):0.010428,((Homo_sapiens:0.005306,(Gorilla_gorilla:0.002825,(Pan_paniscus:0.000436,Pan_troglodytes:0.001582):0.002434):0.000381):0.006602,(Pongo_abelii:0.000369,Pongo_pygmaeus:0.002053):0.008278):0.002903):0.007535):0.018588):0.054411,Carlito_syrichta:0.091124):0.006824,(((Eulemur_rufifrons:0.009460,(Prolemur_simus:0.007471,Lemur_catta:0.009043):0.007931):0.023360,(Propithecus_coquereli:0.036804,Microcebus_murinus:0.031593):0.003869):0.023707,Otolemur_garnettii:0.070050):0.019475):0.009902,Galeopterus_variegatus:0.086727);"
TAS1R1_tree <- read.tree(text = TAS1R1)
plot(TAS1R1_tree, cex=0.6)   # simple tree
axisPhylo()           # add scale bar
# plot(tree, type="fan", cex=0.6)       # circular layout
# plot(tree, type="unrooted", cex=0.6)  # unrooted tree

TAS1R3 <- "(((((Mandrillus_leucophaeus:0.002888,Cercocebus_atys:0.001632):0.004937,(Papio_anubis:0.002452,Theropithecus_gelada:0.003728):0.002568):0.000465,(Macaca_mulatta:0.001625,Macaca_nemestrina:0.006274):0.007909):0.003321,Chlorocebus_sabaeus:0.010959):0.010140,(((((Otolemur_garnettii:0.054466,Nycticebus_coucang:0.019396):0.129777,((Microcebus_murinus:0.066397,((Prolemur_simus:0.016973,Lemur_catta:0.011680):0.006321,Eulemur_rufifrons:0.014557):0.027678):0.004707,Propithecus_coquereli:0.038233):0.054056):0.026160,(Tupaia_chinensis:0.201247,(Galeopterus_variegatus:0.014202,Cynocephalus_volans:0.021281):0.115354):0.015276):0.091150,((Cebus_imitator:0.022490,Saimiri_boliviensis:0.029845):0.005473,(Aotus_nancymaae:0.029750,Callithrix_jacchus:0.038314):0.003108):0.063429):0.038135,(((Pongo_abelii:0.000408,Pongo_pygmaeus:0.000813):0.024291,(((Pan_troglodytes:0.000772,Pan_paniscus:0.002936):0.005703,Homo_sapiens:0.004386):0.002622,Gorilla_gorilla:0.009705):0.014385):0.001596,(Symphalangus_syndactylus:0.005889,Hylobates_moloch:0.004455):0.012816):0.015394):0.027472,(Colobus_angolensis:0.009117,(Rhinopithecus_roxellana:0.008051,(Piliocolobus_tephrosceles:0.014696,Trachypithecus_francoisi:0.009055):0.003025):0.001122):0.010768);"
TAS1R3_tree <- read.tree(text = TAS1R3)
plot(TAS1R3_tree, cex=0.6)   # simple tree
axisPhylo()           # add scale bar