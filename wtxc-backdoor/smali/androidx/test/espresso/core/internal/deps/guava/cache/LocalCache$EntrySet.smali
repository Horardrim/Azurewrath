.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
        "TK;TV;>.AbstractCacheSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AbstractCacheSet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v2, v2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryIterator;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryIterator;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
