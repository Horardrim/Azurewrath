.class public abstract Lrxhttp/wrapper/param/AbstractBodyParam;
.super Lrxhttp/wrapper/param/AbstractParam;
.source "AbstractBodyParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lrxhttp/wrapper/param/AbstractBodyParam<",
        "TP;>;>",
        "Lrxhttp/wrapper/param/AbstractParam<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lrxhttp/wrapper/callback/ProgressCallback;

.field private uploadMaxLength:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/param/AbstractParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 20
    iput-wide p1, p0, Lrxhttp/wrapper/param/AbstractBodyParam;->uploadMaxLength:J

    return-void
.end method


# virtual methods
.method public final buildRequestBody()Lokhttp3/RequestBody;
    .locals 6

    .line 32
    invoke-virtual {p0}, Lrxhttp/wrapper/param/AbstractBodyParam;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    .line 34
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    .line 35
    iget-wide v3, p0, Lrxhttp/wrapper/param/AbstractBodyParam;->uploadMaxLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 41
    iget-object v1, p0, Lrxhttp/wrapper/param/AbstractBodyParam;->mCallback:Lrxhttp/wrapper/callback/ProgressCallback;

    if-eqz v1, :cond_0

    .line 44
    new-instance v2, Lrxhttp/wrapper/progress/ProgressRequestBody;

    invoke-direct {v2, v0, v1}, Lrxhttp/wrapper/progress/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lrxhttp/wrapper/callback/ProgressCallback;)V

    return-object v2

    :cond_0
    return-object v0

    .line 36
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The contentLength cannot be greater than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lrxhttp/wrapper/param/AbstractBodyParam;->uploadMaxLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes, the current contentLength is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final setProgressCallback(Lrxhttp/wrapper/callback/ProgressCallback;)Lrxhttp/wrapper/param/AbstractBodyParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/ProgressCallback;",
            ")TP;"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lrxhttp/wrapper/param/AbstractBodyParam;->mCallback:Lrxhttp/wrapper/callback/ProgressCallback;

    return-object p0
.end method

.method public setUploadMaxLength(J)Lrxhttp/wrapper/param/AbstractBodyParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TP;"
        }
    .end annotation

    .line 55
    iput-wide p1, p0, Lrxhttp/wrapper/param/AbstractBodyParam;->uploadMaxLength:J

    return-object p0
.end method
