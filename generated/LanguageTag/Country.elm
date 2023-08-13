module LanguageTag.Country exposing
    ( Country, toCodeString
    , n_001, n_002, n_003, n_005, n_009, n_011, n_013, n_014, n_015, n_017, n_018, n_019, n_021, n_029, n_030, n_034, n_035, n_039, n_053, n_054, n_057, n_061, n_142, n_143, n_145, n_150, n_151, n_154, n_155, n_202, n_419, ac, ad, ae, af, ag, ai, al, am, an, ao, aq, ar, as_, at, au, aw, ax, az, ba, bb, bd, be, bf, bg, bh, bi, bj, bl, bm, bn, bo, bq, br, bs, bt, bu, bv, bw, by, bz, ca, cc, cd, cf, cg, ch, ci, ck, cl, cm, cn, co, cp, cr, cs, cu, cv, cw, cx, cy, cz, dd, de, dg, dj, dk, dm, do, dz, ea, ec, ee, eg, eh, er, es, et, eu, ez, fi, fj, fk, fm, fo, fr, fx, ga, gb, gd, ge, gf, gg, gh, gi, gl, gm, gn, gp, gq, gr, gs, gt, gu, gw, gy, hk, hm, hn, hr, ht, hu, ic, id, ie, il, im, in_, io, iq, ir, is, it, je, jm, jo, jp, ke, kg, kh, ki, km, kn, kp, kr, kw, ky, kz, la, lb, lc, li, lk, lr, ls, lt, lu, lv, ly, ma, mc, md, me, mf, mg, mh, mk, ml, mm, mn, mo, mp, mq, mr, ms, mt, mu, mv, mw, mx, my, mz, na, nc, ne, nf, ng, ni, nl, no, np, nr, nt, nu, nz, om, pa, pe, pf, pg, ph, pk, pl, pm, pn, pr, ps, pt, pw, py, qa, re, ro, rs, ru, rw, sa, sb, sc, sd, se, sg, sh, si, sj, sk, sl, sm, sn, so, sr, ss, st, su, sv, sx, sy, sz, ta, tc, td, tf, tg, th, tj, tk, tl, tm, tn, to, tp, tr, tt, tv, tw, tz, ua, ug, um, un, us, uy, uz, va, vc, ve, vg, vi, vn, vu, wf, ws, yd, ye, yt, yu, za, zm, zr, zw
    )

{-| ISO 3166-1 country codes. See <https://en.wikipedia.org/wiki/ISO_3166-1>.

@docs Country, toCodeString

@docs n_001, n_002, n_003, n_005, n_009, n_011, n_013, n_014, n_015, n_017, n_018, n_019, n_021, n_029, n_030, n_034, n_035, n_039, n_053, n_054, n_057, n_061, n_142, n_143, n_145, n_150, n_151, n_154, n_155, n_202, n_419, ac, ad, ae, af, ag, ai, al, am, an, ao, aq, ar, as_, at, au, aw, ax, az, ba, bb, bd, be, bf, bg, bh, bi, bj, bl, bm, bn, bo, bq, br, bs, bt, bu, bv, bw, by, bz, ca, cc, cd, cf, cg, ch, ci, ck, cl, cm, cn, co, cp, cr, cs, cu, cv, cw, cx, cy, cz, dd, de, dg, dj, dk, dm, do, dz, ea, ec, ee, eg, eh, er, es, et, eu, ez, fi, fj, fk, fm, fo, fr, fx, ga, gb, gd, ge, gf, gg, gh, gi, gl, gm, gn, gp, gq, gr, gs, gt, gu, gw, gy, hk, hm, hn, hr, ht, hu, ic, id, ie, il, im, in_, io, iq, ir, is, it, je, jm, jo, jp, ke, kg, kh, ki, km, kn, kp, kr, kw, ky, kz, la, lb, lc, li, lk, lr, ls, lt, lu, lv, ly, ma, mc, md, me, mf, mg, mh, mk, ml, mm, mn, mo, mp, mq, mr, ms, mt, mu, mv, mw, mx, my, mz, na, nc, ne, nf, ng, ni, nl, no, np, nr, nt, nu, nz, om, pa, pe, pf, pg, ph, pk, pl, pm, pn, pr, ps, pt, pw, py, qa, re, ro, rs, ru, rw, sa, sb, sc, sd, se, sg, sh, si, sj, sk, sl, sm, sn, so, sr, ss, st, su, sv, sx, sy, sz, ta, tc, td, tf, tg, th, tj, tk, tl, tm, tn, to, tp, tr, tt, tv, tw, tz, ua, ug, um, un, us, uy, uz, va, vc, ve, vg, vi, vn, vu, wf, ws, yd, ye, yt, yu, za, zm, zr, zw

-}

