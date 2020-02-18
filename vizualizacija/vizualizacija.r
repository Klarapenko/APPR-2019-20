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


g1 <- ggplot(data = samomori.vsi, aes(x=leto, y=vsota)) + geom_point() + ggtitle("Število samomorov v celotni Evropi po letih") + theme(panel.background=element_rect(fill="grey"))

g2 <- ggplot(data=samomori.zenske.moski.po.letih, aes(x=leto, y=vsota , color=spol)) + geom_line() + ggtitle("samomori v celotni Evropi, ločeni po spolu") 

g3 <- ggplot(data=ZLOCINI, aes(x=leto, y=vrednosti, color=država)) + geom_line() + ggtitle("odstotek samomorov")

#z1<- tm_shape(merge(zemljevid, povprecne.delovne.ure.po.drzavah, by.x="", by.y="država" )) + tm_polygons("povprecje",title="Povprečje") + tm_layout(title="Povprečno število tedenskih ur posamezne države na leto")

