# 3. faza: Vizualizacija podatkov

# Uvozimo zemljevid.
#zemljevid <- uvozi.zemljevid("http://baza.fmf.uni-lj.si/OB.zip", "OB",
#                             pot.zemljevida="OB", encoding="Windows-1250")
#levels(zemljevid$OB_UIME) <- levels(zemljevid$OB_UIME) %>%
#  { gsub("Slovenskih", "Slov.", .) } %>% { gsub("-", " - ", .) }
#zemljevid$OB_UIME <- factor(zemljevid$OB_UIME, levels=levels(obcine$obcina))
#zemljevid <- fortify(zemljevid)

# Izračunamo povprečno velikost družine
#povprecja <- druzine %>% group_by(obcina) %>%
#  summarise(povprecje=sum(velikost.druzine * stevilo.druzin) / sum(stevilo.druzin))

#====================================================================================================
#=======GRAFI========================================================================================
#====================================================================================================
#graf števila vseh samomorov po letih
g1 <- ggplot(data = samomori.vsi, aes(x=leto, y=vsota)) + geom_point() + 
  ggtitle("Število samomorov v celotni Evropi po letih") + 
  theme(panel.background=element_rect(fill="grey"))

#graf samomorov ločenih na ženske in moške po letih
g2 <- ggplot(data=samomori.zenske.moski.po.letih, aes(x=leto, y=vsota , color=spol)) +
  geom_line() + ggtitle("samomori v celotni Evropi, ločeni po spolu") +
  theme(panel.background=element_rect(fill="grey"))

#število tedenskih delovnih ur v posamezni državi 2009-2018:

g4 <- ggplot(data=URE, aes(x=leto, y=ure, color=drzava)) +
  geom_line() + ggtitle("Povprecno stevilo tedenskih delovnih ur ")


g3 <- ggplot(data=ZLOCINI, aes(x=leto, y=vrednost, color=drzava, filter(latvia))) + 
  geom_line() + ggtitle("odstotek samomorov")

#g4 <- ggplot(data=povprecje.zadolzenih.v.posamezni.drzavi ,aes(x=povprecje) ) + geom_bar(mapping = NULL,
#                  data = povprecje.zadolzenih.v.posamezni.drzavi,
#                      stat = "count",
#                    position = "stack",width = NULL,
#                  na.rm = FALSE,
#                  show.legend = NA,
#                  inherit.aes = TRUE)


#z1 <- tm_shape(evropskedrzave) + tm_polygons(border.col = "black") + tm_legend(show=FALSE) 

# + tmap_options(categories=ncol(names)



#====================================================================================================
#=======ZEMLJEVIDI===================================================================================
#====================================================================================================

data("World")
svet<- tm_shape(World) +tm_polygons(border.col = "black")

evropskedrzave <- World%>%filter(continent == "Europe")
names(evropskedrzave)



#kolikšen procent vseh smrti so predstavljali samomori v letu 2016:

zemljevid.evrope <- function(){
  evropa <- World %>% filter (continent == 'Europe')
  Samomori <- P_SAMOMORI
  Samomori <- P_SAMOMORI %>% filter (leto == 2016) %>% select('drzava', 'vrednost')
  podatki <- merge(y = Samomori,x = evropa, by.x='name', by.y = 'drzava')
  evropa <- tm_shape(podatki) + tm_polygons('vrednost') 
  tmap_mode('view')
  return(evropa)
}
zemljevid.evrope()

#kolikšen procent vseh smrti so predstavljali samomori v letu 2011:
zemljevid.evrope2 <- function(){
  evropa <- World %>% filter (continent == 'Europe')
  Samomori <- P_SAMOMORI
  Samomori <- P_SAMOMORI %>% filter (leto == 2011) %>% select('drzava', 'vrednost')
  podatki <- merge(y = Samomori,x = evropa, by.x='name', by.y = 'drzava')
  evropa <- tm_shape(podatki) + tm_polygons('vrednost') 
  tmap_mode('view')
  return(evropa)
}
zemljevid.evrope2()





