module Cldr exposing (CountryCode(..), allCountryCodes, allLocales, allNontrivialLocales, defaultContent, fromAlpha2, localeToEnglishName, toAlpha2)

{-| 
@docs CountryCode, allLocales, allNontrivialLocales, localeToEnglishName, toAlpha2, fromAlpha2, allCountryCodes, defaultContent
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
allLocales : List String
allLocales =
    [ "af"
    , "af-NA"
    , "am"
    , "ar"
    , "ar-AE"
    , "ar-BH"
    , "ar-DJ"
    , "ar-DZ"
    , "ar-EG"
    , "ar-EH"
    , "ar-ER"
    , "ar-IL"
    , "ar-IQ"
    , "ar-JO"
    , "ar-KM"
    , "ar-KW"
    , "ar-LB"
    , "ar-LY"
    , "ar-MA"
    , "ar-MR"
    , "ar-OM"
    , "ar-PS"
    , "ar-QA"
    , "ar-SA"
    , "ar-SD"
    , "ar-SO"
    , "ar-SS"
    , "ar-SY"
    , "ar-TD"
    , "ar-TN"
    , "ar-YE"
    , "as"
    , "az"
    , "az-Latn"
    , "be"
    , "be-tarask"
    , "bg"
    , "bn"
    , "bn-IN"
    , "bs"
    , "bs-Latn"
    , "ca"
    , "ca-AD"
    , "ca-ES-valencia"
    , "ca-FR"
    , "ca-IT"
    , "cs"
    , "cy"
    , "da"
    , "da-GL"
    , "de"
    , "de-AT"
    , "de-BE"
    , "de-CH"
    , "de-IT"
    , "de-LI"
    , "de-LU"
    , "el"
    , "el-CY"
    , "el-polyton"
    , "en"
    , "en-001"
    , "en-150"
    , "en-AE"
    , "en-AG"
    , "en-AI"
    , "en-AS"
    , "en-AT"
    , "en-AU"
    , "en-BB"
    , "en-BE"
    , "en-BI"
    , "en-BM"
    , "en-BS"
    , "en-BW"
    , "en-BZ"
    , "en-CA"
    , "en-CC"
    , "en-CH"
    , "en-CK"
    , "en-CM"
    , "en-CX"
    , "en-CY"
    , "en-DE"
    , "en-DG"
    , "en-DK"
    , "en-DM"
    , "en-ER"
    , "en-FI"
    , "en-FJ"
    , "en-FK"
    , "en-FM"
    , "en-GB"
    , "en-GD"
    , "en-GG"
    , "en-GH"
    , "en-GI"
    , "en-GM"
    , "en-GU"
    , "en-GY"
    , "en-HK"
    , "en-IE"
    , "en-IL"
    , "en-IM"
    , "en-IN"
    , "en-IO"
    , "en-JE"
    , "en-JM"
    , "en-KE"
    , "en-KI"
    , "en-KN"
    , "en-KY"
    , "en-LC"
    , "en-LR"
    , "en-LS"
    , "en-MG"
    , "en-MH"
    , "en-MO"
    , "en-MP"
    , "en-MS"
    , "en-MT"
    , "en-MU"
    , "en-MV"
    , "en-MW"
    , "en-MY"
    , "en-NA"
    , "en-NF"
    , "en-NG"
    , "en-NL"
    , "en-NR"
    , "en-NU"
    , "en-NZ"
    , "en-PG"
    , "en-PH"
    , "en-PK"
    , "en-PN"
    , "en-PR"
    , "en-PW"
    , "en-RW"
    , "en-SB"
    , "en-SC"
    , "en-SD"
    , "en-SE"
    , "en-SG"
    , "en-SH"
    , "en-SI"
    , "en-SL"
    , "en-SS"
    , "en-SX"
    , "en-SZ"
    , "en-TC"
    , "en-TK"
    , "en-TO"
    , "en-TT"
    , "en-TV"
    , "en-TZ"
    , "en-UG"
    , "en-UM"
    , "en-VC"
    , "en-VG"
    , "en-VI"
    , "en-VU"
    , "en-WS"
    , "en-ZA"
    , "en-ZM"
    , "en-ZW"
    , "es"
    , "es-419"
    , "es-AR"
    , "es-BO"
    , "es-BR"
    , "es-BZ"
    , "es-CL"
    , "es-CO"
    , "es-CR"
    , "es-CU"
    , "es-DO"
    , "es-EA"
    , "es-EC"
    , "es-GQ"
    , "es-GT"
    , "es-HN"
    , "es-IC"
    , "es-MX"
    , "es-NI"
    , "es-PA"
    , "es-PE"
    , "es-PH"
    , "es-PR"
    , "es-PY"
    , "es-SV"
    , "es-US"
    , "es-UY"
    , "es-VE"
    , "et"
    , "eu"
    , "fa"
    , "fa-AF"
    , "fi"
    , "fil"
    , "fr"
    , "fr-BE"
    , "fr-BF"
    , "fr-BI"
    , "fr-BJ"
    , "fr-BL"
    , "fr-CA"
    , "fr-CD"
    , "fr-CF"
    , "fr-CG"
    , "fr-CH"
    , "fr-CI"
    , "fr-CM"
    , "fr-DJ"
    , "fr-DZ"
    , "fr-GA"
    , "fr-GF"
    , "fr-GN"
    , "fr-GP"
    , "fr-GQ"
    , "fr-HT"
    , "fr-KM"
    , "fr-LU"
    , "fr-MA"
    , "fr-MC"
    , "fr-MF"
    , "fr-MG"
    , "fr-ML"
    , "fr-MQ"
    , "fr-MR"
    , "fr-MU"
    , "fr-NC"
    , "fr-NE"
    , "fr-PF"
    , "fr-PM"
    , "fr-RE"
    , "fr-RW"
    , "fr-SC"
    , "fr-SN"
    , "fr-SY"
    , "fr-TD"
    , "fr-TG"
    , "fr-TN"
    , "fr-VU"
    , "fr-WF"
    , "fr-YT"
    , "ga"
    , "ga-GB"
    , "gd"
    , "gl"
    , "gu"
    , "ha"
    , "ha-GH"
    , "ha-NE"
    , "he"
    , "hi"
    , "hi-Latn"
    , "hr"
    , "hr-BA"
    , "hu"
    , "hy"
    , "id"
    , "ig"
    , "is"
    , "it"
    , "it-CH"
    , "it-SM"
    , "it-VA"
    , "ja"
    , "jv"
    , "ka"
    , "kk"
    , "km"
    , "kn"
    , "ko"
    , "ko-KP"
    , "kok"
    , "ky"
    , "lo"
    , "lt"
    , "lv"
    , "mk"
    , "ml"
    , "mn"
    , "mr"
    , "ms"
    , "ms-BN"
    , "ms-ID"
    , "ms-SG"
    , "my"
    , "nb"
    , "nb-SJ"
    , "ne"
    , "ne-IN"
    , "nl"
    , "nl-AW"
    , "nl-BE"
    , "nl-BQ"
    , "nl-CW"
    , "nl-SR"
    , "nl-SX"
    , "nn"
    , "no"
    , "or"
    , "pa"
    , "pa-Guru"
    , "pcm"
    , "pl"
    , "ps"
    , "ps-PK"
    , "pt"
    , "pt-AO"
    , "pt-CH"
    , "pt-CV"
    , "pt-GQ"
    , "pt-GW"
    , "pt-LU"
    , "pt-MO"
    , "pt-MZ"
    , "pt-PT"
    , "pt-ST"
    , "pt-TL"
    , "ro"
    , "ro-MD"
    , "ru"
    , "ru-BY"
    , "ru-KG"
    , "ru-KZ"
    , "ru-MD"
    , "ru-UA"
    , "sd"
    , "sd-Arab"
    , "si"
    , "sk"
    , "sl"
    , "so"
    , "so-DJ"
    , "so-ET"
    , "so-KE"
    , "sq"
    , "sq-MK"
    , "sq-XK"
    , "sr"
    , "sr-Cyrl"
    , "sr-Cyrl-BA"
    , "sr-Cyrl-ME"
    , "sr-Cyrl-XK"
    , "sr-Latn"
    , "sr-Latn-BA"
    , "sr-Latn-ME"
    , "sr-Latn-XK"
    , "sv"
    , "sv-AX"
    , "sv-FI"
    , "sw"
    , "sw-CD"
    , "sw-KE"
    , "sw-UG"
    , "ta"
    , "ta-LK"
    , "ta-MY"
    , "ta-SG"
    , "te"
    , "th"
    , "tk"
    , "tr"
    , "tr-CY"
    , "uk"
    , "ur"
    , "ur-IN"
    , "uz"
    , "uz-Latn"
    , "vi"
    , "yo"
    , "yo-BJ"
    , "yue"
    , "yue-Hans"
    , "yue-Hant"
    , "zh"
    , "zh-Hans"
    , "zh-Hans-HK"
    , "zh-Hans-MO"
    , "zh-Hans-SG"
    , "zh-Hant"
    , "zh-Hant-HK"
    , "zh-Hant-MO"
    , "zu"
    ]


{-| All the locales that are not identical to some parent locale. -}
allNontrivialLocales : List String
allNontrivialLocales =
    [ "af"
    , "am"
    , "ar"
    , "ar-AE"
    , "ar-LY"
    , "ar-SA"
    , "as"
    , "az"
    , "be"
    , "bg"
    , "bn"
    , "bn-IN"
    , "bs"
    , "ca"
    , "ca-ES-valencia"
    , "cs"
    , "cy"
    , "da"
    , "de"
    , "de-AT"
    , "de-CH"
    , "el"
    , "el-polyton"
    , "en"
    , "en-AU"
    , "en-CA"
    , "en-GB"
    , "es"
    , "es-419"
    , "es-AR"
    , "es-BR"
    , "es-BZ"
    , "es-CL"
    , "es-CU"
    , "es-EA"
    , "es-GQ"
    , "es-IC"
    , "es-MX"
    , "es-PH"
    , "es-PR"
    , "es-SV"
    , "es-US"
    , "es-UY"
    , "et"
    , "eu"
    , "fa"
    , "fa-AF"
    , "fi"
    , "fil"
    , "fr"
    , "fr-BE"
    , "fr-CA"
    , "ga"
    , "gd"
    , "gl"
    , "gu"
    , "ha"
    , "he"
    , "hi"
    , "hi-Latn"
    , "hr"
    , "hu"
    , "hy"
    , "id"
    , "ig"
    , "is"
    , "it"
    , "ja"
    , "jv"
    , "ka"
    , "kk"
    , "km"
    , "kn"
    , "ko"
    , "ko-KP"
    , "kok"
    , "ky"
    , "lo"
    , "lt"
    , "lv"
    , "mk"
    , "ml"
    , "mn"
    , "mr"
    , "ms"
    , "my"
    , "ne"
    , "nl"
    , "nn"
    , "no"
    , "or"
    , "pa"
    , "pcm"
    , "pl"
    , "ps"
    , "ps-PK"
    , "pt"
    , "pt-PT"
    , "ro"
    , "ro-MD"
    , "ru"
    , "ru-UA"
    , "sd"
    , "si"
    , "sk"
    , "sl"
    , "so"
    , "sq"
    , "sr"
    , "sr-Cyrl-BA"
    , "sr-Cyrl-ME"
    , "sr-Cyrl-XK"
    , "sr-Latn"
    , "sr-Latn-BA"
    , "sr-Latn-ME"
    , "sr-Latn-XK"
    , "sv"
    , "sw"
    , "sw-CD"
    , "sw-KE"
    , "ta"
    , "te"
    , "th"
    , "tk"
    , "tr"
    , "uk"
    , "ur"
    , "ur-IN"
    , "uz"
    , "vi"
    , "yo"
    , "yo-BJ"
    , "yue"
    , "yue-Hans"
    , "zh"
    , "zh-Hant"
    , "zh-Hant-HK"
    , "zh-Hant-MO"
    , "zu"
    ]


{-| Get the english name of a locale. -}
localeToEnglishName : String -> Maybe String
localeToEnglishName locale =
    case String.split "-" locale of
        "af" :: "NA" :: _ ->
            Just "Afrikaans - Namibia"

