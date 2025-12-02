######################################
#
# download-data.R
#
######################################

# Lister les noms de fichiers à telecharger
wildfinder_files <- c("wildfinder-ecoregions_list.csv",
"wildfinder-ecoregions_list.csv",
"wildfinder-mammals_list.csv")

# Utiliser la fonction dl_pantheria_data() pour télécharger les fichiers depuis le repo wildfinder
for(i in c("wildfinder-ecoregions_list.csv", "wildfinder-ecoregions_list.csv", "wildfinder-mammals_list.csv"))
  {
  dl_pantheria_data(filename = i)
}
