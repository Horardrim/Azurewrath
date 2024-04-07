.class public abstract Lrxhttp/wrapper/param/AbstractParam;
.super Lrxhttp/wrapper/param/Param;
.source "AbstractParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lrxhttp/wrapper/param/Param<",
        "TP;>;>",
        "Lrxhttp/wrapper/param/Param<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private HBuilder:Lokhttp3/Headers$Builder;

.field private final cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

.field private isAssemblyEnabled:Z

.field private final method:Lrxhttp/wrapper/param/Method;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private queryParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final requestBuilder:Lokhttp3/Request$Builder;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lrxhttp/wrapper/param/Param;-><init>()V

    .line 39
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->requestBuilder:Lokhttp3/Request$Builder;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lrxhttp/wrapper/param/AbstractParam;->isAssemblyEnabled:Z

    .line 48
    iput-object p1, p0, Lrxhttp/wrapper/param/AbstractParam;->url:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lrxhttp/wrapper/param/AbstractParam;->method:Lrxhttp/wrapper/param/Method;

    .line 50
    invoke-static {}, Lrxhttp/RxHttpPlugins;->getCacheStrategy()Lrxhttp/wrapper/cahce/CacheStrategy;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    return-void
.end method

.method private addPath(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ")TP;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->paths:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->paths:Ljava/util/List;

    .line 70
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private addQuery(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ")TP;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->queryParam:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->queryParam:Ljava/util/List;

    .line 86
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->queryParam:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public addEncodedPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation

    .line 65
    new-instance v0, Lrxhttp/wrapper/entity/KeyValuePair;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lrxhttp/wrapper/entity/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lrxhttp/wrapper/param/AbstractParam;->addPath(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation

    .line 81
    new-instance v0, Lrxhttp/wrapper/entity/KeyValuePair;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lrxhttp/wrapper/entity/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lrxhttp/wrapper/param/AbstractParam;->addQuery(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public addPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation

    .line 60
    new-instance v0, Lrxhttp/wrapper/entity/KeyValuePair;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/entity/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrxhttp/wrapper/param/AbstractParam;->addPath(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation

    .line 76
    new-instance v0, Lrxhttp/wrapper/entity/KeyValuePair;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/entity/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrxhttp/wrapper/param/AbstractParam;->addQuery(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public buildCacheKey()Ljava/lang/String;
    .locals 3

    .line 186
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractParam;->getQueryParam()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrxhttp/wrapper/utils/CacheUtil;->excludeCacheKey(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractParam;->getSimpleUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lrxhttp/wrapper/param/AbstractParam;->paths:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lrxhttp/wrapper/utils/BuildUtil;->getHttpUrl(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final buildRequest()Lokhttp3/Request;
    .locals 2

    .line 214
    invoke-static {p0}, Lrxhttp/RxHttpPlugins;->onParamAssembly(Lrxhttp/wrapper/param/Param;)Lrxhttp/wrapper/param/Param;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lrxhttp/wrapper/param/AbstractParam;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-static {v0, v1}, Lrxhttp/wrapper/utils/BuildUtil;->buildRequest(Lrxhttp/wrapper/param/IRequest;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/CacheControl;",
            ")TP;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    return-object p0
.end method

.method protected final convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 4

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractParam;->getConverter()Lrxhttp/wrapper/callback/IConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lrxhttp/wrapper/callback/IConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to RequestBody"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCacheMode()Lrxhttp/wrapper/cahce/CacheMode;
    .locals 1

    .line 203
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheMode()Lrxhttp/wrapper/cahce/CacheMode;

    move-result-object v0

    return-object v0
.end method

.method public final getCacheStrategy()Lrxhttp/wrapper/cahce/CacheStrategy;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractParam;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractParam;->buildCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/AbstractParam;->setCacheKey(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    .line 170
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    return-object v0
.end method

.method public final getCacheValidTime()J
    .locals 2

    .line 192
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0}, Lrxhttp/wrapper/cahce/CacheStrategy;->getCacheValidTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getConverter()Lrxhttp/wrapper/callback/IConverter;
    .locals 2

    .line 219
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractParam;->getRequestBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 220
    const-class v1, Lrxhttp/wrapper/callback/IConverter;

    invoke-virtual {v0, v1}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrxhttp/wrapper/callback/IConverter;

    const-string v1, "converter can not be null"

    .line 221
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lrxhttp/wrapper/callback/IConverter;

    return-object v0
.end method

.method public final getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 122
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->HBuilder:Lokhttp3/Headers$Builder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getHeadersBuilder()Lokhttp3/Headers$Builder;
    .locals 1

    .line 127
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->HBuilder:Lokhttp3/Headers$Builder;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->HBuilder:Lokhttp3/Headers$Builder;

    .line 129
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->HBuilder:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public getHttpUrl()Lokhttp3/HttpUrl;
    .locals 3

    .line 111
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->url:Ljava/lang/String;

    iget-object v1, p0, Lrxhttp/wrapper/param/AbstractParam;->queryParam:Ljava/util/List;

    iget-object v2, p0, Lrxhttp/wrapper/param/AbstractParam;->paths:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lrxhttp/wrapper/utils/BuildUtil;->getHttpUrl(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lrxhttp/wrapper/param/Method;
    .locals 1

    .line 116
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->method:Lrxhttp/wrapper/param/Method;

    return-object v0
.end method

.method public getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->paths:Ljava/util/List;

    return-object v0
.end method

.method public getQueryParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->queryParam:Ljava/util/List;

    return-object v0
.end method

.method public getRequestBuilder()Lokhttp3/Request$Builder;
    .locals 1

    .line 162
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->requestBuilder:Lokhttp3/Request$Builder;

    return-object v0
.end method

.method public final getSimpleUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractParam;->getHttpUrl()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAssemblyEnabled()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lrxhttp/wrapper/param/AbstractParam;->isAssemblyEnabled:Z

    return v0
.end method

.method public final setAssemblyEnabled(Z)Lrxhttp/wrapper/param/Param;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TP;"
        }
    .end annotation

    .line 152
    iput-boolean p1, p0, Lrxhttp/wrapper/param/AbstractParam;->isAssemblyEnabled:Z

    return-object p0
.end method

.method public final setCacheKey(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/cahce/CacheStrategy;->setCacheKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setCacheMode(Lrxhttp/wrapper/cahce/CacheMode;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/cahce/CacheMode;",
            ")TP;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/cahce/CacheStrategy;->setCacheMode(Lrxhttp/wrapper/cahce/CacheMode;)V

    return-object p0
.end method

.method public final setCacheValidTime(J)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TP;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->cacheStrategy:Lrxhttp/wrapper/cahce/CacheStrategy;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/cahce/CacheStrategy;->setCacheValidTime(J)V

    return-object p0
.end method

.method public setHeadersBuilder(Lokhttp3/Headers$Builder;)Lrxhttp/wrapper/param/Param;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers$Builder;",
            ")TP;"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lrxhttp/wrapper/param/AbstractParam;->HBuilder:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lrxhttp/wrapper/param/AbstractParam;->url:Ljava/lang/String;

    return-object p0
.end method

.method public tag(Ljava/lang/Class;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)TP;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lrxhttp/wrapper/param/AbstractParam;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    return-object p0
.end method
