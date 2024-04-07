.class public Lrxhttp/RxHttpFormParam;
.super Lrxhttp/RxHttpAbstractBodyParam;
.source "RxHttpFormParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/RxHttpAbstractBodyParam<",
        "Lrxhttp/wrapper/param/FormParam;",
        "Lrxhttp/RxHttpFormParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/param/FormParam;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lrxhttp/RxHttpAbstractBodyParam;-><init>(Lrxhttp/wrapper/param/AbstractBodyParam;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 34
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Z)Lrxhttp/RxHttpFormParam;
    .locals 0

    if-eqz p3, :cond_0

    .line 40
    iget-object p3, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast p3, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {p3, p1, p2}, Lrxhttp/wrapper/param/FormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/Map;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addAllEncoded(Ljava/util/Map;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addAllEncoded(Ljava/util/Map;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 51
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->addEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 81
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->addFile(Ljava/lang/String;Ljava/io/File;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 91
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2, p3}, Lrxhttp/wrapper/param/FormParam;->addFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addFile(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 86
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->addFile(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addFile(Ljava/lang/String;Ljava/util/List;)Lrxhttp/RxHttpFormParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Lrxhttp/RxHttpFormParam;->addFiles(Ljava/lang/String;Ljava/util/List;)Lrxhttp/RxHttpFormParam;

    move-result-object p1

    return-object p1
.end method

.method public addFile(Ljava/util/List;)Lrxhttp/RxHttpFormParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lrxhttp/wrapper/entity/UpFile;",
            ">;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lrxhttp/RxHttpFormParam;->addFiles(Ljava/util/List;)Lrxhttp/RxHttpFormParam;

    move-result-object p1

    return-object p1
.end method

.method public addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 96
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addFiles(Ljava/lang/String;Ljava/util/List;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->addFiles(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addFiles(Ljava/util/List;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lrxhttp/wrapper/entity/UpFile;",
            ">;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addFiles(Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addFiles(Ljava/util/Map;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addFiles(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 227
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2, p3}, Lrxhttp/wrapper/param/FormParam;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addPart(Landroid/content/Context;Landroid/net/Uri;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 143
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-static {p2, p1}, Lrxhttp/wrapper/utils/UriUtil;->asRequestBody(Landroid/net/Uri;Landroid/content/Context;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addPart(Landroid/content/Context;Landroid/net/Uri;Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;
    .locals 3

    .line 158
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    const-wide/16 v1, 0x0

    invoke-static {p2, p1, v1, v2, p3}, Lrxhttp/wrapper/utils/UriUtil;->asRequestBody(Landroid/net/Uri;Landroid/content/Context;JLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addPart(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 148
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-static {p3, p1, p2}, Lrxhttp/wrapper/utils/UriUtil;->asPart(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public addPart(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;
    .locals 8

    .line 164
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-static {p3, p1}, Lrxhttp/wrapper/utils/UriUtil;->displayName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lrxhttp/wrapper/utils/UriUtil;->asPart(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLokhttp3/MediaType;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public addPart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 153
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-static {p4, p1, p2, p3}, Lrxhttp/wrapper/utils/UriUtil;->asPart(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public addPart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;
    .locals 8

    .line 170
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    const-wide/16 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lrxhttp/wrapper/utils/UriUtil;->asPart(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLokhttp3/MediaType;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 222
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addPart(Lokhttp3/MediaType;[B)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 132
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MediaType;[B)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addPart(Lokhttp3/MediaType;[BII)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 138
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MediaType;[BII)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 212
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public addPart(Lokhttp3/RequestBody;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 217
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    return-object p0
.end method

.method public addParts(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 189
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 190
    invoke-virtual {p0, p1, p2, v0}, Lrxhttp/RxHttpFormParam;->addPart(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lrxhttp/RxHttpFormParam;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addParts(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lokhttp3/MediaType;",
            ")",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 205
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 206
    invoke-virtual {p0, p1, p2, v0, p4}, Lrxhttp/RxHttpFormParam;->addPart(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addParts(Landroid/content/Context;Ljava/util/List;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 182
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 183
    invoke-virtual {p0, p1, v0}, Lrxhttp/RxHttpFormParam;->addPart(Landroid/content/Context;Landroid/net/Uri;)Lrxhttp/RxHttpFormParam;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addParts(Landroid/content/Context;Ljava/util/List;Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lokhttp3/MediaType;",
            ")",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 197
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 198
    invoke-virtual {p0, p1, v0, p3}, Lrxhttp/RxHttpFormParam;->addPart(Landroid/content/Context;Landroid/net/Uri;Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addParts(Landroid/content/Context;Ljava/util/Map;)Lrxhttp/RxHttpFormParam;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)",
            "Lrxhttp/RxHttpFormParam;"
        }
    .end annotation

    .line 175
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0}, Lrxhttp/RxHttpFormParam;->addPart(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lrxhttp/RxHttpFormParam;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public removeAllBody()Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 61
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/FormParam;->removeAllBody()Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public removeAllBody(Ljava/lang/String;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 66
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->removeAllBody(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 71
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->set(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public setEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 76
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->setEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public setMultiAlternative()Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 245
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/FormParam;->setMultiAlternative()Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public setMultiDigest()Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 251
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/FormParam;->setMultiDigest()Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public setMultiForm()Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 233
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/FormParam;->setMultiForm()Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public setMultiMixed()Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 239
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/FormParam;->setMultiMixed()Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public setMultiParallel()Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 257
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0}, Lrxhttp/wrapper/param/FormParam;->setMultiParallel()Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method

.method public setMultiType(Lokhttp3/MediaType;)Lrxhttp/RxHttpFormParam;
    .locals 1

    .line 263
    iget-object v0, p0, Lrxhttp/RxHttpFormParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/FormParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/FormParam;->setMultiType(Lokhttp3/MediaType;)Lrxhttp/wrapper/param/FormParam;

    return-object p0
.end method