        "af" :: _ ->
            Just "Afrikaans"

        "am" :: _ ->
            Just "Amharic"

        "ar" :: "AE" :: _ ->
            Just "Arabic - United Arab Emirates"

        "ar" :: "BH" :: _ ->
            Just "Arabic - Bahrain"

        "ar" :: "DJ" :: _ ->
            Just "Arabic - Djibouti"

        "ar" :: "DZ" :: _ ->
            Just "Arabic - Algeria"

        "ar" :: "EG" :: _ ->
            Just "Arabic - Egypt"

        "ar" :: "EH" :: _ ->
            Just "Arabic - Western Sahara"

        "ar" :: "ER" :: _ ->
            Just "Arabic - Eritrea"

        "ar" :: "IL" :: _ ->
            Just "Arabic - Israel"

        "ar" :: "IQ" :: _ ->
            Just "Arabic - Iraq"

        "ar" :: "JO" :: _ ->
            Just "Arabic - Jordan"

        "ar" :: "KM" :: _ ->
            Just "Arabic - Comoros"

        "ar" :: "KW" :: _ ->
            Just "Arabic - Kuwait"

        "ar" :: "LB" :: _ ->
            Just "Arabic - Lebanon"

        "ar" :: "LY" :: _ ->
            Just "Arabic - Libya"

