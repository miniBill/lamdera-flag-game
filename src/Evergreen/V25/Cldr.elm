module Evergreen.V25.Cldr exposing (..)


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
