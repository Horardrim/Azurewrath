.class final Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrxhttp/wrapper/cahce/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lokio/Sink;

.field private cacheOut:Lokio/Sink;

.field done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lrxhttp/wrapper/cahce/CacheManager;


# direct methods
.method constructor <init>(Lrxhttp/wrapper/cahce/CacheManager;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 2

    .line 348
    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->this$0:Lrxhttp/wrapper/cahce/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p2, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->cacheOut:Lokio/Sink;

    .line 351
    new-instance v0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;

    iget-object v1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-direct {v0, p0, v1, p1, p2}, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;-><init>(Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;Lokio/Sink;Lrxhttp/wrapper/cahce/CacheManager;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->body:Lokio/Sink;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 368
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->this$0:Lrxhttp/wrapper/cahce/CacheManager;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-boolean v1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    .line 370
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 372
    iput-boolean v1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->done:Z

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    :try_start_1
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 373
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public body()Lokio/Sink;
    .locals 1

    .line 383
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->body:Lokio/Sink;

    return-object v0
.end method
