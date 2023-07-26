module Cldr exposing (CountryCode(..), Locale(..), all, allLocales, localeToName, toAlpha2)

{-| 
@docs CountryCode, Locale, allLocales, localeToName, toAlpha2, all
-}



{-| All the supported country codes. `GT` and `LT` are defined in Basics so we define them as `GT_` and `LT_`. -}
type CountryCode
    = AD
    | AE
    | AF
    | AG
    | AI
    | AL
    | AM
    | AO
    | AQ
    | AR
    | AS
    | AT
    | AU
    | AW
    | AX
    | AZ
    | BA
    | BB
    | BD
    | BE
    | BF
    | BG
    | BH
    | BI
    | BJ
    | BL
    | BM
    | BN
    | BO
    | BQ
    | BR
    | BS
    | BT
    | BV
    | BW
    | BY
    | BZ
    | CA
    | CC
    | CD
    | CF
    | CG
    | CH
    | CI
    | CK
    | CL
    | CM
    | CN
    | CO
    | CR
    | CU
    | CV
    | CW
    | CX
    | CY
    | CZ
    | DE
    | DJ
    | DK
    | DM
    | DO
    | DZ
    | EC
    | EE
    | EG
    | EH
    | ER
    | ES
    | ET
    | FI
    | FJ
    | FK
    | FM
    | FO
    | FR
    | GA
    | GB
    | GD
    | GE
    | GF
    | GG
    | GH
    | GI
    | GL
    | GM
    | GN
    | GP
    | GQ
    | GR
    | GS
    | GT_
    | GU
    | GW
    | GY
    | HK
    | HM
    | HN
    | HR
    | HT
    | HU
    | ID
    | IE
    | IL
    | IM
    | IN
    | IO
    | IQ
    | IR
    | IS
    | IT
    | JE
    | JM
    | JO
    | JP
    | KE
    | KG
    | KH
    | KI
    | KM
    | KN
    | KP
    | KR
    | KW
    | KY
    | KZ
    | LA
    | LB
    | LC
    | LI
    | LK
    | LR
    | LS
    | LT_
    | LU
    | LV
    | LY
    | MA
    | MC
    | MD
    | ME
    | MF
    | MG
    | MH
    | MK
    | ML
    | MM
    | MN
    | MO
    | MP
    | MQ
    | MR
    | MS
    | MT
    | MU
    | MV
    | MW
    | MX
    | MY
    | MZ
    | NA
    | NC
    | NE
    | NF
    | NG
    | NI
    | NL
    | NO
    | NP
    | NR
    | NU
    | NZ
    | OM
    | PA
    | PE
    | PF
    | PG
    | PH
    | PK
    | PL
    | PM
    | PN
    | PR
    | PS
    | PT
    | PW
    | PY
    | QA
    | RE
    | RO
    | RS
    | RU
    | RW
    | SA
    | SB
    | SC
    | SD
    | SE
    | SG
    | SH
    | SI
    | SJ
    | SK
    | SL
    | SM
    | SN
    | SO
    | SR
    | SS
    | ST
    | SV
    | SX
    | SY
    | SZ
    | TC
    | TD
    | TF
    | TG
    | TH
    | TJ
    | TK
    | TL
    | TM
    | TN
    | TO
    | TR
    | TT
    | TV
    | TW
    | TZ
    | UA
    | UG
    | UM
    | US
    | UY
    | UZ
    | VA
    | VC
    | VE
    | VG
    | VI
    | VN
    | VU
    | WF
    | WS
    | XK
    | YE
    | YT
    | ZA
    | ZM
    | ZW


