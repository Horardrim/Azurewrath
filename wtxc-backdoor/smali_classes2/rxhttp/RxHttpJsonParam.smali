.class public Lrxhttp/RxHttpJsonParam;
.super Lrxhttp/RxHttpAbstractBodyParam;
.source "RxHttpJsonParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/RxHttpAbstractBodyParam<",
        "Lrxhttp/wrapper/param/JsonParam;",
        "Lrxhttp/RxHttpJsonParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/param/JsonParam;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lrxhttp/RxHttpAbstractBodyParam;-><init>(Lrxhttp/wrapper/param/AbstractBodyParam;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 21
    iget-object v0, p0, Lrxhttp/RxHttpJsonParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/JsonParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonParam;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Z)Lrxhttp/RxHttpJsonParam;
    .locals 0

    if-eqz p3, :cond_0

    .line 27
    iget-object p3, p0, Lrxhttp/RxHttpJsonParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast p3, Lrxhttp/wrapper/param/JsonParam;

    invoke-virtual {p3, p1, p2}, Lrxhttp/wrapper/param/JsonParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonParam;

    :cond_0
    return-object p0
.end method

.method public addAll(Lcom/google/gson/JsonObject;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 50
    iget-object v0, p0, Lrxhttp/RxHttpJsonParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonParam;->addAll(Lcom/google/gson/JsonObject;)Lrxhttp/wrapper/param/JsonParam;

    return-object p0
.end method

.method public addAll(Ljava/lang/String;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 42
    iget-object v0, p0, Lrxhttp/RxHttpJsonParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonParam;->addAll(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;

    return-object p0
.end method

.method public addAll(Ljava/util/Map;)Lrxhttp/RxHttpJsonParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/RxHttpJsonParam;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lrxhttp/RxHttpJsonParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonParam;->addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/JsonParam;

    return-object p0
.end method

.method public addJsonElement(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttpJsonParam;
    .locals 1

    .line 58
    iget-object v0, p0, Lrxhttp/RxHttpJsonParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/JsonParam;->addJsonElement(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/JsonParam;

    return-object p0
.end method
