module LanguageTag.Variant exposing
    ( Variant, toCodeString
    , n_1606nict, n_1694acad, n_1901, n_1959acad, n_1994, n_1996, abl1943, akuapem, alalc97, aluku, ao1990, aranes, arevela, arevmda, asante, auvern, baku1926, balanka, barla, basiceng, bauddha, biscayan, biske, bohoric, boont, bornholm, cisaup, colb1945, cornu, creiss, dajnko, ekavsk, emodeng, fonipa, fonkirsh, fonnapa, fonupa, fonxsamp, gascon, grclass, grital, grmistr, hepburn, heploc, hognorsk, hsistemo, ijekavsk, itihasa, ivanchov, jauer, jyutping, kkcor, kociewie, kscor, laukika, lemosin, lengadoc, lipaw, luna1918, metelko, monoton, ndyuka, nedis, newfound, nicard, njiva, nulik, osojs, oxendict, pahawh2, pahawh3, pahawh4, pamaka, peano, petr1708, pinyin, polyton, provenc, puter, rigik, rozaj, rumgr, scotland, scouse, simple, solba, sotav, spanglis, surmiran, sursilv, sutsilv, tarask, tongyong, tunumiit, uccor, ucrcor, ulster, unifon, vaidika, valencia, vallader, vecdruka, vivaraup, wadegile, xsistemo
    )

{-|

@docs Variant, toCodeString

@docs n_1606nict, n_1694acad, n_1901, n_1959acad, n_1994, n_1996, abl1943, akuapem, alalc97, aluku, ao1990, aranes, arevela, arevmda, asante, auvern, baku1926, balanka, barla, basiceng, bauddha, biscayan, biske, bohoric, boont, bornholm, cisaup, colb1945, cornu, creiss, dajnko, ekavsk, emodeng, fonipa, fonkirsh, fonnapa, fonupa, fonxsamp, gascon, grclass, grital, grmistr, hepburn, heploc, hognorsk, hsistemo, ijekavsk, itihasa, ivanchov, jauer, jyutping, kkcor, kociewie, kscor, laukika, lemosin, lengadoc, lipaw, luna1918, metelko, monoton, ndyuka, nedis, newfound, nicard, njiva, nulik, osojs, oxendict, pahawh2, pahawh3, pahawh4, pamaka, peano, petr1708, pinyin, polyton, provenc, puter, rigik, rozaj, rumgr, scotland, scouse, simple, solba, sotav, spanglis, surmiran, sursilv, sutsilv, tarask, tongyong, tunumiit, uccor, ucrcor, ulster, unifon, vaidika, valencia, vallader, vecdruka, vivaraup, wadegile, xsistemo

-}

import LanguageTag.Internal as Internal exposing (Variant(..))


{-| -}
type alias Variant =
    Internal.Variant


{-| Get the code for this Variant.
-}
toCodeString : Variant -> String
toCodeString (Variant rawCode) =
    rawCode


{-| Late Middle French (to 1606)
-}
n_1606nict : Variant
n_1606nict =
    Variant "1606nict"


{-| Early Modern French
-}
n_1694acad : Variant
n_1694acad =
    Variant "1694acad"


{-| Traditional German orthography
-}
n_1901 : Variant
n_1901 =
    Variant "1901"


{-| "Academic" ("governmental") variant of Belarusian as codified in 1959
-}
n_1959acad : Variant
n_1959acad =
    Variant "1959acad"


{-| Standardized Resian orthography
-}
n_1994 : Variant
n_1994 =
    Variant "1994"


{-| German orthography of 1996
-}
n_1996 : Variant
n_1996 =
    Variant "1996"


{-| Orthographic formulation of 1943 - Official in Brazil (Formulário Ortográfico de 1943 - Oficial no Brasil)
-}
abl1943 : Variant
abl1943 =
    Variant "abl1943"


