.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

.field final synthetic val$hash:I

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$loadingFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

.field final synthetic val$loadingValueReference:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$key:Ljava/lang/Object;

    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$hash:I

    iput-object p4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$loadingValueReference:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;

    iput-object p5, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$loadingFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$key:Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$hash:I

    iget-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$loadingValueReference:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;

    iget-object v4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$loadingFuture:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 4
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "androidx.test.espresso.core.internal.deps.guava.cache.LocalCache$Segment$1"

    const-string v4, "run"

    const-string v5, "Exception thrown during refresh"

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;->val$loadingValueReference:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;

    invoke-virtual {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