        "ar" :: "MA" :: _ ->
            Just "Arabic - Morocco"

        "ar" :: "MR" :: _ ->
            Just "Arabic - Mauritania"

        "ar" :: "OM" :: _ ->
            Just "Arabic - Oman"

        "ar" :: "PS" :: _ ->
            Just "Arabic - Palestine"

        "ar" :: "QA" :: _ ->
            Just "Arabic - Qatar"

        "ar" :: "SA" :: _ ->
            Just "Arabic - Saudi Arabia"

        "ar" :: "SD" :: _ ->
            Just "Arabic - Sudan"

        "ar" :: "SO" :: _ ->
            Just "Arabic - Somalia"

        "ar" :: "SS" :: _ ->
            Just "Arabic - South Sudan"

        "ar" :: "SY" :: _ ->
            Just "Arabic - Syria"

        "ar" :: "TD" :: _ ->
            Just "Arabic - Chad"

        "ar" :: "TN" :: _ ->
            Just "Arabic - Tunisia"

        "ar" :: "YE" :: _ ->
            Just "Arabic - Yemen"

        "ar" :: _ ->
            Just "Arabic"

        "as" :: _ ->
            Just "Assamese"

        "az" :: "Latn" :: _ ->
            Just "Azerbaijani (Latin)"

        "az" :: _ ->
            Just "Azerbaijani"

        "be" :: "tarask" :: _ ->
            Just "Belarusian (Taraškievica)"

        "be" :: _ ->
            Just "Belarusian"

        "bg" :: _ ->
            Just "Bulgarian"

        "bn" :: "IN" :: _ ->
            Just "Bangla - India"

        "bn" :: _ ->
            Just "Bangla"

        "bs" :: "Latn" :: _ ->
            Just "Bosnian (Latin)"

        "bs" :: _ ->
            Just "Bosnian"

        "ca" :: "AD" :: _ ->
            Just "Catalan - Andorra"

        "ca" :: "ES" :: "valencia" :: _ ->
            Just "Catalan - Spain (Valencia)"

        "ca" :: "FR" :: _ ->
            Just "Catalan - France"

        "ca" :: "IT" :: _ ->
            Just "Catalan - Italy"

        "ca" :: _ ->
            Just "Catalan"

        "cs" :: _ ->
            Just "Czech"

        "cy" :: _ ->
            Just "Welsh"

        "da" :: "GL" :: _ ->
            Just "Danish - Greenland"

        "da" :: _ ->
            Just "Danish"

        "de" :: "AT" :: _ ->
            Just "German - Austria"

        "de" :: "BE" :: _ ->
            Just "German - Belgium"

        "de" :: "CH" :: _ ->
            Just "German - Switzerland"

        "de" :: "IT" :: _ ->
            Just "German - Italy"

        "de" :: "LI" :: _ ->
            Just "German - Liechtenstein"

        "de" :: "LU" :: _ ->
            Just "German - Luxembourg"

        "de" :: _ ->
            Just "German"

        "el" :: "CY" :: _ ->
            Just "Greek - Cyprus"

        "el" :: "polyton" :: _ ->
            Just "Greek (Polytonic)"

        "el" :: _ ->
            Just "Greek"

        "en" :: "001" :: _ ->
            Just "English - world"

        "en" :: "150" :: _ ->
            Just "English - Europe"

        "en" :: "AE" :: _ ->
            Just "English - United Arab Emirates"

        "en" :: "AG" :: _ ->
            Just "English - Antigua & Barbuda"

        "en" :: "AI" :: _ ->
            Just "English - Anguilla"

        "en" :: "AS" :: _ ->
            Just "English - American Samoa"

        "en" :: "AT" :: _ ->
            Just "English - Austria"

        "en" :: "AU" :: _ ->
            Just "English - Australia"

