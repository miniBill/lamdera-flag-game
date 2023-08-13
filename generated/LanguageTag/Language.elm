module LanguageTag.Language exposing
    ( Language, toCodeString
    , aa, ab, ae, af, ak, am, an, ar, as_, av, ay, az, ba, be, bg, bh, bi, bm, bn, bo, br, bs, ca, ce, ch, co, cr, cs, cu, cv, cy, da, de, dv, dz, ee, el, en, eo, es, et, eu, fa, ff, fi, fj, fo, fr, fy, ga, gd, gl, gn, gu, gv, ha, he, hi, ho, hr, ht, hu, hy, hz, ia, id, ie, ig, ii, ik, in_, io, is, it, iu, iw, ja, ji, jv, jw, ka, kg, ki, kj, kk, kl, km, kn, ko, kr, ks, ku, kv, kw, ky, la, lb, lg, li, ln, lo, lt, lu, lv, mg, mh, mi, mk, ml, mn, mo, mr, ms, mt, my, na, nb, nd, ne, ng, nl, nn, no, nr, nv, ny, oc, oj, om, or, os, pa, pi, pl, ps, pt, qu, rm, rn, ro, ru, rw, sa, sc, sd, se, sg, sh, si, sk, sl, sm, sn, so, sq, sr, ss, st, su, sv, sw, ta, te, tg, th, ti, tk, tl, tn, to, tr, ts, tt, tw, ty, ug, uk, ur, uz, ve, vi, vo, wa, wo, xh, yi, yo, za, zh, zu
    )

{-| ISO 639-1 language codes. See <https://en.wikipedia.org/wiki/ISO_639>.


## Limitations

There are about 8000 possibilities, and it causes performance issues for the Elm compiler, editor tooling, elm-format, and the Elm doc site if I generate all of those options.
The Language codes that I've included in this module represent the majority of common cases, and together with the `ExtendedLanguage` values, you can build most of what you want.
For everything else, there's [`LanguageTag.custom`](LanguageTag#custom) as an escape hatch (or open an issue to share your use case).

@docs Language, toCodeString

@docs aa, ab, ae, af, ak, am, an, ar, as_, av, ay, az, ba, be, bg, bh, bi, bm, bn, bo, br, bs, ca, ce, ch, co, cr, cs, cu, cv, cy, da, de, dv, dz, ee, el, en, eo, es, et, eu, fa, ff, fi, fj, fo, fr, fy, ga, gd, gl, gn, gu, gv, ha, he, hi, ho, hr, ht, hu, hy, hz, ia, id, ie, ig, ii, ik, in_, io, is, it, iu, iw, ja, ji, jv, jw, ka, kg, ki, kj, kk, kl, km, kn, ko, kr, ks, ku, kv, kw, ky, la, lb, lg, li, ln, lo, lt, lu, lv, mg, mh, mi, mk, ml, mn, mo, mr, ms, mt, my, na, nb, nd, ne, ng, nl, nn, no, nr, nv, ny, oc, oj, om, or, os, pa, pi, pl, ps, pt, qu, rm, rn, ro, ru, rw, sa, sc, sd, se, sg, sh, si, sk, sl, sm, sn, so, sq, sr, ss, st, su, sv, sw, ta, te, tg, th, ti, tk, tl, tn, to, tr, ts, tt, tw, ty, ug, uk, ur, uz, ve, vi, vo, wa, wo, xh, yi, yo, za, zh, zu

-}

import LanguageTag.Internal as Internal exposing (Language(..))


{-| -}
type alias Language =
    Internal.Language


{-| Get the ISO 639 language code value for this Language.
-}
toCodeString : Language -> String
toCodeString (Language rawCode) =
    rawCode


{-| Afar
-}
aa : Language
aa =
    Language "aa"


{-| Abkhazian
-}
ab : Language
ab =
    Language "ab"


{-| Avestan
-}
ae : Language
ae =
    Language "ae"


{-| Afrikaans
-}
af : Language
af =
    Language "af"


{-| Akan
-}
ak : Language
ak =
    Language "ak"


{-| Amharic
-}
am : Language
am =
    Language "am"


{-| Aragonese
-}
an : Language
an =
    Language "an"


{-| Arabic
-}
ar : Language
ar =
    Language "ar"


{-| Assamese
-}
as_ : Language
as_ =
    Language "as"


{-| Avaric
-}
av : Language
av =
    Language "av"


{-| Aymara
-}
ay : Language
ay =
    Language "ay"


{-| Azerbaijani
-}
az : Language
az =
    Language "az"


