module Cldr.Korean exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


{-| Name for `CountryCode` in Korean.

    AD 안도라
    AE 아랍에미리트
    AF 아프가니스탄
    AG 앤티가 바부다
    AI 앵귈라
    AL 알바니아
    AM 아르메니아
    AO 앙골라
    AQ 남극 대륙
    AR 아르헨티나
    AS 아메리칸 사모아
    AT 오스트리아
    AU 오스트레일리아
    AW 아루바
    AX 올란드 제도
    AZ 아제르바이잔
    BA 보스니아 헤르체고비나
    BB 바베이도스
    BD 방글라데시
    BE 벨기에
    BF 부르키나파소
    BG 불가리아
    BH 바레인
    BI 부룬디
    BJ 베냉
    BL 생바르텔레미
    BM 버뮤다
    BN 브루나이
    BO 볼리비아
    BQ 네덜란드령 카리브
    BR 브라질
    BS 바하마
    BT 부탄
    BV 부베섬
    BW 보츠와나
    BY 벨라루스
    BZ 벨리즈
    CA 캐나다
    CC 코코스 제도
    CD 콩고민주공화국
    CF 중앙 아프리카 공화국
    CG 콩고 공화국
    CH 스위스
    CI 코트디부아르
    CK 쿡 제도
    CL 칠레
    CM 카메룬
    CN 중국
    CO 콜롬비아
    CR 코스타리카
    CU 쿠바
    CV 카보베르데
    CW 퀴라소
    CX 크리스마스섬
    CY 키프로스
    CZ 체코 공화국
    DE 독일
    DJ 지부티
    DK 덴마크
    DM 도미니카
    DO 도미니카 공화국
    DZ 알제리
    EC 에콰도르
    EE 에스토니아
    EG 이집트
    EH 서사하라
    ER 에리트리아
    ES 스페인
    ET 에티오피아
    FI 핀란드
    FJ 피지
    FK 포클랜드 제도
    FM 미크로네시아
    FO 페로 제도
    FR 프랑스
    GA 가봉
    GB 영국
    GD 그레나다
    GE 조지아
    GF 프랑스령 기아나
    GG 건지
    GH 가나
    GI 지브롤터
    GL 그린란드
    GM 감비아
    GN 기니
    GP 과들루프
    GQ 적도 기니
    GR 그리스
    GS 사우스조지아 사우스샌드위치 제도
    GT 과테말라
    GU 괌
    GW 기니비사우
    GY 가이아나
    HK 홍콩
    HM 허드 맥도널드 제도
    HN 온두라스
    HR 크로아티아
    HT 아이티
    HU 헝가리
    ID 인도네시아
    IE 아일랜드
    IL 이스라엘
    IM 맨섬
    IN 인도
    IO 영국령 인도양 식민지
    IQ 이라크
    IR 이란
    IS 아이슬란드
    IT 이탈리아
    JE 저지
    JM 자메이카
    JO 요르단
    JP 일본
    KE 케냐
    KG 키르기스스탄
    KH 캄보디아
    KI 키리바시
    KM 코모로
    KN 세인트키츠 네비스
    KP 북한
    KR 대한민국
    KW 쿠웨이트
    KY 케이맨 제도
    KZ 카자흐스탄
    LA 라오스
    LB 레바논
    LC 세인트루시아
    LI 리히텐슈타인
    LK 스리랑카
    LR 라이베리아
    LS 레소토
    LT 리투아니아
    LU 룩셈부르크
    LV 라트비아
    LY 리비아
    MA 모로코
    MC 모나코
    MD 몰도바
    ME 몬테네그로
    MF 생마르탱
    MG 마다가스카르
    MH 마셜 제도
    MK 북마케도니아
    ML 말리
    MM 미얀마
    MN 몽골
    MO 마카오
    MP 북마리아나제도
    MQ 마르티니크
    MR 모리타니
    MS 몬트세라트
    MT 몰타
    MU 모리셔스
    MV 몰디브
    MW 말라위
    MX 멕시코
    MY 말레이시아
    MZ 모잠비크
    NA 나미비아
    NC 뉴칼레도니아
    NE 니제르
    NF 노퍽섬
    NG 나이지리아
    NI 니카라과
    NL 네덜란드
    NO 노르웨이
    NP 네팔
    NR 나우루
    NU 니우에
    NZ 뉴질랜드
    OM 오만
    PA 파나마
    PE 페루
    PF 프랑스령 폴리네시아
    PG 파푸아뉴기니
    PH 필리핀
    PK 파키스탄
    PL 폴란드
    PM 생피에르 미클롱
    PN 핏케언 제도
    PR 푸에르토리코
    PS 팔레스타인
    PT 포르투갈
    PW 팔라우
    PY 파라과이
    QA 카타르
    RE 레위니옹
    RO 루마니아
    RS 세르비아
    RU 러시아
    RW 르완다
    SA 사우디아라비아
    SB 솔로몬 제도
    SC 세이셸
    SD 수단
    SE 스웨덴
    SG 싱가포르
    SH 세인트헬레나
    SI 슬로베니아
    SJ 스발바르제도-얀마웬섬
    SK 슬로바키아
    SL 시에라리온
    SM 산마리노
    SN 세네갈
    SO 소말리아
    SR 수리남
    SS 남수단
    ST 상투메 프린시페
    SV 엘살바도르
    SX 신트마르턴
    SY 시리아
    SZ 에스와티니
    TC 터크스 케이커스 제도
    TD 차드
    TF 프랑스령 남방 지역
    TG 토고
    TH 태국
    TJ 타지키스탄
    TK 토켈라우
    TL 티모르레스테
    TM 투르크메니스탄
    TN 튀니지
    TO 통가
    TR 튀르키예
    TT 트리니다드 토바고
    TV 투발루
    TW 대만
    TZ 탄자니아
    UA 우크라이나
    UG 우간다
    UM 미국령 해외 제도
    US 미국
    UY 우루과이
    UZ 우즈베키스탄
    VA 바티칸 시국
    VC 세인트빈센트그레나딘
    VE 베네수엘라
    VG 영국령 버진아일랜드
    VI 미국령 버진아일랜드
    VN 베트남
    VU 바누아투
    WF 왈리스-푸투나 제도
    WS 사모아
    XK 코소보
    YE 예멘
    YT 마요트
    ZA 남아프리카
    ZM 잠비아
    ZW 짐바브웨
-}
countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "안도라"

        Cldr.AE ->
            "아랍에미리트"

        Cldr.AF ->
            "아프가니스탄"

        Cldr.AG ->
            "앤티가 바부다"

        Cldr.AI ->
            "앵귈라"

        Cldr.AL ->
            "알바니아"

        Cldr.AM ->
            "아르메니아"

        Cldr.AO ->
            "앙골라"

        Cldr.AQ ->
            "남극 대륙"

        Cldr.AR ->
            "아르헨티나"

        Cldr.AS ->
            "아메리칸 사모아"

        Cldr.AT ->
            "오스트리아"

        Cldr.AU ->
            "오스트레일리아"

        Cldr.AW ->
            "아루바"

        Cldr.AX ->
            "올란드 제도"

        Cldr.AZ ->
            "아제르바이잔"

        Cldr.BA ->
            "보스니아 헤르체고비나"

        Cldr.BB ->
            "바베이도스"

        Cldr.BD ->
            "방글라데시"

        Cldr.BE ->
            "벨기에"

        Cldr.BF ->
            "부르키나파소"

        Cldr.BG ->
            "불가리아"

        Cldr.BH ->
            "바레인"

        Cldr.BI ->
            "부룬디"

        Cldr.BJ ->
            "베냉"

        Cldr.BL ->
            "생바르텔레미"

        Cldr.BM ->
            "버뮤다"

        Cldr.BN ->
            "브루나이"

        Cldr.BO ->
            "볼리비아"

        Cldr.BQ ->
            "네덜란드령 카리브"

        Cldr.BR ->
            "브라질"

        Cldr.BS ->
            "바하마"

        Cldr.BT ->
            "부탄"

        Cldr.BV ->
            "부베섬"

        Cldr.BW ->
            "보츠와나"

        Cldr.BY ->
            "벨라루스"

        Cldr.BZ ->
            "벨리즈"

        Cldr.CA ->
            "캐나다"

        Cldr.CC ->
            "코코스 제도"

        Cldr.CD ->
            "콩고민주공화국"

        Cldr.CF ->
            "중앙 아프리카 공화국"

        Cldr.CG ->
            "콩고 공화국"

        Cldr.CH ->
            "스위스"

        Cldr.CI ->
            "코트디부아르"

        Cldr.CK ->
            "쿡 제도"

        Cldr.CL ->
            "칠레"

        Cldr.CM ->
            "카메룬"

        Cldr.CN ->
            "중국"

        Cldr.CO ->
            "콜롬비아"

        Cldr.CR ->
            "코스타리카"

        Cldr.CU ->
            "쿠바"

        Cldr.CV ->
            "카보베르데"

        Cldr.CW ->
            "퀴라소"

        Cldr.CX ->
            "크리스마스섬"

        Cldr.CY ->
            "키프로스"

        Cldr.CZ ->
            "체코 공화국"

        Cldr.DE ->
            "독일"

        Cldr.DJ ->
            "지부티"

        Cldr.DK ->
            "덴마크"

        Cldr.DM ->
            "도미니카"

        Cldr.DO ->
            "도미니카 공화국"

        Cldr.DZ ->
            "알제리"

        Cldr.EC ->
            "에콰도르"

        Cldr.EE ->
            "에스토니아"

        Cldr.EG ->
            "이집트"

        Cldr.EH ->
            "서사하라"

        Cldr.ER ->
            "에리트리아"

        Cldr.ES ->
            "스페인"

        Cldr.ET ->
            "에티오피아"

        Cldr.FI ->
            "핀란드"

        Cldr.FJ ->
            "피지"

        Cldr.FK ->
            "포클랜드 제도"

        Cldr.FM ->
            "미크로네시아"

        Cldr.FO ->
            "페로 제도"

        Cldr.FR ->
            "프랑스"

        Cldr.GA ->
            "가봉"

        Cldr.GB ->
            "영국"

        Cldr.GD ->
            "그레나다"

        Cldr.GE ->
            "조지아"

        Cldr.GF ->
            "프랑스령 기아나"

        Cldr.GG ->
            "건지"

        Cldr.GH ->
            "가나"

        Cldr.GI ->
            "지브롤터"

        Cldr.GL ->
            "그린란드"

        Cldr.GM ->
            "감비아"

        Cldr.GN ->
            "기니"

        Cldr.GP ->
            "과들루프"

        Cldr.GQ ->
            "적도 기니"

        Cldr.GR ->
            "그리스"

        Cldr.GS ->
            "사우스조지아 사우스샌드위치 제도"

        Cldr.GT_ ->
            "과테말라"

        Cldr.GU ->
            "괌"

        Cldr.GW ->
            "기니비사우"

        Cldr.GY ->
            "가이아나"

        Cldr.HK ->
            "홍콩"

        Cldr.HM ->
            "허드 맥도널드 제도"

        Cldr.HN ->
            "온두라스"

        Cldr.HR ->
            "크로아티아"

        Cldr.HT ->
            "아이티"

        Cldr.HU ->
            "헝가리"

        Cldr.ID ->
            "인도네시아"

        Cldr.IE ->
            "아일랜드"

        Cldr.IL ->
            "이스라엘"

        Cldr.IM ->
            "맨섬"

        Cldr.IN ->
            "인도"

        Cldr.IO ->
            "영국령 인도양 식민지"

        Cldr.IQ ->
            "이라크"

        Cldr.IR ->
            "이란"

        Cldr.IS ->
            "아이슬란드"

        Cldr.IT ->
            "이탈리아"

        Cldr.JE ->
            "저지"

        Cldr.JM ->
            "자메이카"

        Cldr.JO ->
            "요르단"

        Cldr.JP ->
            "일본"

        Cldr.KE ->
            "케냐"

        Cldr.KG ->
            "키르기스스탄"

        Cldr.KH ->
            "캄보디아"

        Cldr.KI ->
            "키리바시"

        Cldr.KM ->
            "코모로"

        Cldr.KN ->
            "세인트키츠 네비스"

        Cldr.KP ->
            "북한"

        Cldr.KR ->
            "대한민국"

        Cldr.KW ->
            "쿠웨이트"

        Cldr.KY ->
            "케이맨 제도"

        Cldr.KZ ->
            "카자흐스탄"

        Cldr.LA ->
            "라오스"

        Cldr.LB ->
            "레바논"

        Cldr.LC ->
            "세인트루시아"

        Cldr.LI ->
            "리히텐슈타인"

        Cldr.LK ->
            "스리랑카"

        Cldr.LR ->
            "라이베리아"

        Cldr.LS ->
            "레소토"

        Cldr.LT_ ->
            "리투아니아"

        Cldr.LU ->
            "룩셈부르크"

        Cldr.LV ->
            "라트비아"

        Cldr.LY ->
            "리비아"

        Cldr.MA ->
            "모로코"

        Cldr.MC ->
            "모나코"

        Cldr.MD ->
            "몰도바"

        Cldr.ME ->
            "몬테네그로"

        Cldr.MF ->
            "생마르탱"

        Cldr.MG ->
            "마다가스카르"

        Cldr.MH ->
            "마셜 제도"

        Cldr.MK ->
            "북마케도니아"

        Cldr.ML ->
            "말리"

        Cldr.MM ->
            "미얀마"

        Cldr.MN ->
            "몽골"

        Cldr.MO ->
            "마카오"

        Cldr.MP ->
            "북마리아나제도"

        Cldr.MQ ->
            "마르티니크"

        Cldr.MR ->
            "모리타니"

        Cldr.MS ->
            "몬트세라트"

        Cldr.MT ->
            "몰타"

        Cldr.MU ->
            "모리셔스"

        Cldr.MV ->
            "몰디브"

        Cldr.MW ->
            "말라위"

        Cldr.MX ->
            "멕시코"

        Cldr.MY ->
            "말레이시아"

        Cldr.MZ ->
            "모잠비크"

        Cldr.NA ->
            "나미비아"

        Cldr.NC ->
            "뉴칼레도니아"

        Cldr.NE ->
            "니제르"

        Cldr.NF ->
            "노퍽섬"

        Cldr.NG ->
            "나이지리아"

        Cldr.NI ->
            "니카라과"

        Cldr.NL ->
            "네덜란드"

        Cldr.NO ->
            "노르웨이"

        Cldr.NP ->
            "네팔"

        Cldr.NR ->
            "나우루"

        Cldr.NU ->
            "니우에"

        Cldr.NZ ->
            "뉴질랜드"

        Cldr.OM ->
            "오만"

        Cldr.PA ->
            "파나마"

        Cldr.PE ->
            "페루"

        Cldr.PF ->
            "프랑스령 폴리네시아"

        Cldr.PG ->
            "파푸아뉴기니"

        Cldr.PH ->
            "필리핀"

        Cldr.PK ->
            "파키스탄"

        Cldr.PL ->
            "폴란드"

        Cldr.PM ->
            "생피에르 미클롱"

        Cldr.PN ->
            "핏케언 제도"

        Cldr.PR ->
            "푸에르토리코"

        Cldr.PS ->
            "팔레스타인"

        Cldr.PT ->
            "포르투갈"

        Cldr.PW ->
            "팔라우"

        Cldr.PY ->
            "파라과이"

        Cldr.QA ->
            "카타르"

        Cldr.RE ->
            "레위니옹"

        Cldr.RO ->
            "루마니아"

        Cldr.RS ->
            "세르비아"

        Cldr.RU ->
            "러시아"

        Cldr.RW ->
            "르완다"

        Cldr.SA ->
            "사우디아라비아"

        Cldr.SB ->
            "솔로몬 제도"

        Cldr.SC ->
            "세이셸"

        Cldr.SD ->
            "수단"

        Cldr.SE ->
            "스웨덴"

        Cldr.SG ->
            "싱가포르"

        Cldr.SH ->
            "세인트헬레나"

        Cldr.SI ->
            "슬로베니아"

        Cldr.SJ ->
            "스발바르제도-얀마웬섬"

        Cldr.SK ->
            "슬로바키아"

        Cldr.SL ->
            "시에라리온"

        Cldr.SM ->
            "산마리노"

        Cldr.SN ->
            "세네갈"

        Cldr.SO ->
            "소말리아"

        Cldr.SR ->
            "수리남"

        Cldr.SS ->
            "남수단"

        Cldr.ST ->
            "상투메 프린시페"

        Cldr.SV ->
            "엘살바도르"

        Cldr.SX ->
            "신트마르턴"

        Cldr.SY ->
            "시리아"

        Cldr.SZ ->
            "에스와티니"

        Cldr.TC ->
            "터크스 케이커스 제도"

        Cldr.TD ->
            "차드"

        Cldr.TF ->
            "프랑스령 남방 지역"

        Cldr.TG ->
            "토고"

        Cldr.TH ->
            "태국"

        Cldr.TJ ->
            "타지키스탄"

        Cldr.TK ->
            "토켈라우"

        Cldr.TL ->
            "티모르레스테"

        Cldr.TM ->
            "투르크메니스탄"

        Cldr.TN ->
            "튀니지"

        Cldr.TO ->
            "통가"

        Cldr.TR ->
            "튀르키예"

        Cldr.TT ->
            "트리니다드 토바고"

        Cldr.TV ->
            "투발루"

        Cldr.TW ->
            "대만"

        Cldr.TZ ->
            "탄자니아"

        Cldr.UA ->
            "우크라이나"

        Cldr.UG ->
            "우간다"

        Cldr.UM ->
            "미국령 해외 제도"

        Cldr.US ->
            "미국"

        Cldr.UY ->
            "우루과이"

        Cldr.UZ ->
            "우즈베키스탄"

        Cldr.VA ->
            "바티칸 시국"

        Cldr.VC ->
            "세인트빈센트그레나딘"

        Cldr.VE ->
            "베네수엘라"

        Cldr.VG ->
            "영국령 버진아일랜드"

        Cldr.VI ->
            "미국령 버진아일랜드"

        Cldr.VN ->
            "베트남"

        Cldr.VU ->
            "바누아투"

        Cldr.WF ->
            "왈리스-푸투나 제도"

        Cldr.WS ->
            "사모아"

        Cldr.XK ->
            "코소보"

        Cldr.YE ->
            "예멘"

        Cldr.YT ->
            "마요트"

        Cldr.ZA ->
            "남아프리카"

        Cldr.ZM ->
            "잠비아"

        Cldr.ZW ->
            "짐바브웨"