        "en" :: "BB" :: _ ->
            Just "English - Barbados"

        "en" :: "BE" :: _ ->
            Just "English - Belgium"

        "en" :: "BI" :: _ ->
            Just "English - Burundi"

        "en" :: "BM" :: _ ->
            Just "English - Bermuda"

        "en" :: "BS" :: _ ->
            Just "English - Bahamas"

        "en" :: "BW" :: _ ->
            Just "English - Botswana"

        "en" :: "BZ" :: _ ->
            Just "English - Belize"

        "en" :: "CA" :: _ ->
            Just "English - Canada"

        "en" :: "CC" :: _ ->
            Just "English - Cocos (Keeling) Islands"

        "en" :: "CH" :: _ ->
            Just "English - Switzerland"

        "en" :: "CK" :: _ ->
            Just "English - Cook Islands"

        "en" :: "CM" :: _ ->
            Just "English - Cameroon"

        "en" :: "CX" :: _ ->
            Just "English - Christmas Island"

        "en" :: "CY" :: _ ->
            Just "English - Cyprus"

        "en" :: "DE" :: _ ->
            Just "English - Germany"

        "en" :: "DG" :: _ ->
            Just "English - Diego Garcia"

        "en" :: "DK" :: _ ->
            Just "English - Denmark"

        "en" :: "DM" :: _ ->
            Just "English - Dominica"

        "en" :: "ER" :: _ ->
            Just "English - Eritrea"

        "en" :: "FI" :: _ ->
            Just "English - Finland"

        "en" :: "FJ" :: _ ->
            Just "English - Fiji"

        "en" :: "FK" :: _ ->
            Just "English - Falkland Islands"

        "en" :: "FM" :: _ ->
            Just "English - Micronesia"

        "en" :: "GB" :: _ ->
            Just "English - United Kingdom"

        "en" :: "GD" :: _ ->
            Just "English - Grenada"

        "en" :: "GG" :: _ ->
            Just "English - Guernsey"

        "en" :: "GH" :: _ ->
            Just "English - Ghana"

        "en" :: "GI" :: _ ->
            Just "English - Gibraltar"

        "en" :: "GM" :: _ ->
            Just "English - Gambia"

        "en" :: "GU" :: _ ->
            Just "English - Guam"

        "en" :: "GY" :: _ ->
            Just "English - Guyana"

        "en" :: "HK" :: _ ->
            Just "English - Hong Kong"

        "en" :: "IE" :: _ ->
            Just "English - Ireland"

        "en" :: "IL" :: _ ->
            Just "English - Israel"

        "en" :: "IM" :: _ ->
            Just "English - Isle of Man"

        "en" :: "IN" :: _ ->
            Just "English - India"

        "en" :: "IO" :: _ ->
            Just "English - British Indian Ocean Territory"

        "en" :: "JE" :: _ ->
            Just "English - Jersey"

        "en" :: "JM" :: _ ->
            Just "English - Jamaica"

        "en" :: "KE" :: _ ->
            Just "English - Kenya"

        "en" :: "KI" :: _ ->
            Just "English - Kiribati"

        "en" :: "KN" :: _ ->
            Just "English - St. Kitts & Nevis"

        "en" :: "KY" :: _ ->
            Just "English - Cayman Islands"

        "en" :: "LC" :: _ ->
            Just "English - St. Lucia"

        "en" :: "LR" :: _ ->
            Just "English - Liberia"

        "en" :: "LS" :: _ ->
            Just "English - Lesotho"

        "en" :: "MG" :: _ ->
            Just "English - Madagascar"

        "en" :: "MH" :: _ ->
            Just "English - Marshall Islands"

        "en" :: "MO" :: _ ->
            Just "English - Macao"

        "en" :: "MP" :: _ ->
            Just "English - Northern Mariana Islands"

        "en" :: "MS" :: _ ->
            Just "English - Montserrat"

        "en" :: "MT" :: _ ->
            Just "English - Malta"

        "en" :: "MU" :: _ ->
            Just "English - Mauritius"

        "en" :: "MV" :: _ ->
            Just "English - Maldives"

        "en" :: "MW" :: _ ->
            Just "English - Malawi"

        "en" :: "MY" :: _ ->
            Just "English - Malaysia"

        "en" :: "NA" :: _ ->
            Just "English - Namibia"

        "en" :: "NF" :: _ ->
            Just "English - Norfolk Island"

        "en" :: "NG" :: _ ->
            Just "English - Nigeria"

        "en" :: "NL" :: _ ->
            Just "English - Netherlands"

        "en" :: "NR" :: _ ->
            Just "English - Nauru"

        "en" :: "NU" :: _ ->
            Just "English - Niue"

        "en" :: "NZ" :: _ ->
            Just "English - New Zealand"

        "en" :: "PG" :: _ ->
            Just "English - Papua New Guinea"

        "en" :: "PH" :: _ ->
            Just "English - Philippines"

        "en" :: "PK" :: _ ->
            Just "English - Pakistan"

        "en" :: "PN" :: _ ->
            Just "English - Pitcairn Islands"

        "en" :: "PR" :: _ ->
            Just "English - Puerto Rico"

        "en" :: "PW" :: _ ->
            Just "English - Palau"

        "en" :: "RW" :: _ ->
            Just "English - Rwanda"

        "en" :: "SB" :: _ ->
            Just "English - Solomon Islands"

        "en" :: "SC" :: _ ->
            Just "English - Seychelles"

        "en" :: "SD" :: _ ->
            Just "English - Sudan"

        "en" :: "SE" :: _ ->
            Just "English - Sweden"

        "en" :: "SG" :: _ ->
            Just "English - Singapore"

        "en" :: "SH" :: _ ->
            Just "English - St. Helena"

        "en" :: "SI" :: _ ->
            Just "English - Slovenia"