{-| All the supported locales. -}
type Locale
    = Af
    | AfNA
    | Am
    | Ar
    | ArAE
    | ArBH
    | ArDJ
    | ArDZ
    | ArEG
    | ArEH
    | ArER
    | ArIL
    | ArIQ
    | ArJO
    | ArKM
    | ArKW
    | ArLB
    | ArLY
    | ArMA
    | ArMR
    | ArOM
    | ArPS
    | ArQA
    | ArSA
    | ArSD
    | ArSO
    | ArSS
    | ArSY
    | ArTD
    | ArTN
    | ArYE
    | As
    | Az
    | AzLatn
    | Be
    | BeTarask
    | Bg
    | Bn
    | BnIN
    | Bs
    | BsLatn
    | Ca
    | CaAD
    | CaESValencia
    | CaFR
    | CaIT
    | Cs
    | Cy
    | Da
    | DaGL
    | De
    | DeAT
    | DeBE
    | DeCH
    | DeIT
    | DeLI
    | DeLU
    | El
    | ElCY
    | ElPolyton
    | En
    | En001
    | En150
    | EnAE
    | EnAG
    | EnAI
    | EnAS
    | EnAT
    | EnAU
    | EnBB
    | EnBE
    | EnBI
    | EnBM
    | EnBS
    | EnBW
    | EnBZ
    | EnCA
    | EnCC
    | EnCH
    | EnCK
    | EnCM
    | EnCX
    | EnCY
    | EnDE
    | EnDG
    | EnDK
    | EnDM
    | EnER
    | EnFI
    | EnFJ
    | EnFK
    | EnFM
    | EnGB
    | EnGD
    | EnGG
    | EnGH
    | EnGI
    | EnGM
    | EnGU
    | EnGY
    | EnHK
    | EnIE
    | EnIL
    | EnIM
    | EnIN
    | EnIO
    | EnJE
    | EnJM
    | EnKE
    | EnKI
    | EnKN
    | EnKY
    | EnLC
    | EnLR
    | EnLS
    | EnMG
    | EnMH
    | EnMO
    | EnMP
    | EnMS
    | EnMT
    | EnMU
    | EnMV
    | EnMW
    | EnMY
    | EnNA
    | EnNF
    | EnNG
    | EnNL
    | EnNR
    | EnNU
    | EnNZ
    | EnPG
    | EnPH
    | EnPK
    | EnPN
    | EnPR
    | EnPW
    | EnRW
    | EnSB
    | EnSC
    | EnSD
    | EnSE
    | EnSG
    | EnSH
    | EnSI
    | EnSL
    | EnSS
    | EnSX
    | EnSZ
    | EnTC
    | EnTK
    | EnTO
    | EnTT
    | EnTV
    | EnTZ
    | EnUG
    | EnUM
    | EnVC
    | EnVG
    | EnVI
    | EnVU
    | EnWS
    | EnZA
    | EnZM
    | EnZW
    | Es
    | Es419
    | EsAR
    | EsBO
    | EsBR
    | EsBZ
    | EsCL
    | EsCO
    | EsCR
    | EsCU
    | EsDO
    | EsEA
    | EsEC
    | EsGQ
    | EsGT
    | EsHN
    | EsIC
    | EsMX
    | EsNI
    | EsPA
    | EsPE
    | EsPH
    | EsPR
    | EsPY
    | EsSV
    | EsUS
    | EsUY
    | EsVE
    | Et
    | Eu
    | Fa
    | FaAF
    | Fi
    | Fil
    | Fr
    | FrBE
    | FrBF
    | FrBI
    | FrBJ
    | FrBL
    | FrCA
    | FrCD
    | FrCF
    | FrCG
    | FrCH
    | FrCI
    | FrCM
    | FrDJ
    | FrDZ
    | FrGA
    | FrGF
    | FrGN
    | FrGP
    | FrGQ
    | FrHT
    | FrKM
    | FrLU
    | FrMA
    | FrMC
    | FrMF
    | FrMG
    | FrML
    | FrMQ
    | FrMR
    | FrMU
    | FrNC
    | FrNE
    | FrPF
    | FrPM
    | FrRE
    | FrRW
    | FrSC
    | FrSN
    | FrSY
    | FrTD
    | FrTG
    | FrTN
    | FrVU
    | FrWF
    | FrYT
    | Ga
    | GaGB
    | Gd
    | Gl
    | Gu
    | Ha
    | HaGH
    | HaNE
    | He
    | Hi
    | HiLatn
    | Hr
    | HrBA
    | Hu
    | Hy
    | Id
    | Ig
    | Is
    | It
    | ItCH
    | ItSM
    | ItVA
    | Ja
    | Jv
    | Ka
    | Kk
    | Km
    | Kn
    | Ko
    | KoKP
    | Kok
    | Ky
    | Lo
    | Lt
    | Lv
    | Mk
    | Ml
    | Mn
    | Mr
    | Ms
    | MsBN
    | MsID
    | MsSG
    | My
    | Nb
    | NbSJ
    | Ne
    | NeIN
    | Nl
    | NlAW
    | NlBE
    | NlBQ
    | NlCW
    | NlSR
    | NlSX
    | Nn
    | No
    | Or
    | Pa
    | PaGuru
    | Pcm
    | Pl
    | Ps
    | PsPK
    | Pt
    | PtAO
    | PtCH
    | PtCV
    | PtGQ
    | PtGW
    | PtLU
    | PtMO
    | PtMZ
    | PtPT
    | PtST
    | PtTL
    | Ro
    | RoMD
    | Ru
    | RuBY
    | RuKG
    | RuKZ
    | RuMD
    | RuUA
    | Sd
    | SdArab
    | Si
    | Sk
    | Sl
    | So
    | SoDJ
    | SoET
    | SoKE
    | Sq
    | SqMK
    | SqXK
    | Sr
    | SrCyrl
    | SrCyrlBA
    | SrCyrlME
    | SrCyrlXK
    | SrLatn
    | SrLatnBA
    | SrLatnME
    | SrLatnXK
    | Sv
    | SvAX
    | SvFI
    | Sw
    | SwCD
    | SwKE
    | SwUG
    | Ta
    | TaLK
    | TaMY
    | TaSG
    | Te
    | Th
    | Tk
    | Tr
    | TrCY
    | Uk
    | Ur
    | UrIN
    | Uz
    | UzLatn
    | Vi
    | Yo
    | YoBJ
    | Yue
    | YueHans
    | YueHant
    | Zh
    | ZhHans
    | ZhHansHK
    | ZhHansMO
    | ZhHansSG
    | ZhHant
    | ZhHantHK
    | ZhHantMO
    | Zu


