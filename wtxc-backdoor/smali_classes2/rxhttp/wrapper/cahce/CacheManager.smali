.class public Lrxhttp/wrapper/cahce/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody;,
        Lrxhttp/wrapper/cahce/CacheManager$Entry;,
        Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lokhttp3/internal/cache/DiskLruCache;

.field public final internalCache:Lrxhttp/wrapper/cahce/InternalCache;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lrxhttp/wrapper/cahce/CacheManager$1;

    invoke-direct {v0, p0}, Lrxhttp/wrapper/cahce/CacheManager$1;-><init>(Lrxhttp/wrapper/cahce/CacheManager;)V

    iput-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->internalCache:Lrxhttp/wrapper/cahce/InternalCache;

    .line 99
    sget-object v1, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lrxhttp/wrapper/OkHttpCompat;->newDiskLruCache(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lrxhttp/wrapper/cahce/CacheManager;Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/cahce/CacheManager;->get(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lrxhttp/wrapper/cahce/CacheManager;Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/cahce/CacheManager;->put(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lrxhttp/wrapper/cahce/CacheManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lrxhttp/wrapper/cahce/CacheManager;->remove(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lrxhttp/wrapper/cahce/CacheManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lrxhttp/wrapper/cahce/CacheManager;->evictAll()V

    return-void
.end method

.method static synthetic access$400(Lrxhttp/wrapper/cahce/CacheManager;)Lokhttp3/internal/cache/DiskLruCache;
    .locals 0

    .line 54
    iget-object p0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    return-object p0
.end method

.method static synthetic access$500(Lokio/BufferedSource;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lrxhttp/wrapper/cahce/CacheManager;->readInt(Lokio/BufferedSource;)I

    move-result p0

    return p0
.end method

.method private cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 160
    :cond_0
    invoke-interface {p1}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 162
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p2

    .line 165
    :cond_2
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    .line 166
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 168
    new-instance v2, Lrxhttp/wrapper/cahce/CacheManager$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lrxhttp/wrapper/cahce/CacheManager$2;-><init>(Lrxhttp/wrapper/cahce/CacheManager;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    const-string p1, "Content-Type"

    .line 214
    invoke-virtual {p2, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 216
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p2

    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    .line 217
    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {p2, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    return-void
.end method

.method private evictAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    return-void
.end method

.method private get(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Response;
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lrxhttp/wrapper/cahce/CacheManager;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p2}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_1

    return-object v0

    .line 123
    :cond_1
    :try_start_1
    new-instance v1, Lrxhttp/wrapper/cahce/CacheManager$Entry;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v2

    invoke-direct {v1, v2}, Lrxhttp/wrapper/cahce/CacheManager$Entry;-><init>(Lokio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    invoke-virtual {v1, p1, p2}, Lrxhttp/wrapper/cahce/CacheManager$Entry;->response(Lokhttp3/Request;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 125
    :catch_0
    invoke-static {p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_1
    return-object v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 104
    invoke-static {p0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private put(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/cahce/CacheManager;->putResponse(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object p2

    .line 135
    invoke-direct {p0, p2, p1}, Lrxhttp/wrapper/cahce/CacheManager;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private putResponse(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/internal/cache/CacheRequest;
    .locals 2

    .line 140
    new-instance v0, Lrxhttp/wrapper/cahce/CacheManager$Entry;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/cahce/CacheManager$Entry;-><init>(Lokhttp3/Response;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lrxhttp/wrapper/cahce/CacheManager;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p2, p1}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object v1

    .line 148
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lrxhttp/wrapper/cahce/CacheManager$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 149
    new-instance p2, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;

    invoke-direct {p2, p0, p1}, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;-><init>(Lrxhttp/wrapper/cahce/CacheManager;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_0
    move-object p1, v1

    .line 151
    :catch_1
    invoke-direct {p0, p1}, Lrxhttp/wrapper/cahce/CacheManager;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    return-object v1
.end method

.method private static readInt(Lokio/BufferedSource;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 651
    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 653
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 657
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {p1}, Lrxhttp/wrapper/cahce/CacheManager;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .line 335
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .line 321
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    new-instance v0, Lrxhttp/wrapper/cahce/CacheManager$3;

    invoke-direct {v0, p0}, Lrxhttp/wrapper/cahce/CacheManager$3;-><init>(Lrxhttp/wrapper/cahce/CacheManager;)V

    return-object v0
.end method