        "en" :: "SL" :: _ ->
            Just "English - Sierra Leone"

        "en" :: "SS" :: _ ->
            Just "English - South Sudan"

        "en" :: "SX" :: _ ->
            Just "English - Sint Maarten"

        "en" :: "SZ" :: _ ->
            Just "English - Eswatini"

        "en" :: "TC" :: _ ->
            Just "English - Turks & Caicos Islands"

        "en" :: "TK" :: _ ->
            Just "English - Tokelau"

        "en" :: "TO" :: _ ->
            Just "English - Tonga"

        "en" :: "TT" :: _ ->
            Just "English - Trinidad & Tobago"

        "en" :: "TV" :: _ ->
            Just "English - Tuvalu"

        "en" :: "TZ" :: _ ->
            Just "English - Tanzania"

        "en" :: "UG" :: _ ->
            Just "English - Uganda"

        "en" :: "UM" :: _ ->
            Just "English - U.S. Outlying Islands"

        "en" :: "VC" :: _ ->
            Just "English - St. Vincent & Grenadines"

        "en" :: "VG" :: _ ->
            Just "English - British Virgin Islands"

        "en" :: "VI" :: _ ->
            Just "English - U.S. Virgin Islands"

        "en" :: "VU" :: _ ->
            Just "English - Vanuatu"

        "en" :: "WS" :: _ ->
            Just "English - Samoa"

        "en" :: "ZA" :: _ ->
            Just "English - South Africa"

        "en" :: "ZM" :: _ ->
            Just "English - Zambia"

        "en" :: "ZW" :: _ ->
            Just "English - Zimbabwe"

        "en" :: _ ->
            Just "English"

        "es" :: "419" :: _ ->
            Just "Spanish - Latin America"

        "es" :: "AR" :: _ ->
            Just "Spanish - Argentina"

        "es" :: "BO" :: _ ->
            Just "Spanish - Bolivia"

        "es" :: "BR" :: _ ->
            Just "Spanish - Brazil"

        "es" :: "BZ" :: _ ->
            Just "Spanish - Belize"

        "es" :: "CL" :: _ ->
            Just "Spanish - Chile"

        "es" :: "CO" :: _ ->
            Just "Spanish - Colombia"

        "es" :: "CR" :: _ ->
            Just "Spanish - Costa Rica"

        "es" :: "CU" :: _ ->
            Just "Spanish - Cuba"

        "es" :: "DO" :: _ ->
            Just "Spanish - Dominican Republic"

        "es" :: "EA" :: _ ->
            Just "Spanish - Ceuta & Melilla"

        "es" :: "EC" :: _ ->
            Just "Spanish - Ecuador"

        "es" :: "GQ" :: _ ->
            Just "Spanish - Equatorial Guinea"

        "es" :: "GT" :: _ ->
            Just "Spanish - Guatemala"

        "es" :: "HN" :: _ ->
            Just "Spanish - Honduras"

        "es" :: "IC" :: _ ->
            Just "Spanish - Canary Islands"

        "es" :: "MX" :: _ ->
            Just "Spanish - Mexico"

        "es" :: "NI" :: _ ->
            Just "Spanish - Nicaragua"

        "es" :: "PA" :: _ ->
            Just "Spanish - Panama"

        "es" :: "PE" :: _ ->
            Just "Spanish - Peru"

        "es" :: "PH" :: _ ->
            Just "Spanish - Philippines"

        "es" :: "PR" :: _ ->
            Just "Spanish - Puerto Rico"

        "es" :: "PY" :: _ ->
            Just "Spanish - Paraguay"

        "es" :: "SV" :: _ ->
            Just "Spanish - El Salvador"

        "es" :: "US" :: _ ->
            Just "Spanish - United States"

        "es" :: "UY" :: _ ->
            Just "Spanish - Uruguay"

        "es" :: "VE" :: _ ->
            Just "Spanish - Venezuela"

        "es" :: _ ->
            Just "Spanish"

        "et" :: _ ->
            Just "Estonian"

        "eu" :: _ ->
            Just "Basque"

        "fa" :: "AF" :: _ ->
            Just "Persian - Afghanistan"

        "fa" :: _ ->
            Just "Persian"

        "fi" :: _ ->
            Just "Finnish"

        "fil" :: _ ->
            Just "Filipino"

        "fr" :: "BE" :: _ ->
            Just "French - Belgium"

        "fr" :: "BF" :: _ ->
            Just "French - Burkina Faso"

        "fr" :: "BI" :: _ ->
            Just "French - Burundi"

        "fr" :: "BJ" :: _ ->
            Just "French - Benin"

        "fr" :: "BL" :: _ ->
            Just "French - St. Barthélemy"

        "fr" :: "CA" :: _ ->
            Just "French - Canada"

        "fr" :: "CD" :: _ ->
            Just "French - Congo (DRC)"

        "fr" :: "CF" :: _ ->
            Just "French - Central African Republic"

        "fr" :: "CG" :: _ ->
            Just "French - Congo (Republic)"

        "fr" :: "CH" :: _ ->
            Just "French - Switzerland"

        "fr" :: "CI" :: _ ->
            Just "French - Côte d’Ivoire"

        "fr" :: "CM" :: _ ->
            Just "French - Cameroon"

        "fr" :: "DJ" :: _ ->
            Just "French - Djibouti"

        "fr" :: "DZ" :: _ ->
            Just "French - Algeria"

        "fr" :: "GA" :: _ ->
            Just "French - Gabon"

        "fr" :: "GF" :: _ ->
            Just "French - French Guiana"

        "fr" :: "GN" :: _ ->
            Just "French - Guinea"

        "fr" :: "GP" :: _ ->
            Just "French - Guadeloupe"

        "fr" :: "GQ" :: _ ->
            Just "French - Equatorial Guinea"