{-| All the supported locales. -}
allLocales : List Locale
allLocales =
    [ Af
    , AfNA
    , Am
    , Ar
    , ArAE
    , ArBH
    , ArDJ
    , ArDZ
    , ArEG
    , ArEH
    , ArER
    , ArIL
    , ArIQ
    , ArJO
    , ArKM
    , ArKW
    , ArLB
    , ArLY
    , ArMA
    , ArMR
    , ArOM
    , ArPS
    , ArQA
    , ArSA
    , ArSD
    , ArSO
    , ArSS
    , ArSY
    , ArTD
    , ArTN
    , ArYE
    , As
    , Az
    , AzLatn
    , Be
    , BeTarask
    , Bg
    , Bn
    , BnIN
    , Bs
    , BsLatn
    , Ca
    , CaAD
    , CaESValencia
    , CaFR
    , CaIT
    , Cs
    , Cy
    , Da
    , DaGL
    , De
    , DeAT
    , DeBE
    , DeCH
    , DeIT
    , DeLI
    , DeLU
    , El
    , ElCY
    , ElPolyton
    , En
    , En001
    , En150
    , EnAE
    , EnAG
    , EnAI
    , EnAS
    , EnAT
    , EnAU
    , EnBB
    , EnBE
    , EnBI
    , EnBM
    , EnBS
    , EnBW
    , EnBZ
    , EnCA
    , EnCC
    , EnCH
    , EnCK
    , EnCM
    , EnCX
    , EnCY
    , EnDE
    , EnDG
    , EnDK
    , EnDM
    , EnER
    , EnFI
    , EnFJ
    , EnFK
    , EnFM
    , EnGB
    , EnGD
    , EnGG
    , EnGH
    , EnGI
    , EnGM
    , EnGU
    , EnGY
    , EnHK
    , EnIE
    , EnIL
    , EnIM
    , EnIN
    , EnIO
    , EnJE
    , EnJM
    , EnKE
    , EnKI
    , EnKN
    , EnKY
    , EnLC
    , EnLR
    , EnLS
    , EnMG
    , EnMH
    , EnMO
    , EnMP
    , EnMS
    , EnMT
    , EnMU
    , EnMV
    , EnMW
    , EnMY
    , EnNA
    , EnNF
    , EnNG
    , EnNL
    , EnNR
    , EnNU
    , EnNZ
    , EnPG
    , EnPH
    , EnPK
    , EnPN
    , EnPR
    , EnPW
    , EnRW
    , EnSB
    , EnSC
    , EnSD
    , EnSE
    , EnSG
    , EnSH
    , EnSI
    , EnSL
    , EnSS
    , EnSX
    , EnSZ
    , EnTC
    , EnTK
    , EnTO
    , EnTT
    , EnTV
    , EnTZ
    , EnUG
    , EnUM
    , EnVC
    , EnVG
    , EnVI
    , EnVU
    , EnWS
    , EnZA
    , EnZM
    , EnZW
    , Es
    , Es419
    , EsAR
    , EsBO
    , EsBR
    , EsBZ
    , EsCL
    , EsCO
    , EsCR
    , EsCU
    , EsDO
    , EsEA
    , EsEC
    , EsGQ
    , EsGT
    , EsHN
    , EsIC
    , EsMX
    , EsNI
    , EsPA
    , EsPE
    , EsPH
    , EsPR
    , EsPY
    , EsSV
    , EsUS
    , EsUY
    , EsVE
    , Et
    , Eu
    , Fa
    , FaAF
    , Fi
    , Fil
    , Fr
    , FrBE
    , FrBF
    , FrBI
    , FrBJ
    , FrBL
    , FrCA
    , FrCD
    , FrCF
    , FrCG
    , FrCH
    , FrCI
    , FrCM
    , FrDJ
    , FrDZ
    , FrGA
    , FrGF
    , FrGN
    , FrGP
    , FrGQ
    , FrHT
    , FrKM
    , FrLU
    , FrMA
    , FrMC
    , FrMF
    , FrMG
    , FrML
    , FrMQ
    , FrMR
    , FrMU
    , FrNC
    , FrNE
    , FrPF
    , FrPM
    , FrRE
    , FrRW
    , FrSC
    , FrSN
    , FrSY
    , FrTD
    , FrTG
    , FrTN
    , FrVU
    , FrWF
    , FrYT
    , Ga
    , GaGB
    , Gd
    , Gl
    , Gu
    , Ha
    , HaGH
    , HaNE
    , He
    , Hi
    , HiLatn
    , Hr
    , HrBA
    , Hu
    , Hy
    , Id
    , Ig
    , Is
    , It
    , ItCH
    , ItSM
    , ItVA
    , Ja
    , Jv
    , Ka
    , Kk
    , Km
    , Kn
    , Ko
    , KoKP
    , Kok
    , Ky
    , Lo
    , Lt
    , Lv
    , Mk
    , Ml
    , Mn
    , Mr
    , Ms
    , MsBN
    , MsID
    , MsSG
    , My
    , Nb
    , NbSJ
    , Ne
    , NeIN
    , Nl
    , NlAW
    , NlBE
    , NlBQ
    , NlCW
    , NlSR
    , NlSX
    , Nn
    , No
    , Or
    , Pa
    , PaGuru
    , Pcm
    , Pl
    , Ps
    , PsPK
    , Pt
    , PtAO
    , PtCH
    , PtCV
    , PtGQ
    , PtGW
    , PtLU
    , PtMO
    , PtMZ
    , PtPT
    , PtST
    , PtTL
    , Ro
    , RoMD
    , Ru
    , RuBY
    , RuKG
    , RuKZ
    , RuMD
    , RuUA
    , Sd
    , SdArab
    , Si
    , Sk
    , Sl
    , So
    , SoDJ
    , SoET
    , SoKE
    , Sq
    , SqMK
    , SqXK
    , Sr
    , SrCyrl
    , SrCyrlBA
    , SrCyrlME
    , SrCyrlXK
    , SrLatn
    , SrLatnBA
    , SrLatnME
    , SrLatnXK
    , Sv
    , SvAX
    , SvFI
    , Sw
    , SwCD
    , SwKE
    , SwUG
    , Ta
    , TaLK
    , TaMY
    , TaSG
    , Te
    , Th
    , Tk
    , Tr
    , TrCY
    , Uk
    , Ur
    , UrIN
    , Uz
    , UzLatn
    , Vi
    , Yo
    , YoBJ
    , Yue
    , YueHans
    , YueHant
    , Zh
    , ZhHans
    , ZhHansHK
    , ZhHansMO
    , ZhHansSG
    , ZhHant
    , ZhHantHK
    , ZhHantMO
    , Zu
    ]


