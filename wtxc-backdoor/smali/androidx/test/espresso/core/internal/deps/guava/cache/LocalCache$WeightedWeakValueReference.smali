.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedWeakValueReference;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakValueReference;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeightedWeakValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 2
    iput p4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedWeakValueReference;->weight:I

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedWeakValueReference;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedWeakValueReference;->weight:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedWeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;I)V

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedWeakValueReference;->weight:I

    return v0
.end method
