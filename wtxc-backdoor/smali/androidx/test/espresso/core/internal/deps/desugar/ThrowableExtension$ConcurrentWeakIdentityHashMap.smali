.class final Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcurrentWeakIdentityHashMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method deleteEmptyKeys()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Throwable;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->deleteEmptyKeys()V

    .line 2
    new-instance v0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 8
    :cond_1
    new-instance p2, Ljava/util/Vector;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 9
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    return-object p1
.end method