import LanguageTag.Internal as Internal exposing (Country(..))


{-| -}
type alias Country =
    Internal.Country


{-| Get the ISO 3166-1 country code value for this Country.
-}
toCodeString : Country -> String
toCodeString (Country rawCode) =
    rawCode


{-| World
-}
n_001 : Country
n_001 =
    Country "001"


{-| Africa
-}
n_002 : Country
n_002 =
    Country "002"


{-| North America
-}
n_003 : Country
n_003 =
    Country "003"


{-| South America
-}
n_005 : Country
n_005 =
    Country "005"


{-| Oceania
-}
n_009 : Country
n_009 =
    Country "009"


{-| Western Africa
-}
n_011 : Country
n_011 =
    Country "011"


{-| Central America
-}
n_013 : Country
n_013 =
    Country "013"


{-| Eastern Africa
-}
n_014 : Country
n_014 =
    Country "014"


{-| Northern Africa
-}
n_015 : Country
n_015 =
    Country "015"


{-| Middle Africa
-}
n_017 : Country
n_017 =
    Country "017"


{-| Southern Africa
-}
n_018 : Country
n_018 =
    Country "018"


{-| Americas
-}
n_019 : Country
n_019 =
    Country "019"


{-| Northern America
-}
n_021 : Country
n_021 =
    Country "021"


{-| Caribbean
-}
n_029 : Country
n_029 =
    Country "029"


{-| Eastern Asia
-}
n_030 : Country
n_030 =
    Country "030"


{-| Southern Asia
-}
n_034 : Country
n_034 =
    Country "034"


{-| South-Eastern Asia
-}
n_035 : Country
n_035 =
    Country "035"


{-| Southern Europe
-}
n_039 : Country
n_039 =
    Country "039"


{-| Australia and New Zealand
-}
n_053 : Country
n_053 =
    Country "053"


{-| Melanesia
-}
n_054 : Country
n_054 =
    Country "054"


{-| Micronesia
-}
n_057 : Country
n_057 =
    Country "057"


{-| Polynesia
-}
n_061 : Country
n_061 =
    Country "061"


{-| Asia
-}
n_142 : Country
n_142 =
    Country "142"


{-| Central Asia
-}
n_143 : Country
n_143 =
    Country "143"


{-| Western Asia
-}
n_145 : Country
n_145 =
    Country "145"


{-| Europe
-}
n_150 : Country
n_150 =
    Country "150"


{-| Eastern Europe
-}
n_151 : Country
n_151 =
    Country "151"


{-| Northern Europe
-}
n_154 : Country
n_154 =
    Country "154"


{-| Western Europe
-}
n_155 : Country
n_155 =
    Country "155"


{-| Sub-Saharan Africa
-}
n_202 : Country
n_202 =
    Country "202"


{-| Latin America and the Caribbean
-}
n_419 : Country
n_419 =
    Country "419"


{-| Ascension Island
-}
ac : Country
ac =
    Country "ac"


{-| Andorra
-}
ad : Country
ad =
    Country "ad"


{-| United Arab Emirates
-}
ae : Country
ae =
    Country "ae"


{-| Afghanistan
-}
af : Country
af =
    Country "af"


{-| Antigua and Barbuda
-}
ag : Country
ag =
    Country "ag"


{-| Anguilla
-}
ai : Country
ai =
    Country "ai"


