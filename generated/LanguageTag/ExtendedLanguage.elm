module LanguageTag.ExtendedLanguage exposing
    ( ExtendedLanguage, toCodeString
    , aao, abh, abv, acm, acq, acw, acx, acy, adf, ads, aeb, aec, aed, aen, afb, afg, ajp, apc, apd, arb, arq, ars, ary, arz, ase, asf, asp, asq, asw, auz, avl, ayh, ayl, ayn, ayp, bbz, bfi, bfk, bjn, bog, bqn, bqy, btj, bve, bvl, bvu, bzs, cdo, cds, cjy, cmn, cnp, coa, cpx, csc, csd, cse, csf, csg, csl, csn, csp, csq, csr, czh, czo, doq, dse, dsl, dup, ecs, esl, esn, eso, eth, fcs, fse, fsl, fss, gan, gds, gom, gse, gsg, gsm, gss, gus, hab, haf, hak, hds, hji, hks, hos, hps, hsh, hsl, hsn, icl, iks, ils, inl, ins, ise, isg, isr, jak, jax, jcs, jhs, jls, jos, jsl, jus, kgi, knn, kvb, kvk, kvr, kxd, lbs, lce, lcf, liw, lls, lsg, lsl, lsn, lso, lsp, lst, lsv, lsy, ltg, lvs, lws, lzh, max, mdl, meo, mfa, mfb, mfs, min, mnp, mqg, mre, msd, msi, msr, mui, mzc, mzg, mzy, nan, nbs, ncs, nsi, nsl, nsp, nsr, nzs, okl, orn, ors, pel, pga, pgz, pks, prl, prz, psc, psd, pse, psg, psl, pso, psp, psr, pys, rms, rsi, rsl, rsm, sdl, sfb, sfs, sgg, sgx, shu, slf, sls, sqk, sqs, ssh, ssp, ssr, svk, swc, swh, swl, syy, szs, tmw, tse, tsm, tsq, tss, tsy, tza, ugn, ugy, ukl, uks, urk, uzn, uzs, vgt, vkk, vkt, vsi, vsl, vsv, wbs, wuu, xki, xml, xmm, xms, yds, ygs, yhs, ysl, yue, zib, zlm, zmi, zsl, zsm
    )

