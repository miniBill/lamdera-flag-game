module Cldr.Yoruba.Benin exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Yoruba


{-| Name for `CountryCode` in Yoruba - Benin.

    AD Ààndórà
    AE Ɛmirate ti Awɔn Arabu
    AF Àfùgànístánì
    AG Ààntígúà àti Báríbúdà
    AI Ààngúlílà
    AL Àlùbàníánì
    AM Améníà
    AO Ààngólà
    AQ Antakítíkà
    AR Agentínà
    AS Sámóánì ti Orílɛ́ède Àméríkà
    AT Asítíríà
    AU Ástràlìá
    AW Árúbà
    AX Àwɔn Erékùsù ti Åland
    AZ Asɛ́bájánì
    BA Bɔ̀síníà àti Ɛtisɛgófínà
    BB Bábádósì
    BD Bángáládésì
    BE Bégíɔ́mù
    BF Bùùkíná Fasò
    BG Bùùgáríà
    BH Báránì
    BI Bùùrúndì
    BJ Bɛ̀nɛ̀
    BL Ìlú Bátílɛ́mì
    BM Bémúdà
    BN Búrúnɛ́lì
    BO Bɔ̀lífíyà
    BQ Káríbíánì ti Nɛ́dálándì
    BR Bàràsílì
    BS Bàhámásì
    BT Bútánì
    BV Erékùsù Bouvet
    BW Bɔ̀tìsúwánà
    BY Bélárúsì
    BZ Bèlísɛ̀
    CA Kánádà
    CC Erékùsù Cocos (Keeling)
    CD Kóńgò – Kinshasa
    CF Àrin gùngun Áfíríkà
    CG Kóńgò – Brazaville
    CH switishilandi
    CI Kóútè forà
    CK Etíokun Kùúkù
    CL Shílè
    CM Kamerúúnì
    CN Sháínà
    CO Kòlómíbìa
    CR Kuusita Ríkà
    CU Kúbà
    CV Etíokun Kápé féndè
    CW Kúrásáò
    CX Erékùsù Christmas
    CY Kúrúsì
    CZ Shɛ́ɛ́kì
    DE Jámánì
    DJ Díbɔ́ótì
    DK Dɛ́mákì
    DM Dòmíníkà
    DO Dòmíníkánì
    DZ Àlùgèríánì
    EC Ekuádò
    EE Esitonia
    EG Égípítì
    EH Ìwɔ̀òòrùn Sàhárà
    ER Eritira
    ES Sipani
    ET Etopia
    FI Filandi
    FJ Fiji
    FK Etikun Fakalandi
    FM Makoronesia
    FO Àwɔn Erékùsù ti Faroe
    FR Faranse
    GA Gabon
    GB Gɛ̀ɛ́sì
    GD Genada
    GE Gɔgia
    GF Firenshi Guana
    GG Guernsey
    GH Gana
    GI Gibaratara
    GL Gerelandi
    GM Gambia
    GN Gene
    GP Gadelope
    GQ Ekutoria Gini
    GR Geriisi
    GS Gúúsù Georgia àti Gúúsù Àwɔn Erékùsù Sandwich
    GT Guatemala
    GU Guamu
    GW Gene-Busau
    GY Guyana
    HK Agbègbè Ìshàkóso Ìshúná Hong Kong Tí Shánà Ń Darí
    HM Erékùsù Heard àti Erékùsù McDonald
    HN Hondurasi
    HR Kòróátíà
    HT Haati
    HU Hungari
    ID Indonesia
    IE Ailandi
    IL Iserɛli
    IM Isle of Man
    IN India
    IO Etíkun Índíánì ti Ìlú Bírítísì
    IQ Iraki
    IR Irani
    IS Ashilandi
    IT Itáli
    JE Jersey
    JM Jamaika
    JO Jɔdani
    JP Japani
    KE Kenya
    KG Kurishisitani
    KH Kàmùbódíà
    KI Kiribati
    KM Kòmòrósì
    KN Kiiti ati Neefi
    KP Guusu Kɔria
    KR Ariwa Kɔria
    KW Kuweti
    KY Etíokun Kámánì
    KZ Kashashatani
    LA Laosi
    LB Lebanoni
    LC Lushia
    LI Lɛshitɛnisiteni
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
    MH Etikun Máshali
    MK Àríwá Macedonia
    ML Mali
    MM Manamari
    MN Mogolia
    MO Agbègbè Ìshàkóso Pàtàkì Macao
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
    MZ Moshamibiku
    NA Namibia
    NC Kaledonia Titun
    NE Nàìjá
    NF Etikun Nɔ́úfókì
    NG Nàìjíríà
    NI Nikaragua
    NL Nedalandi
    NO Nɔɔwii
    NP Nepa
    NR Nauru
    NU Niue
    NZ Shilandi Titun
    OM Ɔɔma
    PA Panama
    PE Peru
    PF Firenshi Polinesia
    PG Paapu ti Giini
    PH Filipini
    PK Pakisitan
    PL Polandi
    PM Pɛɛri ati mikuloni
    PN Pikarini
    PR Pɔto Riko
    PS Agbègbè ara Palɛsítínì
    PT Pɔ́túgà
    PW Paalu
    PY Paraguye
    QA Kota
    RE Riuniyan
    RO Romaniya
    RS Sɛ́bíà
    RU Rɔshia
    RW Ruwanda
    SA Saudi Arabia
    SB Etikun Solomoni
    SC Sheshɛlɛsi
    SD Sudani
    SE Swidini
    SG Singapo
    SH Hɛlena
    SI Silofania
    SJ Sífábáàdì àti Jánì Máyɛ̀nì
    SK Silofakia
    SL Siria looni
    SM Sani Marino
    SN Sɛnɛga
    SO Somalia
    SR Surinami
    SS Gúúsù Sudan
    ST Sao tomi ati piriishipi
    SV Ɛɛsáfádò
    SX Síntì Mátɛ́ɛ̀nì
    SY Siria
    SZ Sashiland
    TC Tɔɔki ati Etikun Kakɔsi
    TD Shààdì
    TF Agbègbè Gúúsù Faranshé
    TG Togo
    TH Tailandi
    TJ Takisitani
    TK Tokelau
    TL ÌlàOòrùn Tímɔ̀
    TM Tɔɔkimenisita
    TN Tunishia
    TO Tonga
    TR Tɔɔki
    TT Tirinida ati Tobaga
    TV Tufalu
    TW Taiwani
    TZ Tàǹsáníà
    UA Ukarini
    UG Uganda
    UM Àwɔn Erékùsù Kékèké Agbègbè US
    US Amɛrikà
    UY Nruguayi
    UZ Nshibɛkisitani
    VA Ìlú Vatican
    VC Fisɛnnti ati Genadina
    VE Fɛnɛshuɛla
    VG Etíkun Fágínì ti ìlú Bírítísì
    VI Etikun Fagini ti Amɛrika
    VN Fɛtinami
    VU Faniatu
    WF Wali ati futuna
    WS Samɔ
    XK Kòsófò
    YE Yemeni
    YT Mayote
    ZA Gúúshù Áfíríkà
    ZM Shamibia
    ZW Shimibabe
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AE ->
            "Ɛmirate ti Awɔn Arabu"

        Cldr.AS ->
            "Sámóánì ti Orílɛ́ède Àméríkà"

        Cldr.AX ->
            "Àwɔn Erékùsù ti Åland"

        Cldr.AZ ->
            "Asɛ́bájánì"

        Cldr.BA ->
            "Bɔ̀síníà àti Ɛtisɛgófínà"

        Cldr.BE ->
            "Bégíɔ́mù"

        Cldr.BJ ->
            "Bɛ̀nɛ̀"

        Cldr.BL ->
            "Ìlú Bátílɛ́mì"

        Cldr.BN ->
            "Búrúnɛ́lì"

        Cldr.BO ->
            "Bɔ̀lífíyà"

        Cldr.BQ ->
            "Káríbíánì ti Nɛ́dálándì"

        Cldr.BW ->
            "Bɔ̀tìsúwánà"

        Cldr.BZ ->
            "Bèlísɛ̀"

        Cldr.CH ->
            "switishilandi"

        Cldr.CL ->
            "Shílè"

        Cldr.CN ->
            "Sháínà"

        Cldr.CZ ->
            "Shɛ́ɛ́kì"

        Cldr.DJ ->
            "Díbɔ́ótì"

        Cldr.DK ->
            "Dɛ́mákì"

        Cldr.EH ->
            "Ìwɔ̀òòrùn Sàhárà"

        Cldr.FO ->
            "Àwɔn Erékùsù ti Faroe"

        Cldr.GB ->
            "Gɛ̀ɛ́sì"

        Cldr.GE ->
            "Gɔgia"

        Cldr.GF ->
            "Firenshi Guana"

        Cldr.GS ->
            "Gúúsù Georgia àti Gúúsù Àwɔn Erékùsù Sandwich"

        Cldr.HK ->
            "Agbègbè Ìshàkóso Ìshúná Hong Kong Tí Shánà Ń Darí"

        Cldr.IL ->
            "Iserɛli"

        Cldr.IS ->
            "Ashilandi"

        Cldr.JO ->
            "Jɔdani"

        Cldr.KG ->
            "Kurishisitani"

        Cldr.KP ->
            "Guusu Kɔria"

        Cldr.KR ->
            "Ariwa Kɔria"

        Cldr.KZ ->
            "Kashashatani"

        Cldr.LC ->
            "Lushia"

        Cldr.LI ->
            "Lɛshitɛnisiteni"

        Cldr.MH ->
            "Etikun Máshali"

        Cldr.MO ->
            "Agbègbè Ìshàkóso Pàtàkì Macao"

        Cldr.MZ ->
            "Moshamibiku"

        Cldr.NF ->
            "Etikun Nɔ́úfókì"

        Cldr.NO ->
            "Nɔɔwii"

        Cldr.NZ ->
            "Shilandi Titun"

        Cldr.OM ->
            "Ɔɔma"

        Cldr.PF ->
            "Firenshi Polinesia"

        Cldr.PM ->
            "Pɛɛri ati mikuloni"

        Cldr.PR ->
            "Pɔto Riko"

        Cldr.PS ->
            "Agbègbè ara Palɛsítínì"

        Cldr.PT ->
            "Pɔ́túgà"

        Cldr.RS ->
            "Sɛ́bíà"

        Cldr.RU ->
            "Rɔshia"

        Cldr.SC ->
            "Sheshɛlɛsi"

        Cldr.SH ->
            "Hɛlena"

        Cldr.SJ ->
            "Sífábáàdì àti Jánì Máyɛ̀nì"

        Cldr.SN ->
            "Sɛnɛga"

        Cldr.ST ->
            "Sao tomi ati piriishipi"

        Cldr.SV ->
            "Ɛɛsáfádò"

        Cldr.SX ->
            "Síntì Mátɛ́ɛ̀nì"

        Cldr.SZ ->
            "Sashiland"

        Cldr.TC ->
            "Tɔɔki ati Etikun Kakɔsi"

        Cldr.TD ->
            "Shààdì"

        Cldr.TF ->
            "Agbègbè Gúúsù Faranshé"

        Cldr.TL ->
            "ÌlàOòrùn Tímɔ̀"

        Cldr.TM ->
            "Tɔɔkimenisita"

        Cldr.TN ->
            "Tunishia"

        Cldr.TR ->
            "Tɔɔki"

        Cldr.UM ->
            "Àwɔn Erékùsù Kékèké Agbègbè US"

        Cldr.US ->
            "Amɛrikà"

        Cldr.UZ ->
            "Nshibɛkisitani"

        Cldr.VC ->
            "Fisɛnnti ati Genadina"

        Cldr.VE ->
            "Fɛnɛshuɛla"

        Cldr.VI ->
            "Etikun Fagini ti Amɛrika"

        Cldr.VN ->
            "Fɛtinami"

        Cldr.WS ->
            "Samɔ"

        Cldr.ZA ->
            "Gúúshù Áfíríkà"

        Cldr.ZM ->
            "Shamibia"

        Cldr.ZW ->
            "Shimibabe"

        _ ->
            Cldr.Yoruba.countryCodeToName countryCode