{-| Albania
-}
al : Country
al =
    Country "al"


{-| Armenia
-}
am : Country
am =
    Country "am"


{-| Netherlands Antilles
-}
an : Country
an =
    Country "an"


{-| Angola
-}
ao : Country
ao =
    Country "ao"


{-| Antarctica
-}
aq : Country
aq =
    Country "aq"


{-| Argentina
-}
ar : Country
ar =
    Country "ar"


{-| American Samoa
-}
as_ : Country
as_ =
    Country "as"


{-| Austria
-}
at : Country
at =
    Country "at"


{-| Australia
-}
au : Country
au =
    Country "au"


{-| Aruba
-}
aw : Country
aw =
    Country "aw"


{-| Åland Islands
-}
ax : Country
ax =
    Country "ax"


{-| Azerbaijan
-}
az : Country
az =
    Country "az"


{-| Bosnia and Herzegovina
-}
ba : Country
ba =
    Country "ba"


{-| Barbados
-}
bb : Country
bb =
    Country "bb"


{-| Bangladesh
-}
bd : Country
bd =
    Country "bd"


{-| Belgium
-}
be : Country
be =
    Country "be"


{-| Burkina Faso
-}
bf : Country
bf =
    Country "bf"


{-| Bulgaria
-}
bg : Country
bg =
    Country "bg"


{-| Bahrain
-}
bh : Country
bh =
    Country "bh"


{-| Burundi
-}
bi : Country
bi =
    Country "bi"


{-| Benin
-}
bj : Country
bj =
    Country "bj"


{-| Saint Barthélemy
-}
bl : Country
bl =
    Country "bl"


{-| Bermuda
-}
bm : Country
bm =
    Country "bm"


{-| Brunei Darussalam
-}
bn : Country
bn =
    Country "bn"


{-| Bolivia
-}
bo : Country
bo =
    Country "bo"


{-| Bonaire, Sint Eustatius and Saba
-}
bq : Country
bq =
    Country "bq"


{-| Brazil
-}
br : Country
br =
    Country "br"


{-| Bahamas
-}
bs : Country
bs =
    Country "bs"


{-| Bhutan
-}
bt : Country
bt =
    Country "bt"


{-| Burma
-}
bu : Country
bu =
    Country "bu"


{-| Bouvet Island
-}
bv : Country
bv =
    Country "bv"


{-| Botswana
-}
bw : Country
bw =
    Country "bw"


{-| Belarus
-}
by : Country
by =
    Country "by"


{-| Belize
-}
bz : Country
bz =
    Country "bz"


{-| Canada
-}
ca : Country
ca =
    Country "ca"


{-| Cocos (Keeling) Islands
-}
cc : Country
cc =
    Country "cc"


{-| The Democratic Republic of the Congo
-}
cd : Country
cd =
    Country "cd"


{-| Central African Republic
-}
cf : Country
cf =
    Country "cf"


{-| Congo
-}
cg : Country
cg =
    Country "cg"


{-| Switzerland
-}
ch : Country
ch =
    Country "ch"


{-| Côte d'Ivoire
-}
ci : Country
ci =
    Country "ci"


{-| Cook Islands
-}
ck : Country
ck =
    Country "ck"


{-| Chile
-}
cl : Country
cl =
    Country "cl"


{-| Cameroon
-}
cm : Country
cm =
    Country "cm"


{-| China
-}
cn : Country
cn =
    Country "cn"


{-| Colombia
-}
co : Country
co =
    Country "co"


{-| Clipperton Island
-}
cp : Country
cp =
    Country "cp"


{-| Costa Rica
-}
cr : Country
cr =
    Country "cr"


{-| Serbia and Montenegro
-}
cs : Country
cs =
    Country "cs"


{-| Cuba
-}
cu : Country
cu =
    Country "cu"


{-| Cabo Verde
Cape Verde
-}
cv : Country
cv =
    Country "cv"


{-| Curaçao
-}
cw : Country
cw =
    Country "cw"