        "fr" :: "HT" :: _ ->
            Just "French - Haiti"

        "fr" :: "KM" :: _ ->
            Just "French - Comoros"

        "fr" :: "LU" :: _ ->
            Just "French - Luxembourg"

        "fr" :: "MA" :: _ ->
            Just "French - Morocco"

        "fr" :: "MC" :: _ ->
            Just "French - Monaco"

        "fr" :: "MF" :: _ ->
            Just "French - St. Martin"

        "fr" :: "MG" :: _ ->
            Just "French - Madagascar"

        "fr" :: "ML" :: _ ->
            Just "French - Mali"

        "fr" :: "MQ" :: _ ->
            Just "French - Martinique"

        "fr" :: "MR" :: _ ->
            Just "French - Mauritania"

        "fr" :: "MU" :: _ ->
            Just "French - Mauritius"

        "fr" :: "NC" :: _ ->
            Just "French - New Caledonia"

        "fr" :: "NE" :: _ ->
            Just "French - Niger"

        "fr" :: "PF" :: _ ->
            Just "French - French Polynesia"

        "fr" :: "PM" :: _ ->
            Just "French - St. Pierre & Miquelon"

        "fr" :: "RE" :: _ ->
            Just "French - Réunion"

        "fr" :: "RW" :: _ ->
            Just "French - Rwanda"

        "fr" :: "SC" :: _ ->
            Just "French - Seychelles"

        "fr" :: "SN" :: _ ->
            Just "French - Senegal"

        "fr" :: "SY" :: _ ->
            Just "French - Syria"

        "fr" :: "TD" :: _ ->
            Just "French - Chad"

        "fr" :: "TG" :: _ ->
            Just "French - Togo"

        "fr" :: "TN" :: _ ->
            Just "French - Tunisia"

        "fr" :: "VU" :: _ ->
            Just "French - Vanuatu"

        "fr" :: "WF" :: _ ->
            Just "French - Wallis & Futuna"

        "fr" :: "YT" :: _ ->
            Just "French - Mayotte"

        "fr" :: _ ->
            Just "French"

        "ga" :: "GB" :: _ ->
            Just "Irish - United Kingdom"

        "ga" :: _ ->
            Just "Irish"

        "gd" :: _ ->
            Just "Scottish Gaelic"

        "gl" :: _ ->
            Just "Galician"

        "gu" :: _ ->
            Just "Gujarati"

        "ha" :: "GH" :: _ ->
            Just "Hausa - Ghana"

        "ha" :: "NE" :: _ ->
            Just "Hausa - Niger"

        "ha" :: _ ->
            Just "Hausa"

        "he" :: _ ->
            Just "Hebrew"

        "hi" :: "Latn" :: _ ->
            Just "Hindi (Latin)"

        "hi" :: _ ->
            Just "Hindi"

        "hr" :: "BA" :: _ ->
            Just "Croatian - Bosnia & Herzegovina"

        "hr" :: _ ->
            Just "Croatian"

        "hu" :: _ ->
            Just "Hungarian"

        "hy" :: _ ->
            Just "Armenian"

        "id" :: _ ->
            Just "Indonesian"

        "ig" :: _ ->
            Just "Igbo"

        "is" :: _ ->
            Just "Icelandic"

        "it" :: "CH" :: _ ->
            Just "Italian - Switzerland"

        "it" :: "SM" :: _ ->
            Just "Italian - San Marino"

        "it" :: "VA" :: _ ->
            Just "Italian - Vatican City"

        "it" :: _ ->
            Just "Italian"

        "ja" :: _ ->
            Just "Japanese"

        "jv" :: _ ->
            Just "Javanese"

        "ka" :: _ ->
            Just "Georgian"

        "kk" :: _ ->
            Just "Kazakh"

        "km" :: _ ->
            Just "Khmer"

        "kn" :: _ ->
            Just "Kannada"

        "ko" :: "KP" :: _ ->
            Just "Korean - North Korea"

        "ko" :: _ ->
            Just "Korean"

        "kok" :: _ ->
            Just "Konkani"

        "ky" :: _ ->
            Just "Kyrgyz"

        "lo" :: _ ->
            Just "Lao"

        "lt" :: _ ->
            Just "Lithuanian"

        "lv" :: _ ->
            Just "Latvian"

        "mk" :: _ ->
            Just "Macedonian"

        "ml" :: _ ->
            Just "Malayalam"

        "mn" :: _ ->
            Just "Mongolian"

        "mr" :: _ ->
            Just "Marathi"

        "ms" :: "BN" :: _ ->
            Just "Malay - Brunei"

        "ms" :: "ID" :: _ ->
            Just "Malay - Indonesia"

        "ms" :: "SG" :: _ ->
            Just "Malay - Singapore"

        "ms" :: _ ->
            Just "Malay"

        "my" :: _ ->
            Just "Burmese"

        "nb" :: "SJ" :: _ ->
            Just "Norwegian Bokmål - Svalbard & Jan Mayen"

        "nb" :: _ ->
            Just "Norwegian Bokmål"

        "ne" :: "IN" :: _ ->
            Just "Nepali - India"

        "ne" :: _ ->
            Just "Nepali"

        "nl" :: "AW" :: _ ->
            Just "Dutch - Aruba"

        "nl" :: "BE" :: _ ->
            Just "Dutch - Belgium"

        "nl" :: "BQ" :: _ ->
            Just "Dutch - Caribbean Netherlands"

        "nl" :: "CW" :: _ ->
            Just "Dutch - Curaçao"

        "nl" :: "SR" :: _ ->
            Just "Dutch - Suriname"

        "nl" :: "SX" :: _ ->
            Just "Dutch - Sint Maarten"

        "nl" :: _ ->
            Just "Dutch"

        "nn" :: _ ->
            Just "Norwegian Nynorsk"