{-| [ISO 639](https://en.wikipedia.org/wiki/ISO_639) has some macrolanguages. Sometimes macrolanguages
can be used as standalone languages. Sometimes there are specific language variants that belong to those macrolanguages.
For example, `zh` is a macrolanguage for Chinese. Sometimes it is used to refer to Mandarin (and some tools will expect
to see zh for Mandarin). But you can also specify Mandarin specifically with an extended language specifier, `zh-cmn`.
That form disambiguates from other Chinese language variants, such as `zh-yue`.

Again, this depends on the tool consuming these language codes. Some tools expect to see Mandarin written as
`zh-CN` (Chinese in the region Mainland China). Be sure to test your implementation because even if your language
tag is precise, specific tools may depend on it being written in a specific way and may not interpret all correct
variations.

@docs ExtendedLanguage, toCodeString

@docs aao, abh, abv, acm, acq, acw, acx, acy, adf, ads, aeb, aec, aed, aen, afb, afg, ajp, apc, apd, arb, arq, ars, ary, arz, ase, asf, asp, asq, asw, auz, avl, ayh, ayl, ayn, ayp, bbz, bfi, bfk, bjn, bog, bqn, bqy, btj, bve, bvl, bvu, bzs, cdo, cds, cjy, cmn, cnp, coa, cpx, csc, csd, cse, csf, csg, csl, csn, csp, csq, csr, czh, czo, doq, dse, dsl, dup, ecs, esl, esn, eso, eth, fcs, fse, fsl, fss, gan, gds, gom, gse, gsg, gsm, gss, gus, hab, haf, hak, hds, hji, hks, hos, hps, hsh, hsl, hsn, icl, iks, ils, inl, ins, ise, isg, isr, jak, jax, jcs, jhs, jls, jos, jsl, jus, kgi, knn, kvb, kvk, kvr, kxd, lbs, lce, lcf, liw, lls, lsg, lsl, lsn, lso, lsp, lst, lsv, lsy, ltg, lvs, lws, lzh, max, mdl, meo, mfa, mfb, mfs, min, mnp, mqg, mre, msd, msi, msr, mui, mzc, mzg, mzy, nan, nbs, ncs, nsi, nsl, nsp, nsr, nzs, okl, orn, ors, pel, pga, pgz, pks, prl, prz, psc, psd, pse, psg, psl, pso, psp, psr, pys, rms, rsi, rsl, rsm, sdl, sfb, sfs, sgg, sgx, shu, slf, sls, sqk, sqs, ssh, ssp, ssr, svk, swc, swh, swl, syy, szs, tmw, tse, tsm, tsq, tss, tsy, tza, ugn, ugy, ukl, uks, urk, uzn, uzs, vgt, vkk, vkt, vsi, vsl, vsv, wbs, wuu, xki, xml, xmm, xms, yds, ygs, yhs, ysl, yue, zib, zlm, zmi, zsl, zsm

-}

import LanguageTag.Internal as Internal exposing (ExtendedLanguage(..))


{-| -}
type alias ExtendedLanguage =
    Internal.ExtendedLanguage


{-| Get the ISO 639 code for this ExtendedLanguage.
-}
toCodeString : ExtendedLanguage -> String
toCodeString (ExtendedLanguage rawCode) =
    rawCode


{-| Algerian Saharan Arabic
-}
aao : ExtendedLanguage
aao =
    ExtendedLanguage "aao"


{-| Tajiki Arabic
-}
abh : ExtendedLanguage
abh =
    ExtendedLanguage "abh"


{-| Baharna Arabic
-}
abv : ExtendedLanguage
abv =
    ExtendedLanguage "abv"


{-| Mesopotamian Arabic
-}
acm : ExtendedLanguage
acm =
    ExtendedLanguage "acm"


{-| Ta'izzi-Adeni Arabic
-}
acq : ExtendedLanguage
acq =
    ExtendedLanguage "acq"


{-| Hijazi Arabic
-}
acw : ExtendedLanguage
acw =
    ExtendedLanguage "acw"


{-| Omani Arabic
-}
acx : ExtendedLanguage
acx =
    ExtendedLanguage "acx"


{-| Cypriot Arabic
-}
acy : ExtendedLanguage
acy =
    ExtendedLanguage "acy"


{-| Dhofari Arabic
-}
adf : ExtendedLanguage
adf =
    ExtendedLanguage "adf"


{-| Adamorobe Sign Language
-}
ads : ExtendedLanguage
ads =
    ExtendedLanguage "ads"


{-| Tunisian Arabic
-}
aeb : ExtendedLanguage
aeb =
    ExtendedLanguage "aeb"


{-| Saidi Arabic
-}
aec : ExtendedLanguage
aec =
    ExtendedLanguage "aec"


{-| Argentine Sign Language
-}
aed : ExtendedLanguage
aed =
    ExtendedLanguage "aed"


{-| Armenian Sign Language
-}
aen : ExtendedLanguage
aen =
    ExtendedLanguage "aen"


{-| Gulf Arabic
-}
afb : ExtendedLanguage
afb =
    ExtendedLanguage "afb"


{-| Afghan Sign Language
-}
afg : ExtendedLanguage
afg =
    ExtendedLanguage "afg"


{-| South Levantine Arabic
-}
ajp : ExtendedLanguage
ajp =
    ExtendedLanguage "ajp"


{-| North Levantine Arabic
-}
apc : ExtendedLanguage
apc =
    ExtendedLanguage "apc"


{-| Sudanese Arabic
-}
apd : ExtendedLanguage
apd =
    ExtendedLanguage "apd"


{-| Standard Arabic
-}
arb : ExtendedLanguage
arb =
    ExtendedLanguage "arb"


{-| Algerian Arabic
-}
arq : ExtendedLanguage
arq =
    ExtendedLanguage "arq"


{-| Najdi Arabic
-}
ars : ExtendedLanguage
ars =
    ExtendedLanguage "ars"


{-| Moroccan Arabic
-}
ary : ExtendedLanguage
ary =
    ExtendedLanguage "ary"


{-| Egyptian Arabic
-}
arz : ExtendedLanguage
arz =
    ExtendedLanguage "arz"


{-| American Sign Language
-}
ase : ExtendedLanguage
ase =
    ExtendedLanguage "ase"


{-| Auslan
Australian Sign Language
-}
asf : ExtendedLanguage
asf =
    ExtendedLanguage "asf"


{-| Algerian Sign Language
-}
asp : ExtendedLanguage
asp =
    ExtendedLanguage "asp"


{-| Austrian Sign Language
-}
asq : ExtendedLanguage
asq =
    ExtendedLanguage "asq"


{-| Australian Aborigines Sign Language
-}
asw : ExtendedLanguage
asw =
    ExtendedLanguage "asw"


{-| Uzbeki Arabic
-}
auz : ExtendedLanguage
auz =
    ExtendedLanguage "auz"


{-| Eastern Egyptian Bedawi Arabic
-}
avl : ExtendedLanguage
avl =
    ExtendedLanguage "avl"


{-| Hadrami Arabic
-}
ayh : ExtendedLanguage
ayh =
    ExtendedLanguage "ayh"


{-| Libyan Arabic
-}
ayl : ExtendedLanguage
ayl =
    ExtendedLanguage "ayl"


{-| Sanaani Arabic
-}
ayn : ExtendedLanguage
ayn =
    ExtendedLanguage "ayn"


{-| North Mesopotamian Arabic
-}
ayp : ExtendedLanguage
ayp =
    ExtendedLanguage "ayp"


{-| Babalia Creole Arabic
-}
bbz : ExtendedLanguage
bbz =
    ExtendedLanguage "bbz"


{-| British Sign Language
-}
bfi : ExtendedLanguage
bfi =
    ExtendedLanguage "bfi"


{-| Ban Khor Sign Language
-}
bfk : ExtendedLanguage
bfk =
    ExtendedLanguage "bfk"


{-| Banjar
-}
bjn : ExtendedLanguage
bjn =
    ExtendedLanguage "bjn"


{-| Bamako Sign Language
-}
bog : ExtendedLanguage
bog =
    ExtendedLanguage "bog"


{-| Bulgarian Sign Language
-}
bqn : ExtendedLanguage
bqn =
    ExtendedLanguage "bqn"


{-| Bengkala Sign Language
-}
bqy : ExtendedLanguage
bqy =
    ExtendedLanguage "bqy"


{-| Bacanese Malay
-}
btj : ExtendedLanguage
btj =
    ExtendedLanguage "btj"


{-| Berau Malay
-}
bve : ExtendedLanguage
bve =
    ExtendedLanguage "bve"


{-| Bolivian Sign Language
-}
bvl : ExtendedLanguage
bvl =
    ExtendedLanguage "bvl"


{-| Bukit Malay
-}
bvu : ExtendedLanguage
bvu =
    ExtendedLanguage "bvu"


{-| Brazilian Sign Language
-}
bzs : ExtendedLanguage
bzs =
    ExtendedLanguage "bzs"


{-| Min Dong Chinese
-}
cdo : ExtendedLanguage
cdo =
    ExtendedLanguage "cdo"


{-| Chadian Sign Language
-}
cds : ExtendedLanguage
cds =
    ExtendedLanguage "cds"


{-| Jinyu Chinese
-}
cjy : ExtendedLanguage
cjy =
    ExtendedLanguage "cjy"


{-| Mandarin Chinese
-}
cmn : ExtendedLanguage
cmn =
    ExtendedLanguage "cmn"


{-| Northern Ping Chinese
Northern Pinghua
-}
cnp : ExtendedLanguage
cnp =
    ExtendedLanguage "cnp"


{-| Cocos Islands Malay
-}
coa : ExtendedLanguage
coa =
    ExtendedLanguage "coa"


{-| Pu-Xian Chinese
-}
cpx : ExtendedLanguage
cpx =
    ExtendedLanguage "cpx"


{-| Catalan Sign Language
Lengua de señas catalana
Llengua de Signes Catalana
-}
csc : ExtendedLanguage
csc =
    ExtendedLanguage "csc"


{-| Chiangmai Sign Language
-}
csd : ExtendedLanguage
csd =
    ExtendedLanguage "csd"


{-| Czech Sign Language
-}
cse : ExtendedLanguage
cse =
    ExtendedLanguage "cse"


{-| Cuba Sign Language
-}
csf : ExtendedLanguage
csf =
    ExtendedLanguage "csf"


{-| Chilean Sign Language
-}
csg : ExtendedLanguage
csg =
    ExtendedLanguage "csg"


{-| Chinese Sign Language
-}
csl : ExtendedLanguage
csl =
    ExtendedLanguage "csl"


{-| Colombian Sign Language
-}
csn : ExtendedLanguage
csn =
    ExtendedLanguage "csn"


{-| Southern Ping Chinese
Southern Pinghua
-}
csp : ExtendedLanguage
csp =
    ExtendedLanguage "csp"


{-| Croatia Sign Language
-}
csq : ExtendedLanguage
csq =
    ExtendedLanguage "csq"


{-| Costa Rican Sign Language
-}
csr : ExtendedLanguage
csr =
    ExtendedLanguage "csr"


{-| Huizhou Chinese
-}
czh : ExtendedLanguage
czh =
    ExtendedLanguage "czh"


{-| Min Zhong Chinese
-}
czo : ExtendedLanguage
czo =
    ExtendedLanguage "czo"


{-| Dominican Sign Language
-}
doq : ExtendedLanguage
doq =
    ExtendedLanguage "doq"


{-| Dutch Sign Language
-}
dse : ExtendedLanguage
dse =
    ExtendedLanguage "dse"


{-| Danish Sign Language
-}
dsl : ExtendedLanguage
dsl =
    ExtendedLanguage "dsl"


{-| Duano
-}
dup : ExtendedLanguage
dup =
    ExtendedLanguage "dup"


{-| Ecuadorian Sign Language
-}
ecs : ExtendedLanguage
ecs =
    ExtendedLanguage "ecs"


{-| Egypt Sign Language
-}
esl : ExtendedLanguage
esl =
    ExtendedLanguage "esl"


{-| Salvadoran Sign Language
-}
esn : ExtendedLanguage
esn =
    ExtendedLanguage "esn"


{-| Estonian Sign Language
-}
eso : ExtendedLanguage
eso =
    ExtendedLanguage "eso"


{-| Ethiopian Sign Language
-}
eth : ExtendedLanguage
eth =
    ExtendedLanguage "eth"


{-| Quebec Sign Language
-}
fcs : ExtendedLanguage
fcs =
    ExtendedLanguage "fcs"


{-| Finnish Sign Language
-}
fse : ExtendedLanguage
fse =
    ExtendedLanguage "fse"


{-| French Sign Language
-}
fsl : ExtendedLanguage
fsl =
    ExtendedLanguage "fsl"


{-| Finland-Swedish Sign Language
finlandssvenskt teckenspråk
suomenruotsalainen viittomakieli
-}
fss : ExtendedLanguage
fss =
    ExtendedLanguage "fss"


{-| Gan Chinese
-}
gan : ExtendedLanguage
gan =
    ExtendedLanguage "gan"


{-| Ghandruk Sign Language
-}
gds : ExtendedLanguage
gds =
    ExtendedLanguage "gds"


{-| Goan Konkani
-}
gom : ExtendedLanguage
gom =
    ExtendedLanguage "gom"


{-| Ghanaian Sign Language
-}
gse : ExtendedLanguage
gse =
    ExtendedLanguage "gse"


{-| German Sign Language
-}
gsg : ExtendedLanguage
gsg =
    ExtendedLanguage "gsg"


{-| Guatemalan Sign Language
-}
gsm : ExtendedLanguage
gsm =
    ExtendedLanguage "gsm"


{-| Greek Sign Language
-}
gss : ExtendedLanguage
gss =
    ExtendedLanguage "gss"


{-| Guinean Sign Language
-}
gus : ExtendedLanguage
gus =
    ExtendedLanguage "gus"


{-| Hanoi Sign Language
-}
hab : ExtendedLanguage
hab =
    ExtendedLanguage "hab"


{-| Haiphong Sign Language
-}
haf : ExtendedLanguage
haf =
    ExtendedLanguage "haf"


{-| Hakka Chinese
-}
hak : ExtendedLanguage
hak =
    ExtendedLanguage "hak"


{-| Honduras Sign Language
-}
hds : ExtendedLanguage
hds =
    ExtendedLanguage "hds"


{-| Haji
-}
hji : ExtendedLanguage
hji =
    ExtendedLanguage "hji"


{-| Hong Kong Sign Language
Heung Kong Sau Yue
-}
hks : ExtendedLanguage
hks =
    ExtendedLanguage "hks"


{-| Ho Chi Minh City Sign Language
-}
hos : ExtendedLanguage
hos =
    ExtendedLanguage "hos"


{-| Hawai'i Sign Language (HSL)
Hawai'i Pidgin Sign Language
-}
hps : ExtendedLanguage
hps =
    ExtendedLanguage "hps"


{-| Hungarian Sign Language
-}
hsh : ExtendedLanguage
hsh =
    ExtendedLanguage "hsh"


{-| Hausa Sign Language
-}
hsl : ExtendedLanguage
hsl =
    ExtendedLanguage "hsl"


{-| Xiang Chinese
-}
hsn : ExtendedLanguage
hsn =
    ExtendedLanguage "hsn"


{-| Icelandic Sign Language
-}
icl : ExtendedLanguage
icl =
    ExtendedLanguage "icl"


{-| Inuit Sign Language
-}
iks : ExtendedLanguage
iks =
    ExtendedLanguage "iks"


{-| International Sign
-}
ils : ExtendedLanguage
ils =
    ExtendedLanguage "ils"


{-| Indonesian Sign Language
-}
inl : ExtendedLanguage
inl =
    ExtendedLanguage "inl"


{-| Indian Sign Language
-}
ins : ExtendedLanguage
ins =
    ExtendedLanguage "ins"


{-| Italian Sign Language
-}
ise : ExtendedLanguage
ise =
    ExtendedLanguage "ise"


{-| Irish Sign Language
-}
isg : ExtendedLanguage
isg =
    ExtendedLanguage "isg"


{-| Israeli Sign Language
-}
isr : ExtendedLanguage
isr =
    ExtendedLanguage "isr"


{-| Jakun
-}
jak : ExtendedLanguage
jak =
    ExtendedLanguage "jak"


{-| Jambi Malay
-}
jax : ExtendedLanguage
jax =
    ExtendedLanguage "jax"


{-| Jamaican Country Sign Language
-}
jcs : ExtendedLanguage
jcs =
    ExtendedLanguage "jcs"


{-| Jhankot Sign Language
-}
jhs : ExtendedLanguage
jhs =
    ExtendedLanguage "jhs"


{-| Jamaican Sign Language
-}
jls : ExtendedLanguage
jls =
    ExtendedLanguage "jls"


{-| Jordanian Sign Language
-}
jos : ExtendedLanguage
jos =
    ExtendedLanguage "jos"


{-| Japanese Sign Language
-}
jsl : ExtendedLanguage
jsl =
    ExtendedLanguage "jsl"


{-| Jumla Sign Language
-}
jus : ExtendedLanguage
jus =
    ExtendedLanguage "jus"


{-| Selangor Sign Language
-}
kgi : ExtendedLanguage
kgi =
    ExtendedLanguage "kgi"


{-| Konkani (individual language)
-}
knn : ExtendedLanguage
knn =
    ExtendedLanguage "knn"


{-| Kubu
-}
kvb : ExtendedLanguage
kvb =
    ExtendedLanguage "kvb"


{-| Korean Sign Language
-}
kvk : ExtendedLanguage
kvk =
    ExtendedLanguage "kvk"


{-| Kerinci
-}
kvr : ExtendedLanguage
kvr =
    ExtendedLanguage "kvr"


{-| Brunei
-}
kxd : ExtendedLanguage
kxd =
    ExtendedLanguage "kxd"


{-| Libyan Sign Language
-}
lbs : ExtendedLanguage
lbs =
    ExtendedLanguage "lbs"


{-| Loncong
Sekak
-}
lce : ExtendedLanguage
lce =
    ExtendedLanguage "lce"


{-| Lubu
-}
lcf : ExtendedLanguage
lcf =
    ExtendedLanguage "lcf"


{-| Col
-}
liw : ExtendedLanguage
liw =
    ExtendedLanguage "liw"


{-| Lithuanian Sign Language
-}
lls : ExtendedLanguage
lls =
    ExtendedLanguage "lls"


{-| Lyons Sign Language
-}
lsg : ExtendedLanguage
lsg =
    ExtendedLanguage "lsg"


{-| Latvian Sign Language
-}
lsl : ExtendedLanguage
lsl =
    ExtendedLanguage "lsl"


{-| Tibetan Sign Language
-}
lsn : ExtendedLanguage
lsn =
    ExtendedLanguage "lsn"


{-| Laos Sign Language
-}
lso : ExtendedLanguage
lso =
    ExtendedLanguage "lso"


{-| Panamanian Sign Language
Lengua de Señas Panameñas
-}
lsp : ExtendedLanguage
lsp =
    ExtendedLanguage "lsp"


{-| Trinidad and Tobago Sign Language
-}
lst : ExtendedLanguage
lst =
    ExtendedLanguage "lst"


{-| Sivia Sign Language
-}
lsv : ExtendedLanguage
lsv =
    ExtendedLanguage "lsv"


{-| Mauritian Sign Language
-}
lsy : ExtendedLanguage
lsy =
    ExtendedLanguage "lsy"


{-| Latgalian
-}
ltg : ExtendedLanguage
ltg =
    ExtendedLanguage "ltg"


{-| Standard Latvian
-}
lvs : ExtendedLanguage
lvs =
    ExtendedLanguage "lvs"


{-| Malawian Sign Language
-}
lws : ExtendedLanguage
lws =
    ExtendedLanguage "lws"


{-| Literary Chinese
-}
lzh : ExtendedLanguage
lzh =
    ExtendedLanguage "lzh"


{-| North Moluccan Malay
-}
max : ExtendedLanguage
max =
    ExtendedLanguage "max"


{-| Maltese Sign Language
-}
mdl : ExtendedLanguage
mdl =
    ExtendedLanguage "mdl"


{-| Kedah Malay
-}
meo : ExtendedLanguage
meo =
    ExtendedLanguage "meo"


{-| Pattani Malay
-}
mfa : ExtendedLanguage
mfa =
    ExtendedLanguage "mfa"


{-| Bangka
-}
mfb : ExtendedLanguage
mfb =
    ExtendedLanguage "mfb"


{-| Mexican Sign Language
-}
mfs : ExtendedLanguage
mfs =
    ExtendedLanguage "mfs"


{-| Minangkabau
-}
min : ExtendedLanguage
min =
    ExtendedLanguage "min"


{-| Min Bei Chinese
-}
mnp : ExtendedLanguage
mnp =
    ExtendedLanguage "mnp"


{-| Kota Bangun Kutai Malay
-}
mqg : ExtendedLanguage
mqg =
    ExtendedLanguage "mqg"


{-| Martha's Vineyard Sign Language
-}
mre : ExtendedLanguage
mre =
    ExtendedLanguage "mre"


{-| Yucatec Maya Sign Language
-}
msd : ExtendedLanguage
msd =
    ExtendedLanguage "msd"


{-| Sabah Malay
-}
msi : ExtendedLanguage
msi =
    ExtendedLanguage "msi"


{-| Mongolian Sign Language
-}
msr : ExtendedLanguage
msr =
    ExtendedLanguage "msr"


{-| Musi
-}
mui : ExtendedLanguage
mui =
    ExtendedLanguage "mui"


{-| Madagascar Sign Language
-}
mzc : ExtendedLanguage
mzc =
    ExtendedLanguage "mzc"


{-| Monastic Sign Language
-}
mzg : ExtendedLanguage
mzg =
    ExtendedLanguage "mzg"


{-| Mozambican Sign Language
-}
mzy : ExtendedLanguage
mzy =
    ExtendedLanguage "mzy"


{-| Min Nan Chinese
-}
nan : ExtendedLanguage
nan =
    ExtendedLanguage "nan"


{-| Namibian Sign Language
-}
nbs : ExtendedLanguage
nbs =
    ExtendedLanguage "nbs"


{-| Nicaraguan Sign Language
-}
ncs : ExtendedLanguage
ncs =
    ExtendedLanguage "ncs"


{-| Nigerian Sign Language
-}
nsi : ExtendedLanguage
nsi =
    ExtendedLanguage "nsi"


{-| Norwegian Sign Language
-}
nsl : ExtendedLanguage
nsl =
    ExtendedLanguage "nsl"


{-| Nepalese Sign Language
-}
nsp : ExtendedLanguage
nsp =
    ExtendedLanguage "nsp"


{-| Maritime Sign Language
-}
nsr : ExtendedLanguage
nsr =
    ExtendedLanguage "nsr"


{-| New Zealand Sign Language
-}
nzs : ExtendedLanguage
nzs =
    ExtendedLanguage "nzs"


{-| Old Kentish Sign Language
-}
okl : ExtendedLanguage
okl =
    ExtendedLanguage "okl"


{-| Orang Kanaq
-}
orn : ExtendedLanguage
orn =
    ExtendedLanguage "orn"


{-| Orang Seletar
-}
ors : ExtendedLanguage
ors =
    ExtendedLanguage "ors"


{-| Pekal
-}
pel : ExtendedLanguage
pel =
    ExtendedLanguage "pel"


{-| Sudanese Creole Arabic
-}
pga : ExtendedLanguage
pga =
    ExtendedLanguage "pga"


{-| Papua New Guinean Sign Language
-}
pgz : ExtendedLanguage
pgz =
    ExtendedLanguage "pgz"


{-| Pakistan Sign Language
-}
pks : ExtendedLanguage
pks =
    ExtendedLanguage "pks"


{-| Peruvian Sign Language
-}
prl : ExtendedLanguage
prl =
    ExtendedLanguage "prl"


{-| Providencia Sign Language
-}
prz : ExtendedLanguage
prz =
    ExtendedLanguage "prz"


{-| Persian Sign Language
-}
psc : ExtendedLanguage
psc =
    ExtendedLanguage "psc"


{-| Plains Indian Sign Language
-}
psd : ExtendedLanguage
psd =
    ExtendedLanguage "psd"


{-| Central Malay
-}
pse : ExtendedLanguage
pse =
    ExtendedLanguage "pse"


{-| Penang Sign Language
-}
psg : ExtendedLanguage
psg =
    ExtendedLanguage "psg"


{-| Puerto Rican Sign Language
-}
psl : ExtendedLanguage
psl =
    ExtendedLanguage "psl"


{-| Polish Sign Language
-}
pso : ExtendedLanguage
pso =
    ExtendedLanguage "pso"


{-| Philippine Sign Language
-}
psp : ExtendedLanguage
psp =
    ExtendedLanguage "psp"


{-| Portuguese Sign Language
-}
psr : ExtendedLanguage
psr =
    ExtendedLanguage "psr"


{-| Paraguayan Sign Language
Lengua de Señas del Paraguay
-}
pys : ExtendedLanguage
pys =
    ExtendedLanguage "pys"


{-| Romanian Sign Language
-}
rms : ExtendedLanguage
rms =
    ExtendedLanguage "rms"


{-| Rennellese Sign Language
-}
rsi : ExtendedLanguage
rsi =
    ExtendedLanguage "rsi"


{-| Russian Sign Language
-}
rsl : ExtendedLanguage
rsl =
    ExtendedLanguage "rsl"


{-| Miriwoong Sign Language
-}
rsm : ExtendedLanguage
rsm =
    ExtendedLanguage "rsm"


{-| Saudi Arabian Sign Language
-}
sdl : ExtendedLanguage
sdl =
    ExtendedLanguage "sdl"


{-| Langue des signes de Belgique Francophone
French Belgian Sign Language
-}
sfb : ExtendedLanguage
sfb =
    ExtendedLanguage "sfb"


{-| South African Sign Language
-}
sfs : ExtendedLanguage
sfs =
    ExtendedLanguage "sfs"


{-| Swiss-German Sign Language
-}
sgg : ExtendedLanguage
sgg =
    ExtendedLanguage "sgg"


{-| Sierra Leone Sign Language
-}
sgx : ExtendedLanguage
sgx =
    ExtendedLanguage "sgx"


{-| Chadian Arabic
-}
shu : ExtendedLanguage
shu =
    ExtendedLanguage "shu"


{-| Swiss-Italian Sign Language
-}
slf : ExtendedLanguage
slf =
    ExtendedLanguage "slf"


{-| Singapore Sign Language
-}
sls : ExtendedLanguage
sls =
    ExtendedLanguage "sls"


{-| Albanian Sign Language
-}
sqk : ExtendedLanguage
sqk =
    ExtendedLanguage "sqk"


{-| Sri Lankan Sign Language
-}
sqs : ExtendedLanguage
sqs =
    ExtendedLanguage "sqs"


{-| Shihhi Arabic
-}
ssh : ExtendedLanguage
ssh =
    ExtendedLanguage "ssh"


{-| Spanish Sign Language
-}
ssp : ExtendedLanguage
ssp =
    ExtendedLanguage "ssp"


{-| Swiss-French Sign Language
-}
ssr : ExtendedLanguage
ssr =
    ExtendedLanguage "ssr"


{-| Slovakian Sign Language
-}
svk : ExtendedLanguage
svk =
    ExtendedLanguage "svk"


{-| Congo Swahili
-}
swc : ExtendedLanguage
swc =
    ExtendedLanguage "swc"


{-| Swahili (individual language)
Kiswahili
-}
swh : ExtendedLanguage
swh =
    ExtendedLanguage "swh"


{-| Swedish Sign Language
-}
swl : ExtendedLanguage
swl =
    ExtendedLanguage "swl"


{-| Al-Sayyid Bedouin Sign Language
-}
syy : ExtendedLanguage
syy =
    ExtendedLanguage "syy"


{-| Solomon Islands Sign Language
-}
szs : ExtendedLanguage
szs =
    ExtendedLanguage "szs"


{-| Temuan
-}
tmw : ExtendedLanguage
tmw =
    ExtendedLanguage "tmw"


{-| Tunisian Sign Language
-}
tse : ExtendedLanguage
tse =
    ExtendedLanguage "tse"


{-| Turkish Sign Language
Türk İşaret Dili
-}
tsm : ExtendedLanguage
tsm =
    ExtendedLanguage "tsm"


{-| Thai Sign Language
-}
tsq : ExtendedLanguage
tsq =
    ExtendedLanguage "tsq"


{-| Taiwan Sign Language
-}
tss : ExtendedLanguage
tss =
    ExtendedLanguage "tss"


{-| Tebul Sign Language
-}
tsy : ExtendedLanguage
tsy =
    ExtendedLanguage "tsy"


{-| Tanzanian Sign Language
-}
tza : ExtendedLanguage
tza =
    ExtendedLanguage "tza"


{-| Ugandan Sign Language
-}
ugn : ExtendedLanguage
ugn =
    ExtendedLanguage "ugn"


{-| Uruguayan Sign Language
-}
ugy : ExtendedLanguage
ugy =
    ExtendedLanguage "ugy"


{-| Ukrainian Sign Language
-}
ukl : ExtendedLanguage
ukl =
    ExtendedLanguage "ukl"


{-| Urubú-Kaapor Sign Language
Kaapor Sign Language
-}
uks : ExtendedLanguage
uks =
    ExtendedLanguage "uks"


{-| Urak Lawoi'
-}
urk : ExtendedLanguage
urk =
    ExtendedLanguage "urk"


{-| Northern Uzbek
-}
uzn : ExtendedLanguage
uzn =
    ExtendedLanguage "uzn"


{-| Southern Uzbek
-}
uzs : ExtendedLanguage
uzs =
    ExtendedLanguage "uzs"


{-| Vlaamse Gebarentaal
Flemish Sign Language
-}
vgt : ExtendedLanguage
vgt =
    ExtendedLanguage "vgt"


{-| Kaur
-}
vkk : ExtendedLanguage
vkk =
    ExtendedLanguage "vkk"


{-| Tenggarong Kutai Malay
-}
vkt : ExtendedLanguage
vkt =
    ExtendedLanguage "vkt"


{-| Moldova Sign Language
-}
vsi : ExtendedLanguage
vsi =
    ExtendedLanguage "vsi"


{-| Venezuelan Sign Language
-}
vsl : ExtendedLanguage
vsl =
    ExtendedLanguage "vsl"


{-| Valencian Sign Language
Llengua de signes valenciana
-}
vsv : ExtendedLanguage
vsv =
    ExtendedLanguage "vsv"


{-| West Bengal Sign Language
-}
wbs : ExtendedLanguage
wbs =
    ExtendedLanguage "wbs"


{-| Wu Chinese
-}
wuu : ExtendedLanguage
wuu =
    ExtendedLanguage "wuu"


{-| Kenyan Sign Language
-}
xki : ExtendedLanguage
xki =
    ExtendedLanguage "xki"


{-| Malaysian Sign Language
-}
xml : ExtendedLanguage
xml =
    ExtendedLanguage "xml"


{-| Manado Malay
-}
xmm : ExtendedLanguage
xmm =
    ExtendedLanguage "xmm"


{-| Moroccan Sign Language
-}
xms : ExtendedLanguage
xms =
    ExtendedLanguage "xms"


{-| Yiddish Sign Language
-}
yds : ExtendedLanguage
yds =
    ExtendedLanguage "yds"


{-| Yolŋu Sign Language
-}
ygs : ExtendedLanguage
ygs =
    ExtendedLanguage "ygs"


{-| Yan-nhaŋu Sign Language
-}
yhs : ExtendedLanguage
yhs =
    ExtendedLanguage "yhs"


{-| Yugoslavian Sign Language
-}
ysl : ExtendedLanguage
ysl =
    ExtendedLanguage "ysl"


{-| Yue Chinese
Cantonese
-}
yue : ExtendedLanguage
yue =
    ExtendedLanguage "yue"


{-| Zimbabwe Sign Language
-}
zib : ExtendedLanguage
zib =
    ExtendedLanguage "zib"


{-| Malay (individual language)
-}
zlm : ExtendedLanguage
zlm =
    ExtendedLanguage "zlm"


{-| Negeri Sembilan Malay
-}
zmi : ExtendedLanguage
zmi =
    ExtendedLanguage "zmi"


{-| Zambian Sign Language
-}
zsl : ExtendedLanguage
zsl =
    ExtendedLanguage "zsl"


{-| Standard Malay
-}
zsm : ExtendedLanguage
zsm =
    ExtendedLanguage "zsm"
