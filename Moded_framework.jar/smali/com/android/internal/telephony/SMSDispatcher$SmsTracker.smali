.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmsTracker"
.end annotation


# instance fields
.field public mCurIndex:I

.field public mData:Ljava/util/HashMap;

.field public mDeliveryIntent:Landroid/app/PendingIntent;

.field public mMessageRef:I

.field public mRetryCount:I

.field public mSentIntent:Landroid/app/PendingIntent;

.field public mTotalCnt:I


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v1, 0x1

    .line 2480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2481
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2482
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2483
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2484
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2486
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCurIndex:I

    .line 2487
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalCnt:I

    .line 2489
    return-void
.end method

.method constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .registers 7
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "curIndex"
    .parameter "totalCnt"

    .prologue
    .line 2494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2495
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2496
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2497
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2499
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCurIndex:I

    .line 2500
    iput p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalCnt:I

    .line 2501
    return-void
.end method
