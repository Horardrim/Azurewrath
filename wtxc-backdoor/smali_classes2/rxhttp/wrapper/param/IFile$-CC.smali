.class public final synthetic Lrxhttp/wrapper/param/IFile$-CC;
.super Ljava/lang/Object;
.source "IFile.java"


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
.method public static $default$addFile(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/io/File;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IFile;

    .line 19
    new-instance v0, Lrxhttp/wrapper/entity/UpFile;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/entity/UpFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p0, v0}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$addFile(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IFile;

    .line 27
    new-instance v0, Lrxhttp/wrapper/entity/UpFile;

    invoke-direct {v0, p1, p2, p3}, Lrxhttp/wrapper/entity/UpFile;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$addFile(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IFile;

    .line 23
    new-instance v0, Lrxhttp/wrapper/entity/UpFile;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/entity/UpFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$addFiles(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 2
    .param p0, "_this"    # Lrxhttp/wrapper/param/IFile;

    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Lrxhttp/wrapper/entity/UpFile;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lrxhttp/wrapper/entity/UpFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 34
    :cond_0
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Lrxhttp/wrapper/entity/UpFile;

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Lrxhttp/wrapper/entity/UpFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p0, v1}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incoming data type exception, it must be String or File"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addFiles(Lrxhttp/wrapper/param/IFile;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IFile;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrxhttp/wrapper/entity/UpFile;

    .line 60
    invoke-interface {p0, v0}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 62
    :cond_0
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public static $default$addFiles(Lrxhttp/wrapper/param/IFile;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 3
    .param p0, "_this"    # Lrxhttp/wrapper/param/IFile;

    .line 44
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 47
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Lrxhttp/wrapper/entity/UpFile;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lrxhttp/wrapper/entity/UpFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 49
    :cond_0
    instance-of v2, v0, Ljava/io/File;

    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Lrxhttp/wrapper/entity/UpFile;

    check-cast v0, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Lrxhttp/wrapper/entity/UpFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p0, v2}, Lrxhttp/wrapper/param/IFile;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    goto :goto_0

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incoming data type exception, it must be String or File"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_2
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method
