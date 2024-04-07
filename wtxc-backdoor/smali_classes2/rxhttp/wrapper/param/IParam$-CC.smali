.class public final synthetic Lrxhttp/wrapper/param/IParam$-CC;
.super Ljava/lang/Object;
.source "IParam.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClass;
    kind = "$-CC"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lrxhttp/wrapper/param/Param<",
        "TP;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$addAll(Lrxhttp/wrapper/param/IParam;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IParam;

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lrxhttp/wrapper/param/IParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 31
    :cond_0
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addAllEncodedQuery(Lrxhttp/wrapper/param/IParam;Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IParam;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 47
    invoke-interface {p0, p1, p2}, Lrxhttp/wrapper/param/IParam;->addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-interface {p0, p1, v0}, Lrxhttp/wrapper/param/IParam;->addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 51
    :cond_1
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addAllEncodedQuery(Lrxhttp/wrapper/param/IParam;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IParam;

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lrxhttp/wrapper/param/IParam;->addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 65
    :cond_0
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addAllQuery(Lrxhttp/wrapper/param/IParam;Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IParam;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 39
    invoke-interface {p0, p1, p2}, Lrxhttp/wrapper/param/IParam;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 41
    invoke-interface {p0, p1, v0}, Lrxhttp/wrapper/param/IParam;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 43
    :cond_1
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addAllQuery(Lrxhttp/wrapper/param/IParam;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IParam;

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lrxhttp/wrapper/param/IParam;->addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 58
    :cond_0
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$tag(Lrxhttp/wrapper/param/IParam;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IParam;

    .line 82
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, v0, p1}, Lrxhttp/wrapper/param/IParam;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method
