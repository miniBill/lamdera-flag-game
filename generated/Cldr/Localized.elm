module Cldr.Localized exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Afrikaans
import Cldr.Albanian
import Cldr.Amharic
import Cldr.Arabic
import Cldr.Arabic.Libya
import Cldr.Arabic.SaudiArabia
import Cldr.Arabic.UnitedArabEmirates
import Cldr.Armenian
import Cldr.Assamese
import Cldr.Azerbaijani
import Cldr.Bangla
import Cldr.Bangla.India
import Cldr.Basque
import Cldr.Belarusian
import Cldr.Bosnian
import Cldr.Bulgarian
import Cldr.Burmese
import Cldr.Cantonese
import Cldr.Cantonese.Simplified
import Cldr.Catalan
import Cldr.Catalan.Spain.Valencian
import Cldr.Chinese
import Cldr.Chinese.Traditional
import Cldr.Chinese.Traditional.HongKong
import Cldr.Chinese.Traditional.Macao
import Cldr.Croatian
import Cldr.Czech
import Cldr.Danish
import Cldr.Dutch
import Cldr.English
import Cldr.English.Australia
import Cldr.English.Canada
import Cldr.English.UnitedKingdom
import Cldr.Estonian
import Cldr.Filipino
import Cldr.Finnish
import Cldr.French
import Cldr.French.Belgium
import Cldr.French.Canada
import Cldr.Gaelic.Scottish
import Cldr.Galician
import Cldr.Georgian
import Cldr.German
import Cldr.German.Austria
import Cldr.German.Switzerland
import Cldr.Greek
import Cldr.Greek.Polytonic
import Cldr.Gujarati
import Cldr.Hausa
import Cldr.Hebrew
import Cldr.Hindi
import Cldr.Hindi.Latin
import Cldr.Hungarian
import Cldr.Icelandic
import Cldr.Igbo
import Cldr.Indonesian
import Cldr.Irish
import Cldr.Italian
import Cldr.Japanese
import Cldr.Javanese
import Cldr.Kannada
import Cldr.Kazakh
import Cldr.Khmer
import Cldr.Konkani
import Cldr.Korean
import Cldr.Korean.NorthKorea
import Cldr.Kyrgyz
import Cldr.Lao
import Cldr.Latvian
import Cldr.Lithuanian
import Cldr.Macedonian
import Cldr.Malay
import Cldr.Malayalam
import Cldr.Marathi
import Cldr.Mongolian
import Cldr.Nepali
import Cldr.Norwegian
import Cldr.Norwegian.Nynorsk
import Cldr.Odia
import Cldr.Pashto
import Cldr.Pashto.Pakistan
import Cldr.Persian
import Cldr.Persian.Afghanistan
import Cldr.Pidgin.Nigerian
import Cldr.Polish
import Cldr.Portuguese
import Cldr.Portuguese.Portugal
import Cldr.Punjabi
import Cldr.Romanian
import Cldr.Romanian.Moldova
import Cldr.Russian
import Cldr.Russian.Ukraine
import Cldr.Serbian
import Cldr.Serbian.Cyrillic.BosniaAndHerzegovina
import Cldr.Serbian.Cyrillic.Kosovo
import Cldr.Serbian.Cyrillic.Montenegro
import Cldr.Serbian.Latin
import Cldr.Serbian.Latin.BosniaAndHerzegovina
import Cldr.Serbian.Latin.Kosovo
import Cldr.Serbian.Latin.Montenegro
import Cldr.Sindhi
import Cldr.Sinhala
import Cldr.Slovak
import Cldr.Slovenian
import Cldr.Somali
import Cldr.Spanish
import Cldr.Spanish.Argentina
import Cldr.Spanish.Belize
import Cldr.Spanish.Brazil
import Cldr.Spanish.CanaryIslands
import Cldr.Spanish.CeutaAndMelilla
import Cldr.Spanish.Chile
import Cldr.Spanish.Cuba
import Cldr.Spanish.ElSalvador
import Cldr.Spanish.EquatorialGuinea
import Cldr.Spanish.LatinAmerica
import Cldr.Spanish.Mexico
import Cldr.Spanish.Philippines
import Cldr.Spanish.PuertoRico
import Cldr.Spanish.UnitedStates
import Cldr.Spanish.Uruguay
import Cldr.Swahili
import Cldr.Swahili.CongoDRC
import Cldr.Swahili.Kenya
import Cldr.Swedish
import Cldr.Tamil
import Cldr.Telugu
import Cldr.Thai
import Cldr.Turkish
import Cldr.Turkmen
import Cldr.Ukrainian
import Cldr.Urdu
import Cldr.Urdu.India
import Cldr.Uzbek
import Cldr.Vietnamese
import Cldr.Welsh
import Cldr.Yoruba
import Cldr.Yoruba.Benin
import Cldr.Zulu


