module Cldr.Localized exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr
import Cldr.Afrikaans
import Cldr.Afrikaans.Namibia
import Cldr.Albanian
import Cldr.Albanian.Kosovo
import Cldr.Albanian.NorthMacedonia
import Cldr.Amharic
import Cldr.Arabic
import Cldr.Arabic.Algeria
import Cldr.Arabic.Bahrain
import Cldr.Arabic.Chad
import Cldr.Arabic.Comoros
import Cldr.Arabic.Djibouti
import Cldr.Arabic.Egypt
import Cldr.Arabic.Eritrea
import Cldr.Arabic.Iraq
import Cldr.Arabic.Israel
import Cldr.Arabic.Jordan
import Cldr.Arabic.Kuwait
import Cldr.Arabic.Lebanon
import Cldr.Arabic.Libya
import Cldr.Arabic.Mauritania
import Cldr.Arabic.Morocco
import Cldr.Arabic.Oman
import Cldr.Arabic.Palestine
import Cldr.Arabic.Qatar
import Cldr.Arabic.SaudiArabia
import Cldr.Arabic.Somalia
import Cldr.Arabic.SouthSudan
import Cldr.Arabic.Sudan
import Cldr.Arabic.Syria
import Cldr.Arabic.Tunisia
import Cldr.Arabic.UnitedArabEmirates
import Cldr.Arabic.WesternSahara
import Cldr.Arabic.Yemen
import Cldr.Armenian
import Cldr.Assamese
import Cldr.Azerbaijani
import Cldr.Azerbaijani.Latin
import Cldr.Bangla
import Cldr.Bangla.India
import Cldr.Basque
import Cldr.Belarusian
import Cldr.Belarusian.Taraškievica
import Cldr.Bosnian
import Cldr.Bosnian.Latin
import Cldr.Bulgarian
import Cldr.Burmese
import Cldr.Cantonese
import Cldr.Cantonese.Simplified
import Cldr.Cantonese.Traditional
import Cldr.Catalan
import Cldr.Catalan.Andorra
import Cldr.Catalan.France
import Cldr.Catalan.Italy
import Cldr.Catalan.Spain.Valencia
import Cldr.Chinese
import Cldr.Chinese.Simplified
import Cldr.Chinese.Simplified.HongKong
import Cldr.Chinese.Simplified.Macao
import Cldr.Chinese.Simplified.Singapore
import Cldr.Chinese.Traditional
import Cldr.Chinese.Traditional.HongKong
import Cldr.Chinese.Traditional.Macao
import Cldr.Croatian
import Cldr.Croatian.BosniaAndHerzegovina
import Cldr.Czech
import Cldr.Danish
import Cldr.Danish.Greenland
import Cldr.Dutch
import Cldr.Dutch.Aruba
import Cldr.Dutch.Belgium
import Cldr.Dutch.CaribbeanNetherlands
import Cldr.Dutch.Curaçao
import Cldr.Dutch.SintMaarten
import Cldr.Dutch.Suriname
import Cldr.English
import Cldr.English.AmericanSamoa
import Cldr.English.Anguilla
import Cldr.English.AntiguaAndBarbuda
import Cldr.English.Australia
import Cldr.English.Austria
import Cldr.English.Bahamas
import Cldr.English.Barbados
import Cldr.English.Belgium
import Cldr.English.Belize
import Cldr.English.Bermuda
import Cldr.English.Botswana
import Cldr.English.BritishIndianOceanTerritory
import Cldr.English.BritishVirginIslands
import Cldr.English.Burundi
import Cldr.English.Cameroon
import Cldr.English.Canada
import Cldr.English.CaymanIslands
import Cldr.English.ChristmasIsland
import Cldr.English.CocosKeelingIslands
import Cldr.English.CookIslands
import Cldr.English.Cyprus
import Cldr.English.Denmark
import Cldr.English.DiegoGarcia
import Cldr.English.Dominica
import Cldr.English.Eritrea
import Cldr.English.Eswatini
import Cldr.English.Europe
import Cldr.English.FalklandIslands
import Cldr.English.Fiji
import Cldr.English.Finland
import Cldr.English.Gambia
import Cldr.English.Germany
import Cldr.English.Ghana
import Cldr.English.Gibraltar
import Cldr.English.Grenada
import Cldr.English.Guam
import Cldr.English.Guernsey
import Cldr.English.Guyana
import Cldr.English.HongKong
import Cldr.English.India
import Cldr.English.Ireland
import Cldr.English.IsleofMan
import Cldr.English.Israel
import Cldr.English.Jamaica
import Cldr.English.Jersey
import Cldr.English.Kenya
import Cldr.English.Kiribati
import Cldr.English.Lesotho
import Cldr.English.Liberia
import Cldr.English.Macao
import Cldr.English.Madagascar
import Cldr.English.Malawi
import Cldr.English.Malaysia
import Cldr.English.Maldives
import Cldr.English.Malta
import Cldr.English.MarshallIslands
import Cldr.English.Mauritius
import Cldr.English.Micronesia
import Cldr.English.Montserrat
import Cldr.English.Namibia
import Cldr.English.Nauru
import Cldr.English.Netherlands
import Cldr.English.NewZealand
import Cldr.English.Nigeria
import Cldr.English.Niue
import Cldr.English.NorfolkIsland
import Cldr.English.NorthernMarianaIslands
import Cldr.English.Pakistan
import Cldr.English.Palau
import Cldr.English.PapuaNewGuinea
import Cldr.English.Philippines
import Cldr.English.PitcairnIslands
import Cldr.English.PuertoRico
import Cldr.English.Rwanda
import Cldr.English.Samoa
import Cldr.English.Seychelles
import Cldr.English.SierraLeone
import Cldr.English.Singapore
import Cldr.English.SintMaarten
import Cldr.English.Slovenia
import Cldr.English.SolomonIslands
import Cldr.English.SouthAfrica
import Cldr.English.SouthSudan
import Cldr.English.StHelena
import Cldr.English.StKittsAndNevis
import Cldr.English.StLucia
import Cldr.English.StVincentAndGrenadines
import Cldr.English.Sudan
import Cldr.English.Sweden
import Cldr.English.Switzerland
import Cldr.English.Tanzania
import Cldr.English.Tokelau
import Cldr.English.Tonga
import Cldr.English.TrinidadAndTobago
import Cldr.English.TurksAndCaicosIslands
import Cldr.English.Tuvalu
import Cldr.English.USOutlyingIslands
import Cldr.English.USVirginIslands
import Cldr.English.Uganda
import Cldr.English.UnitedArabEmirates
import Cldr.English.UnitedKingdom
import Cldr.English.Vanuatu
import Cldr.English.World
import Cldr.English.Zambia
import Cldr.English.Zimbabwe
import Cldr.Estonian
import Cldr.Filipino
import Cldr.Finnish
import Cldr.French
import Cldr.French.Algeria
import Cldr.French.Belgium
import Cldr.French.Benin
import Cldr.French.BurkinaFaso
import Cldr.French.Burundi
import Cldr.French.Cameroon
import Cldr.French.Canada
import Cldr.French.CentralAfricanRepublic
import Cldr.French.Chad
import Cldr.French.Comoros
import Cldr.French.CongoDRC
import Cldr.French.CongoRepublic
import Cldr.French.CôtedIvoire
import Cldr.French.Djibouti
import Cldr.French.EquatorialGuinea
import Cldr.French.FrenchGuiana
import Cldr.French.FrenchPolynesia
import Cldr.French.Gabon
import Cldr.French.Guadeloupe
import Cldr.French.Guinea
import Cldr.French.Haiti
import Cldr.French.Luxembourg
import Cldr.French.Madagascar
import Cldr.French.Mali
import Cldr.French.Martinique
import Cldr.French.Mauritania
import Cldr.French.Mauritius
import Cldr.French.Mayotte
import Cldr.French.Monaco
import Cldr.French.Morocco
import Cldr.French.NewCaledonia
import Cldr.French.Niger
import Cldr.French.Rwanda
import Cldr.French.Réunion
import Cldr.French.Senegal
import Cldr.French.Seychelles
import Cldr.French.StBarthélemy
import Cldr.French.StMartin
import Cldr.French.StPierreAndMiquelon
import Cldr.French.Switzerland
import Cldr.French.Syria
import Cldr.French.Togo
import Cldr.French.Tunisia
import Cldr.French.Vanuatu
import Cldr.French.WallisAndFutuna
import Cldr.Gaelic.Scottish
import Cldr.Galician
import Cldr.Georgian
import Cldr.German
import Cldr.German.Austria
import Cldr.German.Belgium
import Cldr.German.Italy
import Cldr.German.Liechtenstein
import Cldr.German.Luxembourg
import Cldr.German.Switzerland
import Cldr.Greek
import Cldr.Greek.Cyprus
import Cldr.Greek.Polytonic
import Cldr.Gujarati
import Cldr.Hausa
import Cldr.Hausa.Ghana
import Cldr.Hausa.Niger
import Cldr.Hebrew
import Cldr.Hindi
import Cldr.Hindi.Latin
import Cldr.Hungarian
import Cldr.Icelandic
import Cldr.Igbo
import Cldr.Indonesian
import Cldr.Irish
import Cldr.Irish.UnitedKingdom
import Cldr.Italian
import Cldr.Italian.SanMarino
import Cldr.Italian.Switzerland
import Cldr.Italian.VaticanCity
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
import Cldr.Malay.Brunei
import Cldr.Malay.Indonesia
import Cldr.Malay.Singapore
import Cldr.Malayalam
import Cldr.Marathi
import Cldr.Mongolian
import Cldr.Nepali
import Cldr.Nepali.India
import Cldr.Norwegian
import Cldr.Norwegian.Bokmål
import Cldr.Norwegian.Bokmål.SvalbardAndJanMayen
import Cldr.Norwegian.Nynorsk
import Cldr.Odia
import Cldr.Pashto
import Cldr.Pashto.Pakistan
import Cldr.Persian
import Cldr.Persian.Afghanistan
import Cldr.Pidgin.Nigerian
import Cldr.Polish
import Cldr.Portuguese
import Cldr.Portuguese.Angola
import Cldr.Portuguese.CapeVerde
import Cldr.Portuguese.EastTimor
import Cldr.Portuguese.EquatorialGuinea
import Cldr.Portuguese.GuineaBissau
import Cldr.Portuguese.Luxembourg
import Cldr.Portuguese.Macao
import Cldr.Portuguese.Mozambique
import Cldr.Portuguese.Portugal
import Cldr.Portuguese.Switzerland
import Cldr.Portuguese.SãoToméAndPríncipe
import Cldr.Punjabi
import Cldr.Punjabi.Gurmukhi
import Cldr.Romanian
import Cldr.Romanian.Moldova
import Cldr.Russian
import Cldr.Russian.Belarus
import Cldr.Russian.Kazakhstan
import Cldr.Russian.Kyrgyzstan
import Cldr.Russian.Moldova
import Cldr.Russian.Ukraine
import Cldr.Serbian
import Cldr.Serbian.Cyrillic
import Cldr.Serbian.Cyrillic.BosniaAndHerzegovina
import Cldr.Serbian.Cyrillic.Kosovo
import Cldr.Serbian.Cyrillic.Montenegro
import Cldr.Serbian.Latin
import Cldr.Serbian.Latin.BosniaAndHerzegovina
import Cldr.Serbian.Latin.Kosovo
import Cldr.Serbian.Latin.Montenegro
import Cldr.Sindhi
import Cldr.Sindhi.Arabic
import Cldr.Sinhala
import Cldr.Slovak
import Cldr.Slovenian
import Cldr.Somali
import Cldr.Somali.Djibouti
import Cldr.Somali.Ethiopia
import Cldr.Somali.Kenya
import Cldr.Spanish
import Cldr.Spanish.Argentina
import Cldr.Spanish.Belize
import Cldr.Spanish.Bolivia
import Cldr.Spanish.Brazil
import Cldr.Spanish.CanaryIslands
import Cldr.Spanish.CeutaAndMelilla
import Cldr.Spanish.Chile
import Cldr.Spanish.Colombia
import Cldr.Spanish.CostaRica
import Cldr.Spanish.Cuba
import Cldr.Spanish.DominicanRepublic
import Cldr.Spanish.Ecuador
import Cldr.Spanish.ElSalvador
import Cldr.Spanish.EquatorialGuinea
import Cldr.Spanish.Guatemala
import Cldr.Spanish.Honduras
import Cldr.Spanish.LatinAmerica
import Cldr.Spanish.Mexico
import Cldr.Spanish.Nicaragua
import Cldr.Spanish.Panama
import Cldr.Spanish.Paraguay
import Cldr.Spanish.Peru
import Cldr.Spanish.Philippines
import Cldr.Spanish.PuertoRico
import Cldr.Spanish.UnitedStates
import Cldr.Spanish.Uruguay
import Cldr.Spanish.Venezuela
import Cldr.Swahili
import Cldr.Swahili.CongoDRC
import Cldr.Swahili.Kenya
import Cldr.Swahili.Uganda
import Cldr.Swedish
import Cldr.Swedish.Finland
import Cldr.Swedish.ÅlandIslands
import Cldr.Tamil
import Cldr.Tamil.Malaysia
import Cldr.Tamil.Singapore
import Cldr.Tamil.SriLanka
import Cldr.Telugu
import Cldr.Thai
import Cldr.Turkish
import Cldr.Turkish.Cyprus
import Cldr.Turkmen
import Cldr.Ukrainian
import Cldr.Urdu
import Cldr.Urdu.India
import Cldr.Uzbek
import Cldr.Uzbek.Latin
import Cldr.Vietnamese
import Cldr.Welsh
import Cldr.Yoruba
import Cldr.Yoruba.Benin
import Cldr.Zulu


