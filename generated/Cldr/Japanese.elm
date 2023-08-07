module Cldr.Japanese exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Japanese.

    AD アンドラ
    AE アラブ首長国連邦
    AF アフガニスタン
    AG アンティグア・バーブーダ
    AI アンギラ
    AL アルバニア
    AM アルメニア
    AO アンゴラ
    AQ 南極
    AR アルゼンチン
    AS 米領サモア
    AT オーストリア
    AU オーストラリア
    AW アルバ
    AX オーランド諸島
    AZ アゼルバイジャン
    BA ボスニア・ヘルツェゴビナ
    BB バルバドス
    BD バングラデシュ
    BE ベルギー
    BF ブルキナファソ
    BG ブルガリア
    BH バーレーン
    BI ブルンジ
    BJ ベナン
    BL サン・バルテルミー
    BM バミューダ
    BN ブルネイ
    BO ボリビア
    BQ オランダ領カリブ
    BR ブラジル
    BS バハマ
    BT ブータン
    BV ブーベ島
    BW ボツワナ
    BY ベラルーシ
    BZ ベリーズ
    CA カナダ
    CC ココス(キーリング)諸島
    CD コンゴ民主共和国
    CF 中央アフリカ共和国
    CG コンゴ共和国
    CH スイス
    CI コートジボワール
    CK クック諸島
    CL チリ
    CM カメルーン
    CN 中国
    CO コロンビア
    CR コスタリカ
    CU キューバ
    CV カーボベルデ
    CW キュラソー
    CX クリスマス島
    CY キプロス
    CZ チェコ共和国
    DE ドイツ
    DJ ジブチ
    DK デンマーク
    DM ドミニカ国
    DO ドミニカ共和国
    DZ アルジェリア
    EC エクアドル
    EE エストニア
    EG エジプト
    EH 西サハラ
    ER エリトリア
    ES スペイン
    ET エチオピア
    FI フィンランド
    FJ フィジー
    FK フォークランド諸島
    FM ミクロネシア連邦
    FO フェロー諸島
    FR フランス
    GA ガボン
    GB イギリス
    GD グレナダ
    GE ジョージア
    GF 仏領ギアナ
    GG ガーンジー
    GH ガーナ
    GI ジブラルタル
    GL グリーンランド
    GM ガンビア
    GN ギニア
    GP グアドループ
    GQ 赤道ギニア
    GR ギリシャ
    GS サウスジョージア・サウスサンドウィッチ諸島
    GT グアテマラ
    GU グアム
    GW ギニアビサウ
    GY ガイアナ
    HK 香港
    HM ハード島・マクドナルド諸島
    HN ホンジュラス
    HR クロアチア
    HT ハイチ
    HU ハンガリー
    ID インドネシア
    IE アイルランド
    IL イスラエル
    IM マン島
    IN インド
    IO 英領インド洋地域
    IQ イラク
    IR イラン
    IS アイスランド
    IT イタリア
    JE ジャージー
    JM ジャマイカ
    JO ヨルダン
    JP 日本
    KE ケニア
    KG キルギス
    KH カンボジア
    KI キリバス
    KM コモロ
    KN セントクリストファー・ネーヴィス
    KP 北朝鮮
    KR 韓国
    KW クウェート
    KY ケイマン諸島
    KZ カザフスタン
    LA ラオス
    LB レバノン
    LC セントルシア
    LI リヒテンシュタイン
    LK スリランカ
    LR リベリア
    LS レソト
    LT リトアニア
    LU ルクセンブルク
    LV ラトビア
    LY リビア
    MA モロッコ
    MC モナコ
    MD モルドバ
    ME モンテネグロ
    MF サン・マルタン
    MG マダガスカル
    MH マーシャル諸島
    MK 北マケドニア
    ML マリ
    MM ミャンマー (ビルマ)
    MN モンゴル
    MO マカオ
    MP 北マリアナ諸島
    MQ マルティニーク
    MR モーリタニア
    MS モントセラト
    MT マルタ
    MU モーリシャス
    MV モルディブ
    MW マラウイ
    MX メキシコ
    MY マレーシア
    MZ モザンビーク
    NA ナミビア
    NC ニューカレドニア
    NE ニジェール
    NF ノーフォーク島
    NG ナイジェリア
    NI ニカラグア
    NL オランダ
    NO ノルウェー
    NP ネパール
    NR ナウル
    NU ニウエ
    NZ ニュージーランド
    OM オマーン
    PA パナマ
    PE ペルー
    PF 仏領ポリネシア
    PG パプアニューギニア
    PH フィリピン
    PK パキスタン
    PL ポーランド
    PM サンピエール島・ミクロン島
    PN ピトケアン諸島
    PR プエルトリコ
    PS パレスチナ
    PT ポルトガル
    PW パラオ
    PY パラグアイ
    QA カタール
    RE レユニオン
    RO ルーマニア
    RS セルビア
    RU ロシア
    RW ルワンダ
    SA サウジアラビア
    SB ソロモン諸島
    SC セーシェル
    SD スーダン
    SE スウェーデン
    SG シンガポール
    SH セントヘレナ
    SI スロベニア
    SJ スバールバル諸島・ヤンマイエン島
    SK スロバキア
    SL シエラレオネ
    SM サンマリノ
    SN セネガル
    SO ソマリア
    SR スリナム
    SS 南スーダン
    ST サントメ・プリンシペ
    SV エルサルバドル
    SX シント・マールテン
    SY シリア
    SZ エスワティニ
    TC タークス・カイコス諸島
    TD チャド
    TF 仏領極南諸島
    TG トーゴ
    TH タイ
    TJ タジキスタン
    TK トケラウ
    TL 東チモール
    TM トルクメニスタン
    TN チュニジア
    TO トンガ
    TR トルコ
    TT トリニダード・トバゴ
    TV ツバル
    TW 台湾
    TZ タンザニア
    UA ウクライナ
    UG ウガンダ
    UM 合衆国領有小離島
    US アメリカ合衆国
    UY ウルグアイ
    UZ ウズベキスタン
    VA バチカン市国
    VC セントビンセント及びグレナディーン諸島
    VE ベネズエラ
    VG 英領ヴァージン諸島
    VI 米領ヴァージン諸島
    VN ベトナム
    VU バヌアツ
    WF ウォリス・フツナ
    WS サモア
    XK コソボ
    YE イエメン
    YT マヨット
    ZA 南アフリカ
    ZM ザンビア
    ZW ジンバブエ
-}
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
            "コンゴ民主共和国"

        Cldr.CF ->
            "中央アフリカ共和国"

        Cldr.CG ->
            "コンゴ共和国"

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
            "チェコ共和国"

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
            "香港"

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
            "マカオ"

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
            "パレスチナ"

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
            "東チモール"

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