{-| Christmas Island
-}
cx : Country
cx =
    Country "cx"


{-| Cyprus
-}
cy : Country
cy =
    Country "cy"


{-| Czechia
Czech Republic
-}
cz : Country
cz =
    Country "cz"


{-| German Democratic Republic
-}
dd : Country
dd =
    Country "dd"


{-| Germany
-}
de : Country
de =
    Country "de"


{-| Diego Garcia
-}
dg : Country
dg =
    Country "dg"


{-| Djibouti
-}
dj : Country
dj =
    Country "dj"


{-| Denmark
-}
dk : Country
dk =
    Country "dk"


{-| Dominica
-}
dm : Country
dm =
    Country "dm"


{-| Dominican Republic
-}
do : Country
do =
    Country "do"


{-| Algeria
-}
dz : Country
dz =
    Country "dz"


{-| Ceuta, Melilla
-}
ea : Country
ea =
    Country "ea"


{-| Ecuador
-}
ec : Country
ec =
    Country "ec"


{-| Estonia
-}
ee : Country
ee =
    Country "ee"


{-| Egypt
-}
eg : Country
eg =
    Country "eg"


{-| Western Sahara
-}
eh : Country
eh =
    Country "eh"


{-| Eritrea
-}
er : Country
er =
    Country "er"


{-| Spain
-}
es : Country
es =
    Country "es"


{-| Ethiopia
-}
et : Country
et =
    Country "et"


{-| European Union
-}
eu : Country
eu =
    Country "eu"


{-| Eurozone
-}
ez : Country
ez =
    Country "ez"


{-| Finland
-}
fi : Country
fi =
    Country "fi"


{-| Fiji
-}
fj : Country
fj =
    Country "fj"


{-| Falkland Islands (Malvinas)
-}
fk : Country
fk =
    Country "fk"


{-| Federated States of Micronesia
-}
fm : Country
fm =
    Country "fm"


{-| Faroe Islands
-}
fo : Country
fo =
    Country "fo"


{-| France
-}
fr : Country
fr =
    Country "fr"


{-| Metropolitan France
-}
fx : Country
fx =
    Country "fx"


{-| Gabon
-}
ga : Country
ga =
    Country "ga"


{-| United Kingdom
-}
gb : Country
gb =
    Country "gb"


{-| Grenada
-}
gd : Country
gd =
    Country "gd"


{-| Georgia
-}
ge : Country
ge =
    Country "ge"


{-| French Guiana
-}
gf : Country
gf =
    Country "gf"


{-| Guernsey
-}
gg : Country
gg =
    Country "gg"


{-| Ghana
-}
gh : Country
gh =
    Country "gh"


{-| Gibraltar
-}
gi : Country
gi =
    Country "gi"


{-| Greenland
-}
gl : Country
gl =
    Country "gl"


{-| Gambia
-}
gm : Country
gm =
    Country "gm"


{-| Guinea
-}
gn : Country
gn =
    Country "gn"


{-| Guadeloupe
-}
gp : Country
gp =
    Country "gp"


{-| Equatorial Guinea
-}
gq : Country
gq =
    Country "gq"


{-| Greece
-}
gr : Country
gr =
    Country "gr"


{-| South Georgia and the South Sandwich Islands
-}
gs : Country
gs =
    Country "gs"


{-| Guatemala
-}
gt : Country
gt =
    Country "gt"


{-| Guam
-}
gu : Country
gu =
    Country "gu"


{-| Guinea-Bissau
-}
gw : Country
gw =
    Country "gw"


{-| Guyana
-}
gy : Country
gy =
    Country "gy"


{-| Hong Kong
-}
hk : Country
hk =
    Country "hk"


{-| Heard Island and McDonald Islands
-}
hm : Country
hm =
    Country "hm"


{-| Honduras
-}
hn : Country
hn =
    Country "hn"


{-| Croatia
-}
hr : Country
hr =
    Country "hr"


{-| Haiti
-}
ht : Country
ht =
    Country "ht"


{-| Hungary
-}
hu : Country
hu =
    Country "hu"


