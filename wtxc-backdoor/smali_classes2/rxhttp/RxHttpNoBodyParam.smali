.class public Lrxhttp/RxHttpNoBodyParam;
.super Lrxhttp/RxHttp;
.source "RxHttpNoBodyParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/RxHttp<",
        "Lrxhttp/wrapper/param/NoBodyParam;",
        "Lrxhttp/RxHttpNoBodyParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/param/NoBodyParam;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lrxhttp/RxHttp;-><init>(Lrxhttp/wrapper/param/Param;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpNoBodyParam;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lrxhttp/RxHttpNoBodyParam;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttp;

    move-result-object p1

    check-cast p1, Lrxhttp/RxHttpNoBodyParam;

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Z)Lrxhttp/RxHttpNoBodyParam;
    .locals 0

    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lrxhttp/RxHttpNoBodyParam;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttp;

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/Map;)Lrxhttp/RxHttpNoBodyParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/RxHttpNoBodyParam;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lrxhttp/RxHttpNoBodyParam;->addAllQuery(Ljava/util/Map;)Lrxhttp/RxHttp;

    move-result-object p1

    check-cast p1, Lrxhttp/RxHttpNoBodyParam;

    return-object p1
.end method

.method public addAllEncoded(Ljava/util/Map;)Lrxhttp/RxHttpNoBodyParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/RxHttpNoBodyParam;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lrxhttp/RxHttpNoBodyParam;->addAllEncodedQuery(Ljava/util/Map;)Lrxhttp/RxHttp;

    move-result-object p1

    check-cast p1, Lrxhttp/RxHttpNoBodyParam;

    return-object p1
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpNoBodyParam;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lrxhttp/RxHttpNoBodyParam;->addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttp;

    move-result-object p1

    check-cast p1, Lrxhttp/RxHttpNoBodyParam;

    return-object p1
.end method
