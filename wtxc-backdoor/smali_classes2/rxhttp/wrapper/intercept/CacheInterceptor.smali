.class public final Lrxhttp/wrapper/intercept/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheInterceptor.kt\nrxhttp/wrapper/intercept/CacheInterceptor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,82:1\n13543#2,2:83\n*S KotlinDebug\n*F\n+ 1 CacheInterceptor.kt\nrxhttp/wrapper/intercept/CacheInterceptor\n*L\n63#1:83,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J!\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00130\u0012\"\u00020\u0013H\u0002\u00a2\u0006\u0002\u0010\u0014J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0003J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lrxhttp/wrapper/intercept/CacheInterceptor;",
        "Lokhttp3/Interceptor;",
        "cacheStrategy",
        "Lrxhttp/wrapper/cahce/CacheStrategy;",
        "(Lrxhttp/wrapper/cahce/CacheStrategy;)V",
        "cache",
        "Lrxhttp/wrapper/cahce/InternalCache;",
        "getCache",
        "()Lrxhttp/wrapper/cahce/InternalCache;",
        "cache$delegate",
        "Lkotlin/Lazy;",
        "beforeReadCache",
        "Lokhttp3/Response;",
        "request",
        "Lokhttp3/Request;",
        "cacheModeIs",
        "",
        "cacheModes",
        "",
        "Lrxhttp/wrapper/cahce/CacheMode;",
        "([Lrxhttp/wrapper/cahce/CacheMode;)Z",
        "getCacheResponse",
        "validTime",
        "",
        "intercept",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "rxhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cache$delegate:Lkotlin/Lazy;

.field private final cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/cahce/CacheStrategy;)V
    .locals 1

    const-string v0, "cacheStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    .line 24
    sget-object p1, Lrxhttp/wrapper/intercept/CacheInterceptor$cache$2;->INSTANCE:Lrxhttp/wrapper/intercept/CacheInterceptor$cache$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cache$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final beforeReadCache(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lrxhttp/wrapper/cahce/CacheMode;

    .line 50
    sget-object v1, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lrxhttp/wrapper/cahce/CacheMode;->READ_CACHE_FAILED_REQUEST_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheModeIs([Lrxhttp/wrapper/cahce/CacheMode;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheValidTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lrxhttp/wrapper/intercept/CacheInterceptor;->getCacheResponse(Lokhttp3/Request;J)Lokhttp3/Response;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v3, [Lrxhttp/wrapper/cahce/CacheMode;

    .line 54
    sget-object v0, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

    aput-object v0, p1, v2

    invoke-direct {p0, p1}, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheModeIs([Lrxhttp/wrapper/cahce/CacheMode;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance p1, Lrxhttp/wrapper/exception/CacheReadFailedException;

    const-string v0, "Cache read failed"

    invoke-direct {p1, v0}, Lrxhttp/wrapper/exception/CacheReadFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v1, p1

    :cond_2
    return-object v1
.end method

.method private final varargs cacheModeIs([Lrxhttp/wrapper/cahce/CacheMode;)Z
    .locals 5

    .line 62
    iget-object v0, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheMode()Lrxhttp/wrapper/cahce/CacheMode;

    move-result-object v0

    .line 83
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-ne v4, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final getCache()Lrxhttp/wrapper/cahce/InternalCache;
    .locals 2

    .line 24
    iget-object v0, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cache$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-cache>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lrxhttp/wrapper/cahce/InternalCache;

    return-object v0
.end method

.method private final getCacheResponse(Lokhttp3/Request;J)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lrxhttp/wrapper/intercept/CacheInterceptor;->getCache()Lrxhttp/wrapper/cahce/InternalCache;

    move-result-object v0

    iget-object v1, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v1}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lrxhttp/wrapper/cahce/InternalCache;->get(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    invoke-static {p1}, Lrxhttp/wrapper/OkHttpCompat;->receivedResponseAtMillis(Lokhttp3/Response;)J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long p2, v3, p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lrxhttp/wrapper/intercept/CacheInterceptor;->beforeReadCache(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 32
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    new-array v3, v2, [Lrxhttp/wrapper/cahce/CacheMode;

    .line 33
    sget-object v4, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    aput-object v4, v3, v1

    invoke-direct {p0, v3}, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheModeIs([Lrxhttp/wrapper/cahce/CacheMode;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    invoke-direct {p0}, Lrxhttp/wrapper/intercept/CacheInterceptor;->getCache()Lrxhttp/wrapper/cahce/InternalCache;

    move-result-object v3

    iget-object v4, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v4}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lrxhttp/wrapper/cahce/InternalCache;->put(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    const-string v3, "{\n                //\u975eONL\u2026y.cacheKey)\n            }"

    .line 33
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    const/4 v3, 0x0

    new-array v2, v2, [Lrxhttp/wrapper/cahce/CacheMode;

    .line 41
    sget-object v4, Lrxhttp/wrapper/cahce/CacheMode;->REQUEST_NETWORK_FAILED_READ_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

    aput-object v4, v2, v1

    invoke-direct {p0, v2}, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheModeIs([Lrxhttp/wrapper/cahce/CacheMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lrxhttp/wrapper/intercept/CacheInterceptor;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v1}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheValidTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lrxhttp/wrapper/intercept/CacheInterceptor;->getCacheResponse(Lokhttp3/Request;J)Lokhttp3/Response;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    return-object v3

    .line 45
    :cond_3
    throw p1
.end method