{-| Canary Islands
-}
ic : Country
ic =
    Country "ic"


{-| Indonesia
-}
id : Country
id =
    Country "id"


{-| Ireland
-}
ie : Country
ie =
    Country "ie"


{-| Israel
-}
il : Country
il =
    Country "il"


{-| Isle of Man
-}
im : Country
im =
    Country "im"


{-| India
-}
in_ : Country
in_ =
    Country "in"


{-| British Indian Ocean Territory
-}
io : Country
io =
    Country "io"


{-| Iraq
-}
iq : Country
iq =
    Country "iq"


{-| Islamic Republic of Iran
-}
ir : Country
ir =
    Country "ir"


{-| Iceland
-}
is : Country
is =
    Country "is"


{-| Italy
-}
it : Country
it =
    Country "it"


{-| Jersey
-}
je : Country
je =
    Country "je"


{-| Jamaica
-}
jm : Country
jm =
    Country "jm"


{-| Jordan
-}
jo : Country
jo =
    Country "jo"


{-| Japan
-}
jp : Country
jp =
    Country "jp"


{-| Kenya
-}
ke : Country
ke =
    Country "ke"


{-| Kyrgyzstan
-}
kg : Country
kg =
    Country "kg"


{-| Cambodia
-}
kh : Country
kh =
    Country "kh"


{-| Kiribati
-}
ki : Country
ki =
    Country "ki"


{-| Comoros
-}
km : Country
km =
    Country "km"


{-| Saint Kitts and Nevis
-}
kn : Country
kn =
    Country "kn"


{-| Democratic People's Republic of Korea
-}
kp : Country
kp =
    Country "kp"


{-| Republic of Korea
-}
kr : Country
kr =
    Country "kr"


{-| Kuwait
-}
kw : Country
kw =
    Country "kw"


{-| Cayman Islands
-}
ky : Country
ky =
    Country "ky"


{-| Kazakhstan
-}
kz : Country
kz =
    Country "kz"


{-| Lao People's Democratic Republic
-}
la : Country
la =
    Country "la"


{-| Lebanon
-}
lb : Country
lb =
    Country "lb"


{-| Saint Lucia
-}
lc : Country
lc =
    Country "lc"


{-| Liechtenstein
-}
li : Country
li =
    Country "li"


{-| Sri Lanka
-}
lk : Country
lk =
    Country "lk"


{-| Liberia
-}
lr : Country
lr =
    Country "lr"


{-| Lesotho
-}
ls : Country
ls =
    Country "ls"


{-| Lithuania
-}
lt : Country
lt =
    Country "lt"


{-| Luxembourg
-}
lu : Country
lu =
    Country "lu"


{-| Latvia
-}
lv : Country
lv =
    Country "lv"


{-| Libya
-}
ly : Country
ly =
    Country "ly"


{-| Morocco
-}
ma : Country
ma =
    Country "ma"


{-| Monaco
-}
mc : Country
mc =
    Country "mc"


{-| Moldova
-}
md : Country
md =
    Country "md"


{-| Montenegro
-}
me : Country
me =
    Country "me"


{-| Saint Martin (French part)
-}
mf : Country
mf =
    Country "mf"


{-| Madagascar
-}
mg : Country
mg =
    Country "mg"


{-| Marshall Islands
-}
mh : Country
mh =
    Country "mh"


{-| North Macedonia
-}
mk : Country
mk =
    Country "mk"


{-| Mali
-}
ml : Country
ml =
    Country "ml"


{-| Myanmar
-}
mm : Country
mm =
    Country "mm"


{-| Mongolia
-}
mn : Country
mn =
    Country "mn"


{-| Macao
-}
mo : Country
mo =
    Country "mo"


{-| Northern Mariana Islands
-}
mp : Country
mp =
    Country "mp"


{-| Martinique
-}
mq : Country
mq =
    Country "mq"


{-| Mauritania
-}
mr : Country
mr =
    Country "mr"


{-| Montserrat
-}
ms : Country
ms =
    Country "ms"


