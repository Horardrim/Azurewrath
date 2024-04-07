.class Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;
.super Lokio/ForwardingSink;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;-><init>(Lrxhttp/wrapper/cahce/CacheManager;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;

.field final synthetic val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lrxhttp/wrapper/cahce/CacheManager;


# direct methods
.method constructor <init>(Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;Lokio/Sink;Lrxhttp/wrapper/cahce/CacheManager;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;->this$1:Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;

    iput-object p3, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;->val$this$0:Lrxhttp/wrapper/cahce/CacheManager;

    iput-object p4, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;->this$1:Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;

    iget-object v0, v0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->this$0:Lrxhttp/wrapper/cahce/CacheManager;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;->this$1:Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;

    iget-boolean v1, v1, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    .line 356
    monitor-exit v0

    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;->this$1:Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl;->done:Z

    .line 359
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    .line 361
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_0
    move-exception v1

    .line 359
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
