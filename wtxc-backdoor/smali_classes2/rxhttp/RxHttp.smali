.class public Lrxhttp/RxHttp;
.super Lrxhttp/BaseRxHttp;
.source "RxHttp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lrxhttp/wrapper/param/Param;",
        "R:",
        "Lrxhttp/RxHttp;",
        ">",
        "Lrxhttp/BaseRxHttp;"
    }
.end annotation


# instance fields
.field private connectTimeoutMillis:J

.field protected converter:Lrxhttp/wrapper/callback/IConverter;

.field protected isAsync:Z

.field private okClient:Lokhttp3/OkHttpClient;

.field protected param:Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private readTimeoutMillis:J

.field private realOkClient:Lokhttp3/OkHttpClient;

.field public request:Lokhttp3/Request;

.field private writeTimeoutMillis:J


# direct methods
.method protected constructor <init>(Lrxhttp/wrapper/param/Param;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lrxhttp/BaseRxHttp;-><init>()V

    .line 51
    invoke-static {}, Lrxhttp/RxHttpPlugins;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/RxHttp;->okClient:Lokhttp3/OkHttpClient;

    .line 53
    invoke-static {}, Lrxhttp/RxHttpPlugins;->getConverter()Lrxhttp/wrapper/callback/IConverter;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/RxHttp;->converter:Lrxhttp/wrapper/callback/IConverter;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lrxhttp/RxHttp;->isAsync:Z

    .line 62
    iput-object p1, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    return-void
.end method

.method private addDefaultDomainIfAbsent()V
    .locals 1

    .line 547
    sget-object v0, Lcom/qinyue/vcommon/http/HttpUrl;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lrxhttp/RxHttp;->setDomainIfAbsent(Ljava/lang/String;)Lrxhttp/RxHttp;

    return-void
.end method

.method private static addDomainIfAbsent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http"

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 558
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 562
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 563
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 566
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteBody(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 120
    new-instance v0, Lrxhttp/RxHttpBodyParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->deleteBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpBodyParam;-><init>(Lrxhttp/wrapper/param/BodyParam;)V

    return-object v0
.end method

.method public static varargs deleteForm(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 136
    new-instance v0, Lrxhttp/RxHttpFormParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->deleteForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpFormParam;-><init>(Lrxhttp/wrapper/param/FormParam;)V

    return-object v0
.end method

.method public static varargs deleteJson(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 152
    new-instance v0, Lrxhttp/RxHttpJsonParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->deleteJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonParam;-><init>(Lrxhttp/wrapper/param/JsonParam;)V

    return-object v0
.end method

.method public static varargs deleteJsonArray(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 168
    new-instance v0, Lrxhttp/RxHttpJsonArrayParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->deleteJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonArrayParam;-><init>(Lrxhttp/wrapper/param/JsonArrayParam;)V

    return-object v0
.end method

.method private final doOnStart()V
    .locals 1

    .line 480
    iget-object v0, p0, Lrxhttp/RxHttp;->converter:Lrxhttp/wrapper/callback/IConverter;

    invoke-direct {p0, v0}, Lrxhttp/RxHttp;->setConverterToParam(Lrxhttp/wrapper/callback/IConverter;)Lrxhttp/RxHttp;

    .line 481
    invoke-direct {p0}, Lrxhttp/RxHttp;->addDefaultDomainIfAbsent()V

    return-void
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 574
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpNoBodyParam;
    .locals 1

    .line 100
    new-instance v0, Lrxhttp/RxHttpNoBodyParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->get(Ljava/lang/String;)Lrxhttp/wrapper/param/NoBodyParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpNoBodyParam;-><init>(Lrxhttp/wrapper/param/NoBodyParam;)V

    return-object v0
.end method

.method public static varargs head(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpNoBodyParam;
    .locals 1

    .line 104
    new-instance v0, Lrxhttp/RxHttpNoBodyParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->head(Ljava/lang/String;)Lrxhttp/wrapper/param/NoBodyParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpNoBodyParam;-><init>(Lrxhttp/wrapper/param/NoBodyParam;)V

    return-object v0
.end method

.method public static varargs patchBody(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 116
    new-instance v0, Lrxhttp/RxHttpBodyParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->patchBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpBodyParam;-><init>(Lrxhttp/wrapper/param/BodyParam;)V

    return-object v0
.end method

.method public static varargs patchForm(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 132
    new-instance v0, Lrxhttp/RxHttpFormParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->patchForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpFormParam;-><init>(Lrxhttp/wrapper/param/FormParam;)V

    return-object v0
.end method

.method public static varargs patchJson(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 148
    new-instance v0, Lrxhttp/RxHttpJsonParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->patchJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonParam;-><init>(Lrxhttp/wrapper/param/JsonParam;)V

    return-object v0
.end method

.method public static varargs patchJsonArray(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 164
    new-instance v0, Lrxhttp/RxHttpJsonArrayParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->patchJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonArrayParam;-><init>(Lrxhttp/wrapper/param/JsonArrayParam;)V

    return-object v0
.end method

.method public static varargs postBody(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 108
    new-instance v0, Lrxhttp/RxHttpBodyParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->postBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpBodyParam;-><init>(Lrxhttp/wrapper/param/BodyParam;)V

    return-object v0
.end method

.method public static varargs postForm(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 124
    new-instance v0, Lrxhttp/RxHttpFormParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->postForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpFormParam;-><init>(Lrxhttp/wrapper/param/FormParam;)V

    return-object v0
.end method

.method public static varargs postJson(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 140
    new-instance v0, Lrxhttp/RxHttpJsonParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->postJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonParam;-><init>(Lrxhttp/wrapper/param/JsonParam;)V

    return-object v0
.end method

.method public static varargs postJsonArray(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 156
    new-instance v0, Lrxhttp/RxHttpJsonArrayParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->postJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonArrayParam;-><init>(Lrxhttp/wrapper/param/JsonArrayParam;)V

    return-object v0
.end method

.method public static varargs putBody(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 112
    new-instance v0, Lrxhttp/RxHttpBodyParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->putBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpBodyParam;-><init>(Lrxhttp/wrapper/param/BodyParam;)V

    return-object v0
.end method

.method public static varargs putForm(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 128
    new-instance v0, Lrxhttp/RxHttpFormParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->putForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpFormParam;-><init>(Lrxhttp/wrapper/param/FormParam;)V

    return-object v0
.end method

.method public static varargs putJson(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 144
    new-instance v0, Lrxhttp/RxHttpJsonParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->putJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonParam;-><init>(Lrxhttp/wrapper/param/JsonParam;)V

    return-object v0
.end method

.method public static varargs putJsonArray(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 160
    new-instance v0, Lrxhttp/RxHttpJsonArrayParam;

    invoke-static {p0, p1}, Lrxhttp/RxHttp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrxhttp/wrapper/param/Param;->putJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;

    move-result-object p0

    invoke-direct {v0, p0}, Lrxhttp/RxHttpJsonArrayParam;-><init>(Lrxhttp/wrapper/param/JsonArrayParam;)V

    return-object v0
.end method

.method private setConverterToParam(Lrxhttp/wrapper/callback/IConverter;)Lrxhttp/RxHttp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/IConverter;",
            ")TR;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    const-class v1, Lrxhttp/wrapper/callback/IConverter;

    invoke-virtual {v0, v1, p1}, Lrxhttp/wrapper/param/Param;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method


# virtual methods
.method public addAllEncodedQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)TR;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addAllEncodedQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addAllEncodedQuery(Ljava/util/Map;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TR;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->addAllEncodedQuery(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addAllHeader(Ljava/util/Map;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->addAllHeader(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addAllHeader(Lokhttp3/Headers;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")TR;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->addAllHeader(Lokhttp3/Headers;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addAllQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)TR;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addAllQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addAllQuery(Ljava/util/Map;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TR;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->addAllQuery(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addEncodedPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addEncodedPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addEncodedQuery(Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lrxhttp/wrapper/param/Param;->addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->addHeader(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;Z)Lrxhttp/RxHttp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 270
    iget-object p3, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {p3, p1, p2}, Lrxhttp/wrapper/param/Param;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    :cond_0
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Z)Lrxhttp/RxHttp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 243
    iget-object p2, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {p2, p1}, Lrxhttp/wrapper/param/Param;->addHeader(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    :cond_0
    return-object p0
.end method

.method public addNonAsciiHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addNonAsciiHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addQuery(Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lrxhttp/wrapper/param/Param;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 502
    iget-boolean v0, p0, Lrxhttp/RxHttp;->isAsync:Z

    if-eqz v0, :cond_0

    new-instance v0, Lrxhttp/ObservableCallEnqueue;

    invoke-direct {v0, p0}, Lrxhttp/ObservableCallEnqueue;-><init>(Lrxhttp/wrapper/CallFactory;)V

    goto :goto_0

    .line 503
    :cond_0
    new-instance v0, Lrxhttp/ObservableCallExecute;

    invoke-direct {v0, p0}, Lrxhttp/ObservableCallExecute;-><init>(Lrxhttp/wrapper/CallFactory;)V

    .line 504
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lrxhttp/ObservableCall;->asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public asResponse(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 508
    new-instance v0, Lcom/qinyue/vcommon/http/ResponseParser;

    invoke-direct {v0, p1}, Lcom/qinyue/vcommon/http/ResponseParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lrxhttp/RxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public asResponseList(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 512
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->get(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    move-result-object p1

    .line 513
    new-instance v0, Lcom/qinyue/vcommon/http/ResponseParser;

    invoke-direct {v0, p1}, Lcom/qinyue/vcommon/http/ResponseParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lrxhttp/RxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public asResponsePageList(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/qinyue/vcommon/http/PageList<",
            "TT;>;>;"
        }
    .end annotation

    .line 517
    const-class v0, Lcom/qinyue/vcommon/http/PageList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->get(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    move-result-object p1

    .line 518
    new-instance v0, Lcom/qinyue/vcommon/http/ResponseParser;

    invoke-direct {v0, p1}, Lcom/qinyue/vcommon/http/ResponseParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lrxhttp/RxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final buildRequest()Lokhttp3/Request;
    .locals 1

    .line 435
    iget-object v0, p0, Lrxhttp/RxHttp;->request:Lokhttp3/Request;

    if-nez v0, :cond_0

    .line 436
    invoke-direct {p0}, Lrxhttp/RxHttp;->doOnStart()V

    .line 437
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->buildRequest()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/RxHttp;->request:Lokhttp3/Request;

    .line 439
    :cond_0
    iget-object v0, p0, Lrxhttp/RxHttp;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/CacheControl;",
            ")TR;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->cacheControl(Lokhttp3/CacheControl;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public connectTimeout(J)Lrxhttp/RxHttp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 75
    iput-wide p1, p0, Lrxhttp/RxHttp;->connectTimeoutMillis:J

    return-object p0
.end method

.method public execute(Lrxhttp/wrapper/parse/Parser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lrxhttp/RxHttp;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-interface {p1, v0}, Lrxhttp/wrapper/parse/Parser;->onParse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lrxhttp/RxHttp;->newCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public executeClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    new-instance v0, Lrxhttp/wrapper/parse/SimpleParser;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/parse/SimpleParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lrxhttp/RxHttp;->execute(Lrxhttp/wrapper/parse/Parser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executeList(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->get(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    move-result-object p1

    .line 420
    new-instance v0, Lrxhttp/wrapper/parse/SimpleParser;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/parse/SimpleParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lrxhttp/RxHttp;->execute(Lrxhttp/wrapper/parse/Parser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public executeString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lrxhttp/RxHttp;->executeClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCacheStrategy()Lrxhttp/wrapper/cahce/CacheStrategy;
    .locals 1

    .line 388
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->getCacheStrategy()Lrxhttp/wrapper/cahce/CacheStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 365
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersBuilder()Lokhttp3/Headers$Builder;
    .locals 1

    .line 369
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 7

    .line 443
    iget-object v0, p0, Lrxhttp/RxHttp;->realOkClient:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    return-object v0

    .line 444
    :cond_0
    iget-object v0, p0, Lrxhttp/RxHttp;->okClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    .line 447
    invoke-static {}, Lrxhttp/wrapper/utils/LogUtil;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 449
    new-instance v2, Lrxhttp/wrapper/intercept/LogInterceptor;

    invoke-direct {v2, v0}, Lrxhttp/wrapper/intercept/LogInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 452
    :cond_1
    iget-wide v2, p0, Lrxhttp/RxHttp;->connectTimeoutMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    .line 453
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 454
    :cond_2
    iget-wide v2, p0, Lrxhttp/RxHttp;->connectTimeoutMillis:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 457
    :cond_3
    iget-wide v2, p0, Lrxhttp/RxHttp;->readTimeoutMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    .line 458
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 459
    :cond_4
    iget-wide v2, p0, Lrxhttp/RxHttp;->readTimeoutMillis:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v6}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 462
    :cond_5
    iget-wide v2, p0, Lrxhttp/RxHttp;->writeTimeoutMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    .line 463
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 464
    :cond_6
    iget-wide v2, p0, Lrxhttp/RxHttp;->writeTimeoutMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 467
    :cond_7
    iget-object v2, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v2}, Lrxhttp/wrapper/param/Param;->getCacheMode()Lrxhttp/wrapper/cahce/CacheMode;

    move-result-object v2

    sget-object v3, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    if-eq v2, v3, :cond_9

    if-nez v1, :cond_8

    .line 468
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 469
    :cond_8
    new-instance v2, Lrxhttp/wrapper/intercept/CacheInterceptor;

    invoke-virtual {p0}, Lrxhttp/RxHttp;->getCacheStrategy()Lrxhttp/wrapper/cahce/CacheStrategy;

    move-result-object v3

    invoke-direct {v2, v3}, Lrxhttp/wrapper/intercept/CacheInterceptor;-><init>(Lrxhttp/wrapper/cahce/CacheStrategy;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_9
    if-eqz v1, :cond_a

    .line 472
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lrxhttp/RxHttp;->realOkClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getParam()Lrxhttp/wrapper/param/Param;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    return-object v0
.end method

.method public getSimpleUrl()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->getSimpleUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 352
    invoke-direct {p0}, Lrxhttp/RxHttp;->addDefaultDomainIfAbsent()V

    .line 353
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAssemblyEnabled()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->isAssemblyEnabled()Z

    move-result v0

    return v0
.end method

.method public final newCall()Lokhttp3/Call;
    .locals 2

    .line 429
    invoke-virtual {p0}, Lrxhttp/RxHttp;->buildRequest()Lokhttp3/Request;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lrxhttp/RxHttp;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 431
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(J)Lrxhttp/RxHttp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 80
    iput-wide p1, p0, Lrxhttp/RxHttp;->readTimeoutMillis:J

    return-object p0
.end method

.method public removeAllHeader(Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->removeAllHeader(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setAllHeader(Ljava/util/Map;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->setAllHeader(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setAssemblyEnabled(Z)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->setAssemblyEnabled(Z)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setCacheKey(Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->setCacheKey(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setCacheMode(Lrxhttp/wrapper/cahce/CacheMode;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/cahce/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->setCacheMode(Lrxhttp/wrapper/cahce/CacheMode;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setCacheValidTime(J)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->setCacheValidTime(J)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setConverter(Lrxhttp/wrapper/callback/IConverter;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/IConverter;",
            ")TR;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 524
    iput-object p1, p0, Lrxhttp/RxHttp;->converter:Lrxhttp/wrapper/callback/IConverter;

    return-object p0

    .line 523
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "converter can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDecoderEnabled(Z)Lrxhttp/RxHttp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    sget-object v1, Lrxhttp/wrapper/param/Param;->DATA_DECRYPT:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lrxhttp/wrapper/param/Param;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setDomainIfAbsent(Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/Param;->getSimpleUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lrxhttp/RxHttp;->addDomainIfAbsent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 552
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->setUrl(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setHeadersBuilder(Lokhttp3/Headers$Builder;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers$Builder;",
            ")TR;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->setHeadersBuilder(Lokhttp3/Headers$Builder;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setNonAsciiHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->setNonAsciiHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setOkClient(Lokhttp3/OkHttpClient;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TR;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 539
    iput-object p1, p0, Lrxhttp/RxHttp;->okClient:Lokhttp3/OkHttpClient;

    return-object p0

    .line 538
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "okClient can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParam(Lrxhttp/wrapper/param/Param;)Lrxhttp/RxHttp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TR;"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public setRangeHeader(J)Lrxhttp/RxHttp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 295
    invoke-virtual/range {v0 .. v5}, Lrxhttp/RxHttp;->setRangeHeader(JJZ)Lrxhttp/RxHttp;

    move-result-object p1

    return-object p1
.end method

.method public setRangeHeader(JJ)Lrxhttp/RxHttp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)TR;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 299
    invoke-virtual/range {v0 .. v5}, Lrxhttp/RxHttp;->setRangeHeader(JJZ)Lrxhttp/RxHttp;

    move-result-object p1

    return-object p1
.end method

.method public setRangeHeader(JJZ)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)TR;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrxhttp/wrapper/param/Param;->setRangeHeader(JJ)Lrxhttp/wrapper/param/Param;

    if-eqz p5, :cond_0

    .line 315
    iget-object p3, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    const-class p4, Lrxhttp/wrapper/entity/DownloadOffSize;

    new-instance p5, Lrxhttp/wrapper/entity/DownloadOffSize;

    invoke-direct {p5, p1, p2}, Lrxhttp/wrapper/entity/DownloadOffSize;-><init>(J)V

    invoke-virtual {p3, p4, p5}, Lrxhttp/wrapper/param/Param;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    :cond_0
    return-object p0
.end method

.method public setRangeHeader(JZ)Lrxhttp/RxHttp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TR;"
        }
    .end annotation

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 303
    invoke-virtual/range {v0 .. v5}, Lrxhttp/RxHttp;->setRangeHeader(JJZ)Lrxhttp/RxHttp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRangeHeader(JJZ)Lrxhttp/wrapper/CallFactory;
    .locals 0

    .line 41
    invoke-virtual/range {p0 .. p5}, Lrxhttp/RxHttp;->setRangeHeader(JJZ)Lrxhttp/RxHttp;

    move-result-object p1

    return-object p1
.end method

.method public setSync()Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lrxhttp/RxHttp;->isAsync:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->setUrl(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public subscribeOnCurrent()Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    invoke-virtual {p0}, Lrxhttp/RxHttp;->setSync()Lrxhttp/RxHttp;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Class;Ljava/lang/Object;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)TR;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/Param;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lrxhttp/RxHttp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lrxhttp/RxHttp;->param:Lrxhttp/wrapper/param/Param;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/Param;->tag(Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public writeTimeout(J)Lrxhttp/RxHttp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 85
    iput-wide p1, p0, Lrxhttp/RxHttp;->writeTimeoutMillis:J

    return-object p0
.end method
