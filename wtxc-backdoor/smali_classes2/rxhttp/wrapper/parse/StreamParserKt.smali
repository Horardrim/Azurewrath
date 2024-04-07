.class public final Lrxhttp/wrapper/parse/StreamParserKt;
.super Ljava/lang/Object;
.source "StreamParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "writeTo",
        "",
        "Lokhttp3/Response;",
        "body",
        "Lokhttp3/ResponseBody;",
        "os",
        "Ljava/io/OutputStream;",
        "callback",
        "Lrxhttp/wrapper/callback/ProgressCallback;",
        "rxhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lrxhttp/wrapper/callback/ProgressCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lrxhttp/wrapper/parse/StreamParserKt;->writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lrxhttp/wrapper/callback/ProgressCallback;)V

    return-void
.end method

.method private static final writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lrxhttp/wrapper/callback/ProgressCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lrxhttp/wrapper/OkHttpCompat;->getDownloadOffSize(Lokhttp3/Response;)Lrxhttp/wrapper/entity/DownloadOffSize;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrxhttp/wrapper/entity/DownloadOffSize;->getOffSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v3, v0

    .line 44
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {p0}, Lrxhttp/wrapper/OkHttpCompat;->getContentLength(Lokhttp3/Response;)J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 45
    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v10, -0x1

    cmp-long p0, v1, v10

    if-eqz p0, :cond_1

    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 46
    :cond_1
    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p0, v1, v10

    if-nez p0, :cond_2

    const-string p0, "Unable to calculate callback progress without `Content-Length` response header"

    .line 47
    invoke-static {p0}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/String;)V

    .line 50
    :cond_2
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 51
    new-instance p0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 52
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 54
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;

    move-object v2, v1

    move-object v5, p0

    move-object v6, v0

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;-><init>(JLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lrxhttp/wrapper/callback/ProgressCallback;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2, v1}, Lrxhttp/wrapper/utils/IOUtil;->write(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;)Z

    .line 73
    iget-wide p1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p1, p1, v10

    if-nez p1, :cond_3

    const/16 v2, 0x64

    .line 75
    iget-wide v3, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v5, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v1, p3

    invoke-interface/range {v1 .. v6}, Lrxhttp/wrapper/callback/ProgressCallback;->onProgress(IJJ)V

    :cond_3
    return-void
.end method
