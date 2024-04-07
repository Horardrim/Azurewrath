.class public abstract Lrxhttp/wrapper/param/Param;
.super Ljava/lang/Object;
.source "Param.java"

# interfaces
.implements Lrxhttp/wrapper/param/IParam;
.implements Lrxhttp/wrapper/param/IHeaders;
.implements Lrxhttp/wrapper/param/ICache;
.implements Lrxhttp/wrapper/param/IRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lrxhttp/wrapper/param/Param<",
        "TP;>;>",
        "Ljava/lang/Object;",
        "Lrxhttp/wrapper/param/IParam<",
        "TP;>;",
        "Lrxhttp/wrapper/param/IHeaders<",
        "TP;>;",
        "Lrxhttp/wrapper/param/ICache<",
        "TP;>;",
        "Lrxhttp/wrapper/param/IRequest;"
    }
.end annotation


# static fields
.field public static DATA_DECRYPT:Ljava/lang/String; = "data-decrypt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;
    .locals 2

    .line 37
    new-instance v0, Lrxhttp/wrapper/param/BodyParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->DELETE:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/BodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static deleteForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;
    .locals 2

    .line 89
    new-instance v0, Lrxhttp/wrapper/param/FormParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->DELETE:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/FormParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static deleteJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;
    .locals 2

    .line 129
    new-instance v0, Lrxhttp/wrapper/param/JsonParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->DELETE:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static deleteJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 2

    .line 170
    new-instance v0, Lrxhttp/wrapper/param/JsonArrayParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->DELETE:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonArrayParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lrxhttp/wrapper/param/NoBodyParam;
    .locals 2

    .line 16
    new-instance v0, Lrxhttp/wrapper/param/NoBodyParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->GET:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/NoBodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lrxhttp/wrapper/param/NoBodyParam;
    .locals 2

    .line 21
    new-instance v0, Lrxhttp/wrapper/param/NoBodyParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->HEAD:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/NoBodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static patchBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;
    .locals 2

    .line 33
    new-instance v0, Lrxhttp/wrapper/param/BodyParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PATCH:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/BodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static patchForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;
    .locals 2

    .line 76
    new-instance v0, Lrxhttp/wrapper/param/FormParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PATCH:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/FormParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static patchJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;
    .locals 2

    .line 119
    new-instance v0, Lrxhttp/wrapper/param/JsonParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PATCH:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static patchJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 2

    .line 160
    new-instance v0, Lrxhttp/wrapper/param/JsonArrayParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PATCH:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonArrayParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static postBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;
    .locals 2

    .line 25
    new-instance v0, Lrxhttp/wrapper/param/BodyParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->POST:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/BodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static postForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;
    .locals 2

    .line 50
    new-instance v0, Lrxhttp/wrapper/param/FormParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->POST:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/FormParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static postJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;
    .locals 2

    .line 99
    new-instance v0, Lrxhttp/wrapper/param/JsonParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->POST:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static postJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 2

    .line 139
    new-instance v0, Lrxhttp/wrapper/param/JsonArrayParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->POST:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonArrayParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static putBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;
    .locals 2

    .line 29
    new-instance v0, Lrxhttp/wrapper/param/BodyParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PUT:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/BodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static putForm(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;
    .locals 2

    .line 63
    new-instance v0, Lrxhttp/wrapper/param/FormParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PUT:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/FormParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static putJson(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;
    .locals 2

    .line 109
    new-instance v0, Lrxhttp/wrapper/param/JsonParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PUT:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method

.method public static putJsonArray(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;
    .locals 2

    .line 150
    new-instance v0, Lrxhttp/wrapper/param/JsonArrayParam;

    sget-object v1, Lrxhttp/wrapper/param/Method;->PUT:Lrxhttp/wrapper/param/Method;

    invoke-direct {v0, p0, v1}, Lrxhttp/wrapper/param/JsonArrayParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-object v0
.end method


# virtual methods
.method public synthetic addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IParam$-CC;->$default$addAll(Lrxhttp/wrapper/param/IParam;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addAllEncodedQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IParam$-CC;->$default$addAllEncodedQuery(Lrxhttp/wrapper/param/IParam;Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addAllEncodedQuery(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IParam$-CC;->$default$addAllEncodedQuery(Lrxhttp/wrapper/param/IParam;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addAllHeader(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$addAllHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addAllHeader(Lokhttp3/Headers;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$addAllHeader(Lrxhttp/wrapper/param/IHeaders;Lokhttp3/Headers;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addAllQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IParam$-CC;->$default$addAllQuery(Lrxhttp/wrapper/param/IParam;Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addAllQuery(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IParam$-CC;->$default$addAllQuery(Lrxhttp/wrapper/param/IParam;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addHeader(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$addHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$addHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addNonAsciiHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$addNonAsciiHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic buildRequestBody()Lokhttp3/RequestBody;
    .locals 1

    invoke-static {p0}, Lrxhttp/wrapper/param/IRequest$-CC;->$default$buildRequestBody(Lrxhttp/wrapper/param/IRequest;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$getHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic removeAllHeader(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$removeAllHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setAllHeader(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$setAllHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$setHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setNonAsciiHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$setNonAsciiHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setRangeHeader(J)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$setRangeHeader(Lrxhttp/wrapper/param/IHeaders;J)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setRangeHeader(JJ)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lrxhttp/wrapper/param/IHeaders$-CC;->$default$setRangeHeader(Lrxhttp/wrapper/param/IHeaders;JJ)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tag(Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IParam$-CC;->$default$tag(Lrxhttp/wrapper/param/IParam;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method
