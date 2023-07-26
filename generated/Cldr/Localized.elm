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
import Cldr.Arabic.PalestinianTerritories
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
import Cldr.Catalan.Valencia
import Cldr.Chinese
import Cldr.Chinese.Simplified
import Cldr.Chinese.Simplified.HongKongSARChina
import Cldr.Chinese.Simplified.MacaoSARChina
import Cldr.Chinese.Simplified.Singapore
import Cldr.Chinese.Traditional
import Cldr.Chinese.Traditional.HongKongSARChina
import Cldr.Chinese.Traditional.MacaoSARChina
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
import Cldr.English.HongKongSARChina
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
import Cldr.English.MacaoSARChina
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
import Cldr.French.CongoBrazzaville
import Cldr.French.CongoKinshasa
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
import Cldr.Portuguese.EquatorialGuinea
import Cldr.Portuguese.GuineaBissau
import Cldr.Portuguese.Luxembourg
import Cldr.Portuguese.MacaoSARChina
import Cldr.Portuguese.Mozambique
import Cldr.Portuguese.Portugal
import Cldr.Portuguese.Switzerland
import Cldr.Portuguese.SãoToméAndPríncipe
import Cldr.Portuguese.TimorLeste
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
import Cldr.Swahili.CongoKinshasa
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


