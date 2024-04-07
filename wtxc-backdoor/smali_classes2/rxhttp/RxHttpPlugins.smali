.class public Lrxhttp/RxHttpPlugins;
.super Ljava/lang/Object;
.source "RxHttpPlugins.java"


# static fields
.field private static final plugins:Lrxhttp/RxHttpPlugins;


# instance fields
.field private cache:Lrxhttp/wrapper/cahce/InternalCache;

.field private cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

.field private converter:Lrxhttp/wrapper/callback/IConverter;

.field private decoder:Lrxhttp/wrapper/callback/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/callback/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludeCacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private okClient:Lokhttp3/OkHttpClient;

.field private onParamAssembly:Lrxhttp/wrapper/callback/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/callback/Function<",
            "-",
            "Lrxhttp/wrapper/param/Param<",
            "*>;+",
            "Lrxhttp/wrapper/param/Param<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lrxhttp/RxHttpPlugins;

    invoke-direct {v0}, Lrxhttp/RxHttpPlugins;-><init>()V

    sput-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lrxhttp/wrapper/converter/GsonConverter;->create()Lrxhttp/wrapper/converter/GsonConverter;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/RxHttpPlugins;->converter:Lrxhttp/wrapper/callback/IConverter;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/RxHttpPlugins;->excludeCacheKeys:Ljava/util/List;

    .line 46
    new-instance v0, Lrxhttp/wrapper/cahce/CacheStrategy;

    sget-object v1, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    invoke-direct {v0, v1}, Lrxhttp/wrapper/cahce/CacheStrategy;-><init>(Lrxhttp/wrapper/cahce/CacheMode;)V

    iput-object v0, p0, Lrxhttp/RxHttpPlugins;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    return-void
.end method

