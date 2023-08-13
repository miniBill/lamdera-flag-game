module LanguageTag.Script exposing
    ( Script, toCodeString
    , adlm, afak, aghb, ahom, arab, aran, armi, armn, avst, bali, bamu, bass, batk, beng, bhks, blis, bopo, brah, brai, bugi, buhd, cakm, cans, cari, cham, cher, chrs, cirt, copt, cpmn, cprt, cyrl, cyrs, deva, diak, dogr, dsrt, dupl, egyd, egyh, egyp, elba, elym, ethi, geok, geor, glag, gong, gonm, goth, gran, grek, gujr, guru, hanb, hang, hani, hano, hans, hant, hatr, hebr, hira, hluw, hmng, hmnp, hrkt, hung, inds, ital, jamo, java, jpan, jurc, kali, kana, khar, khmr, khoj, kitl, kits, knda, kore, kpel, kthi, lana, laoo, latf, latg, latn, leke, lepc, limb, lina, linb, lisu, loma, lyci, lydi, mahj, maka, mand, mani, marc, maya, medf, mend, merc, mero, mlym, modi, mong, moon, mroo, mtei, mult, mymr, nand, narb, nbat, newa, nkdb, nkgb, nkoo, nshu, ogam, olck, orkh, orya, osge, osma, palm, pauc, perm, phag, phli, phlp, phlv, phnx, piqd, plrd, prti, rjng, rohg, roro, runr, samr, sara, sarb, saur, sgnw, shaw, shrd, shui, sidd, sind, sinh, sogd, sogo, sora, soyo, sund, sylo, syrc, syre, syrj, syrn, tagb, takr, tale, talu, taml, tang, tavt, telu, teng, tfng, tglg, thaa, thai, tibt, tirh, toto, ugar, vaii, visp, wara, wcho, wole, xpeo, xsux, yezi, yiii, zanb, zinh, zmth, zsye, zsym, zxxx, zyyy, zzzz
    )

{-| ISO 15924 language script codes. See <https://en.wikipedia.org/wiki/ISO_15924>.

@docs Script, toCodeString

@docs adlm, afak, aghb, ahom, arab, aran, armi, armn, avst, bali, bamu, bass, batk, beng, bhks, blis, bopo, brah, brai, bugi, buhd, cakm, cans, cari, cham, cher, chrs, cirt, copt, cpmn, cprt, cyrl, cyrs, deva, diak, dogr, dsrt, dupl, egyd, egyh, egyp, elba, elym, ethi, geok, geor, glag, gong, gonm, goth, gran, grek, gujr, guru, hanb, hang, hani, hano, hans, hant, hatr, hebr, hira, hluw, hmng, hmnp, hrkt, hung, inds, ital, jamo, java, jpan, jurc, kali, kana, khar, khmr, khoj, kitl, kits, knda, kore, kpel, kthi, lana, laoo, latf, latg, latn, leke, lepc, limb, lina, linb, lisu, loma, lyci, lydi, mahj, maka, mand, mani, marc, maya, medf, mend, merc, mero, mlym, modi, mong, moon, mroo, mtei, mult, mymr, nand, narb, nbat, newa, nkdb, nkgb, nkoo, nshu, ogam, olck, orkh, orya, osge, osma, palm, pauc, perm, phag, phli, phlp, phlv, phnx, piqd, plrd, prti, rjng, rohg, roro, runr, samr, sara, sarb, saur, sgnw, shaw, shrd, shui, sidd, sind, sinh, sogd, sogo, sora, soyo, sund, sylo, syrc, syre, syrj, syrn, tagb, takr, tale, talu, taml, tang, tavt, telu, teng, tfng, tglg, thaa, thai, tibt, tirh, toto, ugar, vaii, visp, wara, wcho, wole, xpeo, xsux, yezi, yiii, zanb, zinh, zmth, zsye, zsym, zxxx, zyyy, zzzz

-}

import LanguageTag.Internal as Internal exposing (Script(..))


{-| -}
type alias Script =
    Internal.Script


{-| Get the ISO 15924 language script code value for this Script.
-}
toCodeString : Script -> String
toCodeString (Script rawCode) =
    rawCode


{-| Adlam
-}
adlm : Script
adlm =
    Script "adlm"


{-| Afaka
-}
afak : Script
afak =
    Script "afak"


{-| Caucasian Albanian
-}
aghb : Script
aghb =
    Script "aghb"