        "no" :: _ ->
            Just "Norwegian"

        "or" :: _ ->
            Just "Odia"

        "pa" :: "Guru" :: _ ->
            Just "Punjabi (Gurmukhi)"

        "pa" :: _ ->
            Just "Punjabi"

        "pcm" :: _ ->
            Just "Nigerian Pidgin"

        "pl" :: _ ->
            Just "Polish"

        "ps" :: "PK" :: _ ->
            Just "Pashto - Pakistan"

        "ps" :: _ ->
            Just "Pashto"

        "pt" :: "AO" :: _ ->
            Just "Portuguese - Angola"

        "pt" :: "CH" :: _ ->
            Just "Portuguese - Switzerland"

        "pt" :: "CV" :: _ ->
            Just "Portuguese - Cape Verde"

        "pt" :: "GQ" :: _ ->
            Just "Portuguese - Equatorial Guinea"

        "pt" :: "GW" :: _ ->
            Just "Portuguese - Guinea-Bissau"

        "pt" :: "LU" :: _ ->
            Just "Portuguese - Luxembourg"

        "pt" :: "MO" :: _ ->
            Just "Portuguese - Macao"

        "pt" :: "MZ" :: _ ->
            Just "Portuguese - Mozambique"

        "pt" :: "PT" :: _ ->
            Just "Portuguese - Portugal"

        "pt" :: "ST" :: _ ->
            Just "Portuguese - São Tomé & Príncipe"

        "pt" :: "TL" :: _ ->
            Just "Portuguese - East Timor"

        "pt" :: _ ->
            Just "Portuguese"

        "ro" :: "MD" :: _ ->
            Just "Romanian - Moldova"

        "ro" :: _ ->
            Just "Romanian"

        "ru" :: "BY" :: _ ->
            Just "Russian - Belarus"

        "ru" :: "KG" :: _ ->
            Just "Russian - Kyrgyzstan"

        "ru" :: "KZ" :: _ ->
            Just "Russian - Kazakhstan"

        "ru" :: "MD" :: _ ->
            Just "Russian - Moldova"

        "ru" :: "UA" :: _ ->
            Just "Russian - Ukraine"

        "ru" :: _ ->
            Just "Russian"

        "sd" :: "Arab" :: _ ->
            Just "Sindhi (Arabic)"

        "sd" :: _ ->
            Just "Sindhi"

        "si" :: _ ->
            Just "Sinhala"

        "sk" :: _ ->
            Just "Slovak"

        "sl" :: _ ->
            Just "Slovenian"

        "so" :: "DJ" :: _ ->
            Just "Somali - Djibouti"

        "so" :: "ET" :: _ ->
            Just "Somali - Ethiopia"

        "so" :: "KE" :: _ ->
            Just "Somali - Kenya"

        "so" :: _ ->
            Just "Somali"

        "sq" :: "MK" :: _ ->
            Just "Albanian - North Macedonia"

        "sq" :: "XK" :: _ ->
            Just "Albanian - Kosovo"

        "sq" :: _ ->
            Just "Albanian"

        "sr" :: "Cyrl" :: "BA" :: _ ->
            Just "Serbian (Cyrillic) - Bosnia & Herzegovina"

        "sr" :: "Cyrl" :: "ME" :: _ ->
            Just "Serbian (Cyrillic) - Montenegro"

        "sr" :: "Cyrl" :: "XK" :: _ ->
            Just "Serbian (Cyrillic) - Kosovo"

        "sr" :: "Cyrl" :: _ ->
            Just "Serbian (Cyrillic)"

        "sr" :: "Latn" :: "BA" :: _ ->
            Just "Serbian (Latin) - Bosnia & Herzegovina"

        "sr" :: "Latn" :: "ME" :: _ ->
            Just "Serbian (Latin) - Montenegro"

        "sr" :: "Latn" :: "XK" :: _ ->
            Just "Serbian (Latin) - Kosovo"

        "sr" :: "Latn" :: _ ->
            Just "Serbian (Latin)"

        "sr" :: _ ->
            Just "Serbian"

        "sv" :: "AX" :: _ ->
            Just "Swedish - Åland Islands"

        "sv" :: "FI" :: _ ->
            Just "Swedish - Finland"

        "sv" :: _ ->
            Just "Swedish"

        "sw" :: "CD" :: _ ->
            Just "Swahili - Congo (DRC)"

        "sw" :: "KE" :: _ ->
            Just "Swahili - Kenya"

        "sw" :: "UG" :: _ ->
            Just "Swahili - Uganda"

        "sw" :: _ ->
            Just "Swahili"

        "ta" :: "LK" :: _ ->
            Just "Tamil - Sri Lanka"

        "ta" :: "MY" :: _ ->
            Just "Tamil - Malaysia"

        "ta" :: "SG" :: _ ->
            Just "Tamil - Singapore"

        "ta" :: _ ->
            Just "Tamil"

        "te" :: _ ->
            Just "Telugu"

        "th" :: _ ->
            Just "Thai"

        "tk" :: _ ->
            Just "Turkmen"

        "tr" :: "CY" :: _ ->
            Just "Turkish - Cyprus"

        "tr" :: _ ->
            Just "Turkish"

        "uk" :: _ ->
            Just "Ukrainian"

        "ur" :: "IN" :: _ ->
            Just "Urdu - India"

        "ur" :: _ ->
            Just "Urdu"

        "uz" :: "Latn" :: _ ->
            Just "Uzbek (Latin)"

        "uz" :: _ ->
            Just "Uzbek"

        "vi" :: _ ->
            Just "Vietnamese"

        "yo" :: "BJ" :: _ ->
            Just "Yoruba - Benin"

        "yo" :: _ ->
            Just "Yoruba"

        "yue" :: "Hans" :: _ ->
            Just "Cantonese (Simplified)"

