.class Landroid/net/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "content-length"

.field private static final HOST_HEADER:Ljava/lang/String; = "Host"

.field private static requestContentProcessor:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field volatile mCancelled:Z

.field private final mClientResource:Ljava/lang/Object;

.field private mConnection:Landroid/net/http/Connection;

.field mEventHandler:Landroid/net/http/EventHandler;

.field mFailCount:I

.field mHost:Lorg/apache/http/HttpHost;

.field mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

.field private mLoadingPaused:Z

.field mPath:Ljava/lang/String;

.field mProxyHost:Lorg/apache/http/HttpHost;

.field private mReceivedBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    sput-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V
    .registers 11
    .parameter "method"
    .parameter "host"
    .parameter "proxyHost"
    .parameter "path"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "eventHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/EventHandler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 74
    iput v1, p0, Landroid/net/http/Request;->mFailCount:I

    .line 78
    iput v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 115
    iput-object p7, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    .line 116
    iput-object p2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 117
    iput-object p3, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 118
    iput-object p4, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    .line 120
    iput p6, p0, Landroid/net/http/Request;->mBodyLength:I

    .line 122
    if-nez p5, :cond_48

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 123
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 134
    :cond_34
    :goto_34
    const-string v0, "Host"

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p8}, Landroid/net/http/Request;->addHeaders(Ljava/util/Map;)V

    .line 141
    return-void

    .line 125
    :cond_48
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 130
    if-eqz p5, :cond_34

    .line 131
    invoke-direct {p0, p5, p6}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    goto :goto_34
.end method

.method private static canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z
    .registers 5
    .parameter "request"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 478
    const-string v0, "HEAD"

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    .line 481
    :goto_12
    return v0

    :cond_13
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_21

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_21

    const/16 v0, 0x130

    if-eq p1, v0, :cond_21

    const/4 v0, 0x1

    goto :goto_12

    :cond_21
    move v0, v2

    goto :goto_12
.end method

.method private setBodyProvider(Ljava/io/InputStream;I)V
    .registers 6
    .parameter "bodyProvider"
    .parameter "bodyLength"

    .prologue
    .line 495
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_e

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bodyProvider must support mark()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_e
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 502
    iget-object p0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .end local p0
    check-cast p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 504
    return-void
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 173
    if-nez p1, :cond_d

    .line 174
    const-string v0, "Null http header name"

    .line 175
    .local v0, damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    .end local v0           #damage:Ljava/lang/String;
    :cond_d
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 179
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or empty value for header \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0       #damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0           #damage:Ljava/lang/String;
    :cond_37
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method addHeaders(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 201
    :cond_2
    return-void

    .line 196
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 374
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 378
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_13

    .line 379
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v0}, Landroid/net/http/Connection;->cancel()V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 381
    :cond_13
    monitor-exit p0

    return-void

    .line 374
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method complete()V
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method error(II)V
    .registers 5
    .parameter "errorId"
    .parameter "resourceId"

    .prologue
    .line 523
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    iget-object v1, v1, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 527
    return-void
.end method

.method getEventHandler()Landroid/net/http/EventHandler;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    return-object v0
.end method

.method getHostPort()Ljava/lang/String;
    .registers 4

    .prologue
    .line 384
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, myScheme:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    .line 388
    .local v0, myPort:I
    const/16 v2, 0x50

    if-eq v0, v2, :cond_18

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_18
    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_2b

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 390
    :cond_24
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    .line 392
    :goto_2a
    return-object v2

    :cond_2b
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method

