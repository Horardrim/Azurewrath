.class public Lrxhttp/wrapper/param/NoBodyParam;
.super Lrxhttp/wrapper/param/AbstractParam;
.source "NoBodyParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/wrapper/param/AbstractParam<",
        "Lrxhttp/wrapper/param/NoBodyParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/param/AbstractParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/NoBodyParam;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/NoBodyParam;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    check-cast p1, Lrxhttp/wrapper/param/NoBodyParam;

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/NoBodyParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/NoBodyParam;

    move-result-object p1

    return-object p1
.end method

.method public addAllEncoded(Ljava/util/Map;)Lrxhttp/wrapper/param/NoBodyParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/wrapper/param/NoBodyParam;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/NoBodyParam;->addAllEncodedQuery(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    check-cast p1, Lrxhttp/wrapper/param/NoBodyParam;

    return-object p1
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/NoBodyParam;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/NoBodyParam;->addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    check-cast p1, Lrxhttp/wrapper/param/NoBodyParam;

    return-object p1
.end method

.method public getKeyValuePairs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lrxhttp/wrapper/param/NoBodyParam;->getQueryParam()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestBody()Lokhttp3/RequestBody;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lrxhttp/wrapper/param/NoBodyParam;->getSimpleUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lrxhttp/wrapper/param/NoBodyParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