countryCodeToName : String -> Cldr.CountryCode -> Maybe String
countryCodeToName locale countryCode =
    case String.split "-" locale of
        "af" :: _ ->
            Just (Cldr.Afrikaans.countryCodeToName countryCode)

        "am" :: _ ->
            Just (Cldr.Amharic.countryCodeToName countryCode)

        "ar" :: "AE" :: _ ->
            Just (Cldr.Arabic.UnitedArabEmirates.countryCodeToName countryCode)

        "ar" :: "LY" :: _ ->
            Just (Cldr.Arabic.Libya.countryCodeToName countryCode)

        "ar" :: "SA" :: _ ->
            Just (Cldr.Arabic.SaudiArabia.countryCodeToName countryCode)

        "ar" :: _ ->
            Just (Cldr.Arabic.countryCodeToName countryCode)

        "as" :: _ ->
            Just (Cldr.Assamese.countryCodeToName countryCode)

        "az" :: _ ->
            Just (Cldr.Azerbaijani.countryCodeToName countryCode)

        "be" :: _ ->
            Just (Cldr.Belarusian.countryCodeToName countryCode)

        "bg" :: _ ->
            Just (Cldr.Bulgarian.countryCodeToName countryCode)

        "bn" :: "IN" :: _ ->
            Just (Cldr.Bangla.India.countryCodeToName countryCode)

        "bn" :: _ ->
            Just (Cldr.Bangla.countryCodeToName countryCode)

        "bs" :: _ ->
            Just (Cldr.Bosnian.countryCodeToName countryCode)

        "ca" :: "ES" :: "valencia" :: _ ->
            Just (Cldr.Catalan.Spain.Valencian.countryCodeToName countryCode)

        "ca" :: _ ->
            Just (Cldr.Catalan.countryCodeToName countryCode)

        "cs" :: _ ->
            Just (Cldr.Czech.countryCodeToName countryCode)

        "cy" :: _ ->
            Just (Cldr.Welsh.countryCodeToName countryCode)

        "da" :: _ ->
            Just (Cldr.Danish.countryCodeToName countryCode)

        "de" :: "AT" :: _ ->
            Just (Cldr.German.Austria.countryCodeToName countryCode)

        "de" :: "CH" :: _ ->
            Just (Cldr.German.Switzerland.countryCodeToName countryCode)

        "de" :: _ ->
            Just (Cldr.German.countryCodeToName countryCode)

        "el" :: "polyton" :: _ ->
            Just (Cldr.Greek.Polytonic.countryCodeToName countryCode)

        "el" :: _ ->
            Just (Cldr.Greek.countryCodeToName countryCode)

        "en" :: "001" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "150" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "AG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "AI" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "AT" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "AU" :: _ ->
            Just (Cldr.English.Australia.countryCodeToName countryCode)

        "en" :: "BB" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "BE" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "BM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "BS" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "BW" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "BZ" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "CA" :: _ ->
            Just (Cldr.English.Canada.countryCodeToName countryCode)

        "en" :: "CC" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "CH" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "CK" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "CM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "CX" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "CY" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "DE" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "DG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "DK" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "DM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "ER" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "FI" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "FJ" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "FK" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "FM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GB" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GD" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GH" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GI" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GY" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "HK" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "IE" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "IL" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "IM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "IN" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "IO" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "JE" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "JM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "KE" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "KI" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "KN" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "KY" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "LC" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "LR" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "LS" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MO" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MS" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MT" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MU" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MV" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MW" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "MY" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "NA" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "NF" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "NG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "NL" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "NR" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "NU" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "NZ" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "PG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "PK" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "PN" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "PW" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "RW" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SB" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SC" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SD" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SE" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SH" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SI" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SL" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SS" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SX" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "SZ" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "TC" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "TK" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "TO" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "TT" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "TV" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "TZ" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "UG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "VC" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "VG" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "VU" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "WS" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "ZA" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "ZM" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "ZW" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: _ ->
            Just (Cldr.English.countryCodeToName countryCode)

        "es" :: "419" :: _ ->
            Just (Cldr.Spanish.LatinAmerica.countryCodeToName countryCode)

        "es" :: "AR" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "BO" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "BR" :: _ ->
            Just (Cldr.Spanish.Brazil.countryCodeToName countryCode)

        "es" :: "BZ" :: _ ->
            Just (Cldr.Spanish.Belize.countryCodeToName countryCode)

        "es" :: "CL" :: _ ->
            Just (Cldr.Spanish.Chile.countryCodeToName countryCode)

        "es" :: "CO" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "CR" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "CU" :: _ ->
            Just (Cldr.Spanish.Cuba.countryCodeToName countryCode)

        "es" :: "DO" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "EA" :: _ ->
            Just (Cldr.Spanish.CeutaAndMelilla.countryCodeToName countryCode)

        "es" :: "EC" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "GQ" :: _ ->
            Just (Cldr.Spanish.EquatorialGuinea.countryCodeToName countryCode)

        "es" :: "GT" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "HN" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "IC" :: _ ->
            Just (Cldr.Spanish.CanaryIslands.countryCodeToName countryCode)

        "es" :: "MX" :: _ ->
            Just (Cldr.Spanish.Mexico.countryCodeToName countryCode)

        "es" :: "NI" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "PA" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "PE" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "PH" :: _ ->
            Just (Cldr.Spanish.Philippines.countryCodeToName countryCode)

        "es" :: "PR" :: _ ->
            Just (Cldr.Spanish.PuertoRico.countryCodeToName countryCode)

        "es" :: "PY" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "SV" :: _ ->
            Just (Cldr.Spanish.ElSalvador.countryCodeToName countryCode)

        "es" :: "US" :: _ ->
            Just (Cldr.Spanish.UnitedStates.countryCodeToName countryCode)

        "es" :: "UY" :: _ ->
            Just (Cldr.Spanish.Uruguay.countryCodeToName countryCode)

        "es" :: "VE" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: _ ->
            Just (Cldr.Spanish.countryCodeToName countryCode)

        "et" :: _ ->
            Just (Cldr.Estonian.countryCodeToName countryCode)

        "eu" :: _ ->
            Just (Cldr.Basque.countryCodeToName countryCode)

        "fa" :: "AF" :: _ ->
            Just (Cldr.Persian.Afghanistan.countryCodeToName countryCode)

        "fa" :: _ ->
            Just (Cldr.Persian.countryCodeToName countryCode)

        "fi" :: _ ->
            Just (Cldr.Finnish.countryCodeToName countryCode)

        "fil" :: _ ->
            Just (Cldr.Filipino.countryCodeToName countryCode)

        "fr" :: "BE" :: _ ->
            Just (Cldr.French.Belgium.countryCodeToName countryCode)

        "fr" :: "CA" :: _ ->
            Just (Cldr.French.Canada.countryCodeToName countryCode)

        "fr" :: _ ->
            Just (Cldr.French.countryCodeToName countryCode)

        "ga" :: _ ->
            Just (Cldr.Irish.countryCodeToName countryCode)

        "gd" :: _ ->
            Just (Cldr.Gaelic.Scottish.countryCodeToName countryCode)

        "gl" :: _ ->
            Just (Cldr.Galician.countryCodeToName countryCode)

        "gu" :: _ ->
            Just (Cldr.Gujarati.countryCodeToName countryCode)

        "ha" :: _ ->
            Just (Cldr.Hausa.countryCodeToName countryCode)

        "he" :: _ ->
            Just (Cldr.Hebrew.countryCodeToName countryCode)

        "hi" :: "Latn" :: _ ->
            Just (Cldr.Hindi.Latin.countryCodeToName countryCode)

        "hi" :: _ ->
            Just (Cldr.Hindi.countryCodeToName countryCode)

        "hr" :: _ ->
            Just (Cldr.Croatian.countryCodeToName countryCode)

        "hu" :: _ ->
            Just (Cldr.Hungarian.countryCodeToName countryCode)

        "hy" :: _ ->
            Just (Cldr.Armenian.countryCodeToName countryCode)

        "id" :: _ ->
            Just (Cldr.Indonesian.countryCodeToName countryCode)

        "ig" :: _ ->
            Just (Cldr.Igbo.countryCodeToName countryCode)

        "is" :: _ ->
            Just (Cldr.Icelandic.countryCodeToName countryCode)

        "it" :: _ ->
            Just (Cldr.Italian.countryCodeToName countryCode)

        "ja" :: _ ->
            Just (Cldr.Japanese.countryCodeToName countryCode)

        "jv" :: _ ->
            Just (Cldr.Javanese.countryCodeToName countryCode)

        "ka" :: _ ->
            Just (Cldr.Georgian.countryCodeToName countryCode)

        "kk" :: _ ->
            Just (Cldr.Kazakh.countryCodeToName countryCode)

        "km" :: _ ->
            Just (Cldr.Khmer.countryCodeToName countryCode)

        "kn" :: _ ->
            Just (Cldr.Kannada.countryCodeToName countryCode)

        "ko" :: "KP" :: _ ->
            Just (Cldr.Korean.NorthKorea.countryCodeToName countryCode)

        "ko" :: _ ->
            Just (Cldr.Korean.countryCodeToName countryCode)

        "kok" :: _ ->
            Just (Cldr.Konkani.countryCodeToName countryCode)

        "ky" :: _ ->
            Just (Cldr.Kyrgyz.countryCodeToName countryCode)

        "lo" :: _ ->
            Just (Cldr.Lao.countryCodeToName countryCode)

        "lt" :: _ ->
            Just (Cldr.Lithuanian.countryCodeToName countryCode)

        "lv" :: _ ->
            Just (Cldr.Latvian.countryCodeToName countryCode)

        "mk" :: _ ->
            Just (Cldr.Macedonian.countryCodeToName countryCode)

        "ml" :: _ ->
            Just (Cldr.Malayalam.countryCodeToName countryCode)

        "mn" :: _ ->
            Just (Cldr.Mongolian.countryCodeToName countryCode)

        "mr" :: _ ->
            Just (Cldr.Marathi.countryCodeToName countryCode)

        "ms" :: _ ->
            Just (Cldr.Malay.countryCodeToName countryCode)

        "my" :: _ ->
            Just (Cldr.Burmese.countryCodeToName countryCode)

        "ne" :: _ ->
            Just (Cldr.Nepali.countryCodeToName countryCode)

        "nl" :: _ ->
            Just (Cldr.Dutch.countryCodeToName countryCode)

        "nn" :: _ ->
            Just (Cldr.Norwegian.Nynorsk.countryCodeToName countryCode)

        "no" :: _ ->
            Just (Cldr.Norwegian.countryCodeToName countryCode)

        "or" :: _ ->
            Just (Cldr.Odia.countryCodeToName countryCode)

        "pa" :: _ ->
            Just (Cldr.Punjabi.countryCodeToName countryCode)

        "pcm" :: _ ->
            Just (Cldr.Pidgin.Nigerian.countryCodeToName countryCode)

        "pl" :: _ ->
            Just (Cldr.Polish.countryCodeToName countryCode)

        "ps" :: "PK" :: _ ->
            Just (Cldr.Pashto.Pakistan.countryCodeToName countryCode)

        "ps" :: _ ->
            Just (Cldr.Pashto.countryCodeToName countryCode)

        "pt" :: "AO" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "CH" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "CV" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "GQ" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "GW" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "LU" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "MO" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "MZ" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "PT" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "ST" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "TL" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: _ ->
            Just (Cldr.Portuguese.countryCodeToName countryCode)

        "ro" :: "MD" :: _ ->
            Just (Cldr.Romanian.Moldova.countryCodeToName countryCode)

        "ro" :: _ ->
            Just (Cldr.Romanian.countryCodeToName countryCode)

        "ru" :: "UA" :: _ ->
            Just (Cldr.Russian.Ukraine.countryCodeToName countryCode)

        "ru" :: _ ->
            Just (Cldr.Russian.countryCodeToName countryCode)

        "sd" :: _ ->
            Just (Cldr.Sindhi.countryCodeToName countryCode)

        "si" :: _ ->
            Just (Cldr.Sinhala.countryCodeToName countryCode)

        "sk" :: _ ->
            Just (Cldr.Slovak.countryCodeToName countryCode)

        "sl" :: _ ->
            Just (Cldr.Slovenian.countryCodeToName countryCode)

        "so" :: _ ->
            Just (Cldr.Somali.countryCodeToName countryCode)

        "sq" :: _ ->
            Just (Cldr.Albanian.countryCodeToName countryCode)

        "sr" :: "Cyrl" :: "BA" :: _ ->
            Just
                (Cldr.Serbian.Cyrillic.BosniaAndHerzegovina.countryCodeToName
                    countryCode
                )

        "sr" :: "Cyrl" :: "ME" :: _ ->
            Just
                (Cldr.Serbian.Cyrillic.Montenegro.countryCodeToName countryCode)

        "sr" :: "Cyrl" :: "XK" :: _ ->
            Just (Cldr.Serbian.Cyrillic.Kosovo.countryCodeToName countryCode)

        "sr" :: "Latn" :: "BA" :: _ ->
            Just
                (Cldr.Serbian.Latin.BosniaAndHerzegovina.countryCodeToName
                    countryCode
                )

        "sr" :: "Latn" :: "ME" :: _ ->
            Just (Cldr.Serbian.Latin.Montenegro.countryCodeToName countryCode)

        "sr" :: "Latn" :: "XK" :: _ ->
            Just (Cldr.Serbian.Latin.Kosovo.countryCodeToName countryCode)

        "sr" :: "Latn" :: _ ->
            Just (Cldr.Serbian.Latin.countryCodeToName countryCode)

        "sr" :: _ ->
            Just (Cldr.Serbian.countryCodeToName countryCode)

        "sv" :: _ ->
            Just (Cldr.Swedish.countryCodeToName countryCode)

        "sw" :: "CD" :: _ ->
            Just (Cldr.Swahili.CongoDRC.countryCodeToName countryCode)

        "sw" :: "KE" :: _ ->
            Just (Cldr.Swahili.Kenya.countryCodeToName countryCode)

        "sw" :: _ ->
            Just (Cldr.Swahili.countryCodeToName countryCode)

        "ta" :: _ ->
            Just (Cldr.Tamil.countryCodeToName countryCode)

        "te" :: _ ->
            Just (Cldr.Telugu.countryCodeToName countryCode)

        "th" :: _ ->
            Just (Cldr.Thai.countryCodeToName countryCode)

        "tk" :: _ ->
            Just (Cldr.Turkmen.countryCodeToName countryCode)

        "tr" :: _ ->
            Just (Cldr.Turkish.countryCodeToName countryCode)

        "uk" :: _ ->
            Just (Cldr.Ukrainian.countryCodeToName countryCode)

        "ur" :: "IN" :: _ ->
            Just (Cldr.Urdu.India.countryCodeToName countryCode)

        "ur" :: _ ->
            Just (Cldr.Urdu.countryCodeToName countryCode)

        "uz" :: _ ->
            Just (Cldr.Uzbek.countryCodeToName countryCode)

        "vi" :: _ ->
            Just (Cldr.Vietnamese.countryCodeToName countryCode)

        "yo" :: "BJ" :: _ ->
            Just (Cldr.Yoruba.Benin.countryCodeToName countryCode)

        "yo" :: _ ->
            Just (Cldr.Yoruba.countryCodeToName countryCode)

        "yue" :: "Hans" :: _ ->
            Just (Cldr.Cantonese.Simplified.countryCodeToName countryCode)

        "yue" :: _ ->
            Just (Cldr.Cantonese.countryCodeToName countryCode)

        "zh" :: "Hant" :: "HK" :: _ ->
            Just
                (Cldr.Chinese.Traditional.HongKong.countryCodeToName countryCode
                )

        "zh" :: "Hant" :: "MO" :: _ ->
            Just (Cldr.Chinese.Traditional.Macao.countryCodeToName countryCode)

        "zh" :: "Hant" :: _ ->
            Just (Cldr.Chinese.Traditional.countryCodeToName countryCode)

        "zh" :: _ ->
            Just (Cldr.Chinese.countryCodeToName countryCode)

        "zu" :: _ ->
            Just (Cldr.Zulu.countryCodeToName countryCode)

        _ ->
            Nothing