{-| Ahom
Tai Ahom
-}
ahom : Script
ahom =
    Script "ahom"


{-| Arabic
-}
arab : Script
arab =
    Script "arab"


{-| Arabic (Nastaliq variant)
-}
aran : Script
aran =
    Script "aran"


{-| Imperial Aramaic
-}
armi : Script
armi =
    Script "armi"


{-| Armenian
-}
armn : Script
armn =
    Script "armn"


{-| Avestan
-}
avst : Script
avst =
    Script "avst"


{-| Balinese
-}
bali : Script
bali =
    Script "bali"


{-| Bamum
-}
bamu : Script
bamu =
    Script "bamu"


{-| Bassa Vah
-}
bass : Script
bass =
    Script "bass"


{-| Batak
-}
batk : Script
batk =
    Script "batk"


{-| Bengali
Bangla
-}
beng : Script
beng =
    Script "beng"


{-| Bhaiksuki
-}
bhks : Script
bhks =
    Script "bhks"


{-| Blissymbols
-}
blis : Script
blis =
    Script "blis"


{-| Bopomofo
-}
bopo : Script
bopo =
    Script "bopo"


{-| Brahmi
-}
brah : Script
brah =
    Script "brah"


{-| Braille
-}
brai : Script
brai =
    Script "brai"


{-| Buginese
-}
bugi : Script
bugi =
    Script "bugi"


{-| Buhid
-}
buhd : Script
buhd =
    Script "buhd"


{-| Chakma
-}
cakm : Script
cakm =
    Script "cakm"


{-| Unified Canadian Aboriginal Syllabics
-}
cans : Script
cans =
    Script "cans"


{-| Carian
-}
cari : Script
cari =
    Script "cari"


{-| Cham
-}
cham : Script
cham =
    Script "cham"


{-| Cherokee
-}
cher : Script
cher =
    Script "cher"


{-| Chorasmian
-}
chrs : Script
chrs =
    Script "chrs"


{-| Cirth
-}
cirt : Script
cirt =
    Script "cirt"


{-| Coptic
-}
copt : Script
copt =
    Script "copt"


{-| Cypro-Minoan
-}
cpmn : Script
cpmn =
    Script "cpmn"


{-| Cypriot syllabary
-}
cprt : Script
cprt =
    Script "cprt"


{-| Cyrillic
-}
cyrl : Script
cyrl =
    Script "cyrl"


{-| Cyrillic (Old Church Slavonic variant)
-}
cyrs : Script
cyrs =
    Script "cyrs"


{-| Devanagari
Nagari
-}
deva : Script
deva =
    Script "deva"


{-| Dives Akuru
-}
diak : Script
diak =
    Script "diak"


{-| Dogra
-}
dogr : Script
dogr =
    Script "dogr"


{-| Deseret
Mormon
-}
dsrt : Script
dsrt =
    Script "dsrt"


{-| Duployan shorthand
Duployan stenography
-}
dupl : Script
dupl =
    Script "dupl"


{-| Egyptian demotic
-}
egyd : Script
egyd =
    Script "egyd"


{-| Egyptian hieratic
-}
egyh : Script
egyh =
    Script "egyh"


{-| Egyptian hieroglyphs
-}
egyp : Script
egyp =
    Script "egyp"


{-| Elbasan
-}
elba : Script
elba =
    Script "elba"


{-| Elymaic
-}
elym : Script
elym =
    Script "elym"


{-| Ethiopic
Geʻez
Ge'ez
-}
ethi : Script
ethi =
    Script "ethi"


{-| Khutsuri (Asomtavruli and Nuskhuri)
-}
geok : Script
geok =
    Script "geok"


{-| Georgian (Mkhedruli and Mtavruli)
-}
geor : Script
geor =
    Script "geor"


{-| Glagolitic
-}
glag : Script
glag =
    Script "glag"


{-| Gunjala Gondi
-}
gong : Script
gong =
    Script "gong"


{-| Masaram Gondi
-}
gonm : Script
gonm =
    Script "gonm"


{-| Gothic
-}
goth : Script
goth =
    Script "goth"


{-| Grantha
-}
gran : Script
gran =
    Script "gran"


{-| Greek
-}
grek : Script
grek =
    Script "grek"


{-| Gujarati
-}
gujr : Script
gujr =
    Script "gujr"


{-| Gurmukhi
-}
guru : Script
guru =
    Script "guru"


{-| Han with Bopomofo (alias for Han + Bopomofo)
-}
hanb : Script
hanb =
    Script "hanb"


