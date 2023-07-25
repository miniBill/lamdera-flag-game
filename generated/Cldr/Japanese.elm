module Cldr.Japanese exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "アンドラ"

        Cldr.AE ->
            "アラブ首長国連邦"

        Cldr.AF ->
            "アフガニスタン"

        Cldr.AG ->
            "アンティグア・バーブーダ"

        Cldr.AI ->
            "アンギラ"

        Cldr.AL ->
            "アルバニア"

        Cldr.AM ->
            "アルメニア"

        Cldr.AO ->
            "アンゴラ"

        Cldr.AQ ->
            "南極"

        Cldr.AR ->
            "アルゼンチン"

        Cldr.AS ->
            "米領サモア"

        Cldr.AT ->
            "オーストリア"

        Cldr.AU ->
            "オーストラリア"

        Cldr.AW ->
            "アルバ"

        Cldr.AX ->
            "オーランド諸島"

        Cldr.AZ ->
            "アゼルバイジャン"

        Cldr.BA ->
            "ボスニア・ヘルツェゴビナ"

        Cldr.BB ->
            "バルバドス"

        Cldr.BD ->
            "バングラデシュ"

        Cldr.BE ->
            "ベルギー"

        Cldr.BF ->
            "ブルキナファソ"

        Cldr.BG ->
            "ブルガリア"

        Cldr.BH ->
            "バーレーン"

        Cldr.BI ->
            "ブルンジ"

        Cldr.BJ ->
            "ベナン"

        Cldr.BL ->
            "サン・バルテルミー"

        Cldr.BM ->
            "バミューダ"

        Cldr.BN ->
            "ブルネイ"

        Cldr.BO ->
            "ボリビア"

        Cldr.BQ ->
            "オランダ領カリブ"

        Cldr.BR ->
            "ブラジル"

        Cldr.BS ->
            "バハマ"

        Cldr.BT ->
            "ブータン"

        Cldr.BV ->
            "ブーベ島"

        Cldr.BW ->
            "ボツワナ"

        Cldr.BY ->
            "ベラルーシ"

        Cldr.BZ ->
            "ベリーズ"

        Cldr.CA ->
            "カナダ"

        Cldr.CC ->
            "ココス(キーリング)諸島"

        Cldr.CD ->
            "コンゴ民主共和国(キンシャサ)"

        Cldr.CF ->
            "中央アフリカ共和国"

        Cldr.CG ->
            "コンゴ共和国(ブラザビル)"

        Cldr.CH ->
            "スイス"

        Cldr.CI ->
            "コートジボワール"

        Cldr.CK ->
            "クック諸島"

        Cldr.CL ->
            "チリ"

        Cldr.CM ->
            "カメルーン"

        Cldr.CN ->
            "中国"

        Cldr.CO ->
            "コロンビア"

        Cldr.CR ->
            "コスタリカ"

        Cldr.CU ->
            "キューバ"

        Cldr.CV ->
            "カーボベルデ"

        Cldr.CW ->
            "キュラソー"

        Cldr.CX ->
            "クリスマス島"

        Cldr.CY ->
            "キプロス"

        Cldr.CZ ->
            "チェコ"

        Cldr.DE ->
            "ドイツ"

        Cldr.DJ ->
            "ジブチ"

        Cldr.DK ->
            "デンマーク"

        Cldr.DM ->
            "ドミニカ国"

        Cldr.DO ->
            "ドミニカ共和国"

        Cldr.DZ ->
            "アルジェリア"

        Cldr.EC ->
            "エクアドル"

        Cldr.EE ->
            "エストニア"

        Cldr.EG ->
            "エジプト"

        Cldr.EH ->
            "西サハラ"

        Cldr.ER ->
            "エリトリア"

        Cldr.ES ->
            "スペイン"

        Cldr.ET ->
            "エチオピア"

        Cldr.FI ->
            "フィンランド"

        Cldr.FJ ->
            "フィジー"

        Cldr.FK ->
            "フォークランド諸島"

        Cldr.FM ->
            "ミクロネシア連邦"

        Cldr.FO ->
            "フェロー諸島"

        Cldr.FR ->
            "フランス"

        Cldr.GA ->
            "ガボン"

        Cldr.GB ->
            "イギリス"

        Cldr.GD ->
            "グレナダ"

        Cldr.GE ->
            "ジョージア"

        Cldr.GF ->
            "仏領ギアナ"

        Cldr.GG ->
            "ガーンジー"

        Cldr.GH ->
            "ガーナ"

        Cldr.GI ->
            "ジブラルタル"

        Cldr.GL ->
            "グリーンランド"

        Cldr.GM ->
            "ガンビア"

        Cldr.GN ->
            "ギニア"

        Cldr.GP ->
            "グアドループ"

        Cldr.GQ ->
            "赤道ギニア"

        Cldr.GR ->
            "ギリシャ"

        Cldr.GS ->
            "サウスジョージア・サウスサンドウィッチ諸島"

        Cldr.GT_ ->
            "グアテマラ"

        Cldr.GU ->
            "グアム"

        Cldr.GW ->
            "ギニアビサウ"

        Cldr.GY ->
            "ガイアナ"

        Cldr.HK ->
            "中華人民共和国香港特別行政区"

        Cldr.HM ->
            "ハード島・マクドナルド諸島"

        Cldr.HN ->
            "ホンジュラス"

        Cldr.HR ->
            "クロアチア"

        Cldr.HT ->
            "ハイチ"

        Cldr.HU ->
            "ハンガリー"

        Cldr.ID ->
            "インドネシア"

        Cldr.IE ->
            "アイルランド"

        Cldr.IL ->
            "イスラエル"

        Cldr.IM ->
            "マン島"

        Cldr.IN ->
            "インド"

        Cldr.IO ->
            "英領インド洋地域"

        Cldr.IQ ->
            "イラク"

        Cldr.IR ->
            "イラン"

        Cldr.IS ->
            "アイスランド"

        Cldr.IT ->
            "イタリア"

        Cldr.JE ->
            "ジャージー"

        Cldr.JM ->
            "ジャマイカ"

        Cldr.JO ->
            "ヨルダン"

        Cldr.JP ->
            "日本"

        Cldr.KE ->
            "ケニア"

        Cldr.KG ->
            "キルギス"

        Cldr.KH ->
            "カンボジア"

        Cldr.KI ->
            "キリバス"

        Cldr.KM ->
            "コモロ"

        Cldr.KN ->
            "セントクリストファー・ネーヴィス"

        Cldr.KP ->
            "北朝鮮"

        Cldr.KR ->
            "韓国"

        Cldr.KW ->
            "クウェート"

        Cldr.KY ->
            "ケイマン諸島"

        Cldr.KZ ->
            "カザフスタン"

        Cldr.LA ->
            "ラオス"

        Cldr.LB ->
            "レバノン"

        Cldr.LC ->
            "セントルシア"

        Cldr.LI ->
            "リヒテンシュタイン"

        Cldr.LK ->
            "スリランカ"

        Cldr.LR ->
            "リベリア"

        Cldr.LS ->
            "レソト"

        Cldr.LT_ ->
            "リトアニア"

        Cldr.LU ->
            "ルクセンブルク"

        Cldr.LV ->
            "ラトビア"

        Cldr.LY ->
            "リビア"

        Cldr.MA ->
            "モロッコ"

        Cldr.MC ->
            "モナコ"

        Cldr.MD ->
            "モルドバ"

        Cldr.ME ->
            "モンテネグロ"

        Cldr.MF ->
            "サン・マルタン"

        Cldr.MG ->
            "マダガスカル"

        Cldr.MH ->
            "マーシャル諸島"

        Cldr.MK ->
            "北マケドニア"

        Cldr.ML ->
            "マリ"

        Cldr.MM ->
            "ミャンマー (ビルマ)"

        Cldr.MN ->
            "モンゴル"

        Cldr.MO ->
            "中華人民共和国マカオ特別行政区"

        Cldr.MP ->
            "北マリアナ諸島"

        Cldr.MQ ->
            "マルティニーク"

        Cldr.MR ->
            "モーリタニア"

        Cldr.MS ->
            "モントセラト"

        Cldr.MT ->
            "マルタ"

        Cldr.MU ->
            "モーリシャス"

        Cldr.MV ->
            "モルディブ"

        Cldr.MW ->
            "マラウイ"

        Cldr.MX ->
            "メキシコ"

        Cldr.MY ->
            "マレーシア"

        Cldr.MZ ->
            "モザンビーク"

        Cldr.NA ->
            "ナミビア"

        Cldr.NC ->
            "ニューカレドニア"

        Cldr.NE ->
            "ニジェール"

        Cldr.NF ->
            "ノーフォーク島"

        Cldr.NG ->
            "ナイジェリア"

        Cldr.NI ->
            "ニカラグア"

        Cldr.NL ->
            "オランダ"

        Cldr.NO ->
            "ノルウェー"

        Cldr.NP ->
            "ネパール"

        Cldr.NR ->
            "ナウル"

        Cldr.NU ->
            "ニウエ"

        Cldr.NZ ->
            "ニュージーランド"

        Cldr.OM ->
            "オマーン"

        Cldr.PA ->
            "パナマ"

        Cldr.PE ->
            "ペルー"

        Cldr.PF ->
            "仏領ポリネシア"

        Cldr.PG ->
            "パプアニューギニア"

        Cldr.PH ->
            "フィリピン"

        Cldr.PK ->
            "パキスタン"

        Cldr.PL ->
            "ポーランド"

        Cldr.PM ->
            "サンピエール島・ミクロン島"

        Cldr.PN ->
            "ピトケアン諸島"

        Cldr.PR ->
            "プエルトリコ"

        Cldr.PS ->
            "パレスチナ自治区"

        Cldr.PT ->
            "ポルトガル"

        Cldr.PW ->
            "パラオ"

        Cldr.PY ->
            "パラグアイ"

        Cldr.QA ->
            "カタール"

        Cldr.RE ->
            "レユニオン"

        Cldr.RO ->
            "ルーマニア"

        Cldr.RS ->
            "セルビア"

        Cldr.RU ->
            "ロシア"

        Cldr.RW ->
            "ルワンダ"

        Cldr.SA ->
            "サウジアラビア"

        Cldr.SB ->
            "ソロモン諸島"

        Cldr.SC ->
            "セーシェル"

        Cldr.SD ->
            "スーダン"

        Cldr.SE ->
            "スウェーデン"

        Cldr.SG ->
            "シンガポール"

        Cldr.SH ->
            "セントヘレナ"

        Cldr.SI ->
            "スロベニア"

        Cldr.SJ ->
            "スバールバル諸島・ヤンマイエン島"

        Cldr.SK ->
            "スロバキア"

        Cldr.SL ->
            "シエラレオネ"

        Cldr.SM ->
            "サンマリノ"

        Cldr.SN ->
            "セネガル"

        Cldr.SO ->
            "ソマリア"

        Cldr.SR ->
            "スリナム"

        Cldr.SS ->
            "南スーダン"

        Cldr.ST ->
            "サントメ・プリンシペ"

        Cldr.SV ->
            "エルサルバドル"

        Cldr.SX ->
            "シント・マールテン"

        Cldr.SY ->
            "シリア"

        Cldr.SZ ->
            "エスワティニ"

        Cldr.TC ->
            "タークス・カイコス諸島"

        Cldr.TD ->
            "チャド"

        Cldr.TF ->
            "仏領極南諸島"

        Cldr.TG ->
            "トーゴ"

        Cldr.TH ->
            "タイ"

        Cldr.TJ ->
            "タジキスタン"

        Cldr.TK ->
            "トケラウ"

        Cldr.TL ->
            "東ティモール"

        Cldr.TM ->
            "トルクメニスタン"

        Cldr.TN ->
            "チュニジア"

        Cldr.TO ->
            "トンガ"

        Cldr.TR ->
            "トルコ"

        Cldr.TT ->
            "トリニダード・トバゴ"

        Cldr.TV ->
            "ツバル"

        Cldr.TW ->
            "台湾"

        Cldr.TZ ->
            "タンザニア"

        Cldr.UA ->
            "ウクライナ"

        Cldr.UG ->
            "ウガンダ"

        Cldr.UM ->
            "合衆国領有小離島"

        Cldr.US ->
            "アメリカ合衆国"

        Cldr.UY ->
            "ウルグアイ"

        Cldr.UZ ->
            "ウズベキスタン"

        Cldr.VA ->
            "バチカン市国"

        Cldr.VC ->
            "セントビンセント及びグレナディーン諸島"

        Cldr.VE ->
            "ベネズエラ"

        Cldr.VG ->
            "英領ヴァージン諸島"

        Cldr.VI ->
            "米領ヴァージン諸島"

        Cldr.VN ->
            "ベトナム"

        Cldr.VU ->
            "バヌアツ"

        Cldr.WF ->
            "ウォリス・フツナ"

        Cldr.WS ->
            "サモア"

        Cldr.XK ->
            "コソボ"

        Cldr.YE ->
            "イエメン"

        Cldr.YT ->
            "マヨット"

        Cldr.ZA ->
            "南アフリカ"

        Cldr.ZM ->
            "ザンビア"

        Cldr.ZW ->
            "ジンバブエ"