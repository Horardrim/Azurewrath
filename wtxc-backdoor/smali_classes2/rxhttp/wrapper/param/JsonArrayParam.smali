.class public Lrxhttp/wrapper/param/JsonArrayParam;
.super Lrxhttp/wrapper/param/AbstractBodyParam;
.source "JsonArrayParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/wrapper/param/AbstractBodyParam<",
        "Lrxhttp/wrapper/param/JsonArrayParam;",
        ">;"
    }
.end annotation


# instance fields
.field private bodyParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/param/AbstractBodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-void
.end method

.method private initList()V
    .locals 1

    .line 139
    iget-object v0, p0, Lrxhttp/wrapper/param/JsonArrayParam;->bodyParam:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrxhttp/wrapper/param/JsonArrayParam;->bodyParam:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 1

    .line 59
    invoke-direct {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->initList()V

    .line 60
    iget-object v0, p0, Lrxhttp/wrapper/param/JsonArrayParam;->bodyParam:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 1

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Lcom/google/gson/JsonArray;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 0

    .line 92
    invoke-static {p1}, Lrxhttp/wrapper/utils/JsonUtil;->toList(Lcom/google/gson/JsonArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Ljava/util/List;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Lcom/google/gson/JsonObject;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 0

    .line 82
    invoke-static {p1}, Lrxhttp/wrapper/utils/JsonUtil;->toMap(Lcom/google/gson/JsonObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 1

    .line 72
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Lcom/google/gson/JsonArray;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Lcom/google/gson/JsonObject;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1
    invoke-static {p1}, Lrxhttp/wrapper/utils/JsonUtil;->toAny(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/util/List;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lrxhttp/wrapper/param/JsonArrayParam;"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->initList()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/wrapper/param/JsonArrayParam;"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->initList()V

    .line 88
    invoke-super {p0, p1}, Lrxhttp/wrapper/param/AbstractBodyParam;->addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    check-cast p1, Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public addJsonElement(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lrxhttp/wrapper/utils/JsonUtil;->toAny(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public addJsonElement(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 0

    .line 109
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 110
    invoke-static {p2}, Lrxhttp/wrapper/utils/JsonUtil;->toAny(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p1

    return-object p1
.end method

.method public buildCacheKey()Ljava/lang/String;
    .locals 3

    .line 130
    invoke-virtual {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->getQueryParam()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrxhttp/wrapper/utils/CacheUtil;->excludeCacheKey(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->getSimpleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->getPaths()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lrxhttp/wrapper/utils/BuildUtil;->getHttpUrl(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lrxhttp/wrapper/param/JsonArrayParam;->bodyParam:Ljava/util/List;

    invoke-static {v1}, Lrxhttp/wrapper/utils/CacheUtil;->excludeCacheKey(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lrxhttp/wrapper/utils/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v2, "json"

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lrxhttp/wrapper/param/JsonArrayParam;->bodyParam:Ljava/util/List;

    return-object v0
.end method

.method protected getConverter()Lrxhttp/wrapper/callback/IConverter;
    .locals 2

    .line 144
    invoke-super {p0}, Lrxhttp/wrapper/param/AbstractBodyParam;->getConverter()Lrxhttp/wrapper/callback/IConverter;

    move-result-object v0

    .line 145
    instance-of v1, v0, Lrxhttp/wrapper/callback/JsonConverter;

    if-nez v1, :cond_0

    .line 146
    invoke-static {}, Lrxhttp/RxHttpPlugins;->getConverter()Lrxhttp/wrapper/callback/IConverter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->getBodyParam()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 46
    iget-object v0, p0, Lrxhttp/wrapper/param/JsonArrayParam;->bodyParam:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 48
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/JsonArrayParam;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    invoke-virtual {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->getSimpleUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lrxhttp/wrapper/param/JsonArrayParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JsonArrayParam{url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bodyParam = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lrxhttp/wrapper/param/JsonArrayParam;->bodyParam:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
