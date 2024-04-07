.class public final synthetic Lrxhttp/wrapper/param/IPart$-CC;
.super Ljava/lang/Object;
.source "IPart.java"


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
.method public static $default$addFile(Lrxhttp/wrapper/param/IPart;Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;
    .locals 5
    .param p0, "_this"    # Lrxhttp/wrapper/param/IPart;

    .line 47
    invoke-virtual {p1}, Lrxhttp/wrapper/entity/UpFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "File \'"

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Lrxhttp/wrapper/entity/FileRequestBody;

    invoke-virtual {p1}, Lrxhttp/wrapper/entity/UpFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lrxhttp/wrapper/entity/UpFile;->getSkipSize()J

    move-result-wide v2

    .line 54
    invoke-virtual {p1}, Lrxhttp/wrapper/entity/UpFile;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lrxhttp/wrapper/utils/BuildUtil;->getMediaType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lrxhttp/wrapper/entity/FileRequestBody;-><init>(Ljava/io/File;JLokhttp3/MediaType;)V

    .line 55
    invoke-virtual {p1}, Lrxhttp/wrapper/entity/UpFile;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lrxhttp/wrapper/entity/UpFile;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-interface {p0, p1}, Lrxhttp/wrapper/param/IPart;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a file"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static $default$addFormDataPart(Lrxhttp/wrapper/param/IPart;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;
    .locals 0
    .param p0, "_this"    # Lrxhttp/wrapper/param/IPart;

    .line 42
    invoke-static {p1, p2, p3}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-interface {p0, p1}, Lrxhttp/wrapper/param/IPart;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/Headers;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;
    .locals 0
    .param p0, "_this"    # Lrxhttp/wrapper/param/IPart;

    .line 38
    invoke-static {p1, p2}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-interface {p0, p1}, Lrxhttp/wrapper/param/IPart;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/MediaType;[B)Lrxhttp/wrapper/param/Param;
    .locals 0
    .param p0, "_this"    # Lrxhttp/wrapper/param/IPart;

    .line 25
    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p0, p1}, Lrxhttp/wrapper/param/IPart;->addPart(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/MediaType;[BII)Lrxhttp/wrapper/param/Param;
    .locals 0
    .param p0, "_this"    # Lrxhttp/wrapper/param/IPart;

    .line 30
    invoke-static {p1, p2, p3, p4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p0, p1}, Lrxhttp/wrapper/param/IPart;->addPart(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public static $default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;
    .locals 0
    .param p0, "_this"    # Lrxhttp/wrapper/param/IPart;

    .line 34
    invoke-static {p1}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-interface {p0, p1}, Lrxhttp/wrapper/param/IPart;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method
