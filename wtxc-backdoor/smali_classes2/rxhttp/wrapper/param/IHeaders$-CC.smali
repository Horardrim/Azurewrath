.class public final synthetic Lrxhttp/wrapper/param/IHeaders$-CC;
.super Ljava/lang/Object;
.source "IHeaders.java"


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
.method public static $default$addAllHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 52
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

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lrxhttp/wrapper/param/IHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 55
    :cond_0
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addAllHeader(Lrxhttp/wrapper/param/IHeaders;Lokhttp3/Headers;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 59
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->addAll(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 60
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 47
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 48
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 30
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 31
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addNonAsciiHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 35
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 36
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$getHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 26
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$removeAllHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 76
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 77
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$setAllHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 69
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

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lrxhttp/wrapper/param/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 72
    :cond_0
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$setHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 64
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 65
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$setNonAsciiHeader(Lrxhttp/wrapper/param/IHeaders;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    .line 40
    invoke-interface {p0}, Lrxhttp/wrapper/param/IHeaders;->getHeadersBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 42
    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 43
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$setRangeHeader(Lrxhttp/wrapper/param/IHeaders;J)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    const-wide/16 v0, -0x1

    .line 87
    invoke-interface {p0, p1, p2, v0, v1}, Lrxhttp/wrapper/param/IHeaders;->setRangeHeader(JJ)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$setRangeHeader(Lrxhttp/wrapper/param/IHeaders;JJ)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IHeaders;

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    const-wide/16 p3, -0x1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-ltz p2, :cond_1

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "RANGE"

    .line 106
    invoke-interface {p0, p2, p1}, Lrxhttp/wrapper/param/IHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method
