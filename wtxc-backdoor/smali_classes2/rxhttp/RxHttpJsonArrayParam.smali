.class public Lrxhttp/RxHttpJsonArrayParam;
.super Lrxhttp/RxHttpAbstractBodyParam;
.source "RxHttpJsonArrayParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/RxHttpAbstractBodyParam<",
        "Lrxhttp/wrapper/param/JsonArrayParam;",
        "Lrxhttp/RxHttpJsonArrayParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/param/JsonArrayParam;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lrxhttp/RxHttpAbstractBodyParam;-><init>(Lrxhttp/wrapper/param/AbstractBodyParam;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 41
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 24
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Z)Lrxhttp/RxHttpJsonArrayParam;
    .locals 0

    if-eqz p3, :cond_0

    .line 30
    iget-object p3, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast p3, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {p3, p1, p2}, Lrxhttp/wrapper/param/JsonArrayParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/JsonArrayParam;

    :cond_0
    return-object p0
.end method

.method public addAll(Lcom/google/gson/JsonArray;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 59
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Lcom/google/gson/JsonArray;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public addAll(Lcom/google/gson/JsonObject;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 67
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Lcom/google/gson/JsonObject;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public addAll(Ljava/lang/String;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 54
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public addAll(Ljava/util/List;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lrxhttp/RxHttpJsonArrayParam;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Ljava/util/List;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public addAll(Ljava/util/Map;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/RxHttpJsonArrayParam;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public addJsonElement(Ljava/lang/String;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 72
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/JsonArrayParam;->addJsonElement(Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method

.method public addJsonElement(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttpJsonArrayParam;
    .locals 1

    .line 80
    iget-object v0, p0, Lrxhttp/RxHttpJsonArrayParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/JsonArrayParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/JsonArrayParam;->addJsonElement(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/JsonArrayParam;

    return-object p0
.end method