{-| Malta
-}
mt : Country
mt =
    Country "mt"


{-| Mauritius
-}
mu : Country
mu =
    Country "mu"


{-| Maldives
-}
mv : Country
mv =
    Country "mv"


{-| Malawi
-}
mw : Country
mw =
    Country "mw"


{-| Mexico
-}
mx : Country
mx =
    Country "mx"


{-| Malaysia
-}
my : Country
my =
    Country "my"


{-| Mozambique
-}
mz : Country
mz =
    Country "mz"


{-| Namibia
-}
na : Country
na =
    Country "na"


{-| New Caledonia
-}
nc : Country
nc =
    Country "nc"


{-| Niger
-}
ne : Country
ne =
    Country "ne"


{-| Norfolk Island
-}
nf : Country
nf =
    Country "nf"


{-| Nigeria
-}
ng : Country
ng =
    Country "ng"


{-| Nicaragua
-}
ni : Country
ni =
    Country "ni"


{-| Netherlands
-}
nl : Country
nl =
    Country "nl"


{-| Norway
-}
no : Country
no =
    Country "no"


{-| Nepal
-}
np : Country
np =
    Country "np"


{-| Nauru
-}
nr : Country
nr =
    Country "nr"


{-| Neutral Zone
-}
nt : Country
nt =
    Country "nt"


{-| Niue
-}
nu : Country
nu =
    Country "nu"


{-| New Zealand
-}
nz : Country
nz =
    Country "nz"


{-| Oman
-}
om : Country
om =
    Country "om"


{-| Panama
-}
pa : Country
pa =
    Country "pa"


{-| Peru
-}
pe : Country
pe =
    Country "pe"


{-| French Polynesia
-}
pf : Country
pf =
    Country "pf"


{-| Papua New Guinea
-}
pg : Country
pg =
    Country "pg"


{-| Philippines
-}
ph : Country
ph =
    Country "ph"


{-| Pakistan
-}
pk : Country
pk =
    Country "pk"


{-| Poland
-}
pl : Country
pl =
    Country "pl"


{-| Saint Pierre and Miquelon
-}
pm : Country
pm =
    Country "pm"


{-| Pitcairn
-}
pn : Country
pn =
    Country "pn"


{-| Puerto Rico
-}
pr : Country
pr =
    Country "pr"


{-| State of Palestine
-}
ps : Country
ps =
    Country "ps"


{-| Portugal
-}
pt : Country
pt =
    Country "pt"


{-| Palau
-}
pw : Country
pw =
    Country "pw"


{-| Paraguay
-}
py : Country
py =
    Country "py"


{-| Qatar
-}
qa : Country
qa =
    Country "qa"


{-| Réunion
-}
re : Country
re =
    Country "re"


{-| Romania
-}
ro : Country
ro =
    Country "ro"


{-| Serbia
-}
rs : Country
rs =
    Country "rs"


{-| Russian Federation
-}
ru : Country
ru =
    Country "ru"


{-| Rwanda
-}
rw : Country
rw =
    Country "rw"


{-| Saudi Arabia
-}
sa : Country
sa =
    Country "sa"


{-| Solomon Islands
-}
sb : Country
sb =
    Country "sb"


{-| Seychelles
-}
sc : Country
sc =
    Country "sc"


{-| Sudan
-}
sd : Country
sd =
    Country "sd"


{-| Sweden
-}
se : Country
se =
    Country "se"


{-| Singapore
-}
sg : Country
sg =
    Country "sg"


{-| Saint Helena, Ascension and Tristan da Cunha
-}
sh : Country
sh =
    Country "sh"


{-| Slovenia
-}
si : Country
si =
    Country "si"


{-| Svalbard and Jan Mayen
-}
sj : Country
sj =
    Country "sj"


{-| Slovakia
-}
sk : Country
sk =
    Country "sk"


{-| Sierra Leone
-}
sl : Country
sl =
    Country "sl"


{-| San Marino
-}
sm : Country
sm =
    Country "sm"


{-| Senegal
-}
sn : Country
sn =
    Country "sn"


