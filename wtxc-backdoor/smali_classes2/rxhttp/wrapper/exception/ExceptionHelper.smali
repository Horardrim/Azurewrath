.class public Lrxhttp/wrapper/exception/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwIfFatal(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    new-instance v1, Lrxhttp/wrapper/exception/HttpStatusCodeException;

    invoke-direct {v1, p0, v0}, Lrxhttp/wrapper/exception/HttpStatusCodeException;-><init>(Lokhttp3/Response;Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0

    .line 31
    :cond_2
    new-instance v0, Lrxhttp/wrapper/exception/HttpStatusCodeException;

    invoke-direct {v0, p0}, Lrxhttp/wrapper/exception/HttpStatusCodeException;-><init>(Lokhttp3/Response;)V

    throw v0
.end method

.method public static wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 48
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 51
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 49
    :cond_1
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method