{-| Akuapem Twi
-}
akuapem : Variant
akuapem =
    Variant "akuapem"


{-| ALA-LC Romanization, 1997 edition
-}
alalc97 : Variant
alalc97 =
    Variant "alalc97"


{-| Aluku dialect
Boni dialect
-}
aluku : Variant
aluku =
    Variant "aluku"


{-| Portuguese Language Orthographic Agreement of 1990 (Acordo Ortográfico da Língua Portuguesa de 1990)
-}
ao1990 : Variant
ao1990 =
    Variant "ao1990"


{-| Aranese
-}
aranes : Variant
aranes =
    Variant "aranes"


{-| Eastern Armenian
-}
arevela : Variant
arevela =
    Variant "arevela"


{-| Western Armenian
-}
arevmda : Variant
arevmda =
    Variant "arevmda"


{-| Asante Twi
Ashanti Twi
-}
asante : Variant
asante =
    Variant "asante"


{-| Auvergnat
-}
auvern : Variant
auvern =
    Variant "auvern"


{-| Unified Turkic Latin Alphabet (Historical)
-}
baku1926 : Variant
baku1926 =
    Variant "baku1926"


{-| The Balanka dialect of Anii
-}
balanka : Variant
balanka =
    Variant "balanka"


{-| The Barlavento dialect group of Kabuverdianu
-}
barla : Variant
barla =
    Variant "barla"


{-| Basic English
-}
basiceng : Variant
basiceng =
    Variant "basiceng"


{-| Buddhist Hybrid Sanskrit
-}
bauddha : Variant
bauddha =
    Variant "bauddha"


{-| Biscayan dialect of Basque
-}
biscayan : Variant
biscayan =
    Variant "biscayan"


{-| The San Giorgio dialect of Resian
The Bila dialect of Resian
-}
biske : Variant
biske =
    Variant "biske"


{-| Slovene in Bohorič alphabet
-}
bohoric : Variant
bohoric =
    Variant "bohoric"


{-| Boontling
-}
boont : Variant
boont =
    Variant "boont"


{-| Bornholmsk
-}
bornholm : Variant
bornholm =
    Variant "bornholm"


{-| Cisalpine
-}
cisaup : Variant
cisaup =
    Variant "cisaup"


{-| Portuguese-Brazilian Orthographic Convention of 1945 (Convenção Ortográfica Luso-Brasileira de 1945)
-}
colb1945 : Variant
colb1945 =
    Variant "colb1945"


{-| Cornu-English
Cornish English
Anglo-Cornish
-}
cornu : Variant
cornu =
    Variant "cornu"


{-| Occitan variants of the Croissant area
-}
creiss : Variant
creiss =
    Variant "creiss"


{-| Slovene in Dajnko alphabet
-}
dajnko : Variant
dajnko =
    Variant "dajnko"


{-| Serbian with Ekavian pronunciation
-}
ekavsk : Variant
ekavsk =
    Variant "ekavsk"


{-| Early Modern English (1500-1700)
-}
emodeng : Variant
emodeng =
    Variant "emodeng"


{-| International Phonetic Alphabet
-}
fonipa : Variant
fonipa =
    Variant "fonipa"


{-| Kirshenbaum Phonetic Alphabet
-}
fonkirsh : Variant
fonkirsh =
    Variant "fonkirsh"


{-| North American Phonetic Alphabet
Americanist Phonetic Notation
-}
fonnapa : Variant
fonnapa =
    Variant "fonnapa"


{-| Uralic Phonetic Alphabet
-}
fonupa : Variant
fonupa =
    Variant "fonupa"


{-| X-SAMPA transcription
-}
fonxsamp : Variant
fonxsamp =
    Variant "fonxsamp"


{-| Gascon
-}
gascon : Variant
gascon =
    Variant "gascon"


{-| Classical Occitan orthography
-}
grclass : Variant
grclass =
    Variant "grclass"