.method getUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 399
    :cond_12
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 401
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public handleSslErrorResponse(Z)V
    .registers 4
    .parameter "proceed"

    .prologue
    .line 512
    iget-object p0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .end local p0
    check-cast p0, Landroid/net/http/HttpsConnection;

    move-object v0, p0

    check-cast v0, Landroid/net/http/HttpsConnection;

    move-object v1, v0

    .line 513
    .local v1, connection:Landroid/net/http/HttpsConnection;
    if-eqz v1, :cond_d

    .line 514
    invoke-virtual {v1, p1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 516
    :cond_d
    return-void
.end method

.method readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    .registers 27
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 359
    :goto_8
    return-void

    .line 247
    :cond_9
    const/16 v18, 0x0

    .line 248
    .local v18, statusLine:Lorg/apache/http/StatusLine;
    const/4 v10, 0x0

    .line 249
    .local v10, hasBody:Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 250
    const/16 v17, 0x0

    .line 252
    .local v17, statusCode:I
    new-instance v11, Landroid/net/http/Headers;

    invoke-direct {v11}, Landroid/net/http/Headers;-><init>()V

    .line 254
    .local v11, header:Landroid/net/http/Headers;
    :cond_16
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 255
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 256
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_16

    .line 261
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v20

    .line 262
    .local v20, v:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v22

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v23

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/http/Request;->canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z

    move-result v10

    .line 268
    if-eqz v10, :cond_70

    .line 269
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 273
    :cond_70
    const-string v21, "bytes"

    invoke-virtual {v11}, Landroid/net/http/Headers;->getAcceptRanges()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    .line 276
    .local v19, supportPartialContent:Z
    if-eqz v9, :cond_fa

    .line 277
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 280
    .local v12, is:Ljava/io/InputStream;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    .line 281
    .local v6, contentEncoding:Lorg/apache/http/Header;
    const/4 v15, 0x0

    .line 282
    .local v15, nis:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 283
    .local v5, buf:[B
    const/4 v7, 0x0

    .line 285
    .local v7, count:I
    if-eqz v6, :cond_120

    :try_start_89
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    const-string v22, "gzip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_120

    .line 287
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v15           #nis:Ljava/io/InputStream;
    .local v16, nis:Ljava/io/InputStream;
    move-object/from16 v15, v16

    .line 294
    .end local v16           #nis:Ljava/io/InputStream;
    .restart local v15       #nis:Ljava/io/InputStream;
    :goto_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/http/Connection;->getBuf()[B

    move-result-object v5

    .line 295
    const/4 v13, 0x0

    .line 296
    .local v13, len:I
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    div-int/lit8 v14, v21, 0x2

    .line 297
    .local v14, lowWater:I
    :cond_b0
    :goto_b0
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_164

    .line 298
    monitor-enter p0
    :try_end_b8
    .catchall {:try_start_89 .. :try_end_b8} :catchall_18f
    .catch Ljava/io/EOFException; {:try_start_89 .. :try_end_b8} :catch_e3
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_b8} :catch_16a

    .line 299
    :goto_b8
    :try_start_b8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mLoadingPaused:Z

    move/from16 v21, v0
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_e0

    if-eqz v21, :cond_123

    .line 305
    :try_start_c0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_e0
    .catch Ljava/lang/InterruptedException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_b8

    .line 306
    :catch_c4
    move-exception v8

    .line 307
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_c5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    goto :goto_b8

    .line 312
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catchall_e0
    move-exception v21

    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_c5 .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw v21
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_18f
    .catch Ljava/io/EOFException; {:try_start_e2 .. :try_end_e3} :catch_e3
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e3} :catch_16a

    .line 326
    .end local v13           #len:I
    .end local v14           #lowWater:I
    :catch_e3
    move-exception v21

    move-object/from16 v8, v21

    .line 330
    .local v8, e:Ljava/io/EOFException;
    if-lez v7, :cond_f5

    .line 332
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_f5
    .catchall {:try_start_e8 .. :try_end_f5} :catchall_18f

    .line 347
    :cond_f5
    if-eqz v15, :cond_fa

    .line 348
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 352
    .end local v5           #buf:[B
    .end local v6           #contentEncoding:Lorg/apache/http/Header;
    .end local v7           #count:I
    .end local v8           #e:Ljava/io/EOFException;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v15           #nis:Ljava/io/InputStream;
    :cond_fa
    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v21, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v22

    invoke-virtual {v11}, Landroid/net/http/Headers;->getConnectionType()I

    move-result v23

    move-object/from16 v0, v21

    move-object v1, v9

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/Connection;->setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/net/http/EventHandler;->endData()V

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->complete()V

    goto/16 :goto_8

    .line 289
    .restart local v5       #buf:[B
    .restart local v6       #contentEncoding:Lorg/apache/http/Header;
    .restart local v7       #count:I
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v15       #nis:Ljava/io/InputStream;
    :cond_120
    move-object v15, v12

    goto/16 :goto_9f

    .line 312
    .restart local v13       #len:I
    .restart local v14       #lowWater:I
    :cond_123
    :try_start_123
    monitor-exit p0
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_e0

    .line 314
    :try_start_124
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move-object v0, v15

    move-object v1, v5

    move v2, v7

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 316
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_14b

    .line 317
    add-int/2addr v7, v13

    .line 318
    if-eqz v19, :cond_14b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/Request;->mReceivedBytes:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/http/Request;->mReceivedBytes:I

    .line 320
    :cond_14b
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_154

    if-lt v7, v14, :cond_b0

    .line 322
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_161
    .catchall {:try_start_124 .. :try_end_161} :catchall_18f
    .catch Ljava/io/EOFException; {:try_start_124 .. :try_end_161} :catch_e3
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_161} :catch_16a

    .line 323
    const/4 v7, 0x0

    goto/16 :goto_b0

    .line 347
    :cond_164
    if-eqz v15, :cond_fa

    .line 348
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    goto :goto_fa

    .line 335
    .end local v13           #len:I
    .end local v14           #lowWater:I
    :catch_16a
    move-exception v21

    move-object/from16 v8, v21

    .line 337
    .local v8, e:Ljava/io/IOException;
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_17d

    const/16 v21, 0xce

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_196

    .line 339
    :cond_17d
    if-eqz v19, :cond_18e

    if-lez v7, :cond_18e

    .line 342
    :try_start_181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V

    .line 344
    :cond_18e
    throw v8
    :try_end_18f
    .catchall {:try_start_181 .. :try_end_18f} :catchall_18f

    .line 347
    .end local v8           #e:Ljava/io/IOException;
    :catchall_18f
    move-exception v21

    if-eqz v15, :cond_195

    .line 348
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_195
    throw v21

    .line 347
    .restart local v8       #e:Ljava/io/IOException;
    :cond_196
    if-eqz v15, :cond_fa

    .line 348
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    goto/16 :goto_fa
.end method

