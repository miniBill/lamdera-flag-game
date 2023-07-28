module Cldr exposing (CountryCode(..), Locale(..), all, allLocales, fromAlpha2, localeFromAlpha2, localeToAlpha2, localeToEnglishName, toAlpha2)

{-| 
@docs CountryCode, Locale, allLocales, localeFromAlpha2, localeToAlpha2, localeToEnglishName, toAlpha2, fromAlpha2, all
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


localeFromAlpha2 : String -> Maybe Locale
localeFromAlpha2 locale =
    case locale of
        "af" ->
            Just Af

        "af-NA" ->
            Just AfNA

        "am" ->
            Just Am

        "ar" ->
            Just Ar

        "ar-AE" ->
            Just ArAE

        "ar-BH" ->
            Just ArBH

        "ar-DJ" ->
            Just ArDJ

        "ar-DZ" ->
            Just ArDZ

        "ar-EG" ->
            Just ArEG

        "ar-EH" ->
            Just ArEH

        "ar-ER" ->
            Just ArER

        "ar-IL" ->
            Just ArIL

        "ar-IQ" ->
            Just ArIQ

        "ar-JO" ->
            Just ArJO

        "ar-KM" ->
            Just ArKM

        "ar-KW" ->
            Just ArKW

        "ar-LB" ->
            Just ArLB

        "ar-LY" ->
            Just ArLY

        "ar-MA" ->
            Just ArMA

        "ar-MR" ->
            Just ArMR

        "ar-OM" ->
            Just ArOM

        "ar-PS" ->
            Just ArPS

        "ar-QA" ->
            Just ArQA

        "ar-SA" ->
            Just ArSA

        "ar-SD" ->
            Just ArSD

        "ar-SO" ->
            Just ArSO

        "ar-SS" ->
            Just ArSS

        "ar-SY" ->
            Just ArSY

        "ar-TD" ->
            Just ArTD

        "ar-TN" ->
            Just ArTN

        "ar-YE" ->
            Just ArYE

        "as" ->
            Just As

        "az" ->
            Just Az

        "az-Latn" ->
            Just AzLatn

        "be" ->
            Just Be

        "be-tarask" ->
            Just BeTarask

        "bg" ->
            Just Bg

        "bn" ->
            Just Bn

        "bn-IN" ->
            Just BnIN

        "bs" ->
            Just Bs

        "bs-Latn" ->
            Just BsLatn

        "ca" ->
            Just Ca

        "ca-AD" ->
            Just CaAD

        "ca-ES-valencia" ->
            Just CaESValencia

        "ca-FR" ->
            Just CaFR

        "ca-IT" ->
            Just CaIT

        "cs" ->
            Just Cs

        "cy" ->
            Just Cy

        "da" ->
            Just Da

        "da-GL" ->
            Just DaGL

        "de" ->
            Just De

        "de-AT" ->
            Just DeAT

        "de-BE" ->
            Just DeBE

        "de-CH" ->
            Just DeCH

        "de-IT" ->
            Just DeIT

        "de-LI" ->
            Just DeLI

        "de-LU" ->
            Just DeLU

        "el" ->
            Just El

        "el-CY" ->
            Just ElCY

        "el-polyton" ->
            Just ElPolyton

        "en" ->
            Just En

        "en-001" ->
            Just En001

        "en-150" ->
            Just En150

        "en-AE" ->
            Just EnAE

        "en-AG" ->
            Just EnAG

        "en-AI" ->
            Just EnAI

        "en-AS" ->
            Just EnAS

        "en-AT" ->
            Just EnAT

        "en-AU" ->
            Just EnAU

        "en-BB" ->
            Just EnBB

        "en-BE" ->
            Just EnBE

        "en-BI" ->
            Just EnBI

        "en-BM" ->
            Just EnBM

        "en-BS" ->
            Just EnBS

        "en-BW" ->
            Just EnBW

        "en-BZ" ->
            Just EnBZ

        "en-CA" ->
            Just EnCA

        "en-CC" ->
            Just EnCC

        "en-CH" ->
            Just EnCH

        "en-CK" ->
            Just EnCK

        "en-CM" ->
            Just EnCM

        "en-CX" ->
            Just EnCX

        "en-CY" ->
            Just EnCY

        "en-DE" ->
            Just EnDE

        "en-DG" ->
            Just EnDG

        "en-DK" ->
            Just EnDK

        "en-DM" ->
            Just EnDM

        "en-ER" ->
            Just EnER

        "en-FI" ->
            Just EnFI

        "en-FJ" ->
            Just EnFJ

        "en-FK" ->
            Just EnFK

        "en-FM" ->
            Just EnFM

        "en-GB" ->
            Just EnGB

        "en-GD" ->
            Just EnGD

        "en-GG" ->
            Just EnGG

        "en-GH" ->
            Just EnGH

        "en-GI" ->
            Just EnGI

        "en-GM" ->
            Just EnGM

        "en-GU" ->
            Just EnGU

        "en-GY" ->
            Just EnGY

        "en-HK" ->
            Just EnHK

        "en-IE" ->
            Just EnIE

        "en-IL" ->
            Just EnIL

        "en-IM" ->
            Just EnIM

        "en-IN" ->
            Just EnIN

        "en-IO" ->
            Just EnIO

        "en-JE" ->
            Just EnJE

        "en-JM" ->
            Just EnJM

        "en-KE" ->
            Just EnKE

        "en-KI" ->
            Just EnKI

        "en-KN" ->
            Just EnKN

        "en-KY" ->
            Just EnKY

        "en-LC" ->
            Just EnLC

        "en-LR" ->
            Just EnLR

        "en-LS" ->
            Just EnLS

        "en-MG" ->
            Just EnMG

        "en-MH" ->
            Just EnMH

        "en-MO" ->
            Just EnMO

        "en-MP" ->
            Just EnMP

        "en-MS" ->
            Just EnMS

        "en-MT" ->
            Just EnMT

        "en-MU" ->
            Just EnMU

        "en-MV" ->
            Just EnMV

        "en-MW" ->
            Just EnMW

        "en-MY" ->
            Just EnMY

        "en-NA" ->
            Just EnNA

        "en-NF" ->
            Just EnNF

        "en-NG" ->
            Just EnNG

        "en-NL" ->
            Just EnNL

        "en-NR" ->
            Just EnNR

        "en-NU" ->
            Just EnNU

        "en-NZ" ->
            Just EnNZ

        "en-PG" ->
            Just EnPG

        "en-PH" ->
            Just EnPH

        "en-PK" ->
            Just EnPK

        "en-PN" ->
            Just EnPN

        "en-PR" ->
            Just EnPR

        "en-PW" ->
            Just EnPW

        "en-RW" ->
            Just EnRW

        "en-SB" ->
            Just EnSB

        "en-SC" ->
            Just EnSC

        "en-SD" ->
            Just EnSD

        "en-SE" ->
            Just EnSE

        "en-SG" ->
            Just EnSG

        "en-SH" ->
            Just EnSH

        "en-SI" ->
            Just EnSI

        "en-SL" ->
            Just EnSL

        "en-SS" ->
            Just EnSS

        "en-SX" ->
            Just EnSX

        "en-SZ" ->
            Just EnSZ

        "en-TC" ->
            Just EnTC

        "en-TK" ->
            Just EnTK

        "en-TO" ->
            Just EnTO

        "en-TT" ->
            Just EnTT

        "en-TV" ->
            Just EnTV

        "en-TZ" ->
            Just EnTZ

        "en-UG" ->
            Just EnUG

        "en-UM" ->
            Just EnUM

        "en-VC" ->
            Just EnVC

        "en-VG" ->
            Just EnVG

        "en-VI" ->
            Just EnVI

        "en-VU" ->
            Just EnVU

        "en-WS" ->
            Just EnWS

        "en-ZA" ->
            Just EnZA

        "en-ZM" ->
            Just EnZM

        "en-ZW" ->
            Just EnZW

        "es" ->
            Just Es

        "es-419" ->
            Just Es419

        "es-AR" ->
            Just EsAR

        "es-BO" ->
            Just EsBO

        "es-BR" ->
            Just EsBR

        "es-BZ" ->
            Just EsBZ

        "es-CL" ->
            Just EsCL

        "es-CO" ->
            Just EsCO

        "es-CR" ->
            Just EsCR

        "es-CU" ->
            Just EsCU

        "es-DO" ->
            Just EsDO

        "es-EA" ->
            Just EsEA

        "es-EC" ->
            Just EsEC

        "es-GQ" ->
            Just EsGQ

        "es-GT" ->
            Just EsGT

        "es-HN" ->
            Just EsHN

        "es-IC" ->
            Just EsIC

        "es-MX" ->
            Just EsMX

        "es-NI" ->
            Just EsNI

        "es-PA" ->
            Just EsPA

        "es-PE" ->
            Just EsPE

        "es-PH" ->
            Just EsPH

        "es-PR" ->
            Just EsPR

        "es-PY" ->
            Just EsPY

        "es-SV" ->
            Just EsSV

        "es-US" ->
            Just EsUS

        "es-UY" ->
            Just EsUY

        "es-VE" ->
            Just EsVE

        "et" ->
            Just Et

        "eu" ->
            Just Eu

        "fa" ->
            Just Fa

        "fa-AF" ->
            Just FaAF

        "fi" ->
            Just Fi

        "fil" ->
            Just Fil

        "fr" ->
            Just Fr

        "fr-BE" ->
            Just FrBE

        "fr-BF" ->
            Just FrBF

        "fr-BI" ->
            Just FrBI

        "fr-BJ" ->
            Just FrBJ

        "fr-BL" ->
            Just FrBL

        "fr-CA" ->
            Just FrCA

        "fr-CD" ->
            Just FrCD

        "fr-CF" ->
            Just FrCF

        "fr-CG" ->
            Just FrCG

        "fr-CH" ->
            Just FrCH

        "fr-CI" ->
            Just FrCI

        "fr-CM" ->
            Just FrCM

        "fr-DJ" ->
            Just FrDJ

        "fr-DZ" ->
            Just FrDZ

        "fr-GA" ->
            Just FrGA

        "fr-GF" ->
            Just FrGF

        "fr-GN" ->
            Just FrGN

        "fr-GP" ->
            Just FrGP

        "fr-GQ" ->
            Just FrGQ

        "fr-HT" ->
            Just FrHT

        "fr-KM" ->
            Just FrKM

        "fr-LU" ->
            Just FrLU

        "fr-MA" ->
            Just FrMA

        "fr-MC" ->
            Just FrMC

        "fr-MF" ->
            Just FrMF

        "fr-MG" ->
            Just FrMG

        "fr-ML" ->
            Just FrML

        "fr-MQ" ->
            Just FrMQ

        "fr-MR" ->
            Just FrMR

        "fr-MU" ->
            Just FrMU

        "fr-NC" ->
            Just FrNC

        "fr-NE" ->
            Just FrNE

        "fr-PF" ->
            Just FrPF

        "fr-PM" ->
            Just FrPM

        "fr-RE" ->
            Just FrRE

        "fr-RW" ->
            Just FrRW

        "fr-SC" ->
            Just FrSC

        "fr-SN" ->
            Just FrSN

        "fr-SY" ->
            Just FrSY

        "fr-TD" ->
            Just FrTD

        "fr-TG" ->
            Just FrTG

        "fr-TN" ->
            Just FrTN

        "fr-VU" ->
            Just FrVU

        "fr-WF" ->
            Just FrWF

        "fr-YT" ->
            Just FrYT

        "ga" ->
            Just Ga

        "ga-GB" ->
            Just GaGB

        "gd" ->
            Just Gd

        "gl" ->
            Just Gl

        "gu" ->
            Just Gu

        "ha" ->
            Just Ha

        "ha-GH" ->
            Just HaGH

        "ha-NE" ->
            Just HaNE

        "he" ->
            Just He

        "hi" ->
            Just Hi

        "hi-Latn" ->
            Just HiLatn

        "hr" ->
            Just Hr

        "hr-BA" ->
            Just HrBA

        "hu" ->
            Just Hu

        "hy" ->
            Just Hy

        "id" ->
            Just Id

        "ig" ->
            Just Ig

        "is" ->
            Just Is

        "it" ->
            Just It

        "it-CH" ->
            Just ItCH

        "it-SM" ->
            Just ItSM

        "it-VA" ->
            Just ItVA

        "ja" ->
            Just Ja

        "jv" ->
            Just Jv

        "ka" ->
            Just Ka

        "kk" ->
            Just Kk

        "km" ->
            Just Km

        "kn" ->
            Just Kn

        "ko" ->
            Just Ko

        "ko-KP" ->
            Just KoKP

        "kok" ->
            Just Kok

        "ky" ->
            Just Ky

        "lo" ->
            Just Lo

        "lt" ->
            Just Lt

        "lv" ->
            Just Lv

        "mk" ->
            Just Mk

        "ml" ->
            Just Ml

        "mn" ->
            Just Mn

        "mr" ->
            Just Mr

        "ms" ->
            Just Ms

        "ms-BN" ->
            Just MsBN

        "ms-ID" ->
            Just MsID

        "ms-SG" ->
            Just MsSG

        "my" ->
            Just My

        "nb" ->
            Just Nb

        "nb-SJ" ->
            Just NbSJ

        "ne" ->
            Just Ne

        "ne-IN" ->
            Just NeIN

        "nl" ->
            Just Nl

        "nl-AW" ->
            Just NlAW

        "nl-BE" ->
            Just NlBE

        "nl-BQ" ->
            Just NlBQ

        "nl-CW" ->
            Just NlCW

        "nl-SR" ->
            Just NlSR

        "nl-SX" ->
            Just NlSX

        "nn" ->
            Just Nn

        "no" ->
            Just No

        "or" ->
            Just Or

        "pa" ->
            Just Pa

        "pa-Guru" ->
            Just PaGuru

        "pcm" ->
            Just Pcm

        "pl" ->
            Just Pl

        "ps" ->
            Just Ps

        "ps-PK" ->
            Just PsPK

        "pt" ->
            Just Pt

        "pt-AO" ->
            Just PtAO

        "pt-CH" ->
            Just PtCH

        "pt-CV" ->
            Just PtCV

        "pt-GQ" ->
            Just PtGQ

        "pt-GW" ->
            Just PtGW

        "pt-LU" ->
            Just PtLU

        "pt-MO" ->
            Just PtMO

        "pt-MZ" ->
            Just PtMZ

        "pt-PT" ->
            Just PtPT

        "pt-ST" ->
            Just PtST

        "pt-TL" ->
            Just PtTL

        "ro" ->
            Just Ro

        "ro-MD" ->
            Just RoMD

        "ru" ->
            Just Ru

        "ru-BY" ->
            Just RuBY

        "ru-KG" ->
            Just RuKG

        "ru-KZ" ->
            Just RuKZ

        "ru-MD" ->
            Just RuMD

        "ru-UA" ->
            Just RuUA

        "sd" ->
            Just Sd

        "sd-Arab" ->
            Just SdArab

        "si" ->
            Just Si

        "sk" ->
            Just Sk

        "sl" ->
            Just Sl

        "so" ->
            Just So

        "so-DJ" ->
            Just SoDJ

        "so-ET" ->
            Just SoET

        "so-KE" ->
            Just SoKE

        "sq" ->
            Just Sq

        "sq-MK" ->
            Just SqMK

        "sq-XK" ->
            Just SqXK

        "sr" ->
            Just Sr

        "sr-Cyrl" ->
            Just SrCyrl

        "sr-Cyrl-BA" ->
            Just SrCyrlBA

        "sr-Cyrl-ME" ->
            Just SrCyrlME

        "sr-Cyrl-XK" ->
            Just SrCyrlXK

        "sr-Latn" ->
            Just SrLatn

        "sr-Latn-BA" ->
            Just SrLatnBA

        "sr-Latn-ME" ->
            Just SrLatnME

        "sr-Latn-XK" ->
            Just SrLatnXK

        "sv" ->
            Just Sv

        "sv-AX" ->
            Just SvAX

        "sv-FI" ->
            Just SvFI

        "sw" ->
            Just Sw

        "sw-CD" ->
            Just SwCD

        "sw-KE" ->
            Just SwKE

        "sw-UG" ->
            Just SwUG

        "ta" ->
            Just Ta

        "ta-LK" ->
            Just TaLK

        "ta-MY" ->
            Just TaMY

        "ta-SG" ->
            Just TaSG

        "te" ->
            Just Te

        "th" ->
            Just Th

        "tk" ->
            Just Tk

        "tr" ->
            Just Tr

        "tr-CY" ->
            Just TrCY

        "uk" ->
            Just Uk

        "ur" ->
            Just Ur

        "ur-IN" ->
            Just UrIN

        "uz" ->
            Just Uz

        "uz-Latn" ->
            Just UzLatn

        "vi" ->
            Just Vi

        "yo" ->
            Just Yo

        "yo-BJ" ->
            Just YoBJ

        "yue" ->
            Just Yue

        "yue-Hans" ->
            Just YueHans

        "yue-Hant" ->
            Just YueHant

        "zh" ->
            Just Zh

        "zh-Hans" ->
            Just ZhHans

        "zh-Hans-HK" ->
            Just ZhHansHK

        "zh-Hans-MO" ->
            Just ZhHansMO

        "zh-Hans-SG" ->
            Just ZhHansSG

        "zh-Hant" ->
            Just ZhHant

        "zh-Hant-HK" ->
            Just ZhHantHK

        "zh-Hant-MO" ->
            Just ZhHantMO

        "zu" ->
            Just Zu

        _ ->
            Nothing


localeToAlpha2 : Locale -> String
localeToAlpha2 locale =
    case locale of
        Af ->
            "af"

        AfNA ->
            "af-NA"

        Am ->
            "am"

        Ar ->
            "ar"

        ArAE ->
            "ar-AE"

        ArBH ->
            "ar-BH"

        ArDJ ->
            "ar-DJ"

        ArDZ ->
            "ar-DZ"

        ArEG ->
            "ar-EG"

        ArEH ->
            "ar-EH"

        ArER ->
            "ar-ER"

        ArIL ->
            "ar-IL"

        ArIQ ->
            "ar-IQ"

        ArJO ->
            "ar-JO"

        ArKM ->
            "ar-KM"

        ArKW ->
            "ar-KW"

        ArLB ->
            "ar-LB"

        ArLY ->
            "ar-LY"

        ArMA ->
            "ar-MA"

        ArMR ->
            "ar-MR"

        ArOM ->
            "ar-OM"

        ArPS ->
            "ar-PS"

        ArQA ->
            "ar-QA"

        ArSA ->
            "ar-SA"

        ArSD ->
            "ar-SD"

        ArSO ->
            "ar-SO"

        ArSS ->
            "ar-SS"

        ArSY ->
            "ar-SY"

        ArTD ->
            "ar-TD"

        ArTN ->
            "ar-TN"

        ArYE ->
            "ar-YE"

        As ->
            "as"

        Az ->
            "az"

        AzLatn ->
            "az-Latn"

        Be ->
            "be"

        BeTarask ->
            "be-tarask"

        Bg ->
            "bg"

        Bn ->
            "bn"

        BnIN ->
            "bn-IN"

        Bs ->
            "bs"

        BsLatn ->
            "bs-Latn"

        Ca ->
            "ca"

        CaAD ->
            "ca-AD"

        CaESValencia ->
            "ca-ES-valencia"

        CaFR ->
            "ca-FR"

        CaIT ->
            "ca-IT"

        Cs ->
            "cs"

        Cy ->
            "cy"

        Da ->
            "da"

        DaGL ->
            "da-GL"

        De ->
            "de"

        DeAT ->
            "de-AT"

        DeBE ->
            "de-BE"

        DeCH ->
            "de-CH"

        DeIT ->
            "de-IT"

        DeLI ->
            "de-LI"

        DeLU ->
            "de-LU"

        El ->
            "el"

        ElCY ->
            "el-CY"

        ElPolyton ->
            "el-polyton"

        En ->
            "en"

        En001 ->
            "en-001"

        En150 ->
            "en-150"

        EnAE ->
            "en-AE"

        EnAG ->
            "en-AG"

        EnAI ->
            "en-AI"

        EnAS ->
            "en-AS"

        EnAT ->
            "en-AT"

        EnAU ->
            "en-AU"

        EnBB ->
            "en-BB"

        EnBE ->
            "en-BE"

        EnBI ->
            "en-BI"

        EnBM ->
            "en-BM"

        EnBS ->
            "en-BS"

        EnBW ->
            "en-BW"

        EnBZ ->
            "en-BZ"

        EnCA ->
            "en-CA"

        EnCC ->
            "en-CC"

        EnCH ->
            "en-CH"

        EnCK ->
            "en-CK"

        EnCM ->
            "en-CM"

        EnCX ->
            "en-CX"

        EnCY ->
            "en-CY"

        EnDE ->
            "en-DE"

        EnDG ->
            "en-DG"

        EnDK ->
            "en-DK"

        EnDM ->
            "en-DM"

        EnER ->
            "en-ER"

        EnFI ->
            "en-FI"

        EnFJ ->
            "en-FJ"

        EnFK ->
            "en-FK"

        EnFM ->
            "en-FM"

        EnGB ->
            "en-GB"

        EnGD ->
            "en-GD"

        EnGG ->
            "en-GG"

        EnGH ->
            "en-GH"

        EnGI ->
            "en-GI"

        EnGM ->
            "en-GM"

        EnGU ->
            "en-GU"

        EnGY ->
            "en-GY"

        EnHK ->
            "en-HK"

        EnIE ->
            "en-IE"

        EnIL ->
            "en-IL"

        EnIM ->
            "en-IM"

        EnIN ->
            "en-IN"

        EnIO ->
            "en-IO"

        EnJE ->
            "en-JE"

        EnJM ->
            "en-JM"

        EnKE ->
            "en-KE"

        EnKI ->
            "en-KI"

        EnKN ->
            "en-KN"

        EnKY ->
            "en-KY"

        EnLC ->
            "en-LC"

        EnLR ->
            "en-LR"

        EnLS ->
            "en-LS"

        EnMG ->
            "en-MG"

        EnMH ->
            "en-MH"

        EnMO ->
            "en-MO"

        EnMP ->
            "en-MP"

        EnMS ->
            "en-MS"

        EnMT ->
            "en-MT"

        EnMU ->
            "en-MU"

        EnMV ->
            "en-MV"

        EnMW ->
            "en-MW"

        EnMY ->
            "en-MY"

        EnNA ->
            "en-NA"

        EnNF ->
            "en-NF"

        EnNG ->
            "en-NG"

        EnNL ->
            "en-NL"

        EnNR ->
            "en-NR"

        EnNU ->
            "en-NU"

        EnNZ ->
            "en-NZ"

        EnPG ->
            "en-PG"

        EnPH ->
            "en-PH"

        EnPK ->
            "en-PK"

        EnPN ->
            "en-PN"

        EnPR ->
            "en-PR"

        EnPW ->
            "en-PW"

        EnRW ->
            "en-RW"

        EnSB ->
            "en-SB"

        EnSC ->
            "en-SC"

        EnSD ->
            "en-SD"

        EnSE ->
            "en-SE"

        EnSG ->
            "en-SG"

        EnSH ->
            "en-SH"

        EnSI ->
            "en-SI"

        EnSL ->
            "en-SL"

        EnSS ->
            "en-SS"

        EnSX ->
            "en-SX"

        EnSZ ->
            "en-SZ"

        EnTC ->
            "en-TC"

        EnTK ->
            "en-TK"

        EnTO ->
            "en-TO"

        EnTT ->
            "en-TT"

        EnTV ->
            "en-TV"

        EnTZ ->
            "en-TZ"

        EnUG ->
            "en-UG"

        EnUM ->
            "en-UM"

        EnVC ->
            "en-VC"

        EnVG ->
            "en-VG"

        EnVI ->
            "en-VI"

        EnVU ->
            "en-VU"

        EnWS ->
            "en-WS"

        EnZA ->
            "en-ZA"

        EnZM ->
            "en-ZM"

        EnZW ->
            "en-ZW"

        Es ->
            "es"

        Es419 ->
            "es-419"

        EsAR ->
            "es-AR"

        EsBO ->
            "es-BO"

        EsBR ->
            "es-BR"

        EsBZ ->
            "es-BZ"

        EsCL ->
            "es-CL"

        EsCO ->
            "es-CO"

        EsCR ->
            "es-CR"

        EsCU ->
            "es-CU"

        EsDO ->
            "es-DO"

        EsEA ->
            "es-EA"

        EsEC ->
            "es-EC"

        EsGQ ->
            "es-GQ"

        EsGT ->
            "es-GT"

        EsHN ->
            "es-HN"

        EsIC ->
            "es-IC"

        EsMX ->
            "es-MX"

        EsNI ->
            "es-NI"

        EsPA ->
            "es-PA"

        EsPE ->
            "es-PE"

        EsPH ->
            "es-PH"

        EsPR ->
            "es-PR"

        EsPY ->
            "es-PY"

        EsSV ->
            "es-SV"

        EsUS ->
            "es-US"

        EsUY ->
            "es-UY"

        EsVE ->
            "es-VE"

        Et ->
            "et"

        Eu ->
            "eu"

        Fa ->
            "fa"

        FaAF ->
            "fa-AF"

        Fi ->
            "fi"

        Fil ->
            "fil"

        Fr ->
            "fr"

        FrBE ->
            "fr-BE"

        FrBF ->
            "fr-BF"

        FrBI ->
            "fr-BI"

        FrBJ ->
            "fr-BJ"

        FrBL ->
            "fr-BL"

        FrCA ->
            "fr-CA"

        FrCD ->
            "fr-CD"

        FrCF ->
            "fr-CF"

        FrCG ->
            "fr-CG"

        FrCH ->
            "fr-CH"

        FrCI ->
            "fr-CI"

        FrCM ->
            "fr-CM"

        FrDJ ->
            "fr-DJ"

        FrDZ ->
            "fr-DZ"

        FrGA ->
            "fr-GA"

        FrGF ->
            "fr-GF"

        FrGN ->
            "fr-GN"

        FrGP ->
            "fr-GP"

        FrGQ ->
            "fr-GQ"

        FrHT ->
            "fr-HT"

        FrKM ->
            "fr-KM"

        FrLU ->
            "fr-LU"

        FrMA ->
            "fr-MA"

        FrMC ->
            "fr-MC"

        FrMF ->
            "fr-MF"

        FrMG ->
            "fr-MG"

        FrML ->
            "fr-ML"

        FrMQ ->
            "fr-MQ"

        FrMR ->
            "fr-MR"

        FrMU ->
            "fr-MU"

        FrNC ->
            "fr-NC"

        FrNE ->
            "fr-NE"

        FrPF ->
            "fr-PF"

        FrPM ->
            "fr-PM"

        FrRE ->
            "fr-RE"

        FrRW ->
            "fr-RW"

        FrSC ->
            "fr-SC"

        FrSN ->
            "fr-SN"

        FrSY ->
            "fr-SY"

        FrTD ->
            "fr-TD"

        FrTG ->
            "fr-TG"

        FrTN ->
            "fr-TN"

        FrVU ->
            "fr-VU"

        FrWF ->
            "fr-WF"

        FrYT ->
            "fr-YT"

        Ga ->
            "ga"

        GaGB ->
            "ga-GB"

        Gd ->
            "gd"

        Gl ->
            "gl"

        Gu ->
            "gu"

        Ha ->
            "ha"

        HaGH ->
            "ha-GH"

        HaNE ->
            "ha-NE"

        He ->
            "he"

        Hi ->
            "hi"

        HiLatn ->
            "hi-Latn"

        Hr ->
            "hr"

        HrBA ->
            "hr-BA"

        Hu ->
            "hu"

        Hy ->
            "hy"

        Id ->
            "id"

        Ig ->
            "ig"

        Is ->
            "is"

        It ->
            "it"

        ItCH ->
            "it-CH"

        ItSM ->
            "it-SM"

        ItVA ->
            "it-VA"

        Ja ->
            "ja"

        Jv ->
            "jv"

        Ka ->
            "ka"

        Kk ->
            "kk"

        Km ->
            "km"

        Kn ->
            "kn"

        Ko ->
            "ko"

        KoKP ->
            "ko-KP"

        Kok ->
            "kok"

        Ky ->
            "ky"

        Lo ->
            "lo"

        Lt ->
            "lt"

        Lv ->
            "lv"

        Mk ->
            "mk"

        Ml ->
            "ml"

        Mn ->
            "mn"

        Mr ->
            "mr"

        Ms ->
            "ms"

        MsBN ->
            "ms-BN"

        MsID ->
            "ms-ID"

        MsSG ->
            "ms-SG"

        My ->
            "my"

        Nb ->
            "nb"

        NbSJ ->
            "nb-SJ"

        Ne ->
            "ne"

        NeIN ->
            "ne-IN"

        Nl ->
            "nl"

        NlAW ->
            "nl-AW"

        NlBE ->
            "nl-BE"

        NlBQ ->
            "nl-BQ"

        NlCW ->
            "nl-CW"

        NlSR ->
            "nl-SR"

        NlSX ->
            "nl-SX"

        Nn ->
            "nn"

        No ->
            "no"

        Or ->
            "or"

        Pa ->
            "pa"

        PaGuru ->
            "pa-Guru"

        Pcm ->
            "pcm"

        Pl ->
            "pl"

        Ps ->
            "ps"

        PsPK ->
            "ps-PK"

        Pt ->
            "pt"

        PtAO ->
            "pt-AO"

        PtCH ->
            "pt-CH"

        PtCV ->
            "pt-CV"

        PtGQ ->
            "pt-GQ"

        PtGW ->
            "pt-GW"

        PtLU ->
            "pt-LU"

        PtMO ->
            "pt-MO"

        PtMZ ->
            "pt-MZ"

        PtPT ->
            "pt-PT"

        PtST ->
            "pt-ST"

        PtTL ->
            "pt-TL"

        Ro ->
            "ro"

        RoMD ->
            "ro-MD"

        Ru ->
            "ru"

        RuBY ->
            "ru-BY"

        RuKG ->
            "ru-KG"

        RuKZ ->
            "ru-KZ"

        RuMD ->
            "ru-MD"

        RuUA ->
            "ru-UA"

        Sd ->
            "sd"

        SdArab ->
            "sd-Arab"

        Si ->
            "si"

        Sk ->
            "sk"

        Sl ->
            "sl"

        So ->
            "so"

        SoDJ ->
            "so-DJ"

        SoET ->
            "so-ET"

        SoKE ->
            "so-KE"

        Sq ->
            "sq"

        SqMK ->
            "sq-MK"

        SqXK ->
            "sq-XK"

        Sr ->
            "sr"

        SrCyrl ->
            "sr-Cyrl"

        SrCyrlBA ->
            "sr-Cyrl-BA"

        SrCyrlME ->
            "sr-Cyrl-ME"

        SrCyrlXK ->
            "sr-Cyrl-XK"

        SrLatn ->
            "sr-Latn"

        SrLatnBA ->
            "sr-Latn-BA"

        SrLatnME ->
            "sr-Latn-ME"

        SrLatnXK ->
            "sr-Latn-XK"

        Sv ->
            "sv"

        SvAX ->
            "sv-AX"

        SvFI ->
            "sv-FI"

        Sw ->
            "sw"

        SwCD ->
            "sw-CD"

        SwKE ->
            "sw-KE"

        SwUG ->
            "sw-UG"

        Ta ->
            "ta"

        TaLK ->
            "ta-LK"

        TaMY ->
            "ta-MY"

        TaSG ->
            "ta-SG"

        Te ->
            "te"

        Th ->
            "th"

        Tk ->
            "tk"

        Tr ->
            "tr"

        TrCY ->
            "tr-CY"

        Uk ->
            "uk"

        Ur ->
            "ur"

        UrIN ->
            "ur-IN"

        Uz ->
            "uz"

        UzLatn ->
            "uz-Latn"

        Vi ->
            "vi"

        Yo ->
            "yo"

        YoBJ ->
            "yo-BJ"

        Yue ->
            "yue"

        YueHans ->
            "yue-Hans"

        YueHant ->
            "yue-Hant"

        Zh ->
            "zh"

        ZhHans ->
            "zh-Hans"

        ZhHansHK ->
            "zh-Hans-HK"

        ZhHansMO ->
            "zh-Hans-MO"

        ZhHansSG ->
            "zh-Hans-SG"

        ZhHant ->
            "zh-Hant"

        ZhHantHK ->
            "zh-Hant-HK"

        ZhHantMO ->
            "zh-Hant-MO"

        Zu ->
            "zu"


{-| Get the english name of a locale. -}
localeToEnglishName : Locale -> String
localeToEnglishName locale =
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
toAlpha2 countryCode =
    case countryCode of
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


{-| `CountryCode` from two-letter `ISO 3166-1 alpha-2`. -}
fromAlpha2 : String -> Maybe CountryCode
fromAlpha2 countryCode =
    case countryCode of
        "AD" ->
            Just AD

        "AE" ->
            Just AE

        "AF" ->
            Just AF

        "AG" ->
            Just AG

        "AI" ->
            Just AI

        "AL" ->
            Just AL

        "AM" ->
            Just AM

        "AO" ->
            Just AO

        "AQ" ->
            Just AQ

        "AR" ->
            Just AR

        "AS" ->
            Just AS

        "AT" ->
            Just AT

        "AU" ->
            Just AU

        "AW" ->
            Just AW

        "AX" ->
            Just AX

        "AZ" ->
            Just AZ

        "BA" ->
            Just BA

        "BB" ->
            Just BB

        "BD" ->
            Just BD

        "BE" ->
            Just BE

        "BF" ->
            Just BF

        "BG" ->
            Just BG

        "BH" ->
            Just BH

        "BI" ->
            Just BI

        "BJ" ->
            Just BJ

        "BL" ->
            Just BL

        "BM" ->
            Just BM

        "BN" ->
            Just BN

        "BO" ->
            Just BO

        "BQ" ->
            Just BQ

        "BR" ->
            Just BR

        "BS" ->
            Just BS

        "BT" ->
            Just BT

        "BV" ->
            Just BV

        "BW" ->
            Just BW

        "BY" ->
            Just BY

        "BZ" ->
            Just BZ

        "CA" ->
            Just CA

        "CC" ->
            Just CC

        "CD" ->
            Just CD

        "CF" ->
            Just CF

        "CG" ->
            Just CG

        "CH" ->
            Just CH

        "CI" ->
            Just CI

        "CK" ->
            Just CK

        "CL" ->
            Just CL

        "CM" ->
            Just CM

        "CN" ->
            Just CN

        "CO" ->
            Just CO

        "CR" ->
            Just CR

        "CU" ->
            Just CU

        "CV" ->
            Just CV

        "CW" ->
            Just CW

        "CX" ->
            Just CX

        "CY" ->
            Just CY

        "CZ" ->
            Just CZ

        "DE" ->
            Just DE

        "DJ" ->
            Just DJ

        "DK" ->
            Just DK

        "DM" ->
            Just DM

        "DO" ->
            Just DO

        "DZ" ->
            Just DZ

        "EC" ->
            Just EC

        "EE" ->
            Just EE

        "EG" ->
            Just EG

        "EH" ->
            Just EH

        "ER" ->
            Just ER

        "ES" ->
            Just ES

        "ET" ->
            Just ET

        "FI" ->
            Just FI

        "FJ" ->
            Just FJ

        "FK" ->
            Just FK

        "FM" ->
            Just FM

        "FO" ->
            Just FO

        "FR" ->
            Just FR

        "GA" ->
            Just GA

        "GB" ->
            Just GB

        "GD" ->
            Just GD

        "GE" ->
            Just GE

        "GF" ->
            Just GF

        "GG" ->
            Just GG

        "GH" ->
            Just GH

        "GI" ->
            Just GI

        "GL" ->
            Just GL

        "GM" ->
            Just GM

        "GN" ->
            Just GN

        "GP" ->
            Just GP

        "GQ" ->
            Just GQ

        "GR" ->
            Just GR

        "GS" ->
            Just GS

        "GT_" ->
            Just GT_

        "GU" ->
            Just GU

        "GW" ->
            Just GW

        "GY" ->
            Just GY

        "HK" ->
            Just HK

        "HM" ->
            Just HM

        "HN" ->
            Just HN

        "HR" ->
            Just HR

        "HT" ->
            Just HT

        "HU" ->
            Just HU

        "ID" ->
            Just ID

        "IE" ->
            Just IE

        "IL" ->
            Just IL

        "IM" ->
            Just IM

        "IN" ->
            Just IN

        "IO" ->
            Just IO

        "IQ" ->
            Just IQ

        "IR" ->
            Just IR

        "IS" ->
            Just IS

        "IT" ->
            Just IT

        "JE" ->
            Just JE

        "JM" ->
            Just JM

        "JO" ->
            Just JO

        "JP" ->
            Just JP

        "KE" ->
            Just KE

        "KG" ->
            Just KG

        "KH" ->
            Just KH

        "KI" ->
            Just KI

        "KM" ->
            Just KM

        "KN" ->
            Just KN

        "KP" ->
            Just KP

        "KR" ->
            Just KR

        "KW" ->
            Just KW

        "KY" ->
            Just KY

        "KZ" ->
            Just KZ

        "LA" ->
            Just LA

        "LB" ->
            Just LB

        "LC" ->
            Just LC

        "LI" ->
            Just LI

        "LK" ->
            Just LK

        "LR" ->
            Just LR

        "LS" ->
            Just LS

        "LT_" ->
            Just LT_

        "LU" ->
            Just LU

        "LV" ->
            Just LV

        "LY" ->
            Just LY

        "MA" ->
            Just MA

        "MC" ->
            Just MC

        "MD" ->
            Just MD

        "ME" ->
            Just ME

        "MF" ->
            Just MF

        "MG" ->
            Just MG

        "MH" ->
            Just MH

        "MK" ->
            Just MK

        "ML" ->
            Just ML

        "MM" ->
            Just MM

        "MN" ->
            Just MN

        "MO" ->
            Just MO

        "MP" ->
            Just MP

        "MQ" ->
            Just MQ

        "MR" ->
            Just MR

        "MS" ->
            Just MS

        "MT" ->
            Just MT

        "MU" ->
            Just MU

        "MV" ->
            Just MV

        "MW" ->
            Just MW

        "MX" ->
            Just MX

        "MY" ->
            Just MY

        "MZ" ->
            Just MZ

        "NA" ->
            Just NA

        "NC" ->
            Just NC

        "NE" ->
            Just NE

        "NF" ->
            Just NF

        "NG" ->
            Just NG

        "NI" ->
            Just NI

        "NL" ->
            Just NL

        "NO" ->
            Just NO

        "NP" ->
            Just NP

        "NR" ->
            Just NR

        "NU" ->
            Just NU

        "NZ" ->
            Just NZ

        "OM" ->
            Just OM

        "PA" ->
            Just PA

        "PE" ->
            Just PE

        "PF" ->
            Just PF

        "PG" ->
            Just PG

        "PH" ->
            Just PH

        "PK" ->
            Just PK

        "PL" ->
            Just PL

        "PM" ->
            Just PM

        "PN" ->
            Just PN

        "PR" ->
            Just PR

        "PS" ->
            Just PS

        "PT" ->
            Just PT

        "PW" ->
            Just PW

        "PY" ->
            Just PY

        "QA" ->
            Just QA

        "RE" ->
            Just RE

        "RO" ->
            Just RO

        "RS" ->
            Just RS

        "RU" ->
            Just RU

        "RW" ->
            Just RW

        "SA" ->
            Just SA

        "SB" ->
            Just SB

        "SC" ->
            Just SC

        "SD" ->
            Just SD

        "SE" ->
            Just SE

        "SG" ->
            Just SG

        "SH" ->
            Just SH

        "SI" ->
            Just SI

        "SJ" ->
            Just SJ

        "SK" ->
            Just SK

        "SL" ->
            Just SL

        "SM" ->
            Just SM

        "SN" ->
            Just SN

        "SO" ->
            Just SO

        "SR" ->
            Just SR

        "SS" ->
            Just SS

        "ST" ->
            Just ST

        "SV" ->
            Just SV

        "SX" ->
            Just SX

        "SY" ->
            Just SY

        "SZ" ->
            Just SZ

        "TC" ->
            Just TC

        "TD" ->
            Just TD

        "TF" ->
            Just TF

        "TG" ->
            Just TG

        "TH" ->
            Just TH

        "TJ" ->
            Just TJ

        "TK" ->
            Just TK

        "TL" ->
            Just TL

        "TM" ->
            Just TM

        "TN" ->
            Just TN

        "TO" ->
            Just TO

        "TR" ->
            Just TR

        "TT" ->
            Just TT

        "TV" ->
            Just TV

        "TW" ->
            Just TW

        "TZ" ->
            Just TZ

        "UA" ->
            Just UA

        "UG" ->
            Just UG

        "UM" ->
            Just UM

        "US" ->
            Just US

        "UY" ->
            Just UY

        "UZ" ->
            Just UZ

        "VA" ->
            Just VA

        "VC" ->
            Just VC

        "VE" ->
            Just VE

        "VG" ->
            Just VG

        "VI" ->
            Just VI

        "VN" ->
            Just VN

        "VU" ->
            Just VU

        "WF" ->
            Just WF

        "WS" ->
            Just WS

        "XK" ->
            Just XK

        "YE" ->
            Just YE

        "YT" ->
            Just YT

        "ZA" ->
            Just ZA

        "ZM" ->
            Just ZM

        "ZW" ->
            Just ZW

        _ ->
            Nothing


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