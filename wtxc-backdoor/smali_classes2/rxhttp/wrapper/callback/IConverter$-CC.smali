.class public final synthetic Lrxhttp/wrapper/callback/IConverter$-CC;
.super Ljava/lang/Object;
.source "IConverter.java"


# direct methods
.method public static $default$convert(Lrxhttp/wrapper/callback/IConverter;Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 1
    .param p0, "_this"    # Lrxhttp/wrapper/callback/IConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 41
    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