{-| Hangul
Hangŭl
Hangeul
-}
hang : Script
hang =
    Script "hang"


{-| Han
Hanzi
Kanji
Hanja
-}
hani : Script
hani =
    Script "hani"


{-| Hanunoo
Hanunóo
-}
hano : Script
hano =
    Script "hano"


{-| Han (Simplified variant)
-}
hans : Script
hans =
    Script "hans"


{-| Han (Traditional variant)
-}
hant : Script
hant =
    Script "hant"


{-| Hatran
-}
hatr : Script
hatr =
    Script "hatr"


{-| Hebrew
-}
hebr : Script
hebr =
    Script "hebr"


{-| Hiragana
-}
hira : Script
hira =
    Script "hira"


{-| Anatolian Hieroglyphs
Luwian Hieroglyphs
Hittite Hieroglyphs
-}
hluw : Script
hluw =
    Script "hluw"


{-| Pahawh Hmong
-}
hmng : Script
hmng =
    Script "hmng"


{-| Nyiakeng Puachue Hmong
-}
hmnp : Script
hmnp =
    Script "hmnp"


{-| Japanese syllabaries (alias for Hiragana + Katakana)
-}
hrkt : Script
hrkt =
    Script "hrkt"


{-| Old Hungarian
Hungarian Runic
-}
hung : Script
hung =
    Script "hung"


{-| Indus
Harappan
-}
inds : Script
inds =
    Script "inds"


{-| Old Italic (Etruscan, Oscan, etc.)
-}
ital : Script
ital =
    Script "ital"


{-| Jamo (alias for Jamo subset of Hangul)
-}
jamo : Script
jamo =
    Script "jamo"


{-| Javanese
-}
java : Script
java =
    Script "java"


{-| Japanese (alias for Han + Hiragana + Katakana)
-}
jpan : Script
jpan =
    Script "jpan"


{-| Jurchen
-}
jurc : Script
jurc =
    Script "jurc"


{-| Kayah Li
-}
kali : Script
kali =
    Script "kali"


{-| Katakana
-}
kana : Script
kana =
    Script "kana"


{-| Kharoshthi
-}
khar : Script
khar =
    Script "khar"


{-| Khmer
-}
khmr : Script
khmr =
    Script "khmr"


{-| Khojki
-}
khoj : Script
khoj =
    Script "khoj"


{-| Khitan large script
-}
kitl : Script
kitl =
    Script "kitl"


{-| Khitan small script
-}
kits : Script
kits =
    Script "kits"


{-| Kannada
-}
knda : Script
knda =
    Script "knda"


{-| Korean (alias for Hangul + Han)
-}
kore : Script
kore =
    Script "kore"


{-| Kpelle
-}
kpel : Script
kpel =
    Script "kpel"


{-| Kaithi
-}
kthi : Script
kthi =
    Script "kthi"


{-| Tai Tham
Lanna
-}
lana : Script
lana =
    Script "lana"


{-| Lao
-}
laoo : Script
laoo =
    Script "laoo"


{-| Latin (Fraktur variant)
-}
latf : Script
latf =
    Script "latf"


{-| Latin (Gaelic variant)
-}
latg : Script
latg =
    Script "latg"


{-| Latin
-}
latn : Script
latn =
    Script "latn"


{-| Leke
-}
leke : Script
leke =
    Script "leke"


{-| Lepcha
Róng
-}
lepc : Script
lepc =
    Script "lepc"


{-| Limbu
-}
limb : Script
limb =
    Script "limb"


{-| Linear A
-}
lina : Script
lina =
    Script "lina"


{-| Linear B
-}
linb : Script
linb =
    Script "linb"


{-| Lisu
Fraser
-}
lisu : Script
lisu =
    Script "lisu"


{-| Loma
-}
loma : Script
loma =
    Script "loma"


{-| Lycian
-}
lyci : Script
lyci =
    Script "lyci"


{-| Lydian
-}
lydi : Script
lydi =
    Script "lydi"


{-| Mahajani
-}
mahj : Script
mahj =
    Script "mahj"


{-| Makasar
-}
maka : Script
maka =
    Script "maka"


{-| Mandaic
Mandaean
-}
mand : Script
mand =
    Script "mand"


{-| Manichaean
-}
mani : Script
mani =
    Script "mani"


{-| Marchen
-}
marc : Script
marc =
    Script "marc"


{-| Mayan hieroglyphs
-}
maya : Script
maya =
    Script "maya"


