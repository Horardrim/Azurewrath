.class public Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private hashCode:I

.field hashTable:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    return-void
.end method

.method private addDeduping(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    .line 5
    iget-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 8
    aput-object p1, v3, v2

    .line 9
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashCode:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashCode:I

    .line 10
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;

    return-void

    .line 7
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->addDeduping(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    .line 6
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 10
    invoke-virtual {p0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;

    :cond_1
    return-object p0
.end method

.method public build()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 5
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->access$000(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    :goto_0
    move-object v3, v0

    .line 6
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;

    iget v4, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashCode:I

    iget-object v5, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 8
    :cond_1
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->access$100(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->size()I

    move-result v2

    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    .line 10
    :goto_1
    iput-boolean v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->forceCopy:Z

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    return-object v0

    .line 2
    :cond_2
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 3
    :cond_3
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