{-| Somalia
-}
so : Country
so =
    Country "so"


{-| Suriname
-}
sr : Country
sr =
    Country "sr"


{-| South Sudan
-}
ss : Country
ss =
    Country "ss"


{-| Sao Tome and Principe
-}
st : Country
st =
    Country "st"


{-| Union of Soviet Socialist Republics
-}
su : Country
su =
    Country "su"


{-| El Salvador
-}
sv : Country
sv =
    Country "sv"


{-| Sint Maarten (Dutch part)
-}
sx : Country
sx =
    Country "sx"


{-| Syrian Arab Republic
-}
sy : Country
sy =
    Country "sy"


{-| Eswatini
eSwatini
Swaziland
-}
sz : Country
sz =
    Country "sz"


{-| Tristan da Cunha
-}
ta : Country
ta =
    Country "ta"


{-| Turks and Caicos Islands
-}
tc : Country
tc =
    Country "tc"


{-| Chad
-}
td : Country
td =
    Country "td"


{-| French Southern Territories
-}
tf : Country
tf =
    Country "tf"


{-| Togo
-}
tg : Country
tg =
    Country "tg"


{-| Thailand
-}
th : Country
th =
    Country "th"


{-| Tajikistan
-}
tj : Country
tj =
    Country "tj"


{-| Tokelau
-}
tk : Country
tk =
    Country "tk"


{-| Timor-Leste
-}
tl : Country
tl =
    Country "tl"


{-| Turkmenistan
-}
tm : Country
tm =
    Country "tm"


{-| Tunisia
-}
tn : Country
tn =
    Country "tn"


{-| Tonga
-}
to : Country
to =
    Country "to"


{-| East Timor
-}
tp : Country
tp =
    Country "tp"


{-| Turkey
-}
tr : Country
tr =
    Country "tr"


{-| Trinidad and Tobago
-}
tt : Country
tt =
    Country "tt"


{-| Tuvalu
-}
tv : Country
tv =
    Country "tv"


{-| Taiwan, Province of China
-}
tw : Country
tw =
    Country "tw"


{-| United Republic of Tanzania
-}
tz : Country
tz =
    Country "tz"


{-| Ukraine
-}
ua : Country
ua =
    Country "ua"


{-| Uganda
-}
ug : Country
ug =
    Country "ug"


{-| United States Minor Outlying Islands
-}
um : Country
um =
    Country "um"


{-| United Nations
-}
un : Country
un =
    Country "un"


{-| United States
-}
us : Country
us =
    Country "us"


{-| Uruguay
-}
uy : Country
uy =
    Country "uy"


{-| Uzbekistan
-}
uz : Country
uz =
    Country "uz"


{-| Holy See (Vatican City State)
-}
va : Country
va =
    Country "va"


{-| Saint Vincent and the Grenadines
-}
vc : Country
vc =
    Country "vc"


{-| Venezuela
-}
ve : Country
ve =
    Country "ve"


{-| British Virgin Islands
-}
vg : Country
vg =
    Country "vg"


{-| U.S. Virgin Islands
-}
vi : Country
vi =
    Country "vi"


{-| Viet Nam
-}
vn : Country
vn =
    Country "vn"


{-| Vanuatu
-}
vu : Country
vu =
    Country "vu"


{-| Wallis and Futuna
-}
wf : Country
wf =
    Country "wf"


{-| Samoa
-}
ws : Country
ws =
    Country "ws"


{-| Democratic Yemen
-}
yd : Country
yd =
    Country "yd"


{-| Yemen
-}
ye : Country
ye =
    Country "ye"


{-| Mayotte
-}
yt : Country
yt =
    Country "yt"


{-| Yugoslavia
-}
yu : Country
yu =
    Country "yu"


{-| South Africa
-}
za : Country
za =
    Country "za"


{-| Zambia
-}
zm : Country
zm =
    Country "zm"


{-| Zaire
-}
zr : Country
zr =
    Country "zr"


{-| Zimbabwe
-}
zw : Country
zw =
    Country "zw"
