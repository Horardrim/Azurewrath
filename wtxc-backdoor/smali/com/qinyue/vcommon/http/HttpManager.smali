.class public Lcom/qinyue/vcommon/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static volatile httpManager:Lcom/qinyue/vcommon/http/HttpManager;


# instance fields
.field private final CACHE_SIZE:J

.field private final CACHE_TIME:J

.field private final CONNECT_TIME_OUT:J

.field private final REED_TIME_OUT:J

.field private final WRITE_TIME_OUT:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x78

    .line 29
    iput-wide v0, p0, Lcom/qinyue/vcommon/http/HttpManager;->CONNECT_TIME_OUT:J

    .line 33
    iput-wide v0, p0, Lcom/qinyue/vcommon/http/HttpManager;->REED_TIME_OUT:J

    .line 37
    iput-wide v0, p0, Lcom/qinyue/vcommon/http/HttpManager;->WRITE_TIME_OUT:J

    const-wide/32 v0, 0xa00000

    .line 41
    iput-wide v0, p0, Lcom/qinyue/vcommon/http/HttpManager;->CACHE_SIZE:J

    const-wide/32 v0, 0x1b7740

    .line 45
    iput-wide v0, p0, Lcom/qinyue/vcommon/http/HttpManager;->CACHE_TIME:J

    return-void
.end method

.method public static getInstance()Lcom/qinyue/vcommon/http/HttpManager;
    .locals 2

    .line 50
    sget-object v0, Lcom/qinyue/vcommon/http/HttpManager;->httpManager:Lcom/qinyue/vcommon/http/HttpManager;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/qinyue/vcommon/http/HttpManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/qinyue/vcommon/http/HttpManager;->httpManager:Lcom/qinyue/vcommon/http/HttpManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/qinyue/vcommon/http/HttpManager;

    invoke-direct {v1}, Lcom/qinyue/vcommon/http/HttpManager;-><init>()V

    sput-object v1, Lcom/qinyue/vcommon/http/HttpManager;->httpManager:Lcom/qinyue/vcommon/http/HttpManager;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/qinyue/vcommon/http/HttpManager;->httpManager:Lcom/qinyue/vcommon/http/HttpManager;

    return-object v0
.end method

.method static synthetic lambda$getHttpClient$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getHttpClient()Lokhttp3/OkHttpClient;
    .locals 5

    .line 98
    invoke-static {}, Lrxhttp/wrapper/ssl/HttpsUtils;->getSslSocketFactory()Lrxhttp/wrapper/ssl/HttpsUtils$SSLParams;

    move-result-object v0

    .line 99
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x78

    .line 100
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 102
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, v0, Lrxhttp/wrapper/ssl/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, v0, Lrxhttp/wrapper/ssl/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 103
    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/qinyue/vcommon/http/HttpManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/qinyue/vcommon/http/HttpManager$$ExternalSyntheticLambda0;

    .line 104
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public initHttp(Landroid/content/Context;Z)V
    .locals 7

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "RxHttpCache"

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/qinyue/vcommon/http/HttpManager;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-static {p1}, Lrxhttp/RxHttpPlugins;->init(Lokhttp3/OkHttpClient;)Lrxhttp/RxHttpPlugins;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p2}, Lrxhttp/RxHttpPlugins;->setDebug(Z)Lrxhttp/RxHttpPlugins;

    move-result-object v0

    sget-object v4, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    const-wide/32 v2, 0xa00000

    const-wide/32 v5, 0x1b7740

    .line 70
    invoke-virtual/range {v0 .. v6}, Lrxhttp/RxHttpPlugins;->setCache(Ljava/io/File;JLrxhttp/wrapper/cahce/CacheMode;J)Lrxhttp/RxHttpPlugins;

    move-result-object p1

    const-string p2, "currentTime"

    const-string v0, "login"

    const-string v1, "sendSms"

    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lrxhttp/RxHttpPlugins;->setExcludeCacheKeys([Ljava/lang/String;)Lrxhttp/RxHttpPlugins;

    return-void
.end method
