module Cldr.Yoruba exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Yoruba.

    AD Ààndórà
    AE Ẹmirate ti Awọn Arabu
    AF Àfùgànístánì
    AG Ààntígúà àti Báríbúdà
    AI Ààngúlílà
    AL Àlùbàníánì
    AM Améníà
    AO Ààngólà
    AQ Antakítíkà
    AR Agentínà
    AS Sámóánì ti Orílẹ́ède Àméríkà
    AT Asítíríà
    AU Ástràlìá
    AW Árúbà
    AX Àwọn Erékùsù ti Åland
    AZ Asẹ́bájánì
    BA Bọ̀síníà àti Ẹtisẹgófínà
    BB Bábádósì
    BD Bángáládésì
    BE Bégíọ́mù
    BF Bùùkíná Fasò
    BG Bùùgáríà
    BH Báránì
    BI Bùùrúndì
    BJ Bẹ̀nẹ̀
    BL Ìlú Bátílẹ́mì
    BM Bémúdà
    BN Búrúnẹ́lì
    BO Bọ̀lífíyà
    BQ Káríbíánì ti Nẹ́dálándì
    BR Bàràsílì
    BS Bàhámásì
    BT Bútánì
    BV Erékùsù Bouvet
    BW Bọ̀tìsúwánà
    BY Bélárúsì
    BZ Bèlísẹ̀
    CA Kánádà
    CC Erékùsù Cocos (Keeling)
    CD Kóńgò (Tiwantiwa)
    CF Àrin gùngun Áfíríkà
    CG Kóńgò (Olómìnira)
    CH switiṣilandi
    CI Kóútè forà
    CK Etíokun Kùúkù
    CL Ṣílè
    CM Kamerúúnì
    CN Ṣáínà
    CO Kòlómíbìa
    CR Kuusita Ríkà
    CU Kúbà
    CV Etíokun Kápé féndè
    CW Kúrásáò
    CX Erékùsù Christmas
    CY Kúrúsì
    CZ Ṣẹ́ẹ́kì
    DE Jámánì
    DJ Díbọ́ótì
    DK Dẹ́mákì
    DM Dòmíníkà
    DO Dòmíníkánì
    DZ Àlùgèríánì
    EC Ekuádò
    EE Esitonia
    EG Égípítì
    EH Ìwọ̀òòrùn Sàhárà
    ER Eritira
    ES Sipani
    ET Etopia
    FI Filandi
    FJ Fiji
    FK Etikun Fakalandi
    FM Makoronesia
    FO Àwọn Erékùsù ti Faroe
    FR Faranse
    GA Gabon
    GB Gẹ̀ẹ́sì
    GD Genada
    GE Gọgia
    GF Firenṣi Guana
    GG Guernsey
    GH Gana
    GI Gibaratara
    GL Gerelandi
    GM Gambia
    GN Gene
    GP Gadelope
    GQ Ekutoria Gini
    GR Geriisi
    GS Gúúsù Georgia àti Gúúsù Àwọn Erékùsù Sandwich
    GT Guatemala
    GU Guamu
    GW Gene-Busau
    GY Guyana
    HK Hong Kong
    HM Erékùsù Heard àti Erékùsù McDonald
    HN Hondurasi
    HR Kòróátíà
    HT Haati
    HU Hungari
    ID Indonesia
    IE Ailandi
    IL Iserẹli
    IM Isle of Man
    IN India
    IO Etíkun Índíánì ti Ìlú Bírítísì
    IQ Iraki
    IR Irani
    IS Aṣilandi
    IT Itáli
    JE Jersey
    JM Jamaika
    JO Jọdani
    JP Japani
    KE Kenya
    KG Kuriṣisitani
    KH Kàmùbódíà
    KI Kiribati
    KM Kòmòrósì
    KN Kiiti ati Neefi
    KP Guusu Kọria
    KR Ariwa Kọria
    KW Kuweti
    KY Etíokun Kámánì
    KZ Kaṣaṣatani
    LA Laosi
    LB Lebanoni
    LC Luṣia
    LI Lẹṣitẹnisiteni
    LK Siri Lanka
    LR Laberia
    LS Lesoto
    LT Lituania
    LU Lusemogi
    LV Latifia
    LY Libiya
    MA Moroko
    MC Monako
    MD Modofia
    ME Montenegro
    MF Ìlú Mátíìnì
    MG Madasika
    MH Etikun Máṣali
    MK Àríwá Macedonia
    ML Mali
    MM Manamari
    MN Mogolia
    MO Màkáò
    MP Etikun Guusu Mariana
    MQ Matinikuwi
    MR Maritania
    MS Motserati
    MT Malata
    MU Maritiusi
    MV Maladifi
    MW Malawi
    MX Mesiko
    MY Malasia
    MZ Moṣamibiku
    NA Namibia
    NC Kaledonia Titun
    NE Nàìjá
    NF Etikun Nọ́úfókì
    NG Nàìjíríà
    NI Nikaragua
    NL Nedalandi
    NO Nọọwii
    NP Nepa
    NR Nauru
    NU Niue
    NZ Ṣilandi Titun
    OM Ọọma
    PA Panama
    PE Peru
    PF Firenṣi Polinesia
    PG Paapu ti Giini
    PH Filipini
    PK Pakisitan
    PL Polandi
    PM Pẹẹri ati mikuloni
    PN Pikarini
    PR Pọto Riko
    PS Palẹsítínì
    PT Pọ́túgà
    PW Paalu
    PY Paraguye
    QA Kota
    RE Riuniyan
    RO Romaniya
    RS Sẹ́bíà
    RU Rọṣia
    RW Ruwanda
    SA Saudi Arabia
    SB Etikun Solomoni
    SC Ṣeṣẹlẹsi
    SD Sudani
    SE Swidini
    SG Singapo
    SH Hẹlena
    SI Silofania
    SJ Sífábáàdì àti Jánì Máyẹ̀nì
    SK Silofakia
    SL Siria looni
    SM Sani Marino
    SN Sẹnẹga
    SO Somalia
    SR Surinami
    SS Gúúsù Sudan
    ST Sao tomi ati piriiṣipi
    SV Ẹẹsáfádò
    SX Síntì Mátẹ́ẹ̀nì
    SY Siria
    SZ Saṣiland
    TC Tọọki ati Etikun Kakọsi
    TD Ṣààdì
    TF Agbègbè Gúúsù Faranṣé
    TG Togo
    TH Tailandi
    TJ Takisitani
    TK Tokelau
    TL Ìlà Òòrùn Tímọ̀
    TM Tọọkimenisita
    TN Tuniṣia
    TO Tonga
    TR Tọọki
    TT Tirinida ati Tobaga
    TV Tufalu
    TW Taiwani
    TZ Tàǹsáníà
    UA Ukarini
    UG Uganda
    UM Àwọn Erékùsù Kékèké Agbègbè US
    US Amẹrikà
    UY Nruguayi
    UZ Nṣibẹkisitani
    VA Ìlú Vatican
    VC Fisẹnnti ati Genadina
    VE Fẹnẹṣuẹla
    VG Etíkun Fágínì ti ìlú Bírítísì
    VI Etikun Fagini ti Amẹrika
    VN Fẹtinami
    VU Faniatu
    WF Wali ati futuna
    WS Samọ
    XK Kòsófò
    YE Yemeni
    YT Mayote
    ZA Gúúṣù Áfíríkà
    ZM Ṣamibia
    ZW Ṣimibabe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Ààndórà"

        Cldr.AE ->
            "Ẹmirate ti Awọn Arabu"

        Cldr.AF ->
            "Àfùgànístánì"

        Cldr.AG ->
            "Ààntígúà àti Báríbúdà"

        Cldr.AI ->
            "Ààngúlílà"

        Cldr.AL ->
            "Àlùbàníánì"

        Cldr.AM ->
            "Améníà"

        Cldr.AO ->
            "Ààngólà"

        Cldr.AQ ->
            "Antakítíkà"

        Cldr.AR ->
            "Agentínà"

        Cldr.AS ->
            "Sámóánì ti Orílẹ́ède Àméríkà"

        Cldr.AT ->
            "Asítíríà"

        Cldr.AU ->
            "Ástràlìá"

        Cldr.AW ->
            "Árúbà"

        Cldr.AX ->
            "Àwọn Erékùsù ti Åland"

        Cldr.AZ ->
            "Asẹ́bájánì"

        Cldr.BA ->
            "Bọ̀síníà àti Ẹtisẹgófínà"

        Cldr.BB ->
            "Bábádósì"

        Cldr.BD ->
            "Bángáládésì"

        Cldr.BE ->
            "Bégíọ́mù"

        Cldr.BF ->
            "Bùùkíná Fasò"

        Cldr.BG ->
            "Bùùgáríà"

        Cldr.BH ->
            "Báránì"

        Cldr.BI ->
            "Bùùrúndì"

        Cldr.BJ ->
            "Bẹ̀nẹ̀"

        Cldr.BL ->
            "Ìlú Bátílẹ́mì"

        Cldr.BM ->
            "Bémúdà"

        Cldr.BN ->
            "Búrúnẹ́lì"

        Cldr.BO ->
            "Bọ̀lífíyà"

        Cldr.BQ ->
            "Káríbíánì ti Nẹ́dálándì"

        Cldr.BR ->
            "Bàràsílì"

        Cldr.BS ->
            "Bàhámásì"

        Cldr.BT ->
            "Bútánì"

        Cldr.BV ->
            "Erékùsù Bouvet"

        Cldr.BW ->
            "Bọ̀tìsúwánà"

        Cldr.BY ->
            "Bélárúsì"

        Cldr.BZ ->
            "Bèlísẹ̀"

        Cldr.CA ->
            "Kánádà"

        Cldr.CC ->
            "Erékùsù Cocos (Keeling)"

        Cldr.CD ->
            "Kóńgò (Tiwantiwa)"

        Cldr.CF ->
            "Àrin gùngun Áfíríkà"

        Cldr.CG ->
            "Kóńgò (Olómìnira)"

        Cldr.CH ->
            "switiṣilandi"

        Cldr.CI ->
            "Kóútè forà"

        Cldr.CK ->
            "Etíokun Kùúkù"

        Cldr.CL ->
            "Ṣílè"

        Cldr.CM ->
            "Kamerúúnì"

        Cldr.CN ->
            "Ṣáínà"

        Cldr.CO ->
            "Kòlómíbìa"

        Cldr.CR ->
            "Kuusita Ríkà"

        Cldr.CU ->
            "Kúbà"

        Cldr.CV ->
            "Etíokun Kápé féndè"

        Cldr.CW ->
            "Kúrásáò"

        Cldr.CX ->
            "Erékùsù Christmas"

        Cldr.CY ->
            "Kúrúsì"

        Cldr.CZ ->
            "Ṣẹ́ẹ́kì"

        Cldr.DE ->
            "Jámánì"

        Cldr.DJ ->
            "Díbọ́ótì"

        Cldr.DK ->
            "Dẹ́mákì"

        Cldr.DM ->
            "Dòmíníkà"

        Cldr.DO ->
            "Dòmíníkánì"

        Cldr.DZ ->
            "Àlùgèríánì"

        Cldr.EC ->
            "Ekuádò"

        Cldr.EE ->
            "Esitonia"

        Cldr.EG ->
            "Égípítì"

        Cldr.EH ->
            "Ìwọ̀òòrùn Sàhárà"

        Cldr.ER ->
            "Eritira"

        Cldr.ES ->
            "Sipani"

        Cldr.ET ->
            "Etopia"

        Cldr.FI ->
            "Filandi"

        Cldr.FJ ->
            "Fiji"

        Cldr.FK ->
            "Etikun Fakalandi"

        Cldr.FM ->
            "Makoronesia"

        Cldr.FO ->
            "Àwọn Erékùsù ti Faroe"

        Cldr.FR ->
            "Faranse"

        Cldr.GA ->
            "Gabon"

        Cldr.GB ->
            "Gẹ̀ẹ́sì"

        Cldr.GD ->
            "Genada"

        Cldr.GE ->
            "Gọgia"

        Cldr.GF ->
            "Firenṣi Guana"

        Cldr.GG ->
            "Guernsey"

        Cldr.GH ->
            "Gana"

        Cldr.GI ->
            "Gibaratara"

        Cldr.GL ->
            "Gerelandi"

        Cldr.GM ->
            "Gambia"

        Cldr.GN ->
            "Gene"

        Cldr.GP ->
            "Gadelope"

        Cldr.GQ ->
            "Ekutoria Gini"

        Cldr.GR ->
            "Geriisi"

        Cldr.GS ->
            "Gúúsù Georgia àti Gúúsù Àwọn Erékùsù Sandwich"

        Cldr.GT_ ->
            "Guatemala"

        Cldr.GU ->
            "Guamu"

        Cldr.GW ->
            "Gene-Busau"

        Cldr.GY ->
            "Guyana"

        Cldr.HK ->
            "Hong Kong"

        Cldr.HM ->
            "Erékùsù Heard àti Erékùsù McDonald"

        Cldr.HN ->
            "Hondurasi"

        Cldr.HR ->
            "Kòróátíà"

        Cldr.HT ->
            "Haati"

        Cldr.HU ->
            "Hungari"

        Cldr.ID ->
            "Indonesia"

        Cldr.IE ->
            "Ailandi"

        Cldr.IL ->
            "Iserẹli"

        Cldr.IM ->
            "Isle of Man"

        Cldr.IN ->
            "India"

        Cldr.IO ->
            "Etíkun Índíánì ti Ìlú Bírítísì"

        Cldr.IQ ->
            "Iraki"

        Cldr.IR ->
            "Irani"

        Cldr.IS ->
            "Aṣilandi"

        Cldr.IT ->
            "Itáli"

        Cldr.JE ->
            "Jersey"

        Cldr.JM ->
            "Jamaika"

        Cldr.JO ->
            "Jọdani"

        Cldr.JP ->
            "Japani"

        Cldr.KE ->
            "Kenya"

        Cldr.KG ->
            "Kuriṣisitani"

        Cldr.KH ->
            "Kàmùbódíà"

        Cldr.KI ->
            "Kiribati"

        Cldr.KM ->
            "Kòmòrósì"

        Cldr.KN ->
            "Kiiti ati Neefi"

        Cldr.KP ->
            "Guusu Kọria"

        Cldr.KR ->
            "Ariwa Kọria"

        Cldr.KW ->
            "Kuweti"

        Cldr.KY ->
            "Etíokun Kámánì"

        Cldr.KZ ->
            "Kaṣaṣatani"

        Cldr.LA ->
            "Laosi"

        Cldr.LB ->
            "Lebanoni"

        Cldr.LC ->
            "Luṣia"

        Cldr.LI ->
            "Lẹṣitẹnisiteni"

        Cldr.LK ->
            "Siri Lanka"

        Cldr.LR ->
            "Laberia"

        Cldr.LS ->
            "Lesoto"

        Cldr.LT_ ->
            "Lituania"

        Cldr.LU ->
            "Lusemogi"

        Cldr.LV ->
            "Latifia"

        Cldr.LY ->
            "Libiya"

        Cldr.MA ->
            "Moroko"

        Cldr.MC ->
            "Monako"

        Cldr.MD ->
            "Modofia"

        Cldr.ME ->
            "Montenegro"

        Cldr.MF ->
            "Ìlú Mátíìnì"

        Cldr.MG ->
            "Madasika"

        Cldr.MH ->
            "Etikun Máṣali"

        Cldr.MK ->
            "Àríwá Macedonia"

        Cldr.ML ->
            "Mali"

        Cldr.MM ->
            "Manamari"

        Cldr.MN ->
            "Mogolia"

        Cldr.MO ->
            "Màkáò"

        Cldr.MP ->
            "Etikun Guusu Mariana"

        Cldr.MQ ->
            "Matinikuwi"

        Cldr.MR ->
            "Maritania"

        Cldr.MS ->
            "Motserati"

        Cldr.MT ->
            "Malata"

        Cldr.MU ->
            "Maritiusi"

        Cldr.MV ->
            "Maladifi"

        Cldr.MW ->
            "Malawi"

        Cldr.MX ->
            "Mesiko"

        Cldr.MY ->
            "Malasia"

        Cldr.MZ ->
            "Moṣamibiku"

        Cldr.NA ->
            "Namibia"

        Cldr.NC ->
            "Kaledonia Titun"

        Cldr.NE ->
            "Nàìjá"

        Cldr.NF ->
            "Etikun Nọ́úfókì"

        Cldr.NG ->
            "Nàìjíríà"

        Cldr.NI ->
            "Nikaragua"

        Cldr.NL ->
            "Nedalandi"

        Cldr.NO ->
            "Nọọwii"

        Cldr.NP ->
            "Nepa"

        Cldr.NR ->
            "Nauru"

        Cldr.NU ->
            "Niue"

        Cldr.NZ ->
            "Ṣilandi Titun"

        Cldr.OM ->
            "Ọọma"

        Cldr.PA ->
            "Panama"

        Cldr.PE ->
            "Peru"

        Cldr.PF ->
            "Firenṣi Polinesia"

        Cldr.PG ->
            "Paapu ti Giini"

        Cldr.PH ->
            "Filipini"

        Cldr.PK ->
            "Pakisitan"

        Cldr.PL ->
            "Polandi"

        Cldr.PM ->
            "Pẹẹri ati mikuloni"

        Cldr.PN ->
            "Pikarini"

        Cldr.PR ->
            "Pọto Riko"

        Cldr.PS ->
            "Palẹsítínì"

        Cldr.PT ->
            "Pọ́túgà"

        Cldr.PW ->
            "Paalu"

        Cldr.PY ->
            "Paraguye"

        Cldr.QA ->
            "Kota"

        Cldr.RE ->
            "Riuniyan"

        Cldr.RO ->
            "Romaniya"

        Cldr.RS ->
            "Sẹ́bíà"

        Cldr.RU ->
            "Rọṣia"

        Cldr.RW ->
            "Ruwanda"

        Cldr.SA ->
            "Saudi Arabia"

        Cldr.SB ->
            "Etikun Solomoni"

        Cldr.SC ->
            "Ṣeṣẹlẹsi"

        Cldr.SD ->
            "Sudani"

        Cldr.SE ->
            "Swidini"

        Cldr.SG ->
            "Singapo"

        Cldr.SH ->
            "Hẹlena"

        Cldr.SI ->
            "Silofania"

        Cldr.SJ ->
            "Sífábáàdì àti Jánì Máyẹ̀nì"

        Cldr.SK ->
            "Silofakia"

        Cldr.SL ->
            "Siria looni"

        Cldr.SM ->
            "Sani Marino"

        Cldr.SN ->
            "Sẹnẹga"

        Cldr.SO ->
            "Somalia"

        Cldr.SR ->
            "Surinami"

        Cldr.SS ->
            "Gúúsù Sudan"

        Cldr.ST ->
            "Sao tomi ati piriiṣipi"

        Cldr.SV ->
            "Ẹẹsáfádò"

        Cldr.SX ->
            "Síntì Mátẹ́ẹ̀nì"

        Cldr.SY ->
            "Siria"

        Cldr.SZ ->
            "Saṣiland"

        Cldr.TC ->
            "Tọọki ati Etikun Kakọsi"

        Cldr.TD ->
            "Ṣààdì"

        Cldr.TF ->
            "Agbègbè Gúúsù Faranṣé"

        Cldr.TG ->
            "Togo"

        Cldr.TH ->
            "Tailandi"

        Cldr.TJ ->
            "Takisitani"

        Cldr.TK ->
            "Tokelau"

        Cldr.TL ->
            "Ìlà Òòrùn Tímọ̀"

        Cldr.TM ->
            "Tọọkimenisita"

        Cldr.TN ->
            "Tuniṣia"

        Cldr.TO ->
            "Tonga"

        Cldr.TR ->
            "Tọọki"

        Cldr.TT ->
            "Tirinida ati Tobaga"

        Cldr.TV ->
            "Tufalu"

        Cldr.TW ->
            "Taiwani"

        Cldr.TZ ->
            "Tàǹsáníà"

        Cldr.UA ->
            "Ukarini"

        Cldr.UG ->
            "Uganda"

        Cldr.UM ->
            "Àwọn Erékùsù Kékèké Agbègbè US"

        Cldr.US ->
            "Amẹrikà"

        Cldr.UY ->
            "Nruguayi"

        Cldr.UZ ->
            "Nṣibẹkisitani"

        Cldr.VA ->
            "Ìlú Vatican"

        Cldr.VC ->
            "Fisẹnnti ati Genadina"

        Cldr.VE ->
            "Fẹnẹṣuẹla"

        Cldr.VG ->
            "Etíkun Fágínì ti ìlú Bírítísì"

        Cldr.VI ->
            "Etikun Fagini ti Amẹrika"

        Cldr.VN ->
            "Fẹtinami"

        Cldr.VU ->
            "Faniatu"

        Cldr.WF ->
            "Wali ati futuna"

        Cldr.WS ->
            "Samọ"

        Cldr.XK ->
            "Kòsófò"

        Cldr.YE ->
            "Yemeni"

        Cldr.YT ->
            "Mayote"

        Cldr.ZA ->
            "Gúúṣù Áfíríkà"

        Cldr.ZM ->
            "Ṣamibia"

        Cldr.ZW ->
            "Ṣimibabe"