        "yue" :: "Hant" :: _ ->
            Just "Cantonese (Traditional)"

        "yue" :: _ ->
            Just "Cantonese"

        "zh" :: "Hans" :: "HK" :: _ ->
            Just "Chinese (Simplified) - Hong Kong"

        "zh" :: "Hans" :: "MO" :: _ ->
            Just "Chinese (Simplified) - Macao"

        "zh" :: "Hans" :: "SG" :: _ ->
            Just "Chinese (Simplified) - Singapore"

        "zh" :: "Hans" :: _ ->
            Just "Chinese (Simplified)"

        "zh" :: "Hant" :: "HK" :: _ ->
            Just "Chinese (Traditional) - Hong Kong"

        "zh" :: "Hant" :: "MO" :: _ ->
            Just "Chinese (Traditional) - Macao"

        "zh" :: "Hant" :: _ ->
            Just "Chinese (Traditional)"

        "zh" :: _ ->
            Just "Chinese"

        "zu" :: _ ->
            Just "Zulu"

        _ ->
            Nothing


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
allCountryCodes : List CountryCode
allCountryCodes =
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


defaultContent : String -> Maybe String
defaultContent locale =
    case locale of
        "af" ->
            Just "af-ZA"

        "am" ->
            Just "am-ET"

        "ar" ->
            Just "ar-001"

        "as" ->
            Just "as-IN"

        "az-Latn" ->
            Just "az-Latn-AZ"

        "be" ->
            Just "be-BY"

        "bg" ->
            Just "bg-BG"

        "bn" ->
            Just "bn-BD"

        "bs-Latn" ->
            Just "bs-Latn-BA"

        "ca" ->
            Just "ca-ES"

        "cs" ->
            Just "cs-CZ"

        "cy" ->
            Just "cy-GB"

        "da" ->
            Just "da-DK"

        "de" ->
            Just "de-DE"

        "el" ->
            Just "el-GR"

        "en" ->
            Just "en-US"

        "es" ->
            Just "es-ES"

        "et" ->
            Just "et-EE"

        "eu" ->
            Just "eu-ES"

        "fa" ->
            Just "fa-IR"

        "fi" ->
            Just "fi-FI"

        "fil" ->
            Just "fil-PH"

        "fr" ->
            Just "fr-FR"

        "ga" ->
            Just "ga-IE"

        "gd" ->
            Just "gd-GB"

        "gl" ->
            Just "gl-ES"

        "gu" ->
            Just "gu-IN"

        "ha" ->
            Just "ha-NG"

        "he" ->
            Just "he-IL"

        "hi" ->
            Just "hi-IN"

        "hi-Latn" ->
            Just "hi-Latn-IN"

        "hr" ->
            Just "hr-HR"

        "hu" ->
            Just "hu-HU"

        "hy" ->
            Just "hy-AM"

        "id" ->
            Just "id-ID"

        "ig" ->
            Just "ig-NG"

        "is" ->
            Just "is-IS"

        "it" ->
            Just "it-IT"

        "ja" ->
            Just "ja-JP"

        "jv" ->
            Just "jv-ID"

        "ka" ->
            Just "ka-GE"

        "kk" ->
            Just "kk-KZ"

        "km" ->
            Just "km-KH"

        "kn" ->
            Just "kn-IN"

        "ko" ->
            Just "ko-KR"

        "kok" ->
            Just "kok-IN"

        "ky" ->
            Just "ky-KG"

        "lo" ->
            Just "lo-LA"

        "lt" ->
            Just "lt-LT"

        "lv" ->
            Just "lv-LV"

        "mk" ->
            Just "mk-MK"

        "ml" ->
            Just "ml-IN"

        "mn" ->
            Just "mn-MN"

        "mr" ->
            Just "mr-IN"

        "ms" ->
            Just "ms-MY"

        "my" ->
            Just "my-MM"

        "nb" ->
            Just "nb-NO"

        "ne" ->
            Just "ne-NP"

        "nl" ->
            Just "nl-NL"

        "nn" ->
            Just "nn-NO"

        "or" ->
            Just "or-IN"

        "pa-Guru" ->
            Just "pa-Guru-IN"

        "pcm" ->
            Just "pcm-NG"

        "pl" ->
            Just "pl-PL"

        "ps" ->
            Just "ps-AF"

        "pt" ->
            Just "pt-BR"

        "ro" ->
            Just "ro-RO"

        "ru" ->
            Just "ru-RU"

        "sd-Arab" ->
            Just "sd-Arab-PK"

        "si" ->
            Just "si-LK"

        "sk" ->
            Just "sk-SK"

        "sl" ->
            Just "sl-SI"

        "so" ->
            Just "so-SO"

        "sq" ->
            Just "sq-AL"

        "sr-Cyrl" ->
            Just "sr-Cyrl-RS"

        "sr-Latn" ->
            Just "sr-Latn-RS"

        "sv" ->
            Just "sv-SE"

        "sw" ->
            Just "sw-TZ"

        "ta" ->
            Just "ta-IN"

        "te" ->
            Just "te-IN"

        "th" ->
            Just "th-TH"

        "tk" ->
            Just "tk-TM"

        "tr" ->
            Just "tr-TR"

        "uk" ->
            Just "uk-UA"

        "ur" ->
            Just "ur-PK"

        "uz-Latn" ->
            Just "uz-Latn-UZ"

        "vi" ->
            Just "vi-VN"

        "yo" ->
            Just "yo-NG"

        "yue-Hans" ->
            Just "yue-Hans-CN"

        "yue-Hant" ->
            Just "yue-Hant-HK"

        "zh-Hans" ->
            Just "zh-Hans-CN"

        "zh-Hant" ->
            Just "zh-Hant-TW"

        "zu" ->
            Just "zu-ZA"

        _ ->
            Nothing