.method private static apply(Lrxhttp/wrapper/callback/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/callback/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-interface {p0, p1}, Lrxhttp/wrapper/callback/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 228
    invoke-static {p0}, Lrxhttp/wrapper/exception/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static cancelAll()V
    .locals 1

    .line 198
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->okClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    return-void
.end method

.method public static cancelAll(Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 206
    :cond_0
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->okClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    return-void

    .line 208
    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Call;

    .line 211
    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 217
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static getCache()Lrxhttp/wrapper/cahce/InternalCache;
    .locals 1

    .line 173
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->cache:Lrxhttp/wrapper/cahce/InternalCache;

    return-object v0
.end method

.method public static getCacheOrThrow()Lrxhttp/wrapper/cahce/InternalCache;
    .locals 2

    .line 180
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->cache:Lrxhttp/wrapper/cahce/InternalCache;

    if-eqz v0, :cond_0

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Call \'setCache(File,long)\' method to set the cache directory and size before using the cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheStrategy()Lrxhttp/wrapper/cahce/CacheStrategy;
    .locals 2

    .line 169
    new-instance v0, Lrxhttp/wrapper/cahce/CacheStrategy;

    sget-object v1, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v1, v1, Lrxhttp/RxHttpPlugins;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-direct {v0, v1}, Lrxhttp/wrapper/cahce/CacheStrategy;-><init>(Lrxhttp/wrapper/cahce/CacheStrategy;)V

    return-object v0
.end method

.method public static getConverter()Lrxhttp/wrapper/callback/IConverter;
    .locals 1

    .line 106
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->converter:Lrxhttp/wrapper/callback/IConverter;

    return-object v0
.end method

.method private static getDefaultOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 5

    .line 234
    invoke-static {}, Lrxhttp/wrapper/ssl/HttpsUtils;->getSslSocketFactory()Lrxhttp/wrapper/ssl/HttpsUtils$SSLParams;

    move-result-object v0

    .line 235
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 236
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 237
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 238
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, v0, Lrxhttp/wrapper/ssl/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, v0, Lrxhttp/wrapper/ssl/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 239
    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lrxhttp/RxHttpPlugins$$ExternalSyntheticLambda0;->INSTANCE:Lrxhttp/RxHttpPlugins$$ExternalSyntheticLambda0;

    .line 240
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getExcludeCacheKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->excludeCacheKeys:Ljava/util/List;

    return-object v0
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 61
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v1, v0, Lrxhttp/RxHttpPlugins;->okClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 62
    invoke-static {}, Lrxhttp/RxHttpPlugins;->getDefaultOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-static {v1}, Lrxhttp/RxHttpPlugins;->init(Lokhttp3/OkHttpClient;)Lrxhttp/RxHttpPlugins;

    .line 63
    :cond_0
    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->okClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static init(Lokhttp3/OkHttpClient;)Lrxhttp/RxHttpPlugins;
    .locals 1

    .line 52
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iput-object p0, v0, Lrxhttp/RxHttpPlugins;->okClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static isInit()Z
    .locals 1

    .line 57
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->okClient:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getDefaultOkHttpClient$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static newOkClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 67
    invoke-static {}, Lrxhttp/RxHttpPlugins;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static onParamAssembly(Lrxhttp/wrapper/param/Param;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/param/Param<",
            "*>;)",
            "Lrxhttp/wrapper/param/Param<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Lrxhttp/wrapper/param/Param;->isAssemblyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->onParamAssembly:Lrxhttp/wrapper/callback/Function;

    if-eqz v0, :cond_1

    .line 120
    invoke-static {v0, p0}, Lrxhttp/RxHttpPlugins;->apply(Lrxhttp/wrapper/callback/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrxhttp/wrapper/param/Param;

    const-string v0, "onParamAssembly return must not be null"

    .line 122
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static onResultDecoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    iget-object v0, v0, Lrxhttp/RxHttpPlugins;->decoder:Lrxhttp/wrapper/callback/Function;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {v0, p0}, Lrxhttp/RxHttpPlugins;->apply(Lrxhttp/wrapper/callback/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public setCache(Ljava/io/File;J)Lrxhttp/RxHttpPlugins;
    .locals 7

    .line 144
    sget-object v4, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lrxhttp/RxHttpPlugins;->setCache(Ljava/io/File;JLrxhttp/wrapper/cahce/CacheMode;J)Lrxhttp/RxHttpPlugins;

    move-result-object p1

    return-object p1
.end method

.method public setCache(Ljava/io/File;JJ)Lrxhttp/RxHttpPlugins;
    .locals 7

    .line 148
    sget-object v4, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lrxhttp/RxHttpPlugins;->setCache(Ljava/io/File;JLrxhttp/wrapper/cahce/CacheMode;J)Lrxhttp/RxHttpPlugins;

    move-result-object p1

    return-object p1
.end method

.method public setCache(Ljava/io/File;JLrxhttp/wrapper/cahce/CacheMode;)Lrxhttp/RxHttpPlugins;
    .locals 7

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 152
    invoke-virtual/range {v0 .. v6}, Lrxhttp/RxHttpPlugins;->setCache(Ljava/io/File;JLrxhttp/wrapper/cahce/CacheMode;J)Lrxhttp/RxHttpPlugins;

    move-result-object p1

    return-object p1
.end method

.method public setCache(Ljava/io/File;JLrxhttp/wrapper/cahce/CacheMode;J)Lrxhttp/RxHttpPlugins;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    .line 162
    new-instance v0, Lrxhttp/wrapper/cahce/CacheManager;

    invoke-direct {v0, p1, p2, p3}, Lrxhttp/wrapper/cahce/CacheManager;-><init>(Ljava/io/File;J)V

    .line 163
    iget-object p1, v0, Lrxhttp/wrapper/cahce/CacheManager;->internalCache:Lrxhttp/wrapper/cahce/InternalCache;

    iput-object p1, p0, Lrxhttp/RxHttpPlugins;->cache:Lrxhttp/wrapper/cahce/InternalCache;

    .line 164
    new-instance p1, Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-direct {p1, p4, p5, p6}, Lrxhttp/wrapper/cahce/CacheStrategy;-><init>(Lrxhttp/wrapper/cahce/CacheMode;J)V

    iput-object p1, p0, Lrxhttp/RxHttpPlugins;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    .line 165
    sget-object p1, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    return-object p1

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cacheValidTime > 0 required but it was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "maxSize > 0 required but it was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConverter(Lrxhttp/wrapper/callback/IConverter;)Lrxhttp/RxHttpPlugins;
    .locals 1

    if-eqz p1, :cond_0

    .line 101
    iput-object p1, p0, Lrxhttp/RxHttpPlugins;->converter:Lrxhttp/wrapper/callback/IConverter;

    .line 102
    sget-object p1, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "converter can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDebug(Z)Lrxhttp/RxHttpPlugins;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lrxhttp/RxHttpPlugins;->setDebug(ZZ)Lrxhttp/RxHttpPlugins;

    move-result-object p1

    return-object p1
.end method

.method public setDebug(ZZ)Lrxhttp/RxHttpPlugins;
    .locals 0

    .line 75
    invoke-static {p1, p2}, Lrxhttp/wrapper/utils/LogUtil;->setDebug(ZZ)V

    .line 76
    sget-object p1, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    return-object p1
.end method

.method public varargs setExcludeCacheKeys([Ljava/lang/String;)Lrxhttp/RxHttpPlugins;
    .locals 0

    .line 188
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/RxHttpPlugins;->excludeCacheKeys:Ljava/util/List;

    .line 189
    sget-object p1, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    return-object p1
.end method

.method public setOnParamAssembly(Lrxhttp/wrapper/callback/Function;)Lrxhttp/RxHttpPlugins;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/Function<",
            "-",
            "Lrxhttp/wrapper/param/Param<",
            "*>;+",
            "Lrxhttp/wrapper/param/Param<",
            "*>;>;)",
            "Lrxhttp/RxHttpPlugins;"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lrxhttp/RxHttpPlugins;->onParamAssembly:Lrxhttp/wrapper/callback/Function;

    .line 85
    sget-object p1, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    return-object p1
.end method

.method public setResultDecoder(Lrxhttp/wrapper/callback/Function;)Lrxhttp/RxHttpPlugins;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrxhttp/RxHttpPlugins;"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lrxhttp/RxHttpPlugins;->decoder:Lrxhttp/wrapper/callback/Function;

    .line 95
    sget-object p1, Lrxhttp/RxHttpPlugins;->plugins:Lrxhttp/RxHttpPlugins;

    return-object p1
.end method
