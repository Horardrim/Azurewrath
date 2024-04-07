.class public final Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;


# instance fields
.field private final evictionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final hitCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final loadExceptionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final loadSuccessCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final missCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->hitCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 3
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->missCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 4
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 5
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 6
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 7
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    return-void
.end method


# virtual methods
.method public recordEviction()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->increment()V

    return-void
.end method

.method public recordHits(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->hitCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordLoadException(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->increment()V

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->increment()V

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordMisses(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->missCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    return-void
.end method