{-| Bashkir
-}
ba : Language
ba =
    Language "ba"


{-| Belarusian
-}
be : Language
be =
    Language "be"


{-| Bulgarian
-}
bg : Language
bg =
    Language "bg"


{-| Bihari languages
-}
bh : Language
bh =
    Language "bh"


{-| Bislama
-}
bi : Language
bi =
    Language "bi"


{-| Bambara
-}
bm : Language
bm =
    Language "bm"


{-| Bengali Bangla
-}
bn : Language
bn =
    Language "bn"


{-| Tibetan
-}
bo : Language
bo =
    Language "bo"


{-| Breton
-}
br : Language
br =
    Language "br"


{-| Bosnian
-}
bs : Language
bs =
    Language "bs"


{-| Catalan Valencian
-}
ca : Language
ca =
    Language "ca"


{-| Chechen
-}
ce : Language
ce =
    Language "ce"


{-| Chamorro
-}
ch : Language
ch =
    Language "ch"


{-| Corsican
-}
co : Language
co =
    Language "co"


{-| Cree
-}
cr : Language
cr =
    Language "cr"


{-| Czech
-}
cs : Language
cs =
    Language "cs"


{-| Church Slavic Church Slavonic Old Bulgarian Old Church Slavonic Old Slavonic
-}
cu : Language
cu =
    Language "cu"


{-| Chuvash
-}
cv : Language
cv =
    Language "cv"


{-| Welsh
-}
cy : Language
cy =
    Language "cy"


{-| Danish
-}
da : Language
da =
    Language "da"


{-| German
-}
de : Language
de =
    Language "de"


{-| Dhivehi Divehi Maldivian
-}
dv : Language
dv =
    Language "dv"


{-| Dzongkha
-}
dz : Language
dz =
    Language "dz"


{-| Ewe
-}
ee : Language
ee =
    Language "ee"


{-| Modern Greek (1453-)
-}
el : Language
el =
    Language "el"


{-| English
-}
en : Language
en =
    Language "en"


{-| Esperanto
-}
eo : Language
eo =
    Language "eo"


{-| Spanish Castilian
-}
es : Language
es =
    Language "es"


{-| Estonian
-}
et : Language
et =
    Language "et"


{-| Basque
-}
eu : Language
eu =
    Language "eu"


{-| Persian
-}
fa : Language
fa =
    Language "fa"


{-| Fulah
-}
ff : Language
ff =
    Language "ff"


{-| Finnish
-}
fi : Language
fi =
    Language "fi"


{-| Fijian
-}
fj : Language
fj =
    Language "fj"


{-| Faroese
-}
fo : Language
fo =
    Language "fo"


{-| French
-}
fr : Language
fr =
    Language "fr"


{-| Western Frisian
-}
fy : Language
fy =
    Language "fy"


{-| Irish
-}
ga : Language
ga =
    Language "ga"


{-| Scottish Gaelic Gaelic
-}
gd : Language
gd =
    Language "gd"


{-| Galician
-}
gl : Language
gl =
    Language "gl"


{-| Guarani
-}
gn : Language
gn =
    Language "gn"


{-| Gujarati
-}
gu : Language
gu =
    Language "gu"


{-| Manx
-}
gv : Language
gv =
    Language "gv"


{-| Hausa
-}
ha : Language
ha =
    Language "ha"


{-| Hebrew
-}
he : Language
he =
    Language "he"


{-| Hindi
-}
hi : Language
hi =
    Language "hi"


{-| Hiri Motu
-}
ho : Language
ho =
    Language "ho"


{-| Croatian
-}
hr : Language
hr =
    Language "hr"


{-| Haitian Haitian Creole
-}
ht : Language
ht =
    Language "ht"


{-| Hungarian
-}
hu : Language
hu =
    Language "hu"


{-| Armenian
-}
hy : Language
hy =
    Language "hy"


{-| Herero
-}
hz : Language
hz =
    Language "hz"


{-| Interlingua (International Auxiliary Language Association)
-}
ia : Language
ia =
    Language "ia"


{-| Indonesian
-}
id : Language
id =
    Language "id"


{-| Interlingue Occidental
-}
ie : Language
ie =
    Language "ie"


{-| Igbo
-}
ig : Language
ig =
    Language "ig"


{-| Sichuan Yi Nuosu
-}
ii : Language
ii =
    Language "ii"


{-| Inupiaq
-}
ik : Language
ik =
    Language "ik"


{-| Indonesian
-}
in_ : Language
in_ =
    Language "in"


{-| Ido
-}
io : Language
io =
    Language "io"


