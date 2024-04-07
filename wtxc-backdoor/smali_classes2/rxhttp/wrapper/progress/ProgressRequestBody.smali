.class public Lrxhttp/wrapper/progress/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# instance fields
.field private final callback:Lrxhttp/wrapper/callback/ProgressCallback;

.field private final requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lrxhttp/wrapper/callback/ProgressCallback;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 22
    iput-object p1, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    .line 23
    iput-object p2, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->callback:Lrxhttp/wrapper/callback/ProgressCallback;

    return-void
.end method

.method static synthetic access$000(Lrxhttp/wrapper/progress/ProgressRequestBody;IJJ)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Lrxhttp/wrapper/progress/ProgressRequestBody;->updateProgress(IJJ)V

    return-void
.end method

.method private sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    .line 54
    new-instance v0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;

    invoke-direct {v0, p0, p1}, Lrxhttp/wrapper/progress/ProgressRequestBody$1;-><init>(Lrxhttp/wrapper/progress/ProgressRequestBody;Lokio/Sink;)V

    return-object v0
.end method

.method private updateProgress(IJJ)V
    .locals 6

    .line 77
    iget-object v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->callback:Lrxhttp/wrapper/callback/ProgressCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 79
    invoke-interface/range {v0 .. v5}, Lrxhttp/wrapper/callback/ProgressCallback;->onProgress(IJJ)V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 32
    iget-object v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .line 27
    iget-object v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    instance-of v0, p1, Lokio/Buffer;

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.tools.profiler.support.network.HttpTracker$OutputStreamTracker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lrxhttp/wrapper/progress/ProgressRequestBody;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 49
    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    :goto_1
    return-void
.end method
