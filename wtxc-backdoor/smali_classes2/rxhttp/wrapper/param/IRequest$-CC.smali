.class public final synthetic Lrxhttp/wrapper/param/IRequest$-CC;
.super Ljava/lang/Object;
.source "IRequest.java"


# direct methods
.method public static $default$buildRequestBody(Lrxhttp/wrapper/param/IRequest;)Lokhttp3/RequestBody;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/param/IRequest;

    .line 44
    invoke-interface {p0}, Lrxhttp/wrapper/param/IRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