{-| Medefaidrin
Oberi Okaime
Oberi Ɔkaimɛ
-}
medf : Script
medf =
    Script "medf"


{-| Mende Kikakui
-}
mend : Script
mend =
    Script "mend"


{-| Meroitic Cursive
-}
merc : Script
merc =
    Script "merc"


{-| Meroitic Hieroglyphs
-}
mero : Script
mero =
    Script "mero"


{-| Malayalam
-}
mlym : Script
mlym =
    Script "mlym"


{-| Modi
Moḍī
-}
modi : Script
modi =
    Script "modi"


{-| Mongolian
-}
mong : Script
mong =
    Script "mong"


{-| Moon
Moon code
Moon script
Moon type
-}
moon : Script
moon =
    Script "moon"


{-| Mro
Mru
-}
mroo : Script
mroo =
    Script "mroo"


{-| Meitei Mayek
Meithei
Meetei
-}
mtei : Script
mtei =
    Script "mtei"


{-| Multani
-}
mult : Script
mult =
    Script "mult"


{-| Myanmar
Burmese
-}
mymr : Script
mymr =
    Script "mymr"


{-| Nandinagari
-}
nand : Script
nand =
    Script "nand"


{-| Old North Arabian
Ancient North Arabian
-}
narb : Script
narb =
    Script "narb"


{-| Nabataean
-}
nbat : Script
nbat =
    Script "nbat"


{-| Newa
Newar
Newari
Nepāla lipi
-}
newa : Script
newa =
    Script "newa"


{-| Naxi Dongba
na²¹ɕi³³ to³³ba²¹
Nakhi Tomba
-}
nkdb : Script
nkdb =
    Script "nkdb"


{-| Naxi Geba
na²¹ɕi³³ gʌ²¹ba²¹
'Na-'Khi ²Ggŏ-¹baw
Nakhi Geba
-}
nkgb : Script
nkgb =
    Script "nkgb"


{-| N’Ko
N'Ko
-}
nkoo : Script
nkoo =
    Script "nkoo"


{-| Nüshu
-}
nshu : Script
nshu =
    Script "nshu"


{-| Ogham
-}
ogam : Script
ogam =
    Script "ogam"


{-| Ol Chiki
Ol Cemet'
Ol
Santali
-}
olck : Script
olck =
    Script "olck"


{-| Old Turkic
Orkhon Runic
-}
orkh : Script
orkh =
    Script "orkh"


{-| Oriya
Odia
-}
orya : Script
orya =
    Script "orya"


{-| Osage
-}
osge : Script
osge =
    Script "osge"


{-| Osmanya
-}
osma : Script
osma =
    Script "osma"


{-| Palmyrene
-}
palm : Script
palm =
    Script "palm"


{-| Pau Cin Hau
-}
pauc : Script
pauc =
    Script "pauc"


{-| Old Permic
-}
perm : Script
perm =
    Script "perm"


{-| Phags-pa
-}
phag : Script
phag =
    Script "phag"


{-| Inscriptional Pahlavi
-}
phli : Script
phli =
    Script "phli"


{-| Psalter Pahlavi
-}
phlp : Script
phlp =
    Script "phlp"


{-| Book Pahlavi
-}
phlv : Script
phlv =
    Script "phlv"


{-| Phoenician
-}
phnx : Script
phnx =
    Script "phnx"


{-| Klingon (KLI pIqaD)
-}
piqd : Script
piqd =
    Script "piqd"


{-| Miao
Pollard
-}
plrd : Script
plrd =
    Script "plrd"


{-| Inscriptional Parthian
-}
prti : Script
prti =
    Script "prti"


{-| Rejang
Redjang
Kaganga
-}
rjng : Script
rjng =
    Script "rjng"


{-| Hanifi Rohingya
-}
rohg : Script
rohg =
    Script "rohg"


{-| Rongorongo
-}
roro : Script
roro =
    Script "roro"


{-| Runic
-}
runr : Script
runr =
    Script "runr"


{-| Samaritan
-}
samr : Script
samr =
    Script "samr"


{-| Sarati
-}
sara : Script
sara =
    Script "sara"


{-| Old South Arabian
-}
sarb : Script
sarb =
    Script "sarb"


{-| Saurashtra
-}
saur : Script
saur =
    Script "saur"


{-| SignWriting
-}
sgnw : Script
sgnw =
    Script "sgnw"


{-| Shavian
Shaw
-}
shaw : Script
shaw =
    Script "shaw"


