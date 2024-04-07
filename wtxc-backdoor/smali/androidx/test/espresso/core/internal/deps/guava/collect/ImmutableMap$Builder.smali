.class public Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field alternatingKeysAndValues:[Ljava/lang/Object;

.field entriesUsed:Z

.field size:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/2addr p1, p1

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    .line 6
    iput-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    add-int/2addr p1, p1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->sortEntries()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 3
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 2
    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    add-int v2, v1, v1

    aput-object p1, v0, v2

    add-int p1, v1, v1

    add-int/lit8 p1, p1, 0x1

    .line 4
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method sortEntries()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    add-int/2addr v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 4
    :cond_0
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    if-ge v2, v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    add-int v5, v2, v2

    aget-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 8
    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;->from(Ljava/util/Comparator;)Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    move-result-object v2

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps;->valueFunction()Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;->onResultOf(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    move-result-object v2

    .line 7
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 9
    :goto_1
    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    if-ge v1, v2, :cond_2

    .line 10
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    add-int v3, v1, v1

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 11
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