{-| Icelandic
-}
is : Language
is =
    Language "is"


{-| Italian
-}
it : Language
it =
    Language "it"


{-| Inuktitut
-}
iu : Language
iu =
    Language "iu"


{-| Hebrew
-}
iw : Language
iw =
    Language "iw"


{-| Japanese
-}
ja : Language
ja =
    Language "ja"


{-| Yiddish
-}
ji : Language
ji =
    Language "ji"


{-| Javanese
-}
jv : Language
jv =
    Language "jv"


{-| Javanese
-}
jw : Language
jw =
    Language "jw"


{-| Georgian
-}
ka : Language
ka =
    Language "ka"


{-| Kongo
-}
kg : Language
kg =
    Language "kg"


{-| Kikuyu Gikuyu
-}
ki : Language
ki =
    Language "ki"


{-| Kuanyama Kwanyama
-}
kj : Language
kj =
    Language "kj"


{-| Kazakh
-}
kk : Language
kk =
    Language "kk"


{-| Kalaallisut Greenlandic
-}
kl : Language
kl =
    Language "kl"


{-| Khmer Central Khmer
-}
km : Language
km =
    Language "km"


{-| Kannada
-}
kn : Language
kn =
    Language "kn"


{-| Korean
-}
ko : Language
ko =
    Language "ko"


{-| Kanuri
-}
kr : Language
kr =
    Language "kr"


{-| Kashmiri
-}
ks : Language
ks =
    Language "ks"


{-| Kurdish
-}
ku : Language
ku =
    Language "ku"


{-| Komi
-}
kv : Language
kv =
    Language "kv"


{-| Cornish
-}
kw : Language
kw =
    Language "kw"


{-| Kirghiz Kyrgyz
-}
ky : Language
ky =
    Language "ky"


{-| Latin
-}
la : Language
la =
    Language "la"


{-| Luxembourgish Letzeburgesch
-}
lb : Language
lb =
    Language "lb"


{-| Ganda Luganda
-}
lg : Language
lg =
    Language "lg"


{-| Limburgan Limburger Limburgish
-}
li : Language
li =
    Language "li"


{-| Lingala
-}
ln : Language
ln =
    Language "ln"


{-| Lao
-}
lo : Language
lo =
    Language "lo"


{-| Lithuanian
-}
lt : Language
lt =
    Language "lt"


{-| Luba-Katanga
-}
lu : Language
lu =
    Language "lu"


{-| Latvian
-}
lv : Language
lv =
    Language "lv"


{-| Malagasy
-}
mg : Language
mg =
    Language "mg"


{-| Marshallese
-}
mh : Language
mh =
    Language "mh"


{-| Maori
-}
mi : Language
mi =
    Language "mi"


{-| Macedonian
-}
mk : Language
mk =
    Language "mk"


{-| Malayalam
-}
ml : Language
ml =
    Language "ml"


{-| Mongolian
-}
mn : Language
mn =
    Language "mn"


{-| Moldavian Moldovan
-}
mo : Language
mo =
    Language "mo"


{-| Marathi
-}
mr : Language
mr =
    Language "mr"


{-| Malay (macrolanguage)
-}
ms : Language
ms =
    Language "ms"


{-| Maltese
-}
mt : Language
mt =
    Language "mt"


{-| Burmese
-}
my : Language
my =
    Language "my"


{-| Nauru
-}
na : Language
na =
    Language "na"


{-| Norwegian Bokmål
-}
nb : Language
nb =
    Language "nb"


{-| North Ndebele
-}
nd : Language
nd =
    Language "nd"


{-| Nepali (macrolanguage)
-}
ne : Language
ne =
    Language "ne"


{-| Ndonga
-}
ng : Language
ng =
    Language "ng"


{-| Dutch Flemish
-}
nl : Language
nl =
    Language "nl"


{-| Norwegian Nynorsk
-}
nn : Language
nn =
    Language "nn"


{-| Norwegian
-}
no : Language
no =
    Language "no"


{-| South Ndebele
-}
nr : Language
nr =
    Language "nr"


{-| Navajo Navaho
-}
nv : Language
nv =
    Language "nv"


{-| Nyanja Chewa Chichewa
-}
ny : Language
ny =
    Language "ny"


{-| Occitan (post 1500)
-}
oc : Language
oc =
    Language "oc"


{-| Ojibwa
-}
oj : Language
oj =
    Language "oj"


{-| Oromo
-}
om : Language
om =
    Language "om"


{-| Oriya (macrolanguage) Odia (macrolanguage)
-}
or : Language
or =
    Language "or"


