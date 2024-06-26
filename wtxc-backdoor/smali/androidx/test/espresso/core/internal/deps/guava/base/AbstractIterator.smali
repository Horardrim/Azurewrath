.class abstract Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->NOT_READY:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->FAILED:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->DONE:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->READY:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->DONE:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->FAILED:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 2
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->NOT_READY:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
