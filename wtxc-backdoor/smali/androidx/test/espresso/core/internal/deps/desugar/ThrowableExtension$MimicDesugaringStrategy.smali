.class final Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;
.super Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MimicDesugaringStrategy"
.end annotation


# instance fields
.field private final map:Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;-><init>()V

    .line 2
    new-instance v0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;->map:Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    return-void
.end method


# virtual methods
.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;->map:Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Suppressed: "

    .line 7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
