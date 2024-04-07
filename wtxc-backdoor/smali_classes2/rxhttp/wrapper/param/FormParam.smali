.class public Lrxhttp/wrapper/param/FormParam;
.super Lrxhttp/wrapper/param/AbstractBodyParam;
.source "FormParam.java"

# interfaces
.implements Lrxhttp/wrapper/param/IPart;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/wrapper/param/AbstractBodyParam<",
        "Lrxhttp/wrapper/param/FormParam;",
        ">;",
        "Lrxhttp/wrapper/param/IPart<",
        "Lrxhttp/wrapper/param/FormParam;",
        ">;"
    }
.end annotation


# instance fields
.field private bodyParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private multiType:Lokhttp3/MediaType;

.field private partList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/param/AbstractBodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-void
.end method

.method private add(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 93
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    .line 97
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;
    .locals 1

    if-eqz p2, :cond_0

    .line 47
    new-instance v0, Lrxhttp/wrapper/entity/KeyValuePair;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/entity/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrxhttp/wrapper/param/FormParam;->add(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/FormParam;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p1

    return-object p1
.end method

.method public addAllEncoded(Ljava/util/Map;)Lrxhttp/wrapper/param/FormParam;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lrxhttp/wrapper/param/FormParam;"
        }
    .end annotation

    .line 57
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

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lrxhttp/wrapper/param/FormParam;->addEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;
    .locals 2

    if-eqz p2, :cond_0

    .line 52
    new-instance v0, Lrxhttp/wrapper/entity/KeyValuePair;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lrxhttp/wrapper/entity/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lrxhttp/wrapper/param/FormParam;->add(Lrxhttp/wrapper/entity/KeyValuePair;)Lrxhttp/wrapper/param/FormParam;

    :cond_0
    return-object p0
.end method

.method public synthetic addFile(Ljava/lang/String;Ljava/io/File;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IFile$-CC;->$default$addFile(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/io/File;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lrxhttp/wrapper/param/IFile$-CC;->$default$addFile(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addFile(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IFile$-CC;->$default$addFile(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IPart$-CC;->$default$addFile(Lrxhttp/wrapper/param/IPart;Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addFiles(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IFile$-CC;->$default$addFiles(Lrxhttp/wrapper/param/IFile;Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addFiles(Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IFile$-CC;->$default$addFiles(Lrxhttp/wrapper/param/IFile;Ljava/util/List;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addFiles(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IFile$-CC;->$default$addFiles(Lrxhttp/wrapper/param/IFile;Ljava/util/Map;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lrxhttp/wrapper/param/IPart$-CC;->$default$addFormDataPart(Lrxhttp/wrapper/param/IPart;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 103
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->partList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrxhttp/wrapper/param/FormParam;->partList:Ljava/util/List;

    .line 105
    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->isMultipart()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->setMultiForm()Lrxhttp/wrapper/param/FormParam;

    .line 107
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->partList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public synthetic addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IPart$-CC;->$default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/Headers;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addPart(Lokhttp3/MediaType;[B)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/param/IPart$-CC;->$default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/MediaType;[B)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addPart(Lokhttp3/MediaType;[BII)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lrxhttp/wrapper/param/IPart$-CC;->$default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/MediaType;[BII)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/Param;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/FormParam;->addPart(Lokhttp3/MultipartBody$Part;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addPart(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/param/IPart$-CC;->$default$addPart(Lrxhttp/wrapper/param/IPart;Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/Param;

    move-result-object p1

    return-object p1
.end method

.method public buildCacheKey()Ljava/lang/String;
    .locals 3

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->getQueryParam()Ljava/util/List;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_1
    invoke-static {v0}, Lrxhttp/wrapper/utils/CacheUtil;->excludeCacheKey(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->getSimpleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->getPaths()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lrxhttp/wrapper/utils/BuildUtil;->getHttpUrl(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrxhttp/wrapper/entity/KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    return-object v0
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

    .line 162
    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->getBodyParam()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->partList:Ljava/util/List;

    return-object v0
.end method

.method public getRequestBody()Lokhttp3/RequestBody;
    .locals 3

    .line 148
    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->multiType:Lokhttp3/MediaType;

    iget-object v1, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    iget-object v2, p0, Lrxhttp/wrapper/param/FormParam;->partList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lrxhttp/wrapper/utils/BuildUtil;->buildMultipartBody(Lokhttp3/MediaType;Ljava/util/List;Ljava/util/List;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    invoke-static {v0}, Lrxhttp/wrapper/utils/BuildUtil;->buildFormBody(Ljava/util/List;)Lokhttp3/RequestBody;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->multiType:Lokhttp3/MediaType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAllBody()Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 76
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-object p0
.end method

.method public removeAllBody(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;
    .locals 2

    .line 64
    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p0

    .line 66
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrxhttp/wrapper/entity/KeyValuePair;

    .line 69
    invoke-virtual {v1}, Lrxhttp/wrapper/entity/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/FormParam;->removeAllBody(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;

    .line 84
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p1

    return-object p1
.end method

.method public setEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/FormParam;->removeAllBody(Ljava/lang/String;)Lrxhttp/wrapper/param/FormParam;

    .line 89
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/FormParam;->addEncoded(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/FormParam;

    move-result-object p1

    return-object p1
.end method

.method public setMultiAlternative()Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 123
    sget-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/FormParam;->setMultiType(Lokhttp3/MediaType;)Lrxhttp/wrapper/param/FormParam;

    move-result-object v0

    return-object v0
.end method

.method public setMultiDigest()Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 128
    sget-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/FormParam;->setMultiType(Lokhttp3/MediaType;)Lrxhttp/wrapper/param/FormParam;

    move-result-object v0

    return-object v0
.end method

.method public setMultiForm()Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 113
    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/FormParam;->setMultiType(Lokhttp3/MediaType;)Lrxhttp/wrapper/param/FormParam;

    move-result-object v0

    return-object v0
.end method

.method public setMultiMixed()Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 118
    sget-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/FormParam;->setMultiType(Lokhttp3/MediaType;)Lrxhttp/wrapper/param/FormParam;

    move-result-object v0

    return-object v0
.end method

.method public setMultiParallel()Lrxhttp/wrapper/param/FormParam;
    .locals 1

    .line 133
    sget-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/FormParam;->setMultiType(Lokhttp3/MediaType;)Lrxhttp/wrapper/param/FormParam;

    move-result-object v0

    return-object v0
.end method

.method public setMultiType(Lokhttp3/MediaType;)Lrxhttp/wrapper/param/FormParam;
    .locals 0

    .line 138
    iput-object p1, p0, Lrxhttp/wrapper/param/FormParam;->multiType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 184
    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->getSimpleUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lrxhttp/wrapper/param/FormParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FormParam{url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bodyParam = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lrxhttp/wrapper/param/FormParam;->bodyParam:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
