.class public Lrxhttp/RxHttpBodyParam;
.super Lrxhttp/RxHttpAbstractBodyParam;
.source "RxHttpBodyParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/RxHttpAbstractBodyParam<",
        "Lrxhttp/wrapper/param/BodyParam;",
        "Lrxhttp/RxHttpBodyParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/param/BodyParam;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lrxhttp/RxHttpAbstractBodyParam;-><init>(Lrxhttp/wrapper/param/AbstractBodyParam;)V

    return-void
.end method


# virtual methods
.method public setBody(Landroid/net/Uri;Landroid/content/Context;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 62
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-static {p1, p2}, Lrxhttp/wrapper/utils/UriUtil;->asRequestBody(Landroid/net/Uri;Landroid/content/Context;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody(Landroid/net/Uri;Landroid/content/Context;Lokhttp3/MediaType;)Lrxhttp/RxHttpBodyParam;
    .locals 3

    .line 67
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Lrxhttp/wrapper/utils/UriUtil;->asRequestBody(Landroid/net/Uri;Landroid/content/Context;JLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody(Ljava/io/File;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 52
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Ljava/io/File;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody(Ljava/io/File;Lokhttp3/MediaType;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 57
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->setBody(Ljava/io/File;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody(Ljava/lang/Object;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 73
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Ljava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;Lokhttp3/MediaType;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 32
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->setBody(Ljava/lang/String;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody(Lokhttp3/RequestBody;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 27
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody(Lokio/ByteString;Lokhttp3/MediaType;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 37
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokio/ByteString;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody([BLokhttp3/MediaType;)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 42
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->setBody([BLokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setBody([BLokhttp3/MediaType;II)Lrxhttp/RxHttpBodyParam;
    .locals 1

    .line 47
    iget-object v0, p0, Lrxhttp/RxHttpBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/BodyParam;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrxhttp/wrapper/param/BodyParam;->setBody([BLokhttp3/MediaType;II)Lrxhttp/wrapper/param/BodyParam;

    return-object p0
.end method

.method public setJsonBody(Ljava/lang/Object;)Lrxhttp/RxHttpBodyParam;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lrxhttp/RxHttpBodyParam;->setBody(Ljava/lang/Object;)Lrxhttp/RxHttpBodyParam;

    move-result-object p1

    return-object p1
.end method
