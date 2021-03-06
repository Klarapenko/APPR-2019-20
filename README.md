# Analiza samomorov v Evropi
### Klara Penko

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2019/20

* [![Shiny](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/Klarapenko/APPR-2019-20/master?urlpath=shiny/APPR-2019-20/projekt.Rmd) Shiny
* [![RStudio](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/Klarapenko/APPR-2019-20/master?urlpath=rstudio) RStudio

## Tematika

V projektu bom analizirala, kako različni dejavniki vplivajo na samomore v posameznih evropskih državah.Osredotočila se bom na leta med 2009 in 2018. V posameznih državah bom analizirala vplive naslednjih dejavnikov:
- količina tedenskih delovnih ur,
- spolne zlorabe,
- zločin, nasilje in vandalizem,
- ločitve,
- dolgovi


Cilj naloge je prikazati, kateri dejavniki bi lahko najbolj vplivali na količino samomorov in kako se količina samomorov v posameznih državah z leti spreminja.
Podatke pa bom iskala na Eurostatu(European statistical office).


1. tabela: število samomorov, posameznih držav, po letih https://ec.europa.eu/eurostat/databrowser/view/tps00122/default/table?lang=en 

2. tabela: povprečna količina tedenskih delovnih ur
 https://appsso.eurostat.ec.europa.eu/nui/show.do?dataset=lfsa_ewhun2&lang=en
 
3. tabela: število spolnih zlorab
https://appsso.eurostat.ec.europa.eu/nui/submitViewTableAction.do  

4. tabela: število zločinov
https://appsso.eurostat.ec.europa.eu/nui/show.do?query=BOOKMARK_DS-056146_QID_3DA2747E_UID_-3F171EB0&layout=TIME,C,X,0;GEO,L,Y,0;HHTYP,L,Z,0;INCGRP,L,Z,1;UNIT,L,Z,2;INDICATORS,C,Z,3;&zSelection=DS-056146UNIT,PC;DS-056146INCGRP,TOTAL;DS-056146HHTYP,TOTAL;DS-056146INDICATORS,OBS_FLAG;&rankName1=HHTYP_1_2_-1_2&rankName2=UNIT_1_2_-1_2&rankName3=INDICATORS_1_2_-1_2&rankName4=INCGRP_1_2_-1_2&rankName5=TIME_1_0_0_0&rankName6=GEO_1_0_0_1&sortR=ASC_-1_FIRST&sortC=ASC_-1_FIRST&rStp=&cStp=&rDCh=&cDCh=&rDM=true&cDM=true&footnes=false&empty=false&wai=false&time_mode=ROLLING&time_most_recent=false&lang=EN&cfo=%23%23%23%2C%23%23%23.%23%23%23&lang=en

5. tabela: število ločitev
https://ec.europa.eu/eurostat/databrowser/view/tps00206/default/table?lang=en

6. tabela: količin dolgov
https://appsso.eurostat.ec.europa.eu/nui/show.do?query=BOOKMARK_DS-056354_QID_6531C8BB_UID_-3F171EB0&layout=TIME,C,X,0;GEO,L,Y,0;HHTYP,L,Z,0;INCGRP,L,Z,1;UNIT,L,Z,2;INDICATORS,C,Z,3;&zSelection=DS-056354INCGRP,TOTAL;DS-056354INDICATORS,OBS_FLAG;DS-056354UNIT,PC;DS-056354HHTYP,TOTAL;&rankName1=HHTYP_1_2_-1_2&rankName2=UNIT_1_2_-1_2&rankName3=INDICATORS_1_2_-1_2&rankName4=INCGRP_1_2_-1_2&rankName5=TIME_1_0_0_0&rankName6=GEO_1_0_0_1&sortR=ASC_-1_FIRST&sortC=ASC_-1_FIRST&rStp=&cStp=&rDCh=&cDCh=&rDM=true&cDM=true&footnes=false&empty=false&wai=false&time_mode=ROLLING&time_most_recent=false&lang=EN&cfo=%23%23%23%2C%23%23%23.%23%23%23&lang=en 




## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`.
Ko ga prevedemo, se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`.
Podatkovni viri so v mapi `podatki/`.
Zemljevidi v obliki SHP, ki jih program pobere,
se shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `rgdal` - za uvoz zemljevidov
* `rgeos` - za podporo zemljevidom
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `readr` - za branje podatkov
* `rvest` - za pobiranje spletnih strani
* `tidyr` - za preoblikovanje podatkov v obliko *tidy data*
* `dplyr` - za delo s podatki
* `gsubfn` - za delo z nizi (čiščenje podatkov)
* `ggplot2` - za izrisovanje grafov
* `mosaic` - za pretvorbo zemljevidov v obliko za risanje z `ggplot2`
* `maptools` - za delo z zemljevidi
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)

## Binder

Zgornje [povezave](#analiza-podatkov-s-programom-r-201819)
omogočajo poganjanje projekta na spletu z orodjem [Binder](https://mybinder.org/).
V ta namen je bila pripravljena slika za [Docker](https://www.docker.com/),
ki vsebuje večino paketov, ki jih boste potrebovali za svoj projekt.

Če se izkaže, da katerega od paketov, ki ji potrebujete, ni v sliki,
lahko za sprotno namestitev poskrbite tako,
da jih v datoteki [`install.R`](install.R) namestite z ukazom `install.packages`.
Te datoteke (ali ukaza `install.packages`) **ne vključujte** v svoj program -
gre samo za navodilo za Binder, katere pakete naj namesti pred poganjanjem vašega projekta.

Tako nameščanje paketov se bo izvedlo pred vsakim poganjanjem v Binderju.
Če se izkaže, da je to preveč zamudno,
lahko pripravite [lastno sliko](https://github.com/jaanos/APPR-docker) z želenimi paketi.

Če želite v Binderju delati z git,
v datoteki `gitconfig` nastavite svoje ime in priimek ter e-poštni naslov
(odkomentirajte vzorec in zamenjajte s svojimi podatki) -
ob naslednjem zagonu bo mogoče delati commite.
Te podatke lahko nastavite tudi z `git config --global` v konzoli
(vendar bodo veljale le v trenutni seji).