{-| Sharada
Śāradā
-}
shrd : Script
shrd =
    Script "shrd"


{-| Shuishu
-}
shui : Script
shui =
    Script "shui"


{-| Siddham
Siddhaṃ
Siddhamātṛkā
-}
sidd : Script
sidd =
    Script "sidd"


{-| Khudawadi
Sindhi
-}
sind : Script
sind =
    Script "sind"


{-| Sinhala
-}
sinh : Script
sinh =
    Script "sinh"


{-| Sogdian
-}
sogd : Script
sogd =
    Script "sogd"


{-| Old Sogdian
-}
sogo : Script
sogo =
    Script "sogo"


{-| Sora Sompeng
-}
sora : Script
sora =
    Script "sora"


{-| Soyombo
-}
soyo : Script
soyo =
    Script "soyo"


{-| Sundanese
-}
sund : Script
sund =
    Script "sund"


{-| Syloti Nagri
-}
sylo : Script
sylo =
    Script "sylo"


{-| Syriac
-}
syrc : Script
syrc =
    Script "syrc"


{-| Syriac (Estrangelo variant)
-}
syre : Script
syre =
    Script "syre"


{-| Syriac (Western variant)
-}
syrj : Script
syrj =
    Script "syrj"


{-| Syriac (Eastern variant)
-}
syrn : Script
syrn =
    Script "syrn"


{-| Tagbanwa
-}
tagb : Script
tagb =
    Script "tagb"


{-| Takri
Ṭākrī
Ṭāṅkrī
-}
takr : Script
takr =
    Script "takr"


{-| Tai Le
-}
tale : Script
tale =
    Script "tale"


{-| New Tai Lue
-}
talu : Script
talu =
    Script "talu"


{-| Tamil
-}
taml : Script
taml =
    Script "taml"


{-| Tangut
-}
tang : Script
tang =
    Script "tang"


{-| Tai Viet
-}
tavt : Script
tavt =
    Script "tavt"


{-| Telugu
-}
telu : Script
telu =
    Script "telu"


{-| Tengwar
-}
teng : Script
teng =
    Script "teng"


{-| Tifinagh
Berber
-}
tfng : Script
tfng =
    Script "tfng"


{-| Tagalog
Baybayin
Alibata
-}
tglg : Script
tglg =
    Script "tglg"


{-| Thaana
-}
thaa : Script
thaa =
    Script "thaa"


{-| Thai
-}
thai : Script
thai =
    Script "thai"


{-| Tibetan
-}
tibt : Script
tibt =
    Script "tibt"


{-| Tirhuta
-}
tirh : Script
tirh =
    Script "tirh"


{-| Toto
-}
toto : Script
toto =
    Script "toto"


{-| Ugaritic
-}
ugar : Script
ugar =
    Script "ugar"


{-| Vai
-}
vaii : Script
vaii =
    Script "vaii"


{-| Visible Speech
-}
visp : Script
visp =
    Script "visp"


{-| Warang Citi
Varang Kshiti
-}
wara : Script
wara =
    Script "wara"


{-| Wancho
-}
wcho : Script
wcho =
    Script "wcho"


{-| Woleai
-}
wole : Script
wole =
    Script "wole"


{-| Old Persian
-}
xpeo : Script
xpeo =
    Script "xpeo"


{-| Sumero-Akkadian cuneiform
-}
xsux : Script
xsux =
    Script "xsux"


{-| Yezidi
-}
yezi : Script
yezi =
    Script "yezi"


{-| Yi
-}
yiii : Script
yiii =
    Script "yiii"


{-| Zanabazar Square
Zanabazarin Dörböljin Useg
Xewtee Dörböljin Bicig
Horizontal Square Script
-}
zanb : Script
zanb =
    Script "zanb"


{-| Code for inherited script
-}
zinh : Script
zinh =
    Script "zinh"


{-| Mathematical notation
-}
zmth : Script
zmth =
    Script "zmth"


{-| Symbols (Emoji variant)
-}
zsye : Script
zsye =
    Script "zsye"


{-| Symbols
-}
zsym : Script
zsym =
    Script "zsym"


{-| Code for unwritten documents
-}
zxxx : Script
zxxx =
    Script "zxxx"


{-| Code for undetermined script
-}
zyyy : Script
zyyy =
    Script "zyyy"


{-| Code for uncoded script
-}
zzzz : Script
zzzz =
    Script "zzzz"