{-| Italian-inspired Occitan orthography
-}
grital : Variant
grital =
    Variant "grital"


{-| Mistralian or Mistralian-inspired Occitan orthography
-}
grmistr : Variant
grmistr =
    Variant "grmistr"


{-| Hepburn romanization
-}
hepburn : Variant
hepburn =
    Variant "hepburn"


{-| Hepburn romanization, Library of Congress method
-}
heploc : Variant
heploc =
    Variant "heploc"


{-| Norwegian in Høgnorsk (High Norwegian) orthography
-}
hognorsk : Variant
hognorsk =
    Variant "hognorsk"


{-| Standard H-system orthographic fallback for spelling Esperanto
-}
hsistemo : Variant
hsistemo =
    Variant "hsistemo"


{-| Serbian with Ijekavian pronunciation
-}
ijekavsk : Variant
ijekavsk =
    Variant "ijekavsk"


{-| Epic Sanskrit
-}
itihasa : Variant
itihasa =
    Variant "itihasa"


{-| Bulgarian in 1899 orthography
-}
ivanchov : Variant
ivanchov =
    Variant "ivanchov"


{-| Jauer dialect of Romansh
-}
jauer : Variant
jauer =
    Variant "jauer"


{-| Jyutping Cantonese Romanization
-}
jyutping : Variant
jyutping =
    Variant "jyutping"


{-| Common Cornish orthography of Revived Cornish
-}
kkcor : Variant
kkcor =
    Variant "kkcor"


{-| The Kociewie dialect of Polish
-}
kociewie : Variant
kociewie =
    Variant "kociewie"


{-| Standard Cornish orthography of Revived Cornish
Kernowek Standard
-}
kscor : Variant
kscor =
    Variant "kscor"


{-| Classical Sanskrit
-}
laukika : Variant
laukika =
    Variant "laukika"


{-| Limousin
-}
lemosin : Variant
lemosin =
    Variant "lemosin"


{-| Languedocien
-}
lengadoc : Variant
lengadoc =
    Variant "lengadoc"


{-| The Lipovaz dialect of Resian
The Lipovec dialect of Resian
-}
lipaw : Variant
lipaw =
    Variant "lipaw"


{-| Post-1917 Russian orthography
-}
luna1918 : Variant
luna1918 =
    Variant "luna1918"


{-| Slovene in Metelko alphabet
-}
metelko : Variant
metelko =
    Variant "metelko"


{-| Monotonic Greek
-}
monoton : Variant
monoton =
    Variant "monoton"


{-| Ndyuka dialect
Aukan dialect
-}
ndyuka : Variant
ndyuka =
    Variant "ndyuka"


{-| Natisone dialect
Nadiza dialect
-}
nedis : Variant
nedis =
    Variant "nedis"


{-| Newfoundland English
-}
newfound : Variant
newfound =
    Variant "newfound"


{-| Niçard
-}
nicard : Variant
nicard =
    Variant "nicard"


{-| The Gniva dialect of Resian
The Njiva dialect of Resian
-}
njiva : Variant
njiva =
    Variant "njiva"


{-| Volapük nulik
Volapük perevidöl
Volapük nulädik
de Jong's Volapük
New Volapük
Revised Volapük
Modern Volapük
-}
nulik : Variant
nulik =
    Variant "nulik"


{-| The Oseacco dialect of Resian
The Osojane dialect of Resian
-}
osojs : Variant
osojs =
    Variant "osojs"


{-| Oxford English Dictionary spelling
-}
oxendict : Variant
oxendict =
    Variant "oxendict"


{-| Pahawh Hmong Second Stage Reduced orthography
-}
pahawh2 : Variant
pahawh2 =
    Variant "pahawh2"


{-| Pahawh Hmong Third Stage Reduced orthography
-}
pahawh3 : Variant
pahawh3 =
    Variant "pahawh3"


