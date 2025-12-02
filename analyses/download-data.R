######################################
#
# download-data.R
#
######################################

for(i in c("wildfinder-ecoregions_list.csv", "wildfinder-ecoregions_list.csv", "wildfinder-mammals_list.csv"))
  {
  dl_pantheria_data(filename = i)
}
