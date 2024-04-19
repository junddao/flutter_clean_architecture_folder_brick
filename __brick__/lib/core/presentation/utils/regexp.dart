// ignore_for_file: constant_identifier_names

/// 이메일 정규식
const RegExpEMAIL =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

/// 핸드폰번호 정규식
const RegExpSMARTPHONE = r'^([ \-]?)?0?1([0]{1})[ \-]?\d{4}[ \-]?\d{4}$';

/// 소문자 영문 정규식
const RegExpLOWERAB = r'(?=.*[a-z])';

/// 대문자 영문 정규식
const RegExpUPPERAB = r'(?=.*[A-Z])';

/// 영문 소문자 + 숫자 정규식
const RegExpNUMLOWERAB = r'^[\S][a-z0-9_\-=@,\.;]+$';

/// 한글 & 영문 정규식
const RegExpKOEN = r'^[가-힣a-z0-9]+$';

/// URL 정규식
const RegExpURL = r"[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{2,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";

/// 한글 정규식
const RegExpKOREAN = r'[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]';

/// 생년월일(6자리) 정규식
const RegExpBIRTHDAY = r'([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))';

/// 패스워드 검증 (영문 + 숫자 + 특수문자이면서 8글자 이상 15글자 이하) 정규식
const RegExpPASSWORD = r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?~^<>,.&+=])[A-Za-z\d$@$!%*#?~^<>,.&+=]{8,15}$';