{-| Pahawh Hmong Final Version orthography
-}
pahawh4 : Variant
pahawh4 =
    Variant "pahawh4"


{-| Pamaka dialect
-}
pamaka : Variant
pamaka =
    Variant "pamaka"


{-| Latino Sine Flexione
Interlingua de API
Interlingua de Peano
-}
peano : Variant
peano =
    Variant "peano"


{-| Petrine orthography
-}
petr1708 : Variant
petr1708 =
    Variant "petr1708"


{-| Pinyin romanization
-}
pinyin : Variant
pinyin =
    Variant "pinyin"


{-| Polytonic Greek
-}
polyton : Variant
polyton =
    Variant "polyton"


{-| Provençal
-}
provenc : Variant
provenc =
    Variant "provenc"


{-| Puter idiom of Romansh
-}
puter : Variant
puter =
    Variant "puter"


{-| Volapük rigik
Schleyer's Volapük
Original Volapük
Classic Volapük
-}
rigik : Variant
rigik =
    Variant "rigik"


{-| Resian
Resianic
Rezijan
-}
rozaj : Variant
rozaj =
    Variant "rozaj"


{-| Rumantsch Grischun
-}
rumgr : Variant
rumgr =
    Variant "rumgr"


{-| Scottish Standard English
-}
scotland : Variant
scotland =
    Variant "scotland"


{-| Scouse
-}
scouse : Variant
scouse =
    Variant "scouse"


{-| Simplified form
-}
simple : Variant
simple =
    Variant "simple"


{-| The Stolvizza dialect of Resian
The Solbica dialect of Resian
-}
solba : Variant
solba =
    Variant "solba"


{-| The Sotavento dialect group of Kabuverdianu
-}
sotav : Variant
sotav =
    Variant "sotav"


{-| Spanglish
-}
spanglis : Variant
spanglis =
    Variant "spanglis"


{-| Surmiran idiom of Romansh
-}
surmiran : Variant
surmiran =
    Variant "surmiran"


{-| Sursilvan idiom of Romansh
-}
sursilv : Variant
sursilv =
    Variant "sursilv"


{-| Sutsilvan idiom of Romansh
-}
sutsilv : Variant
sutsilv =
    Variant "sutsilv"


{-| Belarusian in Taraskievica orthography
-}
tarask : Variant
tarask =
    Variant "tarask"


{-| Tongyong Pinyin romanization
-}
tongyong : Variant
tongyong =
    Variant "tongyong"


{-| Tunumiisiut
East Greenlandic
Østgrønlandsk
-}
tunumiit : Variant
tunumiit =
    Variant "tunumiit"


{-| Unified Cornish orthography of Revived Cornish
-}
uccor : Variant
uccor =
    Variant "uccor"


{-| Unified Cornish Revised orthography of Revived Cornish
-}
ucrcor : Variant
ucrcor =
    Variant "ucrcor"


{-| Ulster dialect of Scots
-}
ulster : Variant
ulster =
    Variant "ulster"


{-| Unifon phonetic alphabet
-}
unifon : Variant
unifon =
    Variant "unifon"


{-| Vedic Sanskrit
-}
vaidika : Variant
vaidika =
    Variant "vaidika"


{-| Valencian
-}
valencia : Variant
valencia =
    Variant "valencia"


{-| Vallader idiom of Romansh
-}
vallader : Variant
vallader =
    Variant "vallader"


{-| Latvian orthography used before 1920s ("vecā druka")
-}
vecdruka : Variant
vecdruka =
    Variant "vecdruka"


{-| Vivaro-Alpine
-}
vivaraup : Variant
vivaraup =
    Variant "vivaraup"


{-| Wade-Giles romanization
-}
wadegile : Variant
wadegile =
    Variant "wadegile"


{-| Standard X-system orthographic fallback for spelling Esperanto
-}
xsistemo : Variant
xsistemo =
    Variant "xsistemo"