{-| Get the name of a locale. -}
localeToName : Locale -> String
localeToName locale =
    case locale of
        Af ->
            "Afrikaans"

        AfNA ->
            "Afrikaans - Namibia"

        Am ->
            "Amharic"

        Ar ->
            "Arabic"

        ArAE ->
            "Arabic - United Arab Emirates"

        ArBH ->
            "Arabic - Bahrain"

        ArDJ ->
            "Arabic - Djibouti"

        ArDZ ->
            "Arabic - Algeria"

        ArEG ->
            "Arabic - Egypt"

        ArEH ->
            "Arabic - Western Sahara"

        ArER ->
            "Arabic - Eritrea"

        ArIL ->
            "Arabic - Israel"

        ArIQ ->
            "Arabic - Iraq"

        ArJO ->
            "Arabic - Jordan"

        ArKM ->
            "Arabic - Comoros"

        ArKW ->
            "Arabic - Kuwait"

        ArLB ->
            "Arabic - Lebanon"

        ArLY ->
            "Arabic - Libya"

        ArMA ->
            "Arabic - Morocco"

        ArMR ->
            "Arabic - Mauritania"

        ArOM ->
            "Arabic - Oman"

        ArPS ->
            "Arabic - Palestinian Territories"

        ArQA ->
            "Arabic - Qatar"

        ArSA ->
            "Arabic - Saudi Arabia"

        ArSD ->
            "Arabic - Sudan"

        ArSO ->
            "Arabic - Somalia"

        ArSS ->
            "Arabic - South Sudan"

        ArSY ->
            "Arabic - Syria"

        ArTD ->
            "Arabic - Chad"

        ArTN ->
            "Arabic - Tunisia"

        ArYE ->
            "Arabic - Yemen"

        As ->
            "Assamese"

        Az ->
            "Azerbaijani"

        AzLatn ->
            "Azerbaijani (Latin)"

        Be ->
            "Belarusian"

        BeTarask ->
            "Belarusian (Taraškievica)"

        Bg ->
            "Bulgarian"

        Bn ->
            "Bangla"

        BnIN ->
            "Bangla - India"

        Bs ->
            "Bosnian"

        BsLatn ->
            "Bosnian (Latin)"

        Ca ->
            "Catalan"

        CaAD ->
            "Catalan - Andorra"

        CaESValencia ->
            "Catalan - Valencia"

        CaFR ->
            "Catalan - France"

        CaIT ->
            "Catalan - Italy"

        Cs ->
            "Czech"

        Cy ->
            "Welsh"

        Da ->
            "Danish"

        DaGL ->
            "Danish - Greenland"

        De ->
            "German"

        DeAT ->
            "German - Austria"

        DeBE ->
            "German - Belgium"

        DeCH ->
            "German - Switzerland"

        DeIT ->
            "German - Italy"

        DeLI ->
            "German - Liechtenstein"

        DeLU ->
            "German - Luxembourg"

        El ->
            "Greek"

        ElCY ->
            "Greek - Cyprus"

        ElPolyton ->
            "Greek (Polytonic)"

        En ->
            "English"

        En001 ->
            "English - world"

        En150 ->
            "English - Europe"

        EnAE ->
            "English - United Arab Emirates"

        EnAG ->
            "English - Antigua & Barbuda"

        EnAI ->
            "English - Anguilla"

        EnAS ->
            "English - American Samoa"

        EnAT ->
            "English - Austria"

        EnAU ->
            "English - Australia"

        EnBB ->
            "English - Barbados"

        EnBE ->
            "English - Belgium"

        EnBI ->
            "English - Burundi"

        EnBM ->
            "English - Bermuda"

        EnBS ->
            "English - Bahamas"

        EnBW ->
            "English - Botswana"

        EnBZ ->
            "English - Belize"

        EnCA ->
            "English - Canada"

        EnCC ->
            "English - Cocos (Keeling) Islands"

        EnCH ->
            "English - Switzerland"

        EnCK ->
            "English - Cook Islands"

        EnCM ->
            "English - Cameroon"

        EnCX ->
            "English - Christmas Island"

        EnCY ->
            "English - Cyprus"

        EnDE ->
            "English - Germany"

        EnDG ->
            "English - Diego Garcia"

        EnDK ->
            "English - Denmark"

        EnDM ->
            "English - Dominica"

        EnER ->
            "English - Eritrea"

        EnFI ->
            "English - Finland"

        EnFJ ->
            "English - Fiji"

        EnFK ->
            "English - Falkland Islands"

        EnFM ->
            "English - Micronesia"

        EnGB ->
            "English - United Kingdom"

        EnGD ->
            "English - Grenada"

        EnGG ->
            "English - Guernsey"

        EnGH ->
            "English - Ghana"

        EnGI ->
            "English - Gibraltar"

        EnGM ->
            "English - Gambia"

        EnGU ->
            "English - Guam"

        EnGY ->
            "English - Guyana"

        EnHK ->
            "English - Hong Kong SAR China"

        EnIE ->
            "English - Ireland"

        EnIL ->
            "English - Israel"

        EnIM ->
            "English - Isle of Man"

        EnIN ->
            "English - India"

        EnIO ->
            "English - British Indian Ocean Territory"

        EnJE ->
            "English - Jersey"

        EnJM ->
            "English - Jamaica"

        EnKE ->
            "English - Kenya"

        EnKI ->
            "English - Kiribati"

        EnKN ->
            "English - St. Kitts & Nevis"

        EnKY ->
            "English - Cayman Islands"

        EnLC ->
            "English - St. Lucia"

        EnLR ->
            "English - Liberia"

        EnLS ->
            "English - Lesotho"

        EnMG ->
            "English - Madagascar"

        EnMH ->
            "English - Marshall Islands"

        EnMO ->
            "English - Macao SAR China"

        EnMP ->
            "English - Northern Mariana Islands"

        EnMS ->
            "English - Montserrat"

        EnMT ->
            "English - Malta"

        EnMU ->
            "English - Mauritius"

        EnMV ->
            "English - Maldives"

        EnMW ->
            "English - Malawi"

        EnMY ->
            "English - Malaysia"

        EnNA ->
            "English - Namibia"

        EnNF ->
            "English - Norfolk Island"

        EnNG ->
            "English - Nigeria"

        EnNL ->
            "English - Netherlands"

        EnNR ->
            "English - Nauru"

        EnNU ->
            "English - Niue"

        EnNZ ->
            "English - New Zealand"

        EnPG ->
            "English - Papua New Guinea"

        EnPH ->
            "English - Philippines"

        EnPK ->
            "English - Pakistan"

        EnPN ->
            "English - Pitcairn Islands"

        EnPR ->
            "English - Puerto Rico"

        EnPW ->
            "English - Palau"

        EnRW ->
            "English - Rwanda"

        EnSB ->
            "English - Solomon Islands"

        EnSC ->
            "English - Seychelles"

        EnSD ->
            "English - Sudan"

        EnSE ->
            "English - Sweden"

        EnSG ->
            "English - Singapore"

        EnSH ->
            "English - St. Helena"

        EnSI ->
            "English - Slovenia"

        EnSL ->
            "English - Sierra Leone"

        EnSS ->
            "English - South Sudan"

        EnSX ->
            "English - Sint Maarten"

        EnSZ ->
            "English - Eswatini"

        EnTC ->
            "English - Turks & Caicos Islands"

        EnTK ->
            "English - Tokelau"

        EnTO ->
            "English - Tonga"

        EnTT ->
            "English - Trinidad & Tobago"

        EnTV ->
            "English - Tuvalu"

        EnTZ ->
            "English - Tanzania"

        EnUG ->
            "English - Uganda"

        EnUM ->
            "English - U.S. Outlying Islands"

        EnVC ->
            "English - St. Vincent & Grenadines"

        EnVG ->
            "English - British Virgin Islands"

        EnVI ->
            "English - U.S. Virgin Islands"

        EnVU ->
            "English - Vanuatu"

        EnWS ->
            "English - Samoa"

        EnZA ->
            "English - South Africa"

        EnZM ->
            "English - Zambia"

        EnZW ->
            "English - Zimbabwe"

        Es ->
            "Spanish"

        Es419 ->
            "Spanish - Latin America"

        EsAR ->
            "Spanish - Argentina"

        EsBO ->
            "Spanish - Bolivia"

        EsBR ->
            "Spanish - Brazil"

        EsBZ ->
            "Spanish - Belize"

        EsCL ->
            "Spanish - Chile"

        EsCO ->
            "Spanish - Colombia"

        EsCR ->
            "Spanish - Costa Rica"

        EsCU ->
            "Spanish - Cuba"

        EsDO ->
            "Spanish - Dominican Republic"

        EsEA ->
            "Spanish - Ceuta & Melilla"

        EsEC ->
            "Spanish - Ecuador"

        EsGQ ->
            "Spanish - Equatorial Guinea"

        EsGT ->
            "Spanish - Guatemala"

        EsHN ->
            "Spanish - Honduras"

        EsIC ->
            "Spanish - Canary Islands"

        EsMX ->
            "Spanish - Mexico"

        EsNI ->
            "Spanish - Nicaragua"

        EsPA ->
            "Spanish - Panama"

        EsPE ->
            "Spanish - Peru"

        EsPH ->
            "Spanish - Philippines"

        EsPR ->
            "Spanish - Puerto Rico"

        EsPY ->
            "Spanish - Paraguay"

        EsSV ->
            "Spanish - El Salvador"

        EsUS ->
            "Spanish - United States"

        EsUY ->
            "Spanish - Uruguay"

        EsVE ->
            "Spanish - Venezuela"

        Et ->
            "Estonian"

        Eu ->
            "Basque"

        Fa ->
            "Persian"

        FaAF ->
            "Persian - Afghanistan"

        Fi ->
            "Finnish"

        Fil ->
            "Filipino"

        Fr ->
            "French"

        FrBE ->
            "French - Belgium"

        FrBF ->
            "French - Burkina Faso"

        FrBI ->
            "French - Burundi"

        FrBJ ->
            "French - Benin"

        FrBL ->
            "French - St. Barthélemy"

        FrCA ->
            "French - Canada"

        FrCD ->
            "French - Congo - Kinshasa"

        FrCF ->
            "French - Central African Republic"

        FrCG ->
            "French - Congo - Brazzaville"

        FrCH ->
            "French - Switzerland"

        FrCI ->
            "French - Côte d’Ivoire"

        FrCM ->
            "French - Cameroon"

        FrDJ ->
            "French - Djibouti"

        FrDZ ->
            "French - Algeria"

        FrGA ->
            "French - Gabon"

        FrGF ->
            "French - French Guiana"

        FrGN ->
            "French - Guinea"

        FrGP ->
            "French - Guadeloupe"

        FrGQ ->
            "French - Equatorial Guinea"

        FrHT ->
            "French - Haiti"

        FrKM ->
            "French - Comoros"

        FrLU ->
            "French - Luxembourg"

        FrMA ->
            "French - Morocco"

        FrMC ->
            "French - Monaco"

        FrMF ->
            "French - St. Martin"

        FrMG ->
            "French - Madagascar"

        FrML ->
            "French - Mali"

        FrMQ ->
            "French - Martinique"

        FrMR ->
            "French - Mauritania"

        FrMU ->
            "French - Mauritius"

        FrNC ->
            "French - New Caledonia"

        FrNE ->
            "French - Niger"

        FrPF ->
            "French - French Polynesia"

        FrPM ->
            "French - St. Pierre & Miquelon"

        FrRE ->
            "French - Réunion"

        FrRW ->
            "French - Rwanda"

        FrSC ->
            "French - Seychelles"

        FrSN ->
            "French - Senegal"

        FrSY ->
            "French - Syria"

        FrTD ->
            "French - Chad"

        FrTG ->
            "French - Togo"

        FrTN ->
            "French - Tunisia"

        FrVU ->
            "French - Vanuatu"

        FrWF ->
            "French - Wallis & Futuna"

        FrYT ->
            "French - Mayotte"

        Ga ->
            "Irish"

        GaGB ->
            "Irish - United Kingdom"

        Gd ->
            "Scottish Gaelic"

        Gl ->
            "Galician"

        Gu ->
            "Gujarati"

        Ha ->
            "Hausa"

        HaGH ->
            "Hausa - Ghana"

        HaNE ->
            "Hausa - Niger"

        He ->
            "Hebrew"

        Hi ->
            "Hindi"

        HiLatn ->
            "Hindi (Latin)"

        Hr ->
            "Croatian"

        HrBA ->
            "Croatian - Bosnia & Herzegovina"

        Hu ->
            "Hungarian"

        Hy ->
            "Armenian"

        Id ->
            "Indonesian"

        Ig ->
            "Igbo"

        Is ->
            "Icelandic"

        It ->
            "Italian"

        ItCH ->
            "Italian - Switzerland"

        ItSM ->
            "Italian - San Marino"

        ItVA ->
            "Italian - Vatican City"

        Ja ->
            "Japanese"

        Jv ->
            "Javanese"

        Ka ->
            "Georgian"

        Kk ->
            "Kazakh"

        Km ->
            "Khmer"

        Kn ->
            "Kannada"

        Ko ->
            "Korean"

        KoKP ->
            "Korean - North Korea"

        Kok ->
            "Konkani"

        Ky ->
            "Kyrgyz"

        Lo ->
            "Lao"

        Lt ->
            "Lithuanian"

        Lv ->
            "Latvian"

        Mk ->
            "Macedonian"

        Ml ->
            "Malayalam"

        Mn ->
            "Mongolian"

        Mr ->
            "Marathi"

        Ms ->
            "Malay"

        MsBN ->
            "Malay - Brunei"

        MsID ->
            "Malay - Indonesia"

        MsSG ->
            "Malay - Singapore"

        My ->
            "Burmese"

        Nb ->
            "Norwegian Bokmål"

        NbSJ ->
            "Norwegian Bokmål - Svalbard & Jan Mayen"

        Ne ->
            "Nepali"

        NeIN ->
            "Nepali - India"

        Nl ->
            "Dutch"

        NlAW ->
            "Dutch - Aruba"

        NlBE ->
            "Dutch - Belgium"

        NlBQ ->
            "Dutch - Caribbean Netherlands"

        NlCW ->
            "Dutch - Curaçao"

        NlSR ->
            "Dutch - Suriname"

        NlSX ->
            "Dutch - Sint Maarten"

        Nn ->
            "Norwegian Nynorsk"

        No ->
            "Norwegian"

        Or ->
            "Odia"

        Pa ->
            "Punjabi"

        PaGuru ->
            "Punjabi (Gurmukhi)"

        Pcm ->
            "Nigerian Pidgin"

        Pl ->
            "Polish"

        Ps ->
            "Pashto"

        PsPK ->
            "Pashto - Pakistan"

        Pt ->
            "Portuguese"

        PtAO ->
            "Portuguese - Angola"

        PtCH ->
            "Portuguese - Switzerland"

        PtCV ->
            "Portuguese - Cape Verde"

        PtGQ ->
            "Portuguese - Equatorial Guinea"

        PtGW ->
            "Portuguese - Guinea-Bissau"

        PtLU ->
            "Portuguese - Luxembourg"

        PtMO ->
            "Portuguese - Macao SAR China"

        PtMZ ->
            "Portuguese - Mozambique"

        PtPT ->
            "Portuguese - Portugal"

        PtST ->
            "Portuguese - São Tomé & Príncipe"

        PtTL ->
            "Portuguese - Timor-Leste"

        Ro ->
            "Romanian"

        RoMD ->
            "Romanian - Moldova"

        Ru ->
            "Russian"

        RuBY ->
            "Russian - Belarus"

        RuKG ->
            "Russian - Kyrgyzstan"

        RuKZ ->
            "Russian - Kazakhstan"

        RuMD ->
            "Russian - Moldova"

        RuUA ->
            "Russian - Ukraine"

        Sd ->
            "Sindhi"

        SdArab ->
            "Sindhi (Arabic)"

        Si ->
            "Sinhala"

        Sk ->
            "Slovak"

        Sl ->
            "Slovenian"

        So ->
            "Somali"

        SoDJ ->
            "Somali - Djibouti"

        SoET ->
            "Somali - Ethiopia"

        SoKE ->
            "Somali - Kenya"

        Sq ->
            "Albanian"

        SqMK ->
            "Albanian - North Macedonia"

        SqXK ->
            "Albanian - Kosovo"

        Sr ->
            "Serbian"

        SrCyrl ->
            "Serbian (Cyrillic)"

        SrCyrlBA ->
            "Serbian (Cyrillic) - Bosnia & Herzegovina"

        SrCyrlME ->
            "Serbian (Cyrillic) - Montenegro"

        SrCyrlXK ->
            "Serbian (Cyrillic) - Kosovo"

        SrLatn ->
            "Serbian (Latin)"

        SrLatnBA ->
            "Serbian (Latin) - Bosnia & Herzegovina"

        SrLatnME ->
            "Serbian (Latin) - Montenegro"

        SrLatnXK ->
            "Serbian (Latin) - Kosovo"

        Sv ->
            "Swedish"

        SvAX ->
            "Swedish - Åland Islands"

        SvFI ->
            "Swedish - Finland"

        Sw ->
            "Swahili"

        SwCD ->
            "Swahili - Congo - Kinshasa"

        SwKE ->
            "Swahili - Kenya"

        SwUG ->
            "Swahili - Uganda"

        Ta ->
            "Tamil"

        TaLK ->
            "Tamil - Sri Lanka"

        TaMY ->
            "Tamil - Malaysia"

        TaSG ->
            "Tamil - Singapore"

        Te ->
            "Telugu"

        Th ->
            "Thai"

        Tk ->
            "Turkmen"

        Tr ->
            "Turkish"

        TrCY ->
            "Turkish - Cyprus"

        Uk ->
            "Ukrainian"

        Ur ->
            "Urdu"

        UrIN ->
            "Urdu - India"

        Uz ->
            "Uzbek"

        UzLatn ->
            "Uzbek (Latin)"

        Vi ->
            "Vietnamese"

        Yo ->
            "Yoruba"

        YoBJ ->
            "Yoruba - Benin"

        Yue ->
            "Cantonese"

        YueHans ->
            "Cantonese (Simplified)"

        YueHant ->
            "Cantonese (Traditional)"

        Zh ->
            "Chinese"

        ZhHans ->
            "Chinese (Simplified)"

        ZhHansHK ->
            "Chinese (Simplified) - Hong Kong SAR China"

        ZhHansMO ->
            "Chinese (Simplified) - Macao SAR China"

        ZhHansSG ->
            "Chinese (Simplified) - Singapore"

        ZhHant ->
            "Chinese (Traditional)"

        ZhHantHK ->
            "Chinese (Traditional) - Hong Kong SAR China"

        ZhHantMO ->
            "Chinese (Traditional) - Macao SAR China"

        Zu ->
            "Zulu"


