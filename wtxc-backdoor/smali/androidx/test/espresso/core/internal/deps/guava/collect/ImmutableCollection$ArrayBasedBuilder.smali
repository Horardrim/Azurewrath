.class abstract Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayBasedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field forceCopy:Z

.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;-><init>()V

    const-string v0, "initialCapacity"

    .line 2
    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    return-void
.end method

.method private getReadyToExpandTo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->expandedCapacity(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 4
    iput-boolean v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    return-void

    .line 5
    :cond_0
    iget-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 7
    iput-boolean v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 5
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->addAll([Ljava/lang/Object;I)V

    return-object p0
.end method

.method final addAll([Ljava/lang/Object;I)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    return-void
.end method
