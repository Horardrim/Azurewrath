.class Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody$1;
.super Lokio/ForwardingSource;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody;

.field final synthetic val$snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody;Lokio/Source;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody$1;->this$0:Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody;

    iput-object p3, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody$1;->val$snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

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

    .line 677
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheManager$CacheResponseBody$1;->val$snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 678
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method
