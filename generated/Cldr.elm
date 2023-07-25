module Cldr exposing (CountryCode(..), all, toAlpha2)

{-| 
@docs CountryCode, toAlpha2, all
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