{-| Two-letter `ISO 3166-1 alpha-2` code from `CountryCode`. -}
toAlpha2 : CountryCode -> String
toAlpha2 countryCodeExpr =
    case countryCodeExpr of
        AD ->
            "ad"

        AE ->
            "ae"

        AF ->
            "af"

        AG ->
            "ag"

        AI ->
            "ai"

        AL ->
            "al"

        AM ->
            "am"

        AO ->
            "ao"

        AQ ->
            "aq"

        AR ->
            "ar"

        AS ->
            "as"

        AT ->
            "at"

        AU ->
            "au"

        AW ->
            "aw"

        AX ->
            "ax"

        AZ ->
            "az"

        BA ->
            "ba"

        BB ->
            "bb"

        BD ->
            "bd"

        BE ->
            "be"

        BF ->
            "bf"

        BG ->
            "bg"

        BH ->
            "bh"

        BI ->
            "bi"

        BJ ->
            "bj"

        BL ->
            "bl"

        BM ->
            "bm"

        BN ->
            "bn"

        BO ->
            "bo"

        BQ ->
            "bq"

        BR ->
            "br"

        BS ->
            "bs"

        BT ->
            "bt"

        BV ->
            "bv"

        BW ->
            "bw"

        BY ->
            "by"

        BZ ->
            "bz"

        CA ->
            "ca"

        CC ->
            "cc"

        CD ->
            "cd"

        CF ->
            "cf"

        CG ->
            "cg"

        CH ->
            "ch"

        CI ->
            "ci"

        CK ->
            "ck"

        CL ->
            "cl"

        CM ->
            "cm"

        CN ->
            "cn"

        CO ->
            "co"

        CR ->
            "cr"

        CU ->
            "cu"

        CV ->
            "cv"

        CW ->
            "cw"

        CX ->
            "cx"

        CY ->
            "cy"

        CZ ->
            "cz"

        DE ->
            "de"

        DJ ->
            "dj"

        DK ->
            "dk"

        DM ->
            "dm"

        DO ->
            "do"

        DZ ->
            "dz"

        EC ->
            "ec"

        EE ->
            "ee"

        EG ->
            "eg"

        EH ->
            "eh"

        ER ->
            "er"

        ES ->
            "es"

        ET ->
            "et"

        FI ->
            "fi"

        FJ ->
            "fj"

        FK ->
            "fk"

        FM ->
            "fm"

        FO ->
            "fo"

        FR ->
            "fr"

        GA ->
            "ga"

        GB ->
            "gb"

        GD ->
            "gd"

        GE ->
            "ge"

        GF ->
            "gf"

        GG ->
            "gg"

        GH ->
            "gh"

        GI ->
            "gi"

        GL ->
            "gl"

        GM ->
            "gm"

        GN ->
            "gn"

        GP ->
            "gp"

        GQ ->
            "gq"

        GR ->
            "gr"

        GS ->
            "gs"

        GT_ ->
            "gt"

        GU ->
            "gu"

        GW ->
            "gw"

        GY ->
            "gy"

        HK ->
            "hk"

        HM ->
            "hm"

        HN ->
            "hn"

        HR ->
            "hr"

        HT ->
            "ht"

        HU ->
            "hu"

        ID ->
            "id"

        IE ->
            "ie"

        IL ->
            "il"

        IM ->
            "im"

        IN ->
            "in"

        IO ->
            "io"

        IQ ->
            "iq"

        IR ->
            "ir"

        IS ->
            "is"

        IT ->
            "it"

        JE ->
            "je"

        JM ->
            "jm"

        JO ->
            "jo"

        JP ->
            "jp"

        KE ->
            "ke"

        KG ->
            "kg"

        KH ->
            "kh"

        KI ->
            "ki"

        KM ->
            "km"

        KN ->
            "kn"

        KP ->
            "kp"

        KR ->
            "kr"

        KW ->
            "kw"

        KY ->
            "ky"

        KZ ->
            "kz"

        LA ->
            "la"

        LB ->
            "lb"

        LC ->
            "lc"

        LI ->
            "li"

        LK ->
            "lk"

        LR ->
            "lr"

        LS ->
            "ls"

        LT_ ->
            "lt"

        LU ->
            "lu"

        LV ->
            "lv"

        LY ->
            "ly"

        MA ->
            "ma"

        MC ->
            "mc"

        MD ->
            "md"

        ME ->
            "me"

        MF ->
            "mf"

        MG ->
            "mg"

        MH ->
            "mh"

        MK ->
            "mk"

        ML ->
            "ml"

        MM ->
            "mm"

        MN ->
            "mn"

        MO ->
            "mo"

        MP ->
            "mp"

        MQ ->
            "mq"

        MR ->
            "mr"

        MS ->
            "ms"

        MT ->
            "mt"

        MU ->
            "mu"

        MV ->
            "mv"

        MW ->
            "mw"

        MX ->
            "mx"

        MY ->
            "my"

        MZ ->
            "mz"

        NA ->
            "na"

        NC ->
            "nc"

        NE ->
            "ne"

        NF ->
            "nf"

        NG ->
            "ng"

        NI ->
            "ni"

        NL ->
            "nl"

        NO ->
            "no"

        NP ->
            "np"

        NR ->
            "nr"

        NU ->
            "nu"

        NZ ->
            "nz"

        OM ->
            "om"

        PA ->
            "pa"

        PE ->
            "pe"

        PF ->
            "pf"

        PG ->
            "pg"

        PH ->
            "ph"

        PK ->
            "pk"

        PL ->
            "pl"

        PM ->
            "pm"

        PN ->
            "pn"

        PR ->
            "pr"

        PS ->
            "ps"

        PT ->
            "pt"

        PW ->
            "pw"

        PY ->
            "py"

        QA ->
            "qa"

        RE ->
            "re"

        RO ->
            "ro"

        RS ->
            "rs"

        RU ->
            "ru"

        RW ->
            "rw"

        SA ->
            "sa"

        SB ->
            "sb"

        SC ->
            "sc"

        SD ->
            "sd"

        SE ->
            "se"

        SG ->
            "sg"

        SH ->
            "sh"

        SI ->
            "si"

        SJ ->
            "sj"

        SK ->
            "sk"

        SL ->
            "sl"

        SM ->
            "sm"

        SN ->
            "sn"

        SO ->
            "so"

        SR ->
            "sr"

        SS ->
            "ss"

        ST ->
            "st"

        SV ->
            "sv"

        SX ->
            "sx"

        SY ->
            "sy"

        SZ ->
            "sz"

        TC ->
            "tc"

        TD ->
            "td"

        TF ->
            "tf"

        TG ->
            "tg"

        TH ->
            "th"

        TJ ->
            "tj"

        TK ->
            "tk"

        TL ->
            "tl"

        TM ->
            "tm"

        TN ->
            "tn"

        TO ->
            "to"

        TR ->
            "tr"

        TT ->
            "tt"

        TV ->
            "tv"

        TW ->
            "tw"

        TZ ->
            "tz"

        UA ->
            "ua"

        UG ->
            "ug"

        UM ->
            "um"

        US ->
            "us"

        UY ->
            "uy"

        UZ ->
            "uz"

        VA ->
            "va"

        VC ->
            "vc"

        VE ->
            "ve"

        VG ->
            "vg"

        VI ->
            "vi"

        VN ->
            "vn"

        VU ->
            "vu"

        WF ->
            "wf"

        WS ->
            "ws"

        XK ->
            "xk"

        YE ->
            "ye"

        YT ->
            "yt"

        ZA ->
            "za"

        ZM ->
            "zm"

        ZW ->
            "zw"


