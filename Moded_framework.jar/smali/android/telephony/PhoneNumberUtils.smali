.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final COUNTLY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field private static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field private static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field private static final ECC_CATEGORY_Police:I = 0x1

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 87
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1228
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1955
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1957
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1958
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1960
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1961
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1963
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1964
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1966
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1967
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1969
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1970
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1972
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1973
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1975
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1976
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1978
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1979
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_246

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    .line 2426
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 2414
    :array_246
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2449
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1101
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 15
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1173
    .local v7, numberLenReal:I
    move v0, v7

    .line 1174
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    const/4 v1, 0x1

    move v3, v1

    .line 1175
    .local v3, hasPlus:Z
    :goto_10
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    const/4 v1, 0x1

    move v4, v1

    .line 1176
    .local v4, hasSharp:Z
    :goto_1b
    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    const/4 v1, 0x1

    move v5, v1

    .line 1178
    .local v5, hasStar:Z
    :goto_26
    if-eqz v3, :cond_2a

    add-int/lit8 v0, v0, -0x1

    .line 1180
    :cond_2a
    if-nez v0, :cond_37

    const/4 p0, 0x0

    .line 1209
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_2d
    return-object p0

    .line 1174
    .end local v3           #hasPlus:Z
    .end local v4           #hasSharp:Z
    .end local v5           #hasStar:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_2e
    const/4 v1, 0x0

    move v3, v1

    goto :goto_10

    .line 1175
    .restart local v3       #hasPlus:Z
    :cond_31
    const/4 v1, 0x0

    move v4, v1

    goto :goto_1b

    .line 1176
    .restart local v4       #hasSharp:Z
    :cond_34
    const/4 v1, 0x0

    move v5, v1

    goto :goto_26

    .line 1182
    .restart local v5       #hasStar:Z
    :cond_37
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1183
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1184
    .local v0, extraBytes:I
    if-eqz p1, :cond_a7

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1185
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_41
    add-int v9, v1, v2

    .line 1187
    .end local v1           #resultLen:I
    .local v9, resultLen:I
    new-array v8, v9, [B

    .line 1189
    .local v8, result:[B
    const/4 v0, 0x0

    .line 1190
    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .local v6, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_49
    if-ge v6, v7, :cond_75

    .line 1191
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1192
    .local v0, c:C
    const/16 v10, 0x2b

    if-ne v0, v10, :cond_59

    move v0, v1

    .line 1190
    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_54
    add-int/lit8 v1, v6, 0x1

    .end local v6           #i:I
    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .restart local v6       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_49

    .line 1193
    .local v0, c:C
    :cond_59
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_73

    const/4 v10, 0x4

    .line 1194
    .local v10, shift:I
    :goto_5f
    shr-int/lit8 v11, v1, 0x1

    add-int/2addr v11, v2

    aget-byte v12, v8, v11

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v10

    int-to-byte v0, v0

    or-int/2addr v0, v12

    int-to-byte v0, v0

    aput-byte v0, v8, v11

    .line 1195
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_54

    .line 1193
    .end local v10           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_73
    const/4 v10, 0x0

    goto :goto_5f

    .line 1199
    .end local v0           #c:C
    :cond_75
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_84

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v8, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v8, p0

    .line 1201
    :cond_84
    const/4 p0, 0x0

    .line 1202
    .local p0, offset:I
    if-eqz p1, :cond_90

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v9, v0

    int-to-byte v0, v0

    aput-byte v0, v8, p0

    move p0, p1

    .line 1203
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_90
    if-eqz v3, :cond_a4

    const/16 p1, 0x91

    :goto_94
    int-to-byte p1, p1

    aput-byte p1, v8, p0

    .line 1205
    if-nez v4, :cond_9b

    if-eqz v5, :cond_a2

    .line 1206
    :cond_9b
    aget-byte p1, v8, p0

    and-int/lit16 p1, p1, 0xf0

    int-to-byte p1, p1

    aput-byte p1, v8, p0

    :cond_a2
    move-object p0, v8

    .line 1209
    goto :goto_2d

    .line 1203
    :cond_a4
    const/16 p1, 0x81

    goto :goto_94

    .end local v2           #extraBytes:I
    .end local v6           #i:I
    .end local v8           #result:[B
    .end local v9           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_a7
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_41
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 2274
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 2275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2276
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2284
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_15
    return-object v2

    .line 2281
    .end local v2           #retStr:Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2282
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_15
.end method

.method private static bcdToChar(B)C
    .registers 2
    .parameter "b"

    .prologue
    .line 1016
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1017
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1024
    :goto_7
    return v0

    .line 1018
    :cond_8
    packed-switch p0, :pswitch_data_1a

    .line 1024
    const/4 v0, 0x0

    goto :goto_7

    .line 1019
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1020
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1021
    :pswitch_13
    const/16 v0, 0x2c

    goto :goto_7

    .line 1022
    :pswitch_16
    const/16 v0, 0x4e

    goto :goto_7

    .line 1018
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1008
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 15
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v11, ""

    .line 863
    const/4 v2, 0x0

    .line 864
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 866
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v8, :cond_16

    .line 867
    const-string v5, ""

    move-object v5, v11

    .line 958
    :goto_15
    return-object v5

    .line 871
    :cond_16
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1f

    .line 872
    const/4 v2, 0x1

    .line 875
    :cond_1f
    add-int/lit8 v5, p1, 0x1

    sub-int v6, p2, v7

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 878
    if-eqz v2, :cond_32

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_32

    .line 880
    const-string v5, ""

    move-object v5, v11

    goto :goto_15

    .line 883
    :cond_32
    if-eqz v2, :cond_7b

    .line 909
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 910
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 911
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 912
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 913
    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_7b
    :goto_7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    .line 927
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_80
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 936
    :cond_af
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 937
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 938
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 944
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 951
    :cond_e6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "dialStr"

    .prologue
    const-string v4, ""

    .line 2017
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2018
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2020
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2021
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2022
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2023
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 2029
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    :goto_41
    return-object v2

    :cond_42
    move-object v2, p0

    goto :goto_41
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormt"

    .prologue
    const/4 v7, 0x1

    .line 2061
    move-object v3, p0

    .line 2064
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_49

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_49

    .line 2068
    if-ne p1, p2, :cond_62

    if-ne p1, v7, :cond_62

    .line 2070
    const/4 v2, 0x0

    .line 2071
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 2074
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2081
    :cond_14
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2083
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2086
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 2087
    if-nez v3, :cond_4b

    .line 2088
    move-object v3, v1

    .line 2099
    :goto_25
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 2101
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2104
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_57

    .line 2105
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2108
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2120
    .end local v0           #dialableIndex:I
    :cond_3d
    :goto_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_49
    :goto_49
    move-object v5, v3

    .line 2128
    :goto_4a
    return-object v5

    .line 2090
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 2096
    :cond_50
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    .line 2097
    goto :goto_4a

    .line 2113
    .restart local v0       #dialableIndex:I
    :cond_57
    if-gez v0, :cond_5b

    .line 2114
    const-string v2, ""

    .line 2116
    :cond_5b
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 2125
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_62
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private static charToBCD(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 1030
    if-lt p0, v1, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1031
    sub-int v0, p0, v1

    .line 1039
    :goto_a
    return v0

    .line 1032
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 1033
    const/16 v0, 0xa

    goto :goto_a

    .line 1034
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 1035
    const/16 v0, 0xb

    goto :goto_a

    .line 1036
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 1037
    const/16 v0, 0xc

    goto :goto_a

    .line 1038
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 1039
    const/16 v0, 0xd

    goto :goto_a

    .line 1041
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v2, 0x0

    .line 2577
    const/4 v0, 0x0

    .line 2578
    .local v0, trunk_prefix_was_read:Z
    :goto_2
    if-lt p2, p1, :cond_22

    .line 2579
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    if-ltz v1, :cond_16

    .line 2580
    if-eqz v0, :cond_12

    move v1, v2

    .line 2595
    :goto_11
    return v1

    .line 2586
    :cond_12
    const/4 v0, 0x1

    .line 2592
    :cond_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2588
    :cond_16
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    .line 2590
    goto :goto_11

    .line 2595
    :cond_22
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 368
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 375
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "a"
    .parameter "b"

    .prologue
    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, numNonDialableCharsInA:I
    const/4 v4, 0x0

    .line 399
    .local v4, numNonDialableCharsInB:I
    if-eqz p0, :cond_6

    if-nez p1, :cond_f

    :cond_6
    if-ne p0, p1, :cond_d

    const/4 p0, 0x1

    .end local p0
    :goto_9
    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .line 483
    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    :goto_c
    return v0

    .line 399
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_d
    const/4 p0, 0x0

    goto :goto_9

    .line 401
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 402
    :cond_1b
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 405
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_20
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 407
    .local v1, ib:I
    const/4 v2, 0x0

    .local v2, matched:I
    move v6, v4

    .end local v4           #numNonDialableCharsInB:I
    .local v6, numNonDialableCharsInB:I
    move v4, v2

    .end local v2           #matched:I
    .local v4, matched:I
    move v2, v3

    .end local v3           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v3, v1

    .end local v1           #ib:I
    .local v3, ib:I
    move v1, v0

    .line 409
    .end local v0           #ia:I
    .local v1, ia:I
    :goto_2e
    if-ltz v1, :cond_e8

    if-ltz v3, :cond_e8

    .line 411
    const/4 v5, 0x0

    .line 413
    .local v5, skipCmp:Z
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 415
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_e3

    .line 416
    add-int/lit8 v1, v1, -0x1

    .line 417
    const/4 v5, 0x1

    .line 418
    add-int/lit8 v2, v2, 0x1

    move v7, v5

    .end local v5           #skipCmp:Z
    .local v7, skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .line 421
    .end local v1           #ia:I
    .local v2, ia:I
    :goto_45
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 423
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v8

    if-nez v8, :cond_54

    .line 424
    add-int/lit8 v3, v3, -0x1

    .line 425
    const/4 v7, 0x1

    .line 426
    add-int/lit8 v6, v6, 0x1

    .line 429
    :cond_54
    if-nez v7, :cond_df

    .line 430
    if-eq v1, v0, :cond_7a

    const/16 v7, 0x4e

    if-eq v0, v7, :cond_7a

    .end local v7           #skipCmp:Z
    const/16 v0, 0x4e

    if-eq v1, v0, :cond_7a

    .end local v0           #ca:C
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    move v2, v5

    .line 437
    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    :goto_64
    const/4 v5, 0x7

    if-ge v4, v5, :cond_8a

    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    sub-int/2addr p0, v2

    .line 439
    .local p0, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1           #b:Ljava/lang/String;
    sub-int/2addr p1, v3

    .line 444
    .local p1, effectiveBLen:I
    if-ne p0, p1, :cond_85

    if-ne p0, v4, :cond_85

    .line 445
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 433
    .end local v0           #ia:I
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_7a
    add-int/lit8 v0, v2, -0x1

    .end local v2           #ia:I
    .restart local v0       #ia:I
    add-int/lit8 v1, v3, -0x1

    .end local v3           #ib:I
    .local v1, ib:I
    add-int/lit8 v2, v4, 0x1

    .end local v4           #matched:I
    .local v2, matched:I
    :goto_80
    move v4, v2

    .end local v2           #matched:I
    .restart local v4       #matched:I
    move v3, v1

    .end local v1           #ib:I
    .restart local v3       #ib:I
    move v2, v5

    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v1, v0

    .line 435
    .end local v0           #ia:I
    .local v1, ia:I
    goto :goto_2e

    .line 448
    .end local v6           #numNonDialableCharsInB:I
    .restart local v0       #ia:I
    .local v1, ib:I
    .local v3, numNonDialableCharsInB:I
    .local p0, effectiveALen:I
    .local p1, effectiveBLen:I
    :cond_85
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 452
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_8a
    const/4 v5, 0x7

    if-lt v4, v5, :cond_97

    if-ltz v0, :cond_91

    if-gez v1, :cond_97

    .line 453
    :cond_91
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 465
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_97
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    .end local v4           #matched:I
    move-result v4

    if-eqz v4, :cond_ad

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 468
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 471
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_ad
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c3

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 474
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 477
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    .end local v1           #ib:I
    move-result p1

    .end local p1           #b:Ljava/lang/String;
    if-eqz p1, :cond_d9

    add-int/lit8 p1, v0, 0x1

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    if-eqz p0, :cond_d9

    .line 480
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 483
    .end local p0           #numNonDialableCharsInA:I
    .end local p1           #numNonDialableCharsInB:I
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    :cond_d9
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .restart local p1       #numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .restart local p0       #numNonDialableCharsInA:I
    goto/16 :goto_c

    .local v0, ca:C
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v4       #matched:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .restart local v7       #skipCmp:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_df
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v2, v4

    .end local v4           #matched:I
    .local v2, matched:I
    goto :goto_80

    .end local v7           #skipCmp:Z
    .local v0, ca:C
    .local v1, ia:I
    .local v2, numNonDialableCharsInA:I
    .restart local v3       #ib:I
    .restart local v4       #matched:I
    .local v5, skipCmp:Z
    :cond_e3
    move v7, v5

    .end local v5           #skipCmp:Z
    .restart local v7       #skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .end local v1           #ia:I
    .local v2, ia:I
    goto/16 :goto_45

    .end local v0           #ca:C
    .end local v5           #numNonDialableCharsInA:I
    .end local v7           #skipCmp:Z
    .restart local v1       #ia:I
    .local v2, numNonDialableCharsInA:I
    :cond_e8
    move v0, v1

    .end local v1           #ia:I
    .local v0, ia:I
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    goto/16 :goto_64
.end method

.method public static compareLooselyOld(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "a"
    .parameter "b"

    .prologue
    const/16 v11, 0x4e

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 507
    if-eqz p0, :cond_9

    if-nez p1, :cond_f

    :cond_9
    if-ne p0, p1, :cond_d

    move v7, v8

    .line 586
    :goto_c
    return v7

    :cond_d
    move v7, v9

    .line 507
    goto :goto_c

    .line 509
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1d

    :cond_1b
    move v7, v9

    .line 510
    goto :goto_c

    .line 513
    :cond_1d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v3

    .line 514
    .local v3, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 515
    .local v4, ib:I
    const/4 v5, 0x0

    .line 517
    .local v5, matched:I
    :cond_26
    :goto_26
    if-ltz v3, :cond_4d

    if-ltz v4, :cond_4d

    .line 519
    const/4 v6, 0x0

    .line 521
    .local v6, skipCmp:Z
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 523
    .local v1, ca:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_38

    .line 524
    add-int/lit8 v3, v3, -0x1

    .line 525
    const/4 v6, 0x1

    .line 528
    :cond_38
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 530
    .local v2, cb:C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_45

    .line 531
    add-int/lit8 v4, v4, -0x1

    .line 532
    const/4 v6, 0x1

    .line 535
    :cond_45
    if-nez v6, :cond_26

    .line 536
    if-eq v2, v1, :cond_5d

    if-eq v1, v11, :cond_5d

    if-eq v2, v11, :cond_5d

    .line 543
    .end local v1           #ca:C
    .end local v2           #cb:C
    .end local v6           #skipCmp:Z
    :cond_4d
    if-ge v5, v10, :cond_66

    .line 544
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 548
    .local v0, aLen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_64

    if-ne v0, v5, :cond_64

    move v7, v8

    .line 549
    goto :goto_c

    .line 539
    .end local v0           #aLen:I
    .restart local v1       #ca:C
    .restart local v2       #cb:C
    .restart local v6       #skipCmp:Z
    :cond_5d
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .end local v1           #ca:C
    .end local v2           #cb:C
    .end local v6           #skipCmp:Z
    .restart local v0       #aLen:I
    :cond_64
    move v7, v9

    .line 551
    goto :goto_c

    .line 555
    .end local v0           #aLen:I
    :cond_66
    if-lt v5, v10, :cond_6e

    if-ltz v3, :cond_6c

    if-gez v4, :cond_6e

    :cond_6c
    move v7, v8

    .line 556
    goto :goto_c

    .line 568
    :cond_6e
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_80

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_80

    move v7, v8

    .line 571
    goto :goto_c

    .line 574
    :cond_80
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_93

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_93

    move v7, v8

    .line 577
    goto/16 :goto_c

    .line 580
    :cond_93
    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a6

    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a6

    move v7, v8

    .line 583
    goto/16 :goto_c

    :cond_a6
    move v7, v9

    .line 586
    goto/16 :goto_c
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 602
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 603
    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    .line 740
    .end local p0
    .end local p1
    .end local p2
    :goto_7
    return p0

    .line 603
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_8
    const/4 p0, 0x0

    goto :goto_7

    .line 604
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 605
    const/4 p0, 0x0

    goto :goto_7

    .line 608
    :cond_18
    const/4 v3, 0x0

    .line 609
    .local v3, forwardIndexA:I
    const/4 v4, 0x0

    .line 611
    .local v4, forwardIndexB:I
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v1

    .line 613
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v2

    .line 615
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v0, 0x0

    .line 616
    .local v0, bothHasCountryCallingCode:Z
    const/4 v5, 0x1

    .line 617
    .local v5, okToIgnorePrefix:Z
    const/4 v6, 0x0

    .line 618
    .local v6, trunkPrefixIsOmittedA:Z
    const/4 v7, 0x0

    .line 619
    .local v7, trunkPrefixIsOmittedB:Z
    if-eqz v1, :cond_6f

    if-eqz v2, :cond_6f

    .line 620
    iget v0, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v0           #bothHasCountryCallingCode:Z
    iget v3, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v3           #forwardIndexA:I
    if-eq v0, v3, :cond_32

    .line 622
    const/4 p0, 0x0

    goto :goto_7

    .line 626
    :cond_32
    const/4 v3, 0x0

    .line 627
    .end local v5           #okToIgnorePrefix:Z
    .local v3, okToIgnorePrefix:Z
    const/4 v0, 0x1

    .line 628
    .restart local v0       #bothHasCountryCallingCode:Z
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 629
    .local v1, forwardIndexA:I
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v10, trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v9, trunkPrefixIsOmittedA:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v3

    .end local v3           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v2, v0

    .line 655
    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 656
    .local v0, backwardIndexA:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 657
    .local v1, backwardIndexB:I
    :cond_4a
    :goto_4a
    if-lt v0, v5, :cond_aa

    if-lt v1, v6, :cond_aa

    .line 658
    const/4 v8, 0x0

    .line 659
    .local v8, skip_compare:Z
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 660
    .local v3, chA:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 661
    .local v4, chB:C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_60

    .line 662
    add-int/lit8 v0, v0, -0x1

    .line 663
    const/4 v8, 0x1

    .line 665
    :cond_60
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 666
    add-int/lit8 v1, v1, -0x1

    .line 667
    const/4 v8, 0x1

    .line 670
    :cond_69
    if-nez v8, :cond_4a

    .line 671
    if-eq v3, v4, :cond_a5

    .line 672
    const/4 p0, 0x0

    goto :goto_7

    .line 630
    .end local v8           #skip_compare:Z
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_6f
    if-nez v1, :cond_7b

    if-nez v2, :cond_7b

    .line 633
    const/4 v1, 0x0

    .end local v5           #okToIgnorePrefix:Z
    .local v1, okToIgnorePrefix:Z
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v3

    .end local v3           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v4

    .end local v4           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v1

    .end local v1           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    goto :goto_3e

    .line 635
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .restart local v3       #forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_7b
    if-eqz v1, :cond_8b

    .line 636
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .line 644
    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    :goto_80
    if-eqz v2, :cond_95

    .line 645
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_3e

    .line 638
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_8b
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v1           #cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v1

    .line 639
    .local v1, tmp:I
    if-ltz v1, :cond_130

    .line 640
    move v1, v1

    .line 641
    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    const/4 v3, 0x1

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto :goto_80

    .line 647
    :cond_95
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v2           #cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v2

    .line 648
    .local v2, tmp:I
    if-ltz v2, :cond_128

    .line 649
    move v2, v2

    .line 650
    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    const/4 v4, 0x1

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v4, trunkPrefixIsOmittedB:Z
    move v10, v4

    .end local v4           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_3e

    .line 674
    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local v3, chA:C
    .local v4, chB:C
    .restart local v8       #skip_compare:Z
    :cond_a5
    add-int/lit8 v0, v0, -0x1

    .line 675
    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    .line 679
    .end local v3           #chA:C
    .end local v4           #chB:C
    .end local v8           #skip_compare:Z
    :cond_aa
    if-eqz v7, :cond_d8

    .line 680
    if-eqz v9, :cond_b0

    if-le v5, v0, :cond_b6

    :cond_b0
    invoke-static {p0, v5, v0}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    .end local v2           #bothHasCountryCallingCode:Z
    if-nez v2, :cond_c2

    .line 682
    :cond_b6
    if-eqz p2, :cond_bf

    .line 692
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_7

    .line 694
    .restart local p2
    :cond_bf
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 697
    :cond_c2
    if-eqz v10, :cond_c6

    if-le v6, v1, :cond_cc

    :cond_c6
    invoke-static {p1, v5, v1}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_125

    .line 699
    :cond_cc
    if-eqz p2, :cond_d5

    .line 700
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_7

    .line 702
    .restart local p2
    :cond_d5
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 715
    .restart local v2       #bothHasCountryCallingCode:Z
    :cond_d8
    if-nez v2, :cond_f7

    const/4 p2, 0x1

    .local p2, maybeNamp:Z
    :goto_db
    move v2, p2

    .local v2, maybeNamp:I
    move p2, v0

    .line 716
    .end local v0           #backwardIndexA:I
    .local p2, backwardIndexA:I
    :goto_dd
    if-lt p2, v5, :cond_122

    .line 717
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 718
    .local v0, chA:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 719
    if-eqz v2, :cond_f9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chA:C
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f9

    .line 720
    .end local v2           #maybeNamp:I
    const/4 v0, 0x0

    .line 725
    :goto_f3
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    .line 726
    .restart local v2       #maybeNamp:I
    goto :goto_dd

    .line 715
    .local v0, backwardIndexA:I
    .local v2, bothHasCountryCallingCode:Z
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_f7
    const/4 p2, 0x0

    goto :goto_db

    .line 722
    .end local v0           #backwardIndexA:I
    .end local v2           #bothHasCountryCallingCode:Z
    .local p2, backwardIndexA:I
    :cond_f9
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 727
    .local v1, maybeNamp:I
    .local p0, backwardIndexB:I
    :goto_fc
    if-lt p0, v6, :cond_119

    .line 728
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 729
    .local v0, chB:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 730
    if-eqz v1, :cond_116

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chB:C
    const/4 v1, 0x1

    if-ne v0, v1, :cond_116

    .line 731
    .end local v1           #maybeNamp:I
    const/4 v0, 0x0

    .line 736
    :goto_112
    add-int/lit8 p0, p0, -0x1

    move v1, v0

    .line 737
    .restart local v1       #maybeNamp:I
    goto :goto_fc

    .line 733
    .end local v1           #maybeNamp:I
    :cond_116
    const/4 p0, 0x0

    goto/16 :goto_7

    .restart local v1       #maybeNamp:I
    :cond_119
    move p1, p0

    .end local p0           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, p2

    .line 740
    .end local v1           #maybeNamp:I
    .end local p2           #backwardIndexA:I
    .local p0, backwardIndexA:I
    :goto_11b
    const/4 p0, 0x1

    goto/16 :goto_7

    .restart local v0       #chB:C
    .restart local v1       #maybeNamp:I
    .local p0, backwardIndexB:I
    .local p1, b:Ljava/lang/String;
    .restart local p2       #backwardIndexA:I
    :cond_11e
    move v0, v1

    .end local v1           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_112

    .local v0, chA:C
    .local v1, backwardIndexB:I
    .local v2, maybeNamp:I
    .local p0, a:Ljava/lang/String;
    :cond_120
    move v0, v2

    .end local v2           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_f3

    .end local v0           #maybeNamp:I
    .restart local v2       #maybeNamp:I
    :cond_122
    move p0, v1

    .end local v1           #backwardIndexB:I
    .local p0, backwardIndexB:I
    move v1, v2

    .end local v2           #maybeNamp:I
    .local v1, maybeNamp:I
    goto :goto_fc

    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local p0, a:Ljava/lang/String;
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_125
    move p1, v1

    .end local v1           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, v0

    .end local v0           #backwardIndexA:I
    .local p0, backwardIndexA:I
    goto :goto_11b

    .end local v6           #forwardIndexB:I
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, forwardIndexA:I
    .local v2, tmp:I
    .local v3, trunkPrefixIsOmittedA:Z
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v7, trunkPrefixIsOmittedB:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_128
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v6, v4

    .end local v4           #forwardIndexB:I
    .restart local v6       #forwardIndexB:I
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto/16 :goto_3e

    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, tmp:I
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_130
    move v1, v3

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto/16 :goto_80
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "input"

    .prologue
    .line 1932
    if-nez p0, :cond_4

    move-object v4, p0

    .line 1948
    :goto_3
    return-object v4

    .line 1935
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1936
    .local v2, len:I
    if-nez v2, :cond_c

    move-object v4, p0

    .line 1937
    goto :goto_3

    .line 1940
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1942
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_21

    .line 1943
    aget-char v0, v3, v1

    .line 1945
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1942
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1948
    .end local v0           #c:C
    :cond_21
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_3
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 203
    if-nez p0, :cond_4

    .line 204
    const/4 v5, 0x0

    .line 221
    :goto_3
    return-object v5

    .line 207
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 208
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 211
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2e

    .line 212
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 213
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_21

    if-nez v1, :cond_28

    .line 214
    :cond_21
    const/4 v1, 0x1

    .line 215
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 216
    :cond_28
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 221
    .end local v0           #c:C
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 234
    if-nez p0, :cond_4

    .line 235
    const/4 v5, 0x0

    .line 257
    :goto_3
    return-object v5

    .line 238
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 239
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 240
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 242
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 243
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1f

    .line 245
    if-eqz v1, :cond_1e

    .line 242
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 248
    :cond_1e
    const/4 v1, 0x1

    .line 250
    :cond_1f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 251
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 252
    :cond_29
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 257
    .end local v0           #c:C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 332
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 348
    :goto_3
    return-object v5

    .line 335
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 339
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 340
    .local v3, s:I
    :goto_13
    if-ge v1, v3, :cond_25

    .line 342
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 343
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 344
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 348
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .parameter "postDialStr"

    .prologue
    .line 2258
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 2259
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2260
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    .line 2264
    .end local v0           #c:C
    :goto_12
    return v2

    .line 2258
    .restart local v0       #c:C
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2264
    .end local v0           #c:C
    :cond_16
    const/4 v2, -0x1

    goto :goto_12
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 1732
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1733
    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .registers 8
    .parameter "text"

    .prologue
    .line 1399
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1402
    .local v1, length:I
    const/16 v0, 0xe

    if-le v1, v0, :cond_a

    move p0, v1

    .line 1588
    .end local v1           #length:I
    .local p0, length:I
    :goto_9
    return-void

    .line 1405
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_a
    const/4 v0, 0x2

    if-ge v1, v0, :cond_f

    move p0, v1

    .line 1407
    .end local v1           #length:I
    .local p0, length:I
    goto :goto_9

    .line 1410
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_f
    const/4 v0, 0x5

    .line 1411
    .local v0, state:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, Digits:Ljava/lang/String;
    const/4 v2, 0x6

    if-ge v1, v2, :cond_39

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, p:I
    :goto_20
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_37

    .line 1416
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_34

    .line 1417
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_20

    .line 1419
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_37
    move p0, v1

    .line 1422
    .end local v1           #length:I
    .local p0, length:I
    goto :goto_9

    .line 1425
    .local v0, Digits:Ljava/lang/String;
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_39
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_83

    .line 1426
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_67

    .line 1427
    const/4 v0, 0x6

    .local v0, state:I
    move v4, v0

    .line 1467
    .end local v0           #state:I
    .local v4, state:I
    :goto_4d
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1469
    .local v3, saved:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1470
    .end local v1           #length:I
    .local v0, p:I
    :goto_53
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_126

    .line 1471
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_122

    .line 1472
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_53

    .line 1429
    .end local v3           #saved:Ljava/lang/CharSequence;
    .end local v4           #state:I
    .local v0, Digits:Ljava/lang/String;
    .restart local v1       #length:I
    :cond_67
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6c

    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto :goto_9

    .line 1430
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_6c
    const-string v2, "0505"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string v2, "050-5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #Digits:Ljava/lang/String;
    if-eqz v0, :cond_80

    .line 1431
    :cond_7c
    const/16 v0, 0xe

    .local v0, state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto :goto_4d

    .line 1433
    .end local v4           #state:I
    :cond_80
    const/4 v0, 0x7

    .restart local v0       #state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto :goto_4d

    .line 1435
    .end local v4           #state:I
    .local v0, Digits:Ljava/lang/String;
    :cond_83
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_c9

    .line 1436
    const/4 v2, 0x4

    if-ge v1, v2, :cond_92

    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1437
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_92
    const-string v2, "*23#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "*22#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "*31#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1438
    :cond_aa
    const/4 v0, 0x5

    if-le v1, v0, :cond_b0

    .end local v0           #Digits:Ljava/lang/String;
    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1439
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_b0
    const/16 v0, 0xa

    .local v0, state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto :goto_4d

    .line 1440
    .end local v4           #state:I
    .local v0, Digits:Ljava/lang/String;
    :cond_b4
    const-string v2, "*230#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #Digits:Ljava/lang/String;
    if-eqz v0, :cond_c6

    .line 1441
    const/4 v0, 0x6

    if-le v1, v0, :cond_c2

    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1442
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_c2
    const/16 v0, 0xb

    .local v0, state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto :goto_4d

    .end local v4           #state:I
    :cond_c6
    move p0, v1

    .line 1444
    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1447
    .local v0, Digits:Ljava/lang/String;
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_c9
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_fc

    .line 1448
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_e6

    .line 1449
    const/4 v0, 0x3

    if-le v1, v0, :cond_e1

    .end local v0           #Digits:Ljava/lang/String;
    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1450
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_e1
    const/16 v0, 0x8

    .local v0, state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto/16 :goto_4d

    .line 1451
    .end local v4           #state:I
    .local v0, Digits:Ljava/lang/String;
    :cond_e6
    const-string v2, "#31#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #Digits:Ljava/lang/String;
    if-eqz v0, :cond_f9

    .line 1452
    const/4 v0, 0x5

    if-le v1, v0, :cond_f4

    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1453
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_f4
    const/16 v0, 0xa

    .local v0, state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto/16 :goto_4d

    .end local v4           #state:I
    :cond_f9
    move p0, v1

    .line 1455
    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1458
    .local v0, Digits:Ljava/lang/String;
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_fc
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    .end local v0           #Digits:Ljava/lang/String;
    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_114

    .line 1459
    const/4 v0, 0x6

    if-lt v1, v0, :cond_10c

    const/16 v0, 0x9

    if-le v1, v0, :cond_10f

    :cond_10c
    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1460
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_10f
    const/16 v0, 0x9

    .local v0, state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto/16 :goto_4d

    .line 1462
    .end local v4           #state:I
    :cond_114
    const/4 v0, 0x5

    if-lt v1, v0, :cond_11b

    const/16 v0, 0x9

    if-le v1, v0, :cond_11e

    :cond_11b
    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1463
    .restart local v1       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_11e
    const/4 v0, 0x5

    .restart local v0       #state:I
    move v4, v0

    .end local v0           #state:I
    .restart local v4       #state:I
    goto/16 :goto_4d

    .line 1474
    .end local v1           #length:I
    .local v0, p:I
    .restart local v3       #saved:Ljava/lang/CharSequence;
    :cond_122
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_53

    .line 1478
    :cond_126
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1480
    .local v2, length:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #p:I
    const-string v1, "3003003000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 1481
    const/4 v0, 0x0

    const-string v1, "300-300-3000"

    invoke-interface {p0, v0, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move p0, v2

    .line 1482
    .end local v2           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1488
    .restart local v2       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_13f
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1489
    .local v0, dashPositions:[I
    const/4 v1, 0x0

    .line 1492
    .local v1, numDashes:I
    packed-switch v4, :pswitch_data_23e

    .line 1576
    :pswitch_146
    const/4 v0, 0x0

    invoke-interface {p0, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #dashPositions:[I
    move p0, v2

    .line 1577
    .end local v2           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .line 1494
    .restart local v0       #dashPositions:[I
    .restart local v2       #length:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_14d
    const/4 v3, 0x7

    if-gt v2, v3, :cond_168

    .line 1495
    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v3, v0, v1

    .line 1496
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1581
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    :goto_156
    if-eqz v3, :cond_237

    .line 1582
    const/4 v1, 0x0

    .end local v4           #state:I
    .local v1, i:I
    :goto_159
    if-ge v1, v3, :cond_237

    .line 1583
    aget v4, v0, v1

    .line 1584
    .local v4, pos:I
    add-int v5, v4, v1

    add-int/2addr v4, v1

    const-string v6, "-"

    .end local v4           #pos:I
    invoke-interface {p0, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1582
    add-int/lit8 v1, v1, 0x1

    goto :goto_159

    .line 1498
    .end local v3           #numDashes:I
    .local v1, numDashes:I
    .local v4, state:I
    :cond_168
    const/4 v3, 0x7

    if-le v2, v3, :cond_17c

    const/16 v3, 0xa

    if-gt v2, v3, :cond_17c

    .line 1499
    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v3, v0, v1

    .line 1500
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    const/4 v3, 0x4

    sub-int v3, v2, v3

    aput v3, v0, v1

    .line 1501
    const/4 v1, 0x2

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1502
    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_156

    .line 1503
    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    :cond_17c
    const/16 v3, 0xa

    if-le v2, v3, :cond_23a

    .line 1504
    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v3, v0, v1

    .line 1505
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    const/4 v3, 0x7

    aput v3, v0, v1

    .line 1506
    const/4 v1, 0x2

    .restart local v1       #numDashes:I
    move v3, v1

    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_156

    .line 1510
    .restart local v1       #numDashes:I
    .local v3, saved:Ljava/lang/CharSequence;
    :pswitch_18b
    const/16 v3, 0x8

    if-gt v2, v3, :cond_196

    .line 1511
    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    .line 1512
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1513
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    goto :goto_156

    .line 1514
    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    :cond_196
    const/16 v3, 0x8

    if-le v2, v3, :cond_1ab

    const/16 v3, 0xb

    if-gt v2, v3, :cond_1ab

    .line 1515
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    .line 1516
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    const/4 v3, 0x4

    sub-int v3, v2, v3

    aput v3, v0, v1

    .line 1517
    const/4 v1, 0x2

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1518
    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_156

    .line 1519
    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    :cond_1ab
    const/16 v3, 0xb

    if-le v2, v3, :cond_23a

    .line 1520
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    .line 1521
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    const/16 v3, 0x8

    aput v3, v0, v1

    .line 1522
    const/4 v1, 0x2

    .restart local v1       #numDashes:I
    move v3, v1

    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto :goto_156

    .line 1526
    .restart local v1       #numDashes:I
    .local v3, saved:Ljava/lang/CharSequence;
    :pswitch_1bb
    const/4 v3, 0x6

    if-gt v2, v3, :cond_1c5

    .line 1527
    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v0, v1

    .line 1528
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1529
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    goto :goto_156

    .line 1530
    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    :cond_1c5
    const/4 v3, 0x6

    if-le v2, v3, :cond_1da

    const/16 v3, 0x9

    if-gt v2, v3, :cond_1da

    .line 1531
    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v0, v1

    .line 1532
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    const/4 v3, 0x4

    sub-int v3, v2, v3

    aput v3, v0, v1

    .line 1533
    const/4 v1, 0x2

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1534
    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto/16 :goto_156

    .line 1535
    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    :cond_1da
    const/16 v3, 0x9

    if-le v2, v3, :cond_23a

    .line 1536
    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v0, v1

    .line 1537
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    const/4 v3, 0x6

    aput v3, v0, v1

    .line 1538
    const/4 v1, 0x2

    .restart local v1       #numDashes:I
    move v3, v1

    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto/16 :goto_156

    .line 1542
    .restart local v1       #numDashes:I
    .local v3, saved:Ljava/lang/CharSequence;
    :pswitch_1ea
    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v0, v1

    .line 1543
    .end local v1           #numDashes:I
    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1544
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    goto/16 :goto_156

    .line 1546
    .restart local v1       #numDashes:I
    .local v3, saved:Ljava/lang/CharSequence;
    :pswitch_1f2
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    .line 1547
    .end local v1           #numDashes:I
    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1548
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    goto/16 :goto_156

    .line 1550
    .restart local v1       #numDashes:I
    .local v3, saved:Ljava/lang/CharSequence;
    :pswitch_1fa
    const/4 v1, 0x0

    const/4 v3, 0x5

    aput v3, v0, v1

    .line 1551
    .end local v1           #numDashes:I
    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1552
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    goto/16 :goto_156

    .line 1554
    .restart local v1       #numDashes:I
    .local v3, saved:Ljava/lang/CharSequence;
    :pswitch_202
    const/16 v3, 0x8

    if-gt v2, v3, :cond_210

    .line 1555
    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    const/4 v3, 0x4

    sub-int v3, v2, v3

    aput v3, v0, v1

    .line 1556
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1557
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    goto/16 :goto_156

    .line 1558
    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    :cond_210
    const/16 v3, 0x8

    if-le v2, v3, :cond_23a

    .line 1559
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    .line 1560
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto/16 :goto_156

    .line 1564
    .restart local v1       #numDashes:I
    .local v3, saved:Ljava/lang/CharSequence;
    :pswitch_21c
    const/4 v3, 0x4

    if-le v2, v3, :cond_22c

    .end local v3           #saved:Ljava/lang/CharSequence;
    const/4 v3, 0x7

    if-gt v2, v3, :cond_22c

    .line 1565
    const/4 v1, 0x0

    const/4 v3, 0x4

    sub-int v3, v2, v3

    aput v3, v0, v1

    .line 1566
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .line 1567
    .end local v1           #numDashes:I
    .local v3, numDashes:I
    goto/16 :goto_156

    .line 1568
    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    :cond_22c
    const/4 v3, 0x7

    if-le v2, v3, :cond_23a

    .line 1569
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    .line 1570
    .end local v1           #numDashes:I
    const/4 v1, 0x1

    .restart local v1       #numDashes:I
    move v3, v1

    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto/16 :goto_156

    .end local v4           #state:I
    :cond_237
    move p0, v2

    .line 1588
    .end local v2           #length:I
    .local p0, length:I
    goto/16 :goto_9

    .end local v3           #numDashes:I
    .restart local v1       #numDashes:I
    .restart local v2       #length:I
    .restart local v4       #state:I
    .local p0, text:Landroid/text/Editable;
    :cond_23a
    move v3, v1

    .end local v1           #numDashes:I
    .restart local v3       #numDashes:I
    goto/16 :goto_156

    .line 1492
    nop

    :pswitch_data_23e
    .packed-switch 0x5
        :pswitch_21c
        :pswitch_1bb
        :pswitch_14d
        :pswitch_1ea
        :pswitch_202
        :pswitch_1f2
        :pswitch_1fa
        :pswitch_146
        :pswitch_146
        :pswitch_18b
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 9
    .parameter "text"

    .prologue
    .line 1612
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1613
    .local v0, length:I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_e

    move p0, v0

    .line 1714
    .end local v0           #length:I
    .local p0, length:I
    :goto_d
    return-void

    .line 1616
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_e
    const/4 v1, 0x5

    if-gt v0, v1, :cond_13

    move p0, v0

    .line 1618
    .end local v0           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1621
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_13
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1624
    .local v6, saved:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1625
    .local v0, p:I
    :goto_19
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1626
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2d

    .line 1627
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_19

    .line 1629
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1632
    :cond_30
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1637
    .local v3, length:I
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1638
    .end local v0           #p:I
    .local v1, dashPositions:[I
    const/4 v2, 0x0

    .line 1640
    .local v2, numDashes:I
    const/4 v5, 0x1

    .line 1641
    .local v5, state:I
    const/4 v4, 0x0

    .line 1642
    .local v4, numDigits:I
    const/4 v0, 0x0

    .local v0, i:I
    move v7, v5

    .end local v5           #state:I
    .local v7, state:I
    move v5, v4

    .end local v4           #numDigits:I
    .local v5, numDigits:I
    move v4, v2

    .end local v2           #numDashes:I
    .local v4, numDashes:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_3f
    if-ge v2, v3, :cond_85

    .line 1643
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1644
    .local v0, c:C
    packed-switch v0, :pswitch_data_bc

    .line 1688
    :cond_48
    :pswitch_48
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #c:C
    move p0, v3

    .line 1689
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1646
    .restart local v0       #c:C
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_4e
    if-eqz v5, :cond_53

    const/4 v0, 0x2

    if-ne v7, v0, :cond_59

    .line 1647
    .end local v0           #c:C
    :cond_53
    const/4 v0, 0x3

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1642
    .end local v0           #state:I
    .restart local v7       #state:I
    :goto_55
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_3f

    .line 1660
    :cond_59
    :pswitch_59
    const/4 v0, 0x2

    if-ne v7, v0, :cond_62

    .line 1662
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move p0, v3

    .line 1663
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1664
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_62
    const/4 v0, 0x3

    if-ne v7, v0, :cond_6f

    .line 1666
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    aput v2, v1, v4

    .line 1671
    :goto_69
    const/4 v7, 0x1

    .line 1672
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .line 1673
    .end local v0           #numDashes:I
    .local v4, numDashes:I
    goto :goto_55

    .line 1667
    :cond_6f
    const/4 v0, 0x4

    if-eq v7, v0, :cond_ba

    const/4 v0, 0x3

    if-eq v5, v0, :cond_78

    const/4 v0, 0x6

    if-ne v5, v0, :cond_ba

    .line 1669
    :cond_78
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v2, v1, v4

    goto :goto_69

    .line 1676
    .local v0, c:C
    .restart local v4       #numDashes:I
    :pswitch_7d
    const/4 v0, 0x4

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1677
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_55

    .line 1680
    .local v0, c:C
    :pswitch_80
    if-nez v2, :cond_48

    .line 1682
    const/4 v0, 0x2

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1683
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_55

    .line 1693
    :cond_85
    const/4 v0, 0x7

    if-ne v5, v0, :cond_b8

    .line 1695
    add-int/lit8 v0, v4, -0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    move v2, v0

    .line 1699
    .end local v0           #numDashes:I
    .local v2, numDashes:I
    :goto_8b
    const/4 v0, 0x0

    .end local v5           #numDigits:I
    .end local v6           #saved:Ljava/lang/CharSequence;
    .local v0, i:I
    :goto_8c
    if-ge v0, v2, :cond_9b

    .line 1700
    aget v4, v1, v0

    .line 1701
    .local v4, pos:I
    add-int v5, v4, v0

    add-int/2addr v4, v0

    const-string v6, "-"

    .end local v4           #pos:I
    invoke-interface {p0, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1699
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 1705
    :cond_9b
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1706
    .end local v1           #dashPositions:[I
    .end local v2           #numDashes:I
    .local v0, len:I
    :goto_9f
    if-lez v0, :cond_b5

    .line 1707
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_b5

    .line 1708
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1709
    add-int/lit8 v0, v0, -0x1

    goto :goto_9f

    :cond_b5
    move p0, v3

    .line 1714
    .end local v3           #length:I
    .local p0, length:I
    goto/16 :goto_d

    .end local v0           #len:I
    .restart local v1       #dashPositions:[I
    .local v2, i:I
    .restart local v3       #length:I
    .local v4, numDashes:I
    .restart local v5       #numDigits:I
    .restart local v6       #saved:Ljava/lang/CharSequence;
    .local p0, text:Landroid/text/Editable;
    :cond_b8
    move v2, v4

    .end local v4           #numDashes:I
    .local v2, numDashes:I
    goto :goto_8b

    .local v2, i:I
    .restart local v4       #numDashes:I
    :cond_ba
    move v0, v4

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    goto :goto_69

    .line 1644
    :pswitch_data_bc
    .packed-switch 0x2b
        :pswitch_80
        :pswitch_48
        :pswitch_7d
        :pswitch_48
        :pswitch_48
        :pswitch_59
        :pswitch_4e
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "source"

    .prologue
    .line 1264
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1265
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1266
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1281
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1282
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1283
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 10
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x31

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1308
    move v0, p1

    .line 1310
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1e

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1e

    .line 1311
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_22

    .line 1312
    const/4 v0, 0x1

    .line 1328
    :cond_1e
    :goto_1e
    sparse-switch v0, :sswitch_data_5a

    .line 1341
    :goto_21
    return-void

    .line 1313
    :cond_22
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_36

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_36

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_36

    .line 1315
    const/4 v0, 0x2

    goto :goto_1e

    .line 1317
    :cond_36
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_1e

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_1e

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1e

    .line 1319
    const/16 v0, 0x52

    goto :goto_1e

    .line 1330
    :sswitch_4d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_21

    .line 1333
    :sswitch_51
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_21

    .line 1337
    :sswitch_55
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatKRnpNumber(Landroid/text/Editable;)V

    goto :goto_21

    .line 1328
    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_4d
        0x2 -> :sswitch_51
        0x52 -> :sswitch_55
    .end sparse-switch
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2133
    const/4 v0, 0x0

    .line 2134
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2136
    const-string v0, "011"

    .line 2138
    :cond_f
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "number"

    .prologue
    .line 1787
    const/4 v0, 0x0

    .line 1788
    .local v0, clir:I
    const/4 v1, 0x0

    .line 1791
    .local v1, isRoaming:I
    if-nez p0, :cond_a

    const/4 p0, 0x0

    move v10, v1

    .end local v1           #isRoaming:I
    .local v10, isRoaming:I
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v10

    .line 1885
    .end local v10           #isRoaming:I
    .local v0, isRoaming:I
    :goto_9
    return-object v1

    .line 1795
    .local v0, clir:I
    .restart local v1       #isRoaming:I
    .local p0, number:Ljava/lang/String;
    :cond_a
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1797
    .local v7, words:[Ljava/lang/String;
    array-length p0, v7

    .end local p0           #number:Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p0, v2, :cond_9a

    .line 1798
    const/4 p0, 0x0

    aget-object v0, v7, p0

    .line 1799
    .local v0, dialNumber:Ljava/lang/String;
    const/4 p0, 0x1

    aget-object p0, v7, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1800
    .local p0, clir:I
    const/4 v1, 0x2

    aget-object v1, v7, v1

    .end local v1           #isRoaming:I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #isRoaming:I
    move v5, v1

    .end local v1           #isRoaming:I
    .local v5, isRoaming:I
    move v10, p0

    .end local p0           #clir:I
    .local v10, clir:I
    move-object p0, v0

    .end local v0           #dialNumber:Ljava/lang/String;
    .local p0, dialNumber:Ljava/lang/String;
    move v0, v10

    .line 1807
    .end local v10           #clir:I
    .local v0, clir:I
    :goto_29
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1812
    .end local p0           #dialNumber:Ljava/lang/String;
    .local v1, dialNumber:Ljava/lang/String;
    const-string v2, ""

    .line 1815
    .local v2, numbers:Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, i:I
    move-object v4, v2

    .end local v2           #numbers:Ljava/lang/String;
    .local v4, numbers:Ljava/lang/String;
    :goto_31
    const/16 v2, 0xa

    if-ge p0, v2, :cond_57

    .line 1818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril.ecclist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1819
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1821
    .local v3, n:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9f

    .line 1833
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #n:Ljava/lang/String;
    :cond_57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #i:I
    if-nez p0, :cond_110

    .line 1836
    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v6, p0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .local v4, i$:I
    :goto_66
    if-ge v4, v6, :cond_110

    aget-object v2, p0, v4

    .line 1837
    .local v2, emergencyNum:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1838
    .local v2, splitStr:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 1839
    .local v3, eccNum:Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_cf

    const/4 v8, 0x1

    aget-object v2, v2, v8

    .line 1840
    .local v2, eccCat:Ljava/lang/String;
    :goto_7a
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v3           #eccNum:Ljava/lang/String;
    if-eqz v3, :cond_10b

    .line 1842
    array-length p0, v7

    .end local p0           #arr$:[Ljava/lang/String;
    const/4 v3, 0x3

    if-ne p0, v3, :cond_106

    if-nez v5, :cond_106

    .line 1844
    const-string p0, "110"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d4

    .line 1845
    if-nez v0, :cond_d2

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_95
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .line 1803
    .end local v2           #eccCat:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local p0           #clir:I
    .local v0, clir:I
    .local v1, isRoaming:I
    :cond_9a
    const/4 p0, 0x0

    aget-object p0, v7, p0

    .local p0, dialNumber:Ljava/lang/String;
    move v5, v1

    .end local v1           #isRoaming:I
    .restart local v5       #isRoaming:I
    goto :goto_29

    .line 1824
    .local v1, dialNumber:Ljava/lang/String;
    .local v2, key:Ljava/lang/String;
    .local v3, n:Ljava/lang/String;
    .local v4, numbers:Ljava/lang/String;
    .local p0, i:I
    :cond_9f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #key:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 1826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1815
    .end local v4           #numbers:Ljava/lang/String;
    .local v2, numbers:Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    move-object v4, v2

    .end local v2           #numbers:Ljava/lang/String;
    .restart local v4       #numbers:Ljava/lang/String;
    goto/16 :goto_31

    .line 1839
    .local v2, splitStr:[Ljava/lang/String;
    .local v3, eccNum:Ljava/lang/String;
    .local v4, i$:I
    .restart local v6       #len$:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_cf
    const-string v2, ""

    goto :goto_7a

    .line 1845
    .end local v3           #eccNum:Ljava/lang/String;
    .end local p0           #arr$:[Ljava/lang/String;
    .local v2, eccCat:Ljava/lang/String;
    :cond_d2
    const/4 p0, 0x0

    goto :goto_95

    .line 1846
    :cond_d4
    const-string p0, "118"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_eb

    .line 1847
    if-nez v0, :cond_e9

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_e4
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_e9
    const/4 p0, 0x0

    goto :goto_e4

    .line 1848
    :cond_eb
    const-string p0, "119"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_101

    .line 1849
    if-nez v0, :cond_ff

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_fa
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_ff
    const/4 p0, 0x0

    goto :goto_fa

    :cond_101
    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move-object v1, v2

    move v0, v5

    .line 1851
    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_106
    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move-object v1, v2

    move v0, v5

    .line 1854
    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .line 1836
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_10b
    add-int/lit8 v2, v4, 0x1

    .end local v4           #i$:I
    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .restart local v4       #i$:I
    goto/16 :goto_66

    .line 1866
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local p0           #arr$:[Ljava/lang/String;
    :cond_110
    const-string/jumbo p0, "ril.cdma.sid"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1870
    .local p0, sid:Ljava/lang/String;
    const-string v2, "2190"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #sid:Ljava/lang/String;
    if-eqz p0, :cond_16c

    .line 1871
    const-string p0, "112"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15f

    const-string p0, "119"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15f

    const-string p0, "122"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15f

    const-string p0, "113"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15f

    const-string p0, "125"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15f

    const-string p0, "127"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15f

    const-string p0, "111"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15f

    const-string p0, "114"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_166

    .line 1874
    :cond_15f
    const-string p0, ""

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .line 1876
    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_166
    const/4 p0, 0x0

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .line 1880
    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_16c
    const-string p0, "000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "08"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "110"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "999"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "118"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "112"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "911"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "119"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    const-string p0, "122"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1bb

    .line 1883
    :cond_1b4
    const-string p0, ""

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9

    .line 1885
    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_1bb
    const/4 p0, 0x0

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_9
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .parameter "locale"

    .prologue
    .line 1294
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .parameter "country"

    .prologue
    .line 2151
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2153
    .local v1, length:I
    const-string v2, "KR"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    .line 2154
    const/16 v2, 0x52

    .line 2165
    :goto_d
    return v2

    .line 2157
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-ge v0, v1, :cond_20

    .line 2158
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1d

    .line 2159
    const/4 v2, 0x1

    goto :goto_d

    .line 2157
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2162
    :cond_20
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2a

    .line 2163
    const/4 v2, 0x2

    goto :goto_d

    .line 2165
    :cond_2a
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v8, 0x0

    .line 145
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 146
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 149
    :cond_1c
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_20
    return-object v0

    .line 154
    :cond_21
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 155
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 158
    :cond_33
    if-nez p1, :cond_37

    move-object v0, v3

    .line 159
    goto :goto_20

    .line 162
    :cond_37
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 166
    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 168
    const-string/jumbo v9, "number"

    .line 173
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 176
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6e

    .line 178
    :try_start_5d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 179
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_7b

    move-result-object v8

    .line 182
    :cond_6b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6e
    move-object v0, v8

    .line 186
    goto :goto_20

    .line 169
    .end local v7           #c:Landroid/database/Cursor;
    :cond_70
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 170
    const-string v9, "data1"

    goto :goto_4b

    .line 182
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_7b
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 784
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 788
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 7
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 310
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 311
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 313
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 315
    .local v2, trimIndex:I
    if-gez v2, :cond_1a

    .line 316
    sub-int v4, v0, v5

    .line 318
    :goto_19
    return v4

    :cond_1a
    sub-int v4, v2, v5

    goto :goto_19
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .registers 9
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 964
    move v2, p2

    .local v2, i:I
    :goto_1
    add-int v3, p3, p2

    if-ge v2, v3, :cond_10

    .line 968
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 970
    .local v1, c:C
    if-nez v1, :cond_11

    .line 997
    .end local v1           #c:C
    :cond_10
    return-void

    .line 973
    .restart local v1       #c:C
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 982
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 984
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_25

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_10

    .line 989
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 990
    if-eqz v1, :cond_10

    .line 994
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 797
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 810
    :goto_3
    return-object v5

    .line 799
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 800
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 802
    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    move v4, v2

    .line 803
    .local v4, s:I
    :goto_11
    if-ltz v1, :cond_21

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_21

    .line 805
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 807
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 810
    .end local v0           #c:C
    :cond_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static final is12Key(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 99
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_10

    const/16 v0, 0x23

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 2432
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final isDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 105
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1069
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1070
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1071
    const/4 v2, 0x0

    .line 1074
    :goto_12
    return v2

    .line 1069
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1074
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 1763
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1765
    .local v0, cat:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1766
    const/4 v1, 0x0

    .line 1768
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 1060
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1061
    const/4 v1, 0x0

    .line 1065
    :goto_7
    return v1

    .line 1064
    :cond_8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1065
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isISODigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 93
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 2173
    const/4 v2, 0x0

    .line 2174
    .local v2, retVal:Z
    if-eqz p0, :cond_34

    .line 2175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 2176
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2178
    const/4 v2, 0x1

    .line 2179
    const/4 v1, 0x1

    .local v1, i:I
    :goto_23
    if-ge v1, v4, :cond_30

    .line 2180
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2181
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2182
    const/4 v2, 0x0

    .line 2191
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_30
    :goto_30
    return v2

    .line 2179
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2189
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_34
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 117
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_20

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x23

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1078
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1079
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1080
    const/4 v2, 0x0

    .line 1083
    :goto_12
    return v2

    .line 1078
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1083
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .parameter "dialStr"

    .prologue
    .line 2198
    const/4 v1, 0x0

    .line 2199
    .local v1, retVal:Z
    if-eqz p0, :cond_19

    .line 2200
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2201
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2202
    const/4 v1, 0x1

    .line 2207
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_18
    :goto_18
    return v1

    .line 2205
    :cond_19
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 111
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x23

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isSeparator(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 131
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 126
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2142
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2143
    const/4 v0, 0x1

    .line 2145
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 2223
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 1907
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v1

    .line 1914
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1918
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :goto_1a
    return v2

    .line 1908
    :catch_1b
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/SecurityException;
    move v2, v3

    .line 1909
    goto :goto_1a

    .end local v0           #ex:Ljava/lang/SecurityException;
    .restart local v1       #vmNumber:Ljava/lang/String;
    :cond_1f
    move v2, v3

    .line 1918
    goto :goto_1a
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1051
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 297
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 10
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2305
    const/4 v2, 0x0

    .line 2306
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_49

    .line 2307
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2309
    .local v0, c:C
    packed-switch v2, :pswitch_data_56

    .line 2328
    :pswitch_11
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    .line 2334
    .end local v0           #c:C
    :goto_18
    return v3

    .line 2311
    .restart local v0       #c:C
    :pswitch_19
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_21

    const/4 v2, 0x1

    .line 2306
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2312
    :cond_21
    if-ne v0, v6, :cond_25

    const/4 v2, 0x2

    goto :goto_1e

    .line 2313
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 2317
    :pswitch_2d
    if-ne v0, v6, :cond_31

    const/4 v2, 0x3

    goto :goto_1e

    .line 2318
    :cond_31
    if-ne v0, v7, :cond_35

    const/4 v2, 0x4

    goto :goto_1e

    .line 2319
    :cond_35
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 2323
    :pswitch_3d
    if-ne v0, v7, :cond_41

    const/4 v2, 0x5

    goto :goto_1e

    .line 2324
    :cond_41
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 2334
    .end local v0           #c:C
    :cond_49
    if-eq v2, v5, :cond_51

    const/4 v3, 0x3

    if-eq v2, v3, :cond_51

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    :cond_51
    move v3, v5

    goto :goto_18

    :cond_53
    move v3, v4

    goto :goto_18

    .line 2309
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_19
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_3d
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 9
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 2344
    const/4 v2, 0x0

    .line 2345
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, p1, :cond_69

    .line 2346
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2348
    .local v0, c:C
    packed-switch v2, :pswitch_data_78

    .line 2380
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    .line 2384
    .end local v0           #c:C
    :goto_17
    return v3

    .line 2350
    .restart local v0       #c:C
    :pswitch_18
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_20

    const/4 v2, 0x1

    .line 2345
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2351
    :cond_20
    if-ne v0, v5, :cond_24

    const/4 v2, 0x2

    goto :goto_1d

    .line 2352
    :cond_24
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2356
    :pswitch_2c
    if-ne v0, v5, :cond_30

    const/4 v2, 0x3

    goto :goto_1d

    .line 2357
    :cond_30
    if-ne v0, v6, :cond_34

    const/4 v2, 0x4

    goto :goto_1d

    .line 2358
    :cond_34
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2362
    :pswitch_3c
    if-ne v0, v6, :cond_40

    const/4 v2, 0x5

    goto :goto_1d

    .line 2363
    :cond_40
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2369
    :pswitch_48
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v2, 0x6

    goto :goto_1d

    .line 2370
    :cond_50
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2375
    :pswitch_58
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_61

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2376
    :cond_61
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2384
    .end local v0           #c:C
    :cond_69
    const/4 v3, 0x6

    if-eq v2, v3, :cond_73

    const/4 v3, 0x7

    if-eq v2, v3, :cond_73

    const/16 v3, 0x8

    if-ne v2, v3, :cond_75

    :cond_73
    const/4 v3, 0x1

    goto :goto_17

    :cond_75
    move v3, v4

    goto :goto_17

    .line 2348
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_18
        :pswitch_48
        :pswitch_2c
        :pswitch_48
        :pswitch_3c
        :pswitch_48
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .parameter "a"
    .parameter "len"

    .prologue
    .line 2392
    const/4 v1, 0x0

    .line 2394
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, p1, :cond_1a

    .line 2395
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2397
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_12

    if-nez v1, :cond_12

    .line 2398
    const/4 v1, 0x1

    .line 2394
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2399
    :cond_12
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2400
    const/4 v3, 0x0

    .line 2404
    .end local v0           #c:C
    :goto_19
    return v3

    :cond_1a
    move v3, v1

    goto :goto_19
.end method

.method private static minPositive(II)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 285
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 286
    if-ge p0, p1, :cond_8

    move v0, p0

    .line 292
    :goto_7
    return v0

    :cond_8
    move v0, p1

    .line 286
    goto :goto_7

    .line 287
    :cond_a
    if-ltz p0, :cond_e

    move v0, p0

    .line 288
    goto :goto_7

    .line 289
    :cond_e
    if-ltz p1, :cond_12

    move v0, p1

    .line 290
    goto :goto_7

    .line 292
    :cond_12
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1093
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1113
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .parameter "number"

    .prologue
    .line 1126
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 13
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1136
    .local v5, numberLenReal:I
    move v0, v5

    .line 1137
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v1, 0x1

    move v3, v1

    .line 1138
    .local v3, hasPlus:Z
    :goto_10
    if-eqz v3, :cond_14

    add-int/lit8 v0, v0, -0x1

    .line 1140
    :cond_14
    if-nez v0, :cond_1b

    const/4 p0, 0x0

    .line 1165
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_17
    return-object p0

    .line 1137
    .end local v3           #hasPlus:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_18
    const/4 v1, 0x0

    move v3, v1

    goto :goto_10

    .line 1142
    .restart local v3       #hasPlus:Z
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1143
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1144
    .local v0, extraBytes:I
    if-eqz p1, :cond_80

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1145
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_25
    add-int v7, v1, v2

    .line 1147
    .end local v1           #resultLen:I
    .local v7, resultLen:I
    new-array v6, v7, [B

    .line 1149
    .local v6, result:[B
    const/4 v0, 0x0

    .line 1150
    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_2d
    if-ge v4, v5, :cond_59

    .line 1151
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1152
    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3d

    move v0, v1

    .line 1150
    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_38
    add-int/lit8 v1, v4, 0x1

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_2d

    .line 1153
    .local v0, c:C
    :cond_3d
    and-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_57

    const/4 v8, 0x4

    .line 1154
    .local v8, shift:I
    :goto_43
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v2

    aget-byte v10, v6, v9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v8

    int-to-byte v0, v0

    or-int/2addr v0, v10

    int-to-byte v0, v0

    aput-byte v0, v6, v9

    .line 1155
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_38

    .line 1153
    .end local v8           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_57
    const/4 v8, 0x0

    goto :goto_43

    .line 1159
    .end local v0           #c:C
    :cond_59
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_68

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v6, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    .line 1161
    :cond_68
    const/4 p0, 0x0

    .line 1162
    .local p0, offset:I
    if-eqz p1, :cond_74

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v7, v0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    move p0, p1

    .line 1163
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_74
    if-eqz v3, :cond_7d

    const/16 p1, 0x91

    :goto_78
    int-to-byte p1, p1

    aput-byte p1, v6, p0

    move-object p0, v6

    .line 1165
    goto :goto_17

    .line 1163
    :cond_7d
    const/16 p1, 0x81

    goto :goto_78

    .end local v2           #extraBytes:I
    .end local v4           #i:I
    .end local v6           #result:[B
    .end local v7           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_80
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_25
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 2233
    move-object v2, p0

    .line 2238
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1e

    .line 2241
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2242
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2244
    move-object v2, v1

    .line 2252
    .end local v1           #newStr:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object v2

    .line 2246
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2248
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 821
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 827
    :goto_3
    return-object v0

    .line 823
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2b

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2b
    move-object v0, p0

    .line 827
    goto :goto_3
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 266
    if-nez p0, :cond_4

    .line 267
    const/4 v4, 0x0

    .line 279
    :goto_3
    return-object v4

    .line 269
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 270
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 272
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_20

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 274
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 279
    .end local v0           #c:C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 754
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, np:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"
    .parameter "minMatch"

    .prologue
    .line 771
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, np:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .parameter "s"

    .prologue
    .line 837
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 838
    const/16 v0, 0x91

    .line 841
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x81

    goto :goto_13
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 13
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v7, 0x0

    .line 2471
    const/4 v5, 0x0

    .line 2472
    .local v5, state:I
    const/4 v0, 0x0

    .line 2473
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2474
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_a1

    .line 2475
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2476
    .local v1, ch:C
    packed-switch v5, :pswitch_data_a4

    move-object v6, v7

    .line 2545
    .end local v1           #ch:C
    :goto_18
    return-object v6

    .line 2478
    .restart local v1       #ch:C
    :pswitch_19
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_21

    const/4 v5, 0x1

    .line 2474
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2479
    :cond_21
    if-ne v1, v9, :cond_25

    const/4 v5, 0x2

    goto :goto_1e

    .line 2480
    :cond_25
    if-ne v1, v8, :cond_2e

    .line 2481
    if-eqz p1, :cond_2c

    .line 2482
    const/16 v5, 0x8

    goto :goto_1e

    :cond_2c
    move-object v6, v7

    .line 2484
    goto :goto_18

    .line 2486
    :cond_2e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2487
    goto :goto_18

    .line 2492
    :pswitch_36
    if-ne v1, v9, :cond_3a

    const/4 v5, 0x3

    goto :goto_1e

    .line 2493
    :cond_3a
    if-ne v1, v8, :cond_3e

    const/4 v5, 0x4

    goto :goto_1e

    .line 2494
    :cond_3e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2495
    goto :goto_18

    .line 2500
    :pswitch_46
    if-ne v1, v8, :cond_4a

    const/4 v5, 0x5

    goto :goto_1e

    .line 2501
    :cond_4a
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2502
    goto :goto_18

    .line 2512
    :pswitch_52
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2513
    .local v4, ret:I
    if-lez v4, :cond_7c

    .line 2514
    mul-int/lit8 v6, v0, 0xa

    add-int v0, v6, v4

    .line 2515
    const/16 v6, 0x64

    if-ge v0, v6, :cond_66

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2516
    :cond_66
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_18

    .line 2518
    :cond_6e
    const/4 v6, 0x1

    if-eq v5, v6, :cond_77

    const/4 v6, 0x3

    if-eq v5, v6, :cond_77

    const/4 v6, 0x5

    if-ne v5, v6, :cond_79

    .line 2519
    :cond_77
    const/4 v5, 0x6

    goto :goto_1e

    .line 2521
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 2523
    :cond_7c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2524
    goto :goto_18

    .line 2529
    .end local v4           #ret:I
    :pswitch_84
    if-ne v1, v10, :cond_89

    const/16 v5, 0x9

    goto :goto_1e

    .line 2530
    :cond_89
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2531
    goto :goto_18

    .line 2535
    :pswitch_91
    if-ne v1, v10, :cond_9e

    .line 2536
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_18

    :cond_9e
    move-object v6, v7

    .line 2538
    goto/16 :goto_18

    .end local v1           #ch:C
    :cond_a1
    move-object v6, v7

    .line 2545
    goto/16 :goto_18

    .line 2476
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_52
        :pswitch_36
        :pswitch_52
        :pswitch_46
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_84
        :pswitch_91
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 3
    .parameter "ch"

    .prologue
    const/16 v1, 0x30

    .line 2442
    if-gt v1, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 2443
    sub-int v0, p0, v1

    .line 2445
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v4, -0x1

    .line 2558
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2559
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_20

    .line 2560
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2561
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v3

    if-ltz v3, :cond_15

    .line 2562
    add-int/lit8 v3, v1, 0x1

    .line 2567
    .end local v0           #ch:C
    :goto_14
    return v3

    .line 2563
    .restart local v0       #ch:C
    :cond_15
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    .line 2564
    goto :goto_14

    .line 2559
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0           #ch:C
    :cond_20
    move v3, v4

    .line 2567
    goto :goto_14
.end method