{-| Ossetian Ossetic
-}
os : Language
os =
    Language "os"


{-| Panjabi Punjabi
-}
pa : Language
pa =
    Language "pa"


{-| Pali
-}
pi : Language
pi =
    Language "pi"


{-| Polish
-}
pl : Language
pl =
    Language "pl"


{-| Pushto Pashto
-}
ps : Language
ps =
    Language "ps"


{-| Portuguese
-}
pt : Language
pt =
    Language "pt"


{-| Quechua
-}
qu : Language
qu =
    Language "qu"


{-| Romansh
-}
rm : Language
rm =
    Language "rm"


{-| Rundi
-}
rn : Language
rn =
    Language "rn"


{-| Romanian Moldavian Moldovan
-}
ro : Language
ro =
    Language "ro"


{-| Russian
-}
ru : Language
ru =
    Language "ru"


{-| Kinyarwanda
-}
rw : Language
rw =
    Language "rw"


{-| Sanskrit
-}
sa : Language
sa =
    Language "sa"


{-| Sardinian
-}
sc : Language
sc =
    Language "sc"


{-| Sindhi
-}
sd : Language
sd =
    Language "sd"


{-| Northern Sami
-}
se : Language
se =
    Language "se"


{-| Sango
-}
sg : Language
sg =
    Language "sg"


{-| Serbo-Croatian
-}
sh : Language
sh =
    Language "sh"


{-| Sinhala Sinhalese
-}
si : Language
si =
    Language "si"


{-| Slovak
-}
sk : Language
sk =
    Language "sk"


{-| Slovenian
-}
sl : Language
sl =
    Language "sl"


{-| Samoan
-}
sm : Language
sm =
    Language "sm"


{-| Shona
-}
sn : Language
sn =
    Language "sn"


{-| Somali
-}
so : Language
so =
    Language "so"


{-| Albanian
-}
sq : Language
sq =
    Language "sq"


{-| Serbian
-}
sr : Language
sr =
    Language "sr"


{-| Swati
-}
ss : Language
ss =
    Language "ss"


{-| Southern Sotho
-}
st : Language
st =
    Language "st"


{-| Sundanese
-}
su : Language
su =
    Language "su"


{-| Swedish
-}
sv : Language
sv =
    Language "sv"


{-| Swahili (macrolanguage)
-}
sw : Language
sw =
    Language "sw"


{-| Tamil
-}
ta : Language
ta =
    Language "ta"


{-| Telugu
-}
te : Language
te =
    Language "te"


{-| Tajik
-}
tg : Language
tg =
    Language "tg"


{-| Thai
-}
th : Language
th =
    Language "th"


{-| Tigrinya
-}
ti : Language
ti =
    Language "ti"


{-| Turkmen
-}
tk : Language
tk =
    Language "tk"


{-| Tagalog
-}
tl : Language
tl =
    Language "tl"


{-| Tswana
-}
tn : Language
tn =
    Language "tn"


{-| Tonga (Tonga Islands)
-}
to : Language
to =
    Language "to"


{-| Turkish
-}
tr : Language
tr =
    Language "tr"


{-| Tsonga
-}
ts : Language
ts =
    Language "ts"


{-| Tatar
-}
tt : Language
tt =
    Language "tt"


{-| Twi
-}
tw : Language
tw =
    Language "tw"


{-| Tahitian
-}
ty : Language
ty =
    Language "ty"


{-| Uighur Uyghur
-}
ug : Language
ug =
    Language "ug"


{-| Ukrainian
-}
uk : Language
uk =
    Language "uk"


{-| Urdu
-}
ur : Language
ur =
    Language "ur"


{-| Uzbek
-}
uz : Language
uz =
    Language "uz"


{-| Venda
-}
ve : Language
ve =
    Language "ve"


{-| Vietnamese
-}
vi : Language
vi =
    Language "vi"


{-| Volapük
-}
vo : Language
vo =
    Language "vo"


{-| Walloon
-}
wa : Language
wa =
    Language "wa"


{-| Wolof
-}
wo : Language
wo =
    Language "wo"


{-| Xhosa
-}
xh : Language
xh =
    Language "xh"


{-| Yiddish
-}
yi : Language
yi =
    Language "yi"


{-| Yoruba
-}
yo : Language
yo =
    Language "yo"


{-| Zhuang Chuang
-}
za : Language
za =
    Language "za"


{-| Chinese
-}
zh : Language
zh =
    Language "zh"


{-| Zulu
-}
zu : Language
zu =
    Language "zu"