{-| All `CountryCode`s sorted alphabetically. -}
all : List CountryCode
all =
    [ AD
    , AE
    , AF
    , AG
    , AI
    , AL
    , AM
    , AO
    , AQ
    , AR
    , AS
    , AT
    , AU
    , AW
    , AX
    , AZ
    , BA
    , BB
    , BD
    , BE
    , BF
    , BG
    , BH
    , BI
    , BJ
    , BL
    , BM
    , BN
    , BO
    , BQ
    , BR
    , BS
    , BT
    , BV
    , BW
    , BY
    , BZ
    , CA
    , CC
    , CD
    , CF
    , CG
    , CH
    , CI
    , CK
    , CL
    , CM
    , CN
    , CO
    , CR
    , CU
    , CV
    , CW
    , CX
    , CY
    , CZ
    , DE
    , DJ
    , DK
    , DM
    , DO
    , DZ
    , EC
    , EE
    , EG
    , EH
    , ER
    , ES
    , ET
    , FI
    , FJ
    , FK
    , FM
    , FO
    , FR
    , GA
    , GB
    , GD
    , GE
    , GF
    , GG
    , GH
    , GI
    , GL
    , GM
    , GN
    , GP
    , GQ
    , GR
    , GS
    , GT_
    , GU
    , GW
    , GY
    , HK
    , HM
    , HN
    , HR
    , HT
    , HU
    , ID
    , IE
    , IL
    , IM
    , IN
    , IO
    , IQ
    , IR
    , IS
    , IT
    , JE
    , JM
    , JO
    , JP
    , KE
    , KG
    , KH
    , KI
    , KM
    , KN
    , KP
    , KR
    , KW
    , KY
    , KZ
    , LA
    , LB
    , LC
    , LI
    , LK
    , LR
    , LS
    , LT_
    , LU
    , LV
    , LY
    , MA
    , MC
    , MD
    , ME
    , MF
    , MG
    , MH
    , MK
    , ML
    , MM
    , MN
    , MO
    , MP
    , MQ
    , MR
    , MS
    , MT
    , MU
    , MV
    , MW
    , MX
    , MY
    , MZ
    , NA
    , NC
    , NE
    , NF
    , NG
    , NI
    , NL
    , NO
    , NP
    , NR
    , NU
    , NZ
    , OM
    , PA
    , PE
    , PF
    , PG
    , PH
    , PK
    , PL
    , PM
    , PN
    , PR
    , PS
    , PT
    , PW
    , PY
    , QA
    , RE
    , RO
    , RS
    , RU
    , RW
    , SA
    , SB
    , SC
    , SD
    , SE
    , SG
    , SH
    , SI
    , SJ
    , SK
    , SL
    , SM
    , SN
    , SO
    , SR
    , SS
    , ST
    , SV
    , SX
    , SY
    , SZ
    , TC
    , TD
    , TF
    , TG
    , TH
    , TJ
    , TK
    , TL
    , TM
    , TN
    , TO
    , TR
    , TT
    , TV
    , TW
    , TZ
    , UA
    , UG
    , UM
    , US
    , UY
    , UZ
    , VA
    , VC
    , VE
    , VG
    , VI
    , VN
    , VU
    , WF
    , WS
    , XK
    , YE
    , YT
    , ZA
    , ZM
    , ZW
    ]