countryCodeToName : String -> Cldr.CountryCode -> Maybe String
countryCodeToName locale countryCode =
    case String.split "-" locale of
        "af" :: "NA" :: _ ->
            Just (Cldr.Afrikaans.Namibia.countryCodeToName countryCode)

        "af" :: _ ->
            Just (Cldr.Afrikaans.countryCodeToName countryCode)

        "am" :: _ ->
            Just (Cldr.Amharic.countryCodeToName countryCode)

        "ar" :: "AE" :: _ ->
            Just (Cldr.Arabic.UnitedArabEmirates.countryCodeToName countryCode)

        "ar" :: "BH" :: _ ->
            Just (Cldr.Arabic.Bahrain.countryCodeToName countryCode)

        "ar" :: "DJ" :: _ ->
            Just (Cldr.Arabic.Djibouti.countryCodeToName countryCode)

        "ar" :: "DZ" :: _ ->
            Just (Cldr.Arabic.Algeria.countryCodeToName countryCode)

        "ar" :: "EG" :: _ ->
            Just (Cldr.Arabic.Egypt.countryCodeToName countryCode)

        "ar" :: "EH" :: _ ->
            Just (Cldr.Arabic.WesternSahara.countryCodeToName countryCode)

        "ar" :: "ER" :: _ ->
            Just (Cldr.Arabic.Eritrea.countryCodeToName countryCode)

        "ar" :: "IL" :: _ ->
            Just (Cldr.Arabic.Israel.countryCodeToName countryCode)

        "ar" :: "IQ" :: _ ->
            Just (Cldr.Arabic.Iraq.countryCodeToName countryCode)

        "ar" :: "JO" :: _ ->
            Just (Cldr.Arabic.Jordan.countryCodeToName countryCode)

        "ar" :: "KM" :: _ ->
            Just (Cldr.Arabic.Comoros.countryCodeToName countryCode)

        "ar" :: "KW" :: _ ->
            Just (Cldr.Arabic.Kuwait.countryCodeToName countryCode)

        "ar" :: "LB" :: _ ->
            Just (Cldr.Arabic.Lebanon.countryCodeToName countryCode)

        "ar" :: "LY" :: _ ->
            Just (Cldr.Arabic.Libya.countryCodeToName countryCode)

        "ar" :: "MA" :: _ ->
            Just (Cldr.Arabic.Morocco.countryCodeToName countryCode)

        "ar" :: "MR" :: _ ->
            Just (Cldr.Arabic.Mauritania.countryCodeToName countryCode)

        "ar" :: "OM" :: _ ->
            Just (Cldr.Arabic.Oman.countryCodeToName countryCode)

        "ar" :: "PS" :: _ ->
            Just (Cldr.Arabic.Palestine.countryCodeToName countryCode)

        "ar" :: "QA" :: _ ->
            Just (Cldr.Arabic.Qatar.countryCodeToName countryCode)

        "ar" :: "SA" :: _ ->
            Just (Cldr.Arabic.SaudiArabia.countryCodeToName countryCode)

        "ar" :: "SD" :: _ ->
            Just (Cldr.Arabic.Sudan.countryCodeToName countryCode)

        "ar" :: "SO" :: _ ->
            Just (Cldr.Arabic.Somalia.countryCodeToName countryCode)

        "ar" :: "SS" :: _ ->
            Just (Cldr.Arabic.SouthSudan.countryCodeToName countryCode)

        "ar" :: "SY" :: _ ->
            Just (Cldr.Arabic.Syria.countryCodeToName countryCode)

        "ar" :: "TD" :: _ ->
            Just (Cldr.Arabic.Chad.countryCodeToName countryCode)

        "ar" :: "TN" :: _ ->
            Just (Cldr.Arabic.Tunisia.countryCodeToName countryCode)

        "ar" :: "YE" :: _ ->
            Just (Cldr.Arabic.Yemen.countryCodeToName countryCode)

        "ar" :: _ ->
            Just (Cldr.Arabic.countryCodeToName countryCode)

        "as" :: _ ->
            Just (Cldr.Assamese.countryCodeToName countryCode)

        "az" :: "Latn" :: _ ->
            Just (Cldr.Azerbaijani.Latin.countryCodeToName countryCode)

        "az" :: _ ->
            Just (Cldr.Azerbaijani.countryCodeToName countryCode)

        "be" :: "tarask" :: _ ->
            Just (Cldr.Belarusian.Taraškievica.countryCodeToName countryCode)

        "be" :: _ ->
            Just (Cldr.Belarusian.countryCodeToName countryCode)

        "bg" :: _ ->
            Just (Cldr.Bulgarian.countryCodeToName countryCode)

        "bn" :: "IN" :: _ ->
            Just (Cldr.Bangla.India.countryCodeToName countryCode)

        "bn" :: _ ->
            Just (Cldr.Bangla.countryCodeToName countryCode)

        "bs" :: "Latn" :: _ ->
            Just (Cldr.Bosnian.Latin.countryCodeToName countryCode)

        "bs" :: _ ->
            Just (Cldr.Bosnian.countryCodeToName countryCode)

        "ca" :: "AD" :: _ ->
            Just (Cldr.Catalan.Andorra.countryCodeToName countryCode)

        "ca" :: "ES" :: "valencia" :: _ ->
            Just (Cldr.Catalan.Spain.Valencia.countryCodeToName countryCode)

        "ca" :: "FR" :: _ ->
            Just (Cldr.Catalan.France.countryCodeToName countryCode)

        "ca" :: "IT" :: _ ->
            Just (Cldr.Catalan.Italy.countryCodeToName countryCode)

        "ca" :: _ ->
            Just (Cldr.Catalan.countryCodeToName countryCode)

        "cs" :: _ ->
            Just (Cldr.Czech.countryCodeToName countryCode)

        "cy" :: _ ->
            Just (Cldr.Welsh.countryCodeToName countryCode)

        "da" :: "GL" :: _ ->
            Just (Cldr.Danish.Greenland.countryCodeToName countryCode)

        "da" :: _ ->
            Just (Cldr.Danish.countryCodeToName countryCode)

        "de" :: "AT" :: _ ->
            Just (Cldr.German.Austria.countryCodeToName countryCode)

        "de" :: "BE" :: _ ->
            Just (Cldr.German.Belgium.countryCodeToName countryCode)

        "de" :: "CH" :: _ ->
            Just (Cldr.German.Switzerland.countryCodeToName countryCode)

        "de" :: "IT" :: _ ->
            Just (Cldr.German.Italy.countryCodeToName countryCode)

        "de" :: "LI" :: _ ->
            Just (Cldr.German.Liechtenstein.countryCodeToName countryCode)

        "de" :: "LU" :: _ ->
            Just (Cldr.German.Luxembourg.countryCodeToName countryCode)

        "de" :: _ ->
            Just (Cldr.German.countryCodeToName countryCode)

        "el" :: "CY" :: _ ->
            Just (Cldr.Greek.Cyprus.countryCodeToName countryCode)

        "el" :: "polyton" :: _ ->
            Just (Cldr.Greek.Polytonic.countryCodeToName countryCode)

        "el" :: _ ->
            Just (Cldr.Greek.countryCodeToName countryCode)

        "en" :: "001" :: _ ->
            Just (Cldr.English.World.countryCodeToName countryCode)

        "en" :: "150" :: _ ->
            Just (Cldr.English.Europe.countryCodeToName countryCode)

        "en" :: "AE" :: _ ->
            Just (Cldr.English.UnitedArabEmirates.countryCodeToName countryCode)

        "en" :: "AG" :: _ ->
            Just (Cldr.English.AntiguaAndBarbuda.countryCodeToName countryCode)

        "en" :: "AI" :: _ ->
            Just (Cldr.English.Anguilla.countryCodeToName countryCode)

        "en" :: "AS" :: _ ->
            Just (Cldr.English.AmericanSamoa.countryCodeToName countryCode)

        "en" :: "AT" :: _ ->
            Just (Cldr.English.Austria.countryCodeToName countryCode)

        "en" :: "AU" :: _ ->
            Just (Cldr.English.Australia.countryCodeToName countryCode)

        "en" :: "BB" :: _ ->
            Just (Cldr.English.Barbados.countryCodeToName countryCode)

        "en" :: "BE" :: _ ->
            Just (Cldr.English.Belgium.countryCodeToName countryCode)

        "en" :: "BI" :: _ ->
            Just (Cldr.English.Burundi.countryCodeToName countryCode)

        "en" :: "BM" :: _ ->
            Just (Cldr.English.Bermuda.countryCodeToName countryCode)

        "en" :: "BS" :: _ ->
            Just (Cldr.English.Bahamas.countryCodeToName countryCode)

        "en" :: "BW" :: _ ->
            Just (Cldr.English.Botswana.countryCodeToName countryCode)

        "en" :: "BZ" :: _ ->
            Just (Cldr.English.Belize.countryCodeToName countryCode)

        "en" :: "CA" :: _ ->
            Just (Cldr.English.Canada.countryCodeToName countryCode)

        "en" :: "CC" :: _ ->
            Just
                (Cldr.English.CocosKeelingIslands.countryCodeToName countryCode)

        "en" :: "CH" :: _ ->
            Just (Cldr.English.Switzerland.countryCodeToName countryCode)

        "en" :: "CK" :: _ ->
            Just (Cldr.English.CookIslands.countryCodeToName countryCode)

        "en" :: "CM" :: _ ->
            Just (Cldr.English.Cameroon.countryCodeToName countryCode)

        "en" :: "CX" :: _ ->
            Just (Cldr.English.ChristmasIsland.countryCodeToName countryCode)

        "en" :: "CY" :: _ ->
            Just (Cldr.English.Cyprus.countryCodeToName countryCode)

        "en" :: "DE" :: _ ->
            Just (Cldr.English.Germany.countryCodeToName countryCode)

        "en" :: "DG" :: _ ->
            Just (Cldr.English.DiegoGarcia.countryCodeToName countryCode)

        "en" :: "DK" :: _ ->
            Just (Cldr.English.Denmark.countryCodeToName countryCode)

        "en" :: "DM" :: _ ->
            Just (Cldr.English.Dominica.countryCodeToName countryCode)

        "en" :: "ER" :: _ ->
            Just (Cldr.English.Eritrea.countryCodeToName countryCode)

        "en" :: "FI" :: _ ->
            Just (Cldr.English.Finland.countryCodeToName countryCode)

        "en" :: "FJ" :: _ ->
            Just (Cldr.English.Fiji.countryCodeToName countryCode)

        "en" :: "FK" :: _ ->
            Just (Cldr.English.FalklandIslands.countryCodeToName countryCode)

        "en" :: "FM" :: _ ->
            Just (Cldr.English.Micronesia.countryCodeToName countryCode)

        "en" :: "GB" :: _ ->
            Just (Cldr.English.UnitedKingdom.countryCodeToName countryCode)

        "en" :: "GD" :: _ ->
            Just (Cldr.English.Grenada.countryCodeToName countryCode)

        "en" :: "GG" :: _ ->
            Just (Cldr.English.Guernsey.countryCodeToName countryCode)

        "en" :: "GH" :: _ ->
            Just (Cldr.English.Ghana.countryCodeToName countryCode)

        "en" :: "GI" :: _ ->
            Just (Cldr.English.Gibraltar.countryCodeToName countryCode)

        "en" :: "GM" :: _ ->
            Just (Cldr.English.Gambia.countryCodeToName countryCode)

        "en" :: "GU" :: _ ->
            Just (Cldr.English.Guam.countryCodeToName countryCode)

        "en" :: "GY" :: _ ->
            Just (Cldr.English.Guyana.countryCodeToName countryCode)

        "en" :: "HK" :: _ ->
            Just (Cldr.English.HongKong.countryCodeToName countryCode)

        "en" :: "IE" :: _ ->
            Just (Cldr.English.Ireland.countryCodeToName countryCode)

        "en" :: "IL" :: _ ->
            Just (Cldr.English.Israel.countryCodeToName countryCode)

        "en" :: "IM" :: _ ->
            Just (Cldr.English.IsleofMan.countryCodeToName countryCode)

        "en" :: "IN" :: _ ->
            Just (Cldr.English.India.countryCodeToName countryCode)

        "en" :: "IO" :: _ ->
            Just
                (Cldr.English.BritishIndianOceanTerritory.countryCodeToName
                    countryCode
                )

        "en" :: "JE" :: _ ->
            Just (Cldr.English.Jersey.countryCodeToName countryCode)

        "en" :: "JM" :: _ ->
            Just (Cldr.English.Jamaica.countryCodeToName countryCode)

        "en" :: "KE" :: _ ->
            Just (Cldr.English.Kenya.countryCodeToName countryCode)

        "en" :: "KI" :: _ ->
            Just (Cldr.English.Kiribati.countryCodeToName countryCode)

        "en" :: "KN" :: _ ->
            Just (Cldr.English.StKittsAndNevis.countryCodeToName countryCode)

        "en" :: "KY" :: _ ->
            Just (Cldr.English.CaymanIslands.countryCodeToName countryCode)

        "en" :: "LC" :: _ ->
            Just (Cldr.English.StLucia.countryCodeToName countryCode)

        "en" :: "LR" :: _ ->
            Just (Cldr.English.Liberia.countryCodeToName countryCode)

        "en" :: "LS" :: _ ->
            Just (Cldr.English.Lesotho.countryCodeToName countryCode)

        "en" :: "MG" :: _ ->
            Just (Cldr.English.Madagascar.countryCodeToName countryCode)

        "en" :: "MH" :: _ ->
            Just (Cldr.English.MarshallIslands.countryCodeToName countryCode)

        "en" :: "MO" :: _ ->
            Just (Cldr.English.Macao.countryCodeToName countryCode)

        "en" :: "MP" :: _ ->
            Just
                (Cldr.English.NorthernMarianaIslands.countryCodeToName
                    countryCode
                )

        "en" :: "MS" :: _ ->
            Just (Cldr.English.Montserrat.countryCodeToName countryCode)

        "en" :: "MT" :: _ ->
            Just (Cldr.English.Malta.countryCodeToName countryCode)

        "en" :: "MU" :: _ ->
            Just (Cldr.English.Mauritius.countryCodeToName countryCode)

        "en" :: "MV" :: _ ->
            Just (Cldr.English.Maldives.countryCodeToName countryCode)

        "en" :: "MW" :: _ ->
            Just (Cldr.English.Malawi.countryCodeToName countryCode)

        "en" :: "MY" :: _ ->
            Just (Cldr.English.Malaysia.countryCodeToName countryCode)

        "en" :: "NA" :: _ ->
            Just (Cldr.English.Namibia.countryCodeToName countryCode)

        "en" :: "NF" :: _ ->
            Just (Cldr.English.NorfolkIsland.countryCodeToName countryCode)

        "en" :: "NG" :: _ ->
            Just (Cldr.English.Nigeria.countryCodeToName countryCode)

        "en" :: "NL" :: _ ->
            Just (Cldr.English.Netherlands.countryCodeToName countryCode)

        "en" :: "NR" :: _ ->
            Just (Cldr.English.Nauru.countryCodeToName countryCode)

        "en" :: "NU" :: _ ->
            Just (Cldr.English.Niue.countryCodeToName countryCode)

        "en" :: "NZ" :: _ ->
            Just (Cldr.English.NewZealand.countryCodeToName countryCode)

        "en" :: "PG" :: _ ->
            Just (Cldr.English.PapuaNewGuinea.countryCodeToName countryCode)

        "en" :: "PH" :: _ ->
            Just (Cldr.English.Philippines.countryCodeToName countryCode)

        "en" :: "PK" :: _ ->
            Just (Cldr.English.Pakistan.countryCodeToName countryCode)

        "en" :: "PN" :: _ ->
            Just (Cldr.English.PitcairnIslands.countryCodeToName countryCode)

        "en" :: "PR" :: _ ->
            Just (Cldr.English.PuertoRico.countryCodeToName countryCode)

        "en" :: "PW" :: _ ->
            Just (Cldr.English.Palau.countryCodeToName countryCode)

        "en" :: "RW" :: _ ->
            Just (Cldr.English.Rwanda.countryCodeToName countryCode)

        "en" :: "SB" :: _ ->
            Just (Cldr.English.SolomonIslands.countryCodeToName countryCode)

        "en" :: "SC" :: _ ->
            Just (Cldr.English.Seychelles.countryCodeToName countryCode)

        "en" :: "SD" :: _ ->
            Just (Cldr.English.Sudan.countryCodeToName countryCode)

        "en" :: "SE" :: _ ->
            Just (Cldr.English.Sweden.countryCodeToName countryCode)

        "en" :: "SG" :: _ ->
            Just (Cldr.English.Singapore.countryCodeToName countryCode)

        "en" :: "SH" :: _ ->
            Just (Cldr.English.StHelena.countryCodeToName countryCode)

        "en" :: "SI" :: _ ->
            Just (Cldr.English.Slovenia.countryCodeToName countryCode)

        "en" :: "SL" :: _ ->
            Just (Cldr.English.SierraLeone.countryCodeToName countryCode)

        "en" :: "SS" :: _ ->
            Just (Cldr.English.SouthSudan.countryCodeToName countryCode)

        "en" :: "SX" :: _ ->
            Just (Cldr.English.SintMaarten.countryCodeToName countryCode)

        "en" :: "SZ" :: _ ->
            Just (Cldr.English.Eswatini.countryCodeToName countryCode)

        "en" :: "TC" :: _ ->
            Just
                (Cldr.English.TurksAndCaicosIslands.countryCodeToName
                    countryCode
                )

        "en" :: "TK" :: _ ->
            Just (Cldr.English.Tokelau.countryCodeToName countryCode)

        "en" :: "TO" :: _ ->
            Just (Cldr.English.Tonga.countryCodeToName countryCode)

        "en" :: "TT" :: _ ->
            Just (Cldr.English.TrinidadAndTobago.countryCodeToName countryCode)

        "en" :: "TV" :: _ ->
            Just (Cldr.English.Tuvalu.countryCodeToName countryCode)

        "en" :: "TZ" :: _ ->
            Just (Cldr.English.Tanzania.countryCodeToName countryCode)

        "en" :: "UG" :: _ ->
            Just (Cldr.English.Uganda.countryCodeToName countryCode)

        "en" :: "UM" :: _ ->
            Just (Cldr.English.USOutlyingIslands.countryCodeToName countryCode)

        "en" :: "VC" :: _ ->
            Just
                (Cldr.English.StVincentAndGrenadines.countryCodeToName
                    countryCode
                )

        "en" :: "VG" :: _ ->
            Just
                (Cldr.English.BritishVirginIslands.countryCodeToName countryCode
                )

        "en" :: "VI" :: _ ->
            Just (Cldr.English.USVirginIslands.countryCodeToName countryCode)

        "en" :: "VU" :: _ ->
            Just (Cldr.English.Vanuatu.countryCodeToName countryCode)

        "en" :: "WS" :: _ ->
            Just (Cldr.English.Samoa.countryCodeToName countryCode)

        "en" :: "ZA" :: _ ->
            Just (Cldr.English.SouthAfrica.countryCodeToName countryCode)

        "en" :: "ZM" :: _ ->
            Just (Cldr.English.Zambia.countryCodeToName countryCode)

        "en" :: "ZW" :: _ ->
            Just (Cldr.English.Zimbabwe.countryCodeToName countryCode)

        "en" :: _ ->
            Just (Cldr.English.countryCodeToName countryCode)

        "es" :: "419" :: _ ->
            Just (Cldr.Spanish.LatinAmerica.countryCodeToName countryCode)

        "es" :: "AR" :: _ ->
            Just (Cldr.Spanish.Argentina.countryCodeToName countryCode)

        "es" :: "BO" :: _ ->
            Just (Cldr.Spanish.Bolivia.countryCodeToName countryCode)

        "es" :: "BR" :: _ ->
            Just (Cldr.Spanish.Brazil.countryCodeToName countryCode)

        "es" :: "BZ" :: _ ->
            Just (Cldr.Spanish.Belize.countryCodeToName countryCode)

        "es" :: "CL" :: _ ->
            Just (Cldr.Spanish.Chile.countryCodeToName countryCode)

        "es" :: "CO" :: _ ->
            Just (Cldr.Spanish.Colombia.countryCodeToName countryCode)

        "es" :: "CR" :: _ ->
            Just (Cldr.Spanish.CostaRica.countryCodeToName countryCode)

        "es" :: "CU" :: _ ->
            Just (Cldr.Spanish.Cuba.countryCodeToName countryCode)

        "es" :: "DO" :: _ ->
            Just (Cldr.Spanish.DominicanRepublic.countryCodeToName countryCode)

        "es" :: "EA" :: _ ->
            Just (Cldr.Spanish.CeutaAndMelilla.countryCodeToName countryCode)

        "es" :: "EC" :: _ ->
            Just (Cldr.Spanish.Ecuador.countryCodeToName countryCode)

        "es" :: "GQ" :: _ ->
            Just (Cldr.Spanish.EquatorialGuinea.countryCodeToName countryCode)

        "es" :: "GT" :: _ ->
            Just (Cldr.Spanish.Guatemala.countryCodeToName countryCode)

        "es" :: "HN" :: _ ->
            Just (Cldr.Spanish.Honduras.countryCodeToName countryCode)

        "es" :: "IC" :: _ ->
            Just (Cldr.Spanish.CanaryIslands.countryCodeToName countryCode)

        "es" :: "MX" :: _ ->
            Just (Cldr.Spanish.Mexico.countryCodeToName countryCode)

        "es" :: "NI" :: _ ->
            Just (Cldr.Spanish.Nicaragua.countryCodeToName countryCode)

        "es" :: "PA" :: _ ->
            Just (Cldr.Spanish.Panama.countryCodeToName countryCode)

        "es" :: "PE" :: _ ->
            Just (Cldr.Spanish.Peru.countryCodeToName countryCode)

        "es" :: "PH" :: _ ->
            Just (Cldr.Spanish.Philippines.countryCodeToName countryCode)

        "es" :: "PR" :: _ ->
            Just (Cldr.Spanish.PuertoRico.countryCodeToName countryCode)

        "es" :: "PY" :: _ ->
            Just (Cldr.Spanish.Paraguay.countryCodeToName countryCode)

        "es" :: "SV" :: _ ->
            Just (Cldr.Spanish.ElSalvador.countryCodeToName countryCode)

        "es" :: "US" :: _ ->
            Just (Cldr.Spanish.UnitedStates.countryCodeToName countryCode)

        "es" :: "UY" :: _ ->
            Just (Cldr.Spanish.Uruguay.countryCodeToName countryCode)

        "es" :: "VE" :: _ ->
            Just (Cldr.Spanish.Venezuela.countryCodeToName countryCode)

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

        "fr" :: "BF" :: _ ->
            Just (Cldr.French.BurkinaFaso.countryCodeToName countryCode)

        "fr" :: "BI" :: _ ->
            Just (Cldr.French.Burundi.countryCodeToName countryCode)

        "fr" :: "BJ" :: _ ->
            Just (Cldr.French.Benin.countryCodeToName countryCode)

        "fr" :: "BL" :: _ ->
            Just (Cldr.French.StBarthélemy.countryCodeToName countryCode)

        "fr" :: "CA" :: _ ->
            Just (Cldr.French.Canada.countryCodeToName countryCode)

        "fr" :: "CD" :: _ ->
            Just (Cldr.French.CongoDRC.countryCodeToName countryCode)

        "fr" :: "CF" :: _ ->
            Just
                (Cldr.French.CentralAfricanRepublic.countryCodeToName
                    countryCode
                )

        "fr" :: "CG" :: _ ->
            Just (Cldr.French.CongoRepublic.countryCodeToName countryCode)

        "fr" :: "CH" :: _ ->
            Just (Cldr.French.Switzerland.countryCodeToName countryCode)

        "fr" :: "CI" :: _ ->
            Just (Cldr.French.CôtedIvoire.countryCodeToName countryCode)

        "fr" :: "CM" :: _ ->
            Just (Cldr.French.Cameroon.countryCodeToName countryCode)

        "fr" :: "DJ" :: _ ->
            Just (Cldr.French.Djibouti.countryCodeToName countryCode)

        "fr" :: "DZ" :: _ ->
            Just (Cldr.French.Algeria.countryCodeToName countryCode)

        "fr" :: "GA" :: _ ->
            Just (Cldr.French.Gabon.countryCodeToName countryCode)

        "fr" :: "GF" :: _ ->
            Just (Cldr.French.FrenchGuiana.countryCodeToName countryCode)

        "fr" :: "GN" :: _ ->
            Just (Cldr.French.Guinea.countryCodeToName countryCode)

        "fr" :: "GP" :: _ ->
            Just (Cldr.French.Guadeloupe.countryCodeToName countryCode)

        "fr" :: "GQ" :: _ ->
            Just (Cldr.French.EquatorialGuinea.countryCodeToName countryCode)

        "fr" :: "HT" :: _ ->
            Just (Cldr.French.Haiti.countryCodeToName countryCode)

        "fr" :: "KM" :: _ ->
            Just (Cldr.French.Comoros.countryCodeToName countryCode)

        "fr" :: "LU" :: _ ->
            Just (Cldr.French.Luxembourg.countryCodeToName countryCode)

        "fr" :: "MA" :: _ ->
            Just (Cldr.French.Morocco.countryCodeToName countryCode)

        "fr" :: "MC" :: _ ->
            Just (Cldr.French.Monaco.countryCodeToName countryCode)

        "fr" :: "MF" :: _ ->
            Just (Cldr.French.StMartin.countryCodeToName countryCode)

        "fr" :: "MG" :: _ ->
            Just (Cldr.French.Madagascar.countryCodeToName countryCode)

        "fr" :: "ML" :: _ ->
            Just (Cldr.French.Mali.countryCodeToName countryCode)

        "fr" :: "MQ" :: _ ->
            Just (Cldr.French.Martinique.countryCodeToName countryCode)

        "fr" :: "MR" :: _ ->
            Just (Cldr.French.Mauritania.countryCodeToName countryCode)

        "fr" :: "MU" :: _ ->
            Just (Cldr.French.Mauritius.countryCodeToName countryCode)

        "fr" :: "NC" :: _ ->
            Just (Cldr.French.NewCaledonia.countryCodeToName countryCode)

        "fr" :: "NE" :: _ ->
            Just (Cldr.French.Niger.countryCodeToName countryCode)

        "fr" :: "PF" :: _ ->
            Just (Cldr.French.FrenchPolynesia.countryCodeToName countryCode)

        "fr" :: "PM" :: _ ->
            Just (Cldr.French.StPierreAndMiquelon.countryCodeToName countryCode)

        "fr" :: "RE" :: _ ->
            Just (Cldr.French.Réunion.countryCodeToName countryCode)

        "fr" :: "RW" :: _ ->
            Just (Cldr.French.Rwanda.countryCodeToName countryCode)

        "fr" :: "SC" :: _ ->
            Just (Cldr.French.Seychelles.countryCodeToName countryCode)

        "fr" :: "SN" :: _ ->
            Just (Cldr.French.Senegal.countryCodeToName countryCode)

        "fr" :: "SY" :: _ ->
            Just (Cldr.French.Syria.countryCodeToName countryCode)

        "fr" :: "TD" :: _ ->
            Just (Cldr.French.Chad.countryCodeToName countryCode)

        "fr" :: "TG" :: _ ->
            Just (Cldr.French.Togo.countryCodeToName countryCode)

        "fr" :: "TN" :: _ ->
            Just (Cldr.French.Tunisia.countryCodeToName countryCode)

        "fr" :: "VU" :: _ ->
            Just (Cldr.French.Vanuatu.countryCodeToName countryCode)

        "fr" :: "WF" :: _ ->
            Just (Cldr.French.WallisAndFutuna.countryCodeToName countryCode)

        "fr" :: "YT" :: _ ->
            Just (Cldr.French.Mayotte.countryCodeToName countryCode)

        "fr" :: _ ->
            Just (Cldr.French.countryCodeToName countryCode)

        "ga" :: "GB" :: _ ->
            Just (Cldr.Irish.UnitedKingdom.countryCodeToName countryCode)

        "ga" :: _ ->
            Just (Cldr.Irish.countryCodeToName countryCode)

        "gd" :: _ ->
            Just (Cldr.Gaelic.Scottish.countryCodeToName countryCode)

        "gl" :: _ ->
            Just (Cldr.Galician.countryCodeToName countryCode)

        "gu" :: _ ->
            Just (Cldr.Gujarati.countryCodeToName countryCode)

        "ha" :: "GH" :: _ ->
            Just (Cldr.Hausa.Ghana.countryCodeToName countryCode)

        "ha" :: "NE" :: _ ->
            Just (Cldr.Hausa.Niger.countryCodeToName countryCode)

        "ha" :: _ ->
            Just (Cldr.Hausa.countryCodeToName countryCode)

        "he" :: _ ->
            Just (Cldr.Hebrew.countryCodeToName countryCode)

        "hi" :: "Latn" :: _ ->
            Just (Cldr.Hindi.Latin.countryCodeToName countryCode)

        "hi" :: _ ->
            Just (Cldr.Hindi.countryCodeToName countryCode)

        "hr" :: "BA" :: _ ->
            Just
                (Cldr.Croatian.BosniaAndHerzegovina.countryCodeToName
                    countryCode
                )

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

        "it" :: "CH" :: _ ->
            Just (Cldr.Italian.Switzerland.countryCodeToName countryCode)

        "it" :: "SM" :: _ ->
            Just (Cldr.Italian.SanMarino.countryCodeToName countryCode)

        "it" :: "VA" :: _ ->
            Just (Cldr.Italian.VaticanCity.countryCodeToName countryCode)

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

        "ms" :: "BN" :: _ ->
            Just (Cldr.Malay.Brunei.countryCodeToName countryCode)

        "ms" :: "ID" :: _ ->
            Just (Cldr.Malay.Indonesia.countryCodeToName countryCode)

        "ms" :: "SG" :: _ ->
            Just (Cldr.Malay.Singapore.countryCodeToName countryCode)

        "ms" :: _ ->
            Just (Cldr.Malay.countryCodeToName countryCode)

        "my" :: _ ->
            Just (Cldr.Burmese.countryCodeToName countryCode)

        "nb" :: "SJ" :: _ ->
            Just
                (Cldr.Norwegian.Bokmål.SvalbardAndJanMayen.countryCodeToName
                    countryCode
                )

        "nb" :: _ ->
            Just (Cldr.Norwegian.Bokmål.countryCodeToName countryCode)

        "ne" :: "IN" :: _ ->
            Just (Cldr.Nepali.India.countryCodeToName countryCode)

        "ne" :: _ ->
            Just (Cldr.Nepali.countryCodeToName countryCode)

        "nl" :: "AW" :: _ ->
            Just (Cldr.Dutch.Aruba.countryCodeToName countryCode)

        "nl" :: "BE" :: _ ->
            Just (Cldr.Dutch.Belgium.countryCodeToName countryCode)

        "nl" :: "BQ" :: _ ->
            Just (Cldr.Dutch.CaribbeanNetherlands.countryCodeToName countryCode)

        "nl" :: "CW" :: _ ->
            Just (Cldr.Dutch.Curaçao.countryCodeToName countryCode)

        "nl" :: "SR" :: _ ->
            Just (Cldr.Dutch.Suriname.countryCodeToName countryCode)

        "nl" :: "SX" :: _ ->
            Just (Cldr.Dutch.SintMaarten.countryCodeToName countryCode)

        "nl" :: _ ->
            Just (Cldr.Dutch.countryCodeToName countryCode)

        "nn" :: _ ->
            Just (Cldr.Norwegian.Nynorsk.countryCodeToName countryCode)

        "no" :: _ ->
            Just (Cldr.Norwegian.countryCodeToName countryCode)

        "or" :: _ ->
            Just (Cldr.Odia.countryCodeToName countryCode)

        "pa" :: "Guru" :: _ ->
            Just (Cldr.Punjabi.Gurmukhi.countryCodeToName countryCode)

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
            Just (Cldr.Portuguese.Angola.countryCodeToName countryCode)

        "pt" :: "CH" :: _ ->
            Just (Cldr.Portuguese.Switzerland.countryCodeToName countryCode)

        "pt" :: "CV" :: _ ->
            Just (Cldr.Portuguese.CapeVerde.countryCodeToName countryCode)

        "pt" :: "GQ" :: _ ->
            Just
                (Cldr.Portuguese.EquatorialGuinea.countryCodeToName countryCode)

        "pt" :: "GW" :: _ ->
            Just (Cldr.Portuguese.GuineaBissau.countryCodeToName countryCode)

        "pt" :: "LU" :: _ ->
            Just (Cldr.Portuguese.Luxembourg.countryCodeToName countryCode)

        "pt" :: "MO" :: _ ->
            Just (Cldr.Portuguese.Macao.countryCodeToName countryCode)

        "pt" :: "MZ" :: _ ->
            Just (Cldr.Portuguese.Mozambique.countryCodeToName countryCode)

        "pt" :: "PT" :: _ ->
            Just (Cldr.Portuguese.Portugal.countryCodeToName countryCode)

        "pt" :: "ST" :: _ ->
            Just
                (Cldr.Portuguese.SãoToméAndPríncipe.countryCodeToName
                    countryCode
                )

        "pt" :: "TL" :: _ ->
            Just (Cldr.Portuguese.EastTimor.countryCodeToName countryCode)

        "pt" :: _ ->
            Just (Cldr.Portuguese.countryCodeToName countryCode)

        "ro" :: "MD" :: _ ->
            Just (Cldr.Romanian.Moldova.countryCodeToName countryCode)

        "ro" :: _ ->
            Just (Cldr.Romanian.countryCodeToName countryCode)

        "ru" :: "BY" :: _ ->
            Just (Cldr.Russian.Belarus.countryCodeToName countryCode)

        "ru" :: "KG" :: _ ->
            Just (Cldr.Russian.Kyrgyzstan.countryCodeToName countryCode)

        "ru" :: "KZ" :: _ ->
            Just (Cldr.Russian.Kazakhstan.countryCodeToName countryCode)

        "ru" :: "MD" :: _ ->
            Just (Cldr.Russian.Moldova.countryCodeToName countryCode)

        "ru" :: "UA" :: _ ->
            Just (Cldr.Russian.Ukraine.countryCodeToName countryCode)

        "ru" :: _ ->
            Just (Cldr.Russian.countryCodeToName countryCode)

        "sd" :: "Arab" :: _ ->
            Just (Cldr.Sindhi.Arabic.countryCodeToName countryCode)

        "sd" :: _ ->
            Just (Cldr.Sindhi.countryCodeToName countryCode)

        "si" :: _ ->
            Just (Cldr.Sinhala.countryCodeToName countryCode)

        "sk" :: _ ->
            Just (Cldr.Slovak.countryCodeToName countryCode)

        "sl" :: _ ->
            Just (Cldr.Slovenian.countryCodeToName countryCode)

        "so" :: "DJ" :: _ ->
            Just (Cldr.Somali.Djibouti.countryCodeToName countryCode)

        "so" :: "ET" :: _ ->
            Just (Cldr.Somali.Ethiopia.countryCodeToName countryCode)

        "so" :: "KE" :: _ ->
            Just (Cldr.Somali.Kenya.countryCodeToName countryCode)

        "so" :: _ ->
            Just (Cldr.Somali.countryCodeToName countryCode)

        "sq" :: "MK" :: _ ->
            Just (Cldr.Albanian.NorthMacedonia.countryCodeToName countryCode)

        "sq" :: "XK" :: _ ->
            Just (Cldr.Albanian.Kosovo.countryCodeToName countryCode)

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

        "sr" :: "Cyrl" :: _ ->
            Just (Cldr.Serbian.Cyrillic.countryCodeToName countryCode)

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

        "sv" :: "AX" :: _ ->
            Just (Cldr.Swedish.ÅlandIslands.countryCodeToName countryCode)

        "sv" :: "FI" :: _ ->
            Just (Cldr.Swedish.Finland.countryCodeToName countryCode)

        "sv" :: _ ->
            Just (Cldr.Swedish.countryCodeToName countryCode)

        "sw" :: "CD" :: _ ->
            Just (Cldr.Swahili.CongoDRC.countryCodeToName countryCode)

        "sw" :: "KE" :: _ ->
            Just (Cldr.Swahili.Kenya.countryCodeToName countryCode)

        "sw" :: "UG" :: _ ->
            Just (Cldr.Swahili.Uganda.countryCodeToName countryCode)

        "sw" :: _ ->
            Just (Cldr.Swahili.countryCodeToName countryCode)

        "ta" :: "LK" :: _ ->
            Just (Cldr.Tamil.SriLanka.countryCodeToName countryCode)

        "ta" :: "MY" :: _ ->
            Just (Cldr.Tamil.Malaysia.countryCodeToName countryCode)

        "ta" :: "SG" :: _ ->
            Just (Cldr.Tamil.Singapore.countryCodeToName countryCode)

        "ta" :: _ ->
            Just (Cldr.Tamil.countryCodeToName countryCode)

        "te" :: _ ->
            Just (Cldr.Telugu.countryCodeToName countryCode)

        "th" :: _ ->
            Just (Cldr.Thai.countryCodeToName countryCode)

        "tk" :: _ ->
            Just (Cldr.Turkmen.countryCodeToName countryCode)

        "tr" :: "CY" :: _ ->
            Just (Cldr.Turkish.Cyprus.countryCodeToName countryCode)

        "tr" :: _ ->
            Just (Cldr.Turkish.countryCodeToName countryCode)

        "uk" :: _ ->
            Just (Cldr.Ukrainian.countryCodeToName countryCode)

        "ur" :: "IN" :: _ ->
            Just (Cldr.Urdu.India.countryCodeToName countryCode)

        "ur" :: _ ->
            Just (Cldr.Urdu.countryCodeToName countryCode)

        "uz" :: "Latn" :: _ ->
            Just (Cldr.Uzbek.Latin.countryCodeToName countryCode)

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

        "yue" :: "Hant" :: _ ->
            Just (Cldr.Cantonese.Traditional.countryCodeToName countryCode)

        "yue" :: _ ->
            Just (Cldr.Cantonese.countryCodeToName countryCode)

        "zh" :: "Hans" :: "HK" :: _ ->
            Just
                (Cldr.Chinese.Simplified.HongKong.countryCodeToName countryCode)

        "zh" :: "Hans" :: "MO" :: _ ->
            Just (Cldr.Chinese.Simplified.Macao.countryCodeToName countryCode)

        "zh" :: "Hans" :: "SG" :: _ ->
            Just
                (Cldr.Chinese.Simplified.Singapore.countryCodeToName countryCode
                )

        "zh" :: "Hans" :: _ ->
            Just (Cldr.Chinese.Simplified.countryCodeToName countryCode)

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