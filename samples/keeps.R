keeps <- read_csv("keeps.csv")

castleIcon <- makeIcon(
  iconUrl = "http://www.free-icons-download.net/images/ca-castle-icon-87084.png",
  iconWidth = 35, iconHeight = 35,
  iconAnchorX = 17, iconAnchorY = 34
)

m <- leaflet(data = keeps) %>%
  addTiles() %>% 
  addTiles(attribution = "© GeoBasis-DE / BKG 2017") %>% 
  addMarkers(~GEOLA, 
             ~GEOBR, 
             popup = ~NAME,
             label = ~NAME,
             icon = castleIcon)
m