countryCodeToName : Cldr.Locale -> Cldr.CountryCode -> String
countryCodeToName locale countryCode =
    case locale of
        Cldr.Af ->
            Cldr.Afrikaans.countryCodeToName countryCode

        Cldr.AfNA ->
            Cldr.Afrikaans.Namibia.countryCodeToName countryCode

        Cldr.Am ->
            Cldr.Amharic.countryCodeToName countryCode

        Cldr.Ar ->
            Cldr.Arabic.countryCodeToName countryCode

        Cldr.ArAE ->
            Cldr.Arabic.UnitedArabEmirates.countryCodeToName countryCode

        Cldr.ArBH ->
            Cldr.Arabic.Bahrain.countryCodeToName countryCode

        Cldr.ArDJ ->
            Cldr.Arabic.Djibouti.countryCodeToName countryCode

        Cldr.ArDZ ->
            Cldr.Arabic.Algeria.countryCodeToName countryCode

        Cldr.ArEG ->
            Cldr.Arabic.Egypt.countryCodeToName countryCode

        Cldr.ArEH ->
            Cldr.Arabic.WesternSahara.countryCodeToName countryCode

        Cldr.ArER ->
            Cldr.Arabic.Eritrea.countryCodeToName countryCode

        Cldr.ArIL ->
            Cldr.Arabic.Israel.countryCodeToName countryCode

        Cldr.ArIQ ->
            Cldr.Arabic.Iraq.countryCodeToName countryCode

        Cldr.ArJO ->
            Cldr.Arabic.Jordan.countryCodeToName countryCode

        Cldr.ArKM ->
            Cldr.Arabic.Comoros.countryCodeToName countryCode

        Cldr.ArKW ->
            Cldr.Arabic.Kuwait.countryCodeToName countryCode

        Cldr.ArLB ->
            Cldr.Arabic.Lebanon.countryCodeToName countryCode

        Cldr.ArLY ->
            Cldr.Arabic.Libya.countryCodeToName countryCode

        Cldr.ArMA ->
            Cldr.Arabic.Morocco.countryCodeToName countryCode

        Cldr.ArMR ->
            Cldr.Arabic.Mauritania.countryCodeToName countryCode

        Cldr.ArOM ->
            Cldr.Arabic.Oman.countryCodeToName countryCode

        Cldr.ArPS ->
            Cldr.Arabic.PalestinianTerritories.countryCodeToName countryCode

        Cldr.ArQA ->
            Cldr.Arabic.Qatar.countryCodeToName countryCode

        Cldr.ArSA ->
            Cldr.Arabic.SaudiArabia.countryCodeToName countryCode

        Cldr.ArSD ->
            Cldr.Arabic.Sudan.countryCodeToName countryCode

        Cldr.ArSO ->
            Cldr.Arabic.Somalia.countryCodeToName countryCode

        Cldr.ArSS ->
            Cldr.Arabic.SouthSudan.countryCodeToName countryCode

        Cldr.ArSY ->
            Cldr.Arabic.Syria.countryCodeToName countryCode

        Cldr.ArTD ->
            Cldr.Arabic.Chad.countryCodeToName countryCode

        Cldr.ArTN ->
            Cldr.Arabic.Tunisia.countryCodeToName countryCode

        Cldr.ArYE ->
            Cldr.Arabic.Yemen.countryCodeToName countryCode

        Cldr.As ->
            Cldr.Assamese.countryCodeToName countryCode

        Cldr.Az ->
            Cldr.Azerbaijani.countryCodeToName countryCode

        Cldr.AzLatn ->
            Cldr.Azerbaijani.Latin.countryCodeToName countryCode

        Cldr.Be ->
            Cldr.Belarusian.countryCodeToName countryCode

        Cldr.BeTarask ->
            Cldr.Belarusian.Taraškievica.countryCodeToName countryCode

        Cldr.Bg ->
            Cldr.Bulgarian.countryCodeToName countryCode

        Cldr.Bn ->
            Cldr.Bangla.countryCodeToName countryCode

        Cldr.BnIN ->
            Cldr.Bangla.India.countryCodeToName countryCode

        Cldr.Bs ->
            Cldr.Bosnian.countryCodeToName countryCode

        Cldr.BsLatn ->
            Cldr.Bosnian.Latin.countryCodeToName countryCode

        Cldr.Ca ->
            Cldr.Catalan.countryCodeToName countryCode

        Cldr.CaAD ->
            Cldr.Catalan.Andorra.countryCodeToName countryCode

        Cldr.CaESValencia ->
            Cldr.Catalan.Valencia.countryCodeToName countryCode

        Cldr.CaFR ->
            Cldr.Catalan.France.countryCodeToName countryCode

        Cldr.CaIT ->
            Cldr.Catalan.Italy.countryCodeToName countryCode

        Cldr.Cs ->
            Cldr.Czech.countryCodeToName countryCode

        Cldr.Cy ->
            Cldr.Welsh.countryCodeToName countryCode

        Cldr.Da ->
            Cldr.Danish.countryCodeToName countryCode

        Cldr.DaGL ->
            Cldr.Danish.Greenland.countryCodeToName countryCode

        Cldr.De ->
            Cldr.German.countryCodeToName countryCode

        Cldr.DeAT ->
            Cldr.German.Austria.countryCodeToName countryCode

        Cldr.DeBE ->
            Cldr.German.Belgium.countryCodeToName countryCode

        Cldr.DeCH ->
            Cldr.German.Switzerland.countryCodeToName countryCode

        Cldr.DeIT ->
            Cldr.German.Italy.countryCodeToName countryCode

        Cldr.DeLI ->
            Cldr.German.Liechtenstein.countryCodeToName countryCode

        Cldr.DeLU ->
            Cldr.German.Luxembourg.countryCodeToName countryCode

        Cldr.El ->
            Cldr.Greek.countryCodeToName countryCode

        Cldr.ElCY ->
            Cldr.Greek.Cyprus.countryCodeToName countryCode

        Cldr.ElPolyton ->
            Cldr.Greek.Polytonic.countryCodeToName countryCode

        Cldr.En ->
            Cldr.English.countryCodeToName countryCode

        Cldr.En001 ->
            Cldr.English.World.countryCodeToName countryCode

        Cldr.En150 ->
            Cldr.English.Europe.countryCodeToName countryCode

        Cldr.EnAE ->
            Cldr.English.UnitedArabEmirates.countryCodeToName countryCode

        Cldr.EnAG ->
            Cldr.English.AntiguaAndBarbuda.countryCodeToName countryCode

        Cldr.EnAI ->
            Cldr.English.Anguilla.countryCodeToName countryCode

        Cldr.EnAS ->
            Cldr.English.AmericanSamoa.countryCodeToName countryCode

        Cldr.EnAT ->
            Cldr.English.Austria.countryCodeToName countryCode

        Cldr.EnAU ->
            Cldr.English.Australia.countryCodeToName countryCode

        Cldr.EnBB ->
            Cldr.English.Barbados.countryCodeToName countryCode

        Cldr.EnBE ->
            Cldr.English.Belgium.countryCodeToName countryCode

        Cldr.EnBI ->
            Cldr.English.Burundi.countryCodeToName countryCode

        Cldr.EnBM ->
            Cldr.English.Bermuda.countryCodeToName countryCode

        Cldr.EnBS ->
            Cldr.English.Bahamas.countryCodeToName countryCode

        Cldr.EnBW ->
            Cldr.English.Botswana.countryCodeToName countryCode

        Cldr.EnBZ ->
            Cldr.English.Belize.countryCodeToName countryCode

        Cldr.EnCA ->
            Cldr.English.Canada.countryCodeToName countryCode

        Cldr.EnCC ->
            Cldr.English.CocosKeelingIslands.countryCodeToName countryCode

        Cldr.EnCH ->
            Cldr.English.Switzerland.countryCodeToName countryCode

        Cldr.EnCK ->
            Cldr.English.CookIslands.countryCodeToName countryCode

        Cldr.EnCM ->
            Cldr.English.Cameroon.countryCodeToName countryCode

        Cldr.EnCX ->
            Cldr.English.ChristmasIsland.countryCodeToName countryCode

        Cldr.EnCY ->
            Cldr.English.Cyprus.countryCodeToName countryCode

        Cldr.EnDE ->
            Cldr.English.Germany.countryCodeToName countryCode

        Cldr.EnDG ->
            Cldr.English.DiegoGarcia.countryCodeToName countryCode

        Cldr.EnDK ->
            Cldr.English.Denmark.countryCodeToName countryCode

        Cldr.EnDM ->
            Cldr.English.Dominica.countryCodeToName countryCode

        Cldr.EnER ->
            Cldr.English.Eritrea.countryCodeToName countryCode

        Cldr.EnFI ->
            Cldr.English.Finland.countryCodeToName countryCode

        Cldr.EnFJ ->
            Cldr.English.Fiji.countryCodeToName countryCode

        Cldr.EnFK ->
            Cldr.English.FalklandIslands.countryCodeToName countryCode

        Cldr.EnFM ->
            Cldr.English.Micronesia.countryCodeToName countryCode

        Cldr.EnGB ->
            Cldr.English.UnitedKingdom.countryCodeToName countryCode

        Cldr.EnGD ->
            Cldr.English.Grenada.countryCodeToName countryCode

        Cldr.EnGG ->
            Cldr.English.Guernsey.countryCodeToName countryCode

        Cldr.EnGH ->
            Cldr.English.Ghana.countryCodeToName countryCode

        Cldr.EnGI ->
            Cldr.English.Gibraltar.countryCodeToName countryCode

        Cldr.EnGM ->
            Cldr.English.Gambia.countryCodeToName countryCode

        Cldr.EnGU ->
            Cldr.English.Guam.countryCodeToName countryCode

        Cldr.EnGY ->
            Cldr.English.Guyana.countryCodeToName countryCode

        Cldr.EnHK ->
            Cldr.English.HongKongSARChina.countryCodeToName countryCode

        Cldr.EnIE ->
            Cldr.English.Ireland.countryCodeToName countryCode

        Cldr.EnIL ->
            Cldr.English.Israel.countryCodeToName countryCode

        Cldr.EnIM ->
            Cldr.English.IsleofMan.countryCodeToName countryCode

        Cldr.EnIN ->
            Cldr.English.India.countryCodeToName countryCode

        Cldr.EnIO ->
            Cldr.English.BritishIndianOceanTerritory.countryCodeToName
                countryCode

        Cldr.EnJE ->
            Cldr.English.Jersey.countryCodeToName countryCode

        Cldr.EnJM ->
            Cldr.English.Jamaica.countryCodeToName countryCode

        Cldr.EnKE ->
            Cldr.English.Kenya.countryCodeToName countryCode

        Cldr.EnKI ->
            Cldr.English.Kiribati.countryCodeToName countryCode

        Cldr.EnKN ->
            Cldr.English.StKittsAndNevis.countryCodeToName countryCode

        Cldr.EnKY ->
            Cldr.English.CaymanIslands.countryCodeToName countryCode

        Cldr.EnLC ->
            Cldr.English.StLucia.countryCodeToName countryCode

        Cldr.EnLR ->
            Cldr.English.Liberia.countryCodeToName countryCode

        Cldr.EnLS ->
            Cldr.English.Lesotho.countryCodeToName countryCode

        Cldr.EnMG ->
            Cldr.English.Madagascar.countryCodeToName countryCode

        Cldr.EnMH ->
            Cldr.English.MarshallIslands.countryCodeToName countryCode

        Cldr.EnMO ->
            Cldr.English.MacaoSARChina.countryCodeToName countryCode

        Cldr.EnMP ->
            Cldr.English.NorthernMarianaIslands.countryCodeToName countryCode

        Cldr.EnMS ->
            Cldr.English.Montserrat.countryCodeToName countryCode

        Cldr.EnMT ->
            Cldr.English.Malta.countryCodeToName countryCode

        Cldr.EnMU ->
            Cldr.English.Mauritius.countryCodeToName countryCode

        Cldr.EnMV ->
            Cldr.English.Maldives.countryCodeToName countryCode

        Cldr.EnMW ->
            Cldr.English.Malawi.countryCodeToName countryCode

        Cldr.EnMY ->
            Cldr.English.Malaysia.countryCodeToName countryCode

        Cldr.EnNA ->
            Cldr.English.Namibia.countryCodeToName countryCode

        Cldr.EnNF ->
            Cldr.English.NorfolkIsland.countryCodeToName countryCode

        Cldr.EnNG ->
            Cldr.English.Nigeria.countryCodeToName countryCode

        Cldr.EnNL ->
            Cldr.English.Netherlands.countryCodeToName countryCode

        Cldr.EnNR ->
            Cldr.English.Nauru.countryCodeToName countryCode

        Cldr.EnNU ->
            Cldr.English.Niue.countryCodeToName countryCode

        Cldr.EnNZ ->
            Cldr.English.NewZealand.countryCodeToName countryCode

        Cldr.EnPG ->
            Cldr.English.PapuaNewGuinea.countryCodeToName countryCode

        Cldr.EnPH ->
            Cldr.English.Philippines.countryCodeToName countryCode

        Cldr.EnPK ->
            Cldr.English.Pakistan.countryCodeToName countryCode

        Cldr.EnPN ->
            Cldr.English.PitcairnIslands.countryCodeToName countryCode

        Cldr.EnPR ->
            Cldr.English.PuertoRico.countryCodeToName countryCode

        Cldr.EnPW ->
            Cldr.English.Palau.countryCodeToName countryCode

        Cldr.EnRW ->
            Cldr.English.Rwanda.countryCodeToName countryCode

        Cldr.EnSB ->
            Cldr.English.SolomonIslands.countryCodeToName countryCode

        Cldr.EnSC ->
            Cldr.English.Seychelles.countryCodeToName countryCode

        Cldr.EnSD ->
            Cldr.English.Sudan.countryCodeToName countryCode

        Cldr.EnSE ->
            Cldr.English.Sweden.countryCodeToName countryCode

        Cldr.EnSG ->
            Cldr.English.Singapore.countryCodeToName countryCode

        Cldr.EnSH ->
            Cldr.English.StHelena.countryCodeToName countryCode

        Cldr.EnSI ->
            Cldr.English.Slovenia.countryCodeToName countryCode

        Cldr.EnSL ->
            Cldr.English.SierraLeone.countryCodeToName countryCode

        Cldr.EnSS ->
            Cldr.English.SouthSudan.countryCodeToName countryCode

        Cldr.EnSX ->
            Cldr.English.SintMaarten.countryCodeToName countryCode

        Cldr.EnSZ ->
            Cldr.English.Eswatini.countryCodeToName countryCode

        Cldr.EnTC ->
            Cldr.English.TurksAndCaicosIslands.countryCodeToName countryCode

        Cldr.EnTK ->
            Cldr.English.Tokelau.countryCodeToName countryCode

        Cldr.EnTO ->
            Cldr.English.Tonga.countryCodeToName countryCode

        Cldr.EnTT ->
            Cldr.English.TrinidadAndTobago.countryCodeToName countryCode

        Cldr.EnTV ->
            Cldr.English.Tuvalu.countryCodeToName countryCode

        Cldr.EnTZ ->
            Cldr.English.Tanzania.countryCodeToName countryCode

        Cldr.EnUG ->
            Cldr.English.Uganda.countryCodeToName countryCode

        Cldr.EnUM ->
            Cldr.English.USOutlyingIslands.countryCodeToName countryCode

        Cldr.EnVC ->
            Cldr.English.StVincentAndGrenadines.countryCodeToName countryCode

        Cldr.EnVG ->
            Cldr.English.BritishVirginIslands.countryCodeToName countryCode

        Cldr.EnVI ->
            Cldr.English.USVirginIslands.countryCodeToName countryCode

        Cldr.EnVU ->
            Cldr.English.Vanuatu.countryCodeToName countryCode

        Cldr.EnWS ->
            Cldr.English.Samoa.countryCodeToName countryCode

        Cldr.EnZA ->
            Cldr.English.SouthAfrica.countryCodeToName countryCode

        Cldr.EnZM ->
            Cldr.English.Zambia.countryCodeToName countryCode

        Cldr.EnZW ->
            Cldr.English.Zimbabwe.countryCodeToName countryCode

        Cldr.Es ->
            Cldr.Spanish.countryCodeToName countryCode

        Cldr.Es419 ->
            Cldr.Spanish.LatinAmerica.countryCodeToName countryCode

        Cldr.EsAR ->
            Cldr.Spanish.Argentina.countryCodeToName countryCode

        Cldr.EsBO ->
            Cldr.Spanish.Bolivia.countryCodeToName countryCode

        Cldr.EsBR ->
            Cldr.Spanish.Brazil.countryCodeToName countryCode

        Cldr.EsBZ ->
            Cldr.Spanish.Belize.countryCodeToName countryCode

        Cldr.EsCL ->
            Cldr.Spanish.Chile.countryCodeToName countryCode

        Cldr.EsCO ->
            Cldr.Spanish.Colombia.countryCodeToName countryCode

        Cldr.EsCR ->
            Cldr.Spanish.CostaRica.countryCodeToName countryCode

        Cldr.EsCU ->
            Cldr.Spanish.Cuba.countryCodeToName countryCode

        Cldr.EsDO ->
            Cldr.Spanish.DominicanRepublic.countryCodeToName countryCode

        Cldr.EsEA ->
            Cldr.Spanish.CeutaAndMelilla.countryCodeToName countryCode

        Cldr.EsEC ->
            Cldr.Spanish.Ecuador.countryCodeToName countryCode

        Cldr.EsGQ ->
            Cldr.Spanish.EquatorialGuinea.countryCodeToName countryCode

        Cldr.EsGT ->
            Cldr.Spanish.Guatemala.countryCodeToName countryCode

        Cldr.EsHN ->
            Cldr.Spanish.Honduras.countryCodeToName countryCode

        Cldr.EsIC ->
            Cldr.Spanish.CanaryIslands.countryCodeToName countryCode

        Cldr.EsMX ->
            Cldr.Spanish.Mexico.countryCodeToName countryCode

        Cldr.EsNI ->
            Cldr.Spanish.Nicaragua.countryCodeToName countryCode

        Cldr.EsPA ->
            Cldr.Spanish.Panama.countryCodeToName countryCode

        Cldr.EsPE ->
            Cldr.Spanish.Peru.countryCodeToName countryCode

        Cldr.EsPH ->
            Cldr.Spanish.Philippines.countryCodeToName countryCode

        Cldr.EsPR ->
            Cldr.Spanish.PuertoRico.countryCodeToName countryCode

        Cldr.EsPY ->
            Cldr.Spanish.Paraguay.countryCodeToName countryCode

        Cldr.EsSV ->
            Cldr.Spanish.ElSalvador.countryCodeToName countryCode

        Cldr.EsUS ->
            Cldr.Spanish.UnitedStates.countryCodeToName countryCode

        Cldr.EsUY ->
            Cldr.Spanish.Uruguay.countryCodeToName countryCode

        Cldr.EsVE ->
            Cldr.Spanish.Venezuela.countryCodeToName countryCode

        Cldr.Et ->
            Cldr.Estonian.countryCodeToName countryCode

        Cldr.Eu ->
            Cldr.Basque.countryCodeToName countryCode

        Cldr.Fa ->
            Cldr.Persian.countryCodeToName countryCode

        Cldr.FaAF ->
            Cldr.Persian.Afghanistan.countryCodeToName countryCode

        Cldr.Fi ->
            Cldr.Finnish.countryCodeToName countryCode

        Cldr.Fil ->
            Cldr.Filipino.countryCodeToName countryCode

        Cldr.Fr ->
            Cldr.French.countryCodeToName countryCode

        Cldr.FrBE ->
            Cldr.French.Belgium.countryCodeToName countryCode

        Cldr.FrBF ->
            Cldr.French.BurkinaFaso.countryCodeToName countryCode

        Cldr.FrBI ->
            Cldr.French.Burundi.countryCodeToName countryCode

        Cldr.FrBJ ->
            Cldr.French.Benin.countryCodeToName countryCode

        Cldr.FrBL ->
            Cldr.French.StBarthélemy.countryCodeToName countryCode

        Cldr.FrCA ->
            Cldr.French.Canada.countryCodeToName countryCode

        Cldr.FrCD ->
            Cldr.French.CongoKinshasa.countryCodeToName countryCode

        Cldr.FrCF ->
            Cldr.French.CentralAfricanRepublic.countryCodeToName countryCode

        Cldr.FrCG ->
            Cldr.French.CongoBrazzaville.countryCodeToName countryCode

        Cldr.FrCH ->
            Cldr.French.Switzerland.countryCodeToName countryCode

        Cldr.FrCI ->
            Cldr.French.CôtedIvoire.countryCodeToName countryCode

        Cldr.FrCM ->
            Cldr.French.Cameroon.countryCodeToName countryCode

        Cldr.FrDJ ->
            Cldr.French.Djibouti.countryCodeToName countryCode

        Cldr.FrDZ ->
            Cldr.French.Algeria.countryCodeToName countryCode

        Cldr.FrGA ->
            Cldr.French.Gabon.countryCodeToName countryCode

        Cldr.FrGF ->
            Cldr.French.FrenchGuiana.countryCodeToName countryCode

        Cldr.FrGN ->
            Cldr.French.Guinea.countryCodeToName countryCode

        Cldr.FrGP ->
            Cldr.French.Guadeloupe.countryCodeToName countryCode

        Cldr.FrGQ ->
            Cldr.French.EquatorialGuinea.countryCodeToName countryCode

        Cldr.FrHT ->
            Cldr.French.Haiti.countryCodeToName countryCode

        Cldr.FrKM ->
            Cldr.French.Comoros.countryCodeToName countryCode

        Cldr.FrLU ->
            Cldr.French.Luxembourg.countryCodeToName countryCode

        Cldr.FrMA ->
            Cldr.French.Morocco.countryCodeToName countryCode

        Cldr.FrMC ->
            Cldr.French.Monaco.countryCodeToName countryCode

        Cldr.FrMF ->
            Cldr.French.StMartin.countryCodeToName countryCode

        Cldr.FrMG ->
            Cldr.French.Madagascar.countryCodeToName countryCode

        Cldr.FrML ->
            Cldr.French.Mali.countryCodeToName countryCode

        Cldr.FrMQ ->
            Cldr.French.Martinique.countryCodeToName countryCode

        Cldr.FrMR ->
            Cldr.French.Mauritania.countryCodeToName countryCode

        Cldr.FrMU ->
            Cldr.French.Mauritius.countryCodeToName countryCode

        Cldr.FrNC ->
            Cldr.French.NewCaledonia.countryCodeToName countryCode

        Cldr.FrNE ->
            Cldr.French.Niger.countryCodeToName countryCode

        Cldr.FrPF ->
            Cldr.French.FrenchPolynesia.countryCodeToName countryCode

        Cldr.FrPM ->
            Cldr.French.StPierreAndMiquelon.countryCodeToName countryCode

        Cldr.FrRE ->
            Cldr.French.Réunion.countryCodeToName countryCode

        Cldr.FrRW ->
            Cldr.French.Rwanda.countryCodeToName countryCode

        Cldr.FrSC ->
            Cldr.French.Seychelles.countryCodeToName countryCode

        Cldr.FrSN ->
            Cldr.French.Senegal.countryCodeToName countryCode

        Cldr.FrSY ->
            Cldr.French.Syria.countryCodeToName countryCode

        Cldr.FrTD ->
            Cldr.French.Chad.countryCodeToName countryCode

        Cldr.FrTG ->
            Cldr.French.Togo.countryCodeToName countryCode

        Cldr.FrTN ->
            Cldr.French.Tunisia.countryCodeToName countryCode

        Cldr.FrVU ->
            Cldr.French.Vanuatu.countryCodeToName countryCode

        Cldr.FrWF ->
            Cldr.French.WallisAndFutuna.countryCodeToName countryCode

        Cldr.FrYT ->
            Cldr.French.Mayotte.countryCodeToName countryCode

        Cldr.Ga ->
            Cldr.Irish.countryCodeToName countryCode

        Cldr.GaGB ->
            Cldr.Irish.UnitedKingdom.countryCodeToName countryCode

        Cldr.Gd ->
            Cldr.Gaelic.Scottish.countryCodeToName countryCode

        Cldr.Gl ->
            Cldr.Galician.countryCodeToName countryCode

        Cldr.Gu ->
            Cldr.Gujarati.countryCodeToName countryCode

        Cldr.Ha ->
            Cldr.Hausa.countryCodeToName countryCode

        Cldr.HaGH ->
            Cldr.Hausa.Ghana.countryCodeToName countryCode

        Cldr.HaNE ->
            Cldr.Hausa.Niger.countryCodeToName countryCode

        Cldr.He ->
            Cldr.Hebrew.countryCodeToName countryCode

        Cldr.Hi ->
            Cldr.Hindi.countryCodeToName countryCode

        Cldr.HiLatn ->
            Cldr.Hindi.Latin.countryCodeToName countryCode

        Cldr.Hr ->
            Cldr.Croatian.countryCodeToName countryCode

        Cldr.HrBA ->
            Cldr.Croatian.BosniaAndHerzegovina.countryCodeToName countryCode

        Cldr.Hu ->
            Cldr.Hungarian.countryCodeToName countryCode

        Cldr.Hy ->
            Cldr.Armenian.countryCodeToName countryCode

        Cldr.Id ->
            Cldr.Indonesian.countryCodeToName countryCode

        Cldr.Ig ->
            Cldr.Igbo.countryCodeToName countryCode

        Cldr.Is ->
            Cldr.Icelandic.countryCodeToName countryCode

        Cldr.It ->
            Cldr.Italian.countryCodeToName countryCode

        Cldr.ItCH ->
            Cldr.Italian.Switzerland.countryCodeToName countryCode

        Cldr.ItSM ->
            Cldr.Italian.SanMarino.countryCodeToName countryCode

        Cldr.ItVA ->
            Cldr.Italian.VaticanCity.countryCodeToName countryCode

        Cldr.Ja ->
            Cldr.Japanese.countryCodeToName countryCode

        Cldr.Jv ->
            Cldr.Javanese.countryCodeToName countryCode

        Cldr.Ka ->
            Cldr.Georgian.countryCodeToName countryCode

        Cldr.Kk ->
            Cldr.Kazakh.countryCodeToName countryCode

        Cldr.Km ->
            Cldr.Khmer.countryCodeToName countryCode

        Cldr.Kn ->
            Cldr.Kannada.countryCodeToName countryCode

        Cldr.Ko ->
            Cldr.Korean.countryCodeToName countryCode

        Cldr.KoKP ->
            Cldr.Korean.NorthKorea.countryCodeToName countryCode

        Cldr.Kok ->
            Cldr.Konkani.countryCodeToName countryCode

        Cldr.Ky ->
            Cldr.Kyrgyz.countryCodeToName countryCode

        Cldr.Lo ->
            Cldr.Lao.countryCodeToName countryCode

        Cldr.Lt ->
            Cldr.Lithuanian.countryCodeToName countryCode

        Cldr.Lv ->
            Cldr.Latvian.countryCodeToName countryCode

        Cldr.Mk ->
            Cldr.Macedonian.countryCodeToName countryCode

        Cldr.Ml ->
            Cldr.Malayalam.countryCodeToName countryCode

        Cldr.Mn ->
            Cldr.Mongolian.countryCodeToName countryCode

        Cldr.Mr ->
            Cldr.Marathi.countryCodeToName countryCode

        Cldr.Ms ->
            Cldr.Malay.countryCodeToName countryCode

        Cldr.MsBN ->
            Cldr.Malay.Brunei.countryCodeToName countryCode

        Cldr.MsID ->
            Cldr.Malay.Indonesia.countryCodeToName countryCode

        Cldr.MsSG ->
            Cldr.Malay.Singapore.countryCodeToName countryCode

        Cldr.My ->
            Cldr.Burmese.countryCodeToName countryCode

        Cldr.Nb ->
            Cldr.Norwegian.Bokmål.countryCodeToName countryCode

        Cldr.NbSJ ->
            Cldr.Norwegian.Bokmål.SvalbardAndJanMayen.countryCodeToName
                countryCode

        Cldr.Ne ->
            Cldr.Nepali.countryCodeToName countryCode

        Cldr.NeIN ->
            Cldr.Nepali.India.countryCodeToName countryCode

        Cldr.Nl ->
            Cldr.Dutch.countryCodeToName countryCode

        Cldr.NlAW ->
            Cldr.Dutch.Aruba.countryCodeToName countryCode

        Cldr.NlBE ->
            Cldr.Dutch.Belgium.countryCodeToName countryCode

        Cldr.NlBQ ->
            Cldr.Dutch.CaribbeanNetherlands.countryCodeToName countryCode

        Cldr.NlCW ->
            Cldr.Dutch.Curaçao.countryCodeToName countryCode

        Cldr.NlSR ->
            Cldr.Dutch.Suriname.countryCodeToName countryCode

        Cldr.NlSX ->
            Cldr.Dutch.SintMaarten.countryCodeToName countryCode

        Cldr.Nn ->
            Cldr.Norwegian.Nynorsk.countryCodeToName countryCode

        Cldr.No ->
            Cldr.Norwegian.countryCodeToName countryCode

        Cldr.Or ->
            Cldr.Odia.countryCodeToName countryCode

        Cldr.Pa ->
            Cldr.Punjabi.countryCodeToName countryCode

        Cldr.PaGuru ->
            Cldr.Punjabi.Gurmukhi.countryCodeToName countryCode

        Cldr.Pcm ->
            Cldr.Pidgin.Nigerian.countryCodeToName countryCode

        Cldr.Pl ->
            Cldr.Polish.countryCodeToName countryCode

        Cldr.Ps ->
            Cldr.Pashto.countryCodeToName countryCode

        Cldr.PsPK ->
            Cldr.Pashto.Pakistan.countryCodeToName countryCode

        Cldr.Pt ->
            Cldr.Portuguese.countryCodeToName countryCode

        Cldr.PtAO ->
            Cldr.Portuguese.Angola.countryCodeToName countryCode

        Cldr.PtCH ->
            Cldr.Portuguese.Switzerland.countryCodeToName countryCode

        Cldr.PtCV ->
            Cldr.Portuguese.CapeVerde.countryCodeToName countryCode

        Cldr.PtGQ ->
            Cldr.Portuguese.EquatorialGuinea.countryCodeToName countryCode

        Cldr.PtGW ->
            Cldr.Portuguese.GuineaBissau.countryCodeToName countryCode

        Cldr.PtLU ->
            Cldr.Portuguese.Luxembourg.countryCodeToName countryCode

        Cldr.PtMO ->
            Cldr.Portuguese.MacaoSARChina.countryCodeToName countryCode

        Cldr.PtMZ ->
            Cldr.Portuguese.Mozambique.countryCodeToName countryCode

        Cldr.PtPT ->
            Cldr.Portuguese.Portugal.countryCodeToName countryCode

        Cldr.PtST ->
            Cldr.Portuguese.SãoToméAndPríncipe.countryCodeToName countryCode

        Cldr.PtTL ->
            Cldr.Portuguese.TimorLeste.countryCodeToName countryCode

        Cldr.Ro ->
            Cldr.Romanian.countryCodeToName countryCode

        Cldr.RoMD ->
            Cldr.Romanian.Moldova.countryCodeToName countryCode

        Cldr.Ru ->
            Cldr.Russian.countryCodeToName countryCode

        Cldr.RuBY ->
            Cldr.Russian.Belarus.countryCodeToName countryCode

        Cldr.RuKG ->
            Cldr.Russian.Kyrgyzstan.countryCodeToName countryCode

        Cldr.RuKZ ->
            Cldr.Russian.Kazakhstan.countryCodeToName countryCode

        Cldr.RuMD ->
            Cldr.Russian.Moldova.countryCodeToName countryCode

        Cldr.RuUA ->
            Cldr.Russian.Ukraine.countryCodeToName countryCode

        Cldr.Sd ->
            Cldr.Sindhi.countryCodeToName countryCode

        Cldr.SdArab ->
            Cldr.Sindhi.Arabic.countryCodeToName countryCode

        Cldr.Si ->
            Cldr.Sinhala.countryCodeToName countryCode

        Cldr.Sk ->
            Cldr.Slovak.countryCodeToName countryCode

        Cldr.Sl ->
            Cldr.Slovenian.countryCodeToName countryCode

        Cldr.So ->
            Cldr.Somali.countryCodeToName countryCode

        Cldr.SoDJ ->
            Cldr.Somali.Djibouti.countryCodeToName countryCode

        Cldr.SoET ->
            Cldr.Somali.Ethiopia.countryCodeToName countryCode

        Cldr.SoKE ->
            Cldr.Somali.Kenya.countryCodeToName countryCode

        Cldr.Sq ->
            Cldr.Albanian.countryCodeToName countryCode

        Cldr.SqMK ->
            Cldr.Albanian.NorthMacedonia.countryCodeToName countryCode

        Cldr.SqXK ->
            Cldr.Albanian.Kosovo.countryCodeToName countryCode

        Cldr.Sr ->
            Cldr.Serbian.countryCodeToName countryCode

        Cldr.SrCyrl ->
            Cldr.Serbian.Cyrillic.countryCodeToName countryCode

        Cldr.SrCyrlBA ->
            Cldr.Serbian.Cyrillic.BosniaAndHerzegovina.countryCodeToName
                countryCode

        Cldr.SrCyrlME ->
            Cldr.Serbian.Cyrillic.Montenegro.countryCodeToName countryCode

        Cldr.SrCyrlXK ->
            Cldr.Serbian.Cyrillic.Kosovo.countryCodeToName countryCode

        Cldr.SrLatn ->
            Cldr.Serbian.Latin.countryCodeToName countryCode

        Cldr.SrLatnBA ->
            Cldr.Serbian.Latin.BosniaAndHerzegovina.countryCodeToName
                countryCode

        Cldr.SrLatnME ->
            Cldr.Serbian.Latin.Montenegro.countryCodeToName countryCode

        Cldr.SrLatnXK ->
            Cldr.Serbian.Latin.Kosovo.countryCodeToName countryCode

        Cldr.Sv ->
            Cldr.Swedish.countryCodeToName countryCode

        Cldr.SvAX ->
            Cldr.Swedish.ÅlandIslands.countryCodeToName countryCode

        Cldr.SvFI ->
            Cldr.Swedish.Finland.countryCodeToName countryCode

        Cldr.Sw ->
            Cldr.Swahili.countryCodeToName countryCode

        Cldr.SwCD ->
            Cldr.Swahili.CongoKinshasa.countryCodeToName countryCode

        Cldr.SwKE ->
            Cldr.Swahili.Kenya.countryCodeToName countryCode

        Cldr.SwUG ->
            Cldr.Swahili.Uganda.countryCodeToName countryCode

        Cldr.Ta ->
            Cldr.Tamil.countryCodeToName countryCode

        Cldr.TaLK ->
            Cldr.Tamil.SriLanka.countryCodeToName countryCode

        Cldr.TaMY ->
            Cldr.Tamil.Malaysia.countryCodeToName countryCode

        Cldr.TaSG ->
            Cldr.Tamil.Singapore.countryCodeToName countryCode

        Cldr.Te ->
            Cldr.Telugu.countryCodeToName countryCode

        Cldr.Th ->
            Cldr.Thai.countryCodeToName countryCode

        Cldr.Tk ->
            Cldr.Turkmen.countryCodeToName countryCode

        Cldr.Tr ->
            Cldr.Turkish.countryCodeToName countryCode

        Cldr.TrCY ->
            Cldr.Turkish.Cyprus.countryCodeToName countryCode

        Cldr.Uk ->
            Cldr.Ukrainian.countryCodeToName countryCode

        Cldr.Ur ->
            Cldr.Urdu.countryCodeToName countryCode

        Cldr.UrIN ->
            Cldr.Urdu.India.countryCodeToName countryCode

        Cldr.Uz ->
            Cldr.Uzbek.countryCodeToName countryCode

        Cldr.UzLatn ->
            Cldr.Uzbek.Latin.countryCodeToName countryCode

        Cldr.Vi ->
            Cldr.Vietnamese.countryCodeToName countryCode

        Cldr.Yo ->
            Cldr.Yoruba.countryCodeToName countryCode

        Cldr.YoBJ ->
            Cldr.Yoruba.Benin.countryCodeToName countryCode

        Cldr.Yue ->
            Cldr.Cantonese.countryCodeToName countryCode

        Cldr.YueHans ->
            Cldr.Cantonese.Simplified.countryCodeToName countryCode

        Cldr.YueHant ->
            Cldr.Cantonese.Traditional.countryCodeToName countryCode

        Cldr.Zh ->
            Cldr.Chinese.countryCodeToName countryCode

        Cldr.ZhHans ->
            Cldr.Chinese.Simplified.countryCodeToName countryCode

        Cldr.ZhHansHK ->
            Cldr.Chinese.Simplified.HongKongSARChina.countryCodeToName
                countryCode

        Cldr.ZhHansMO ->
            Cldr.Chinese.Simplified.MacaoSARChina.countryCodeToName countryCode

        Cldr.ZhHansSG ->
            Cldr.Chinese.Simplified.Singapore.countryCodeToName countryCode

        Cldr.ZhHant ->
            Cldr.Chinese.Traditional.countryCodeToName countryCode

        Cldr.ZhHantHK ->
            Cldr.Chinese.Traditional.HongKongSARChina.countryCodeToName
                countryCode

        Cldr.ZhHantMO ->
            Cldr.Chinese.Traditional.MacaoSARChina.countryCodeToName countryCode

        Cldr.Zu ->
            Cldr.Zulu.countryCodeToName countryCode