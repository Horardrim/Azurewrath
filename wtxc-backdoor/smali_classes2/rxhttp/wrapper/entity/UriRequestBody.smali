.class public Lrxhttp/wrapper/entity/UriRequestBody;
.super Lokhttp3/RequestBody;
.source "UriRequestBody.java"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final contentType:Lokhttp3/MediaType;

.field private final skipSize:J

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6

    .line 36
    invoke-static {p1, p2}, Lrxhttp/wrapper/utils/BuildUtil;->getMediaTypeByUri(Landroid/content/Context;Landroid/net/Uri;)Lokhttp3/MediaType;

    move-result-object v5

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lrxhttp/wrapper/entity/UriRequestBody;-><init>(Landroid/content/Context;Landroid/net/Uri;JLokhttp3/MediaType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 6

    .line 44
    invoke-static {p1, p2}, Lrxhttp/wrapper/utils/BuildUtil;->getMediaTypeByUri(Landroid/content/Context;Landroid/net/Uri;)Lokhttp3/MediaType;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lrxhttp/wrapper/entity/UriRequestBody;-><init>(Landroid/content/Context;Landroid/net/Uri;JLokhttp3/MediaType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JLokhttp3/MediaType;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 48
    iput-object p2, p0, Lrxhttp/wrapper/entity/UriRequestBody;->uri:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-ltz p2, :cond_0

    .line 52
    iput-wide p3, p0, Lrxhttp/wrapper/entity/UriRequestBody;->skipSize:J

    .line 53
    iput-object p5, p0, Lrxhttp/wrapper/entity/UriRequestBody;->contentType:Lokhttp3/MediaType;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/wrapper/entity/UriRequestBody;->contentResolver:Landroid/content/ContentResolver;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "skipSize >= 0 required but it was "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lokhttp3/MediaType;)V
    .locals 6

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 40
    invoke-direct/range {v0 .. v5}, Lrxhttp/wrapper/entity/UriRequestBody;-><init>(Landroid/content/Context;Landroid/net/Uri;JLokhttp3/MediaType;)V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lrxhttp/wrapper/entity/UriRequestBody;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lrxhttp/wrapper/entity/UriRequestBody;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lrxhttp/wrapper/utils/UriUtil;->length(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lrxhttp/wrapper/entity/UriRequestBody;->skipSize:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipSize cannot be larger than the file length. The file length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but it was "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lrxhttp/wrapper/entity/UriRequestBody;->skipSize:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 59
    iget-object v0, p0, Lrxhttp/wrapper/entity/UriRequestBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 77
    :try_start_0
    iget-object v4, p0, Lrxhttp/wrapper/entity/UriRequestBody;->contentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lrxhttp/wrapper/entity/UriRequestBody;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    iget-wide v5, p0, Lrxhttp/wrapper/entity/UriRequestBody;->skipSize:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 79
    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    .line 80
    iget-wide v7, p0, Lrxhttp/wrapper/entity/UriRequestBody;->skipSize:J

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected to skip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lrxhttp/wrapper/entity/UriRequestBody;->skipSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes, actually skipped "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    :goto_0
    invoke-static {v4}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v3

    .line 86
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    aput-object v4, p1, v0

    .line 88
    invoke-static {p1}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v3

    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    aput-object v4, v2, v0

    invoke-static {v2}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly([Ljava/io/Closeable;)V

    .line 89
    throw p1
.end method