.method reset()V
    .registers 5

    .prologue
    .line 418
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    .line 422
    :try_start_b
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_59

    .line 428
    :goto_10
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    iget v1, p0, Landroid/net/http/Request;->mBodyLength:I

    invoke-direct {p0, v0, v1}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 431
    :cond_17
    iget v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    if-lez v0, :cond_58

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** Request.reset() to range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_58
    return-void

    .line 423
    :catch_59
    move-exception v0

    goto :goto_10
.end method

.method sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    .registers 5
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 234
    .end local p0
    :cond_4
    :goto_4
    return-void

    .line 223
    .restart local p0
    :cond_5
    sget-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    iget-object v2, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 225
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 226
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_4

    .line 227
    iget-object p0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .end local p0
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, p0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_4
.end method

.method setConnection(Landroid/net/http/Connection;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .line 160
    return-void
.end method

.method declared-synchronized setLoadingPaused(Z)V
    .registers 3
    .parameter "pause"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 150
    iget-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    if-nez v0, :cond_a

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 153
    :cond_a
    monitor-exit p0

    return-void

    .line 147
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method waitUntilComplete()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_3
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_d

    .line 453
    :goto_8
    :try_start_8
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    throw v1

    .line 451
    :catch_d
    move-exception v1

    goto :goto_8
.end method
