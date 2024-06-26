.class final Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient hashTable:Ljava/lang/Object;

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    return-void
.end method

.method static create(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    check-cast p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 4
    aget-object p0, p1, v0

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 6
    :cond_1
    array-length v2, p1

    shr-int/lit8 v1, v2, 0x1

    invoke-static {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkPositionIndex(II)I

    .line 7
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    .line 8
    invoke-static {p1, p0, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    invoke-direct {v1, v0, p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method

.method static createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    aget-object p1, p0, p3

    xor-int/lit8 p2, p3, 0x1

    aget-object p0, p0, p2

    invoke-static {p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-gt p2, v1, :cond_4

    .line 6
    new-array p2, p2, [B

    .line 7
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-ge v2, p1, :cond_3

    add-int v1, v2, v2

    add-int/2addr v1, p3

    .line 10
    aget-object v3, p0, v1

    xor-int/lit8 v4, v1, 0x1

    .line 11
    aget-object v4, p0, v4

    .line 12
    invoke-static {v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v5

    :goto_1
    and-int/2addr v5, v0

    .line 15
    aget-byte v6, p2, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1

    int-to-byte v1, v1

    .line 18
    aput-byte v1, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    aget-object v7, p0, v6

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-static {v3, v4, p0, v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_3
    return-object p2

    :cond_4
    const v1, 0x8000

    if-gt p2, v1, :cond_8

    .line 22
    new-array p2, p2, [S

    .line 23
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([SS)V

    :goto_2
    if-ge v2, p1, :cond_7

    add-int v1, v2, v2

    add-int/2addr v1, p3

    .line 26
    aget-object v3, p0, v1

    xor-int/lit8 v4, v1, 0x1

    .line 27
    aget-object v4, p0, v4

    .line 28
    invoke-static {v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v5

    :goto_3
    and-int/2addr v5, v0

    .line 31
    aget-short v6, p2, v5

    int-to-char v6, v6

    const v7, 0xffff

    if-ne v6, v7, :cond_5

    int-to-short v1, v1

    .line 34
    aput-short v1, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 33
    :cond_5
    aget-object v7, p0, v6

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 35
    :cond_6
    invoke-static {v3, v4, p0, v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_7
    return-object p2

    .line 37
    :cond_8
    new-array p2, p2, [I

    .line 38
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([II)V

    :goto_4
    if-ge v2, p1, :cond_b

    add-int v1, v2, v2

    add-int/2addr v1, p3

    .line 41
    aget-object v4, p0, v1

    xor-int/lit8 v5, v1, 0x1

    .line 42
    aget-object v5, p0, v5

    .line 43
    invoke-static {v4, v5}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v6

    :goto_5
    and-int/2addr v6, v0

    .line 46
    aget v7, p2, v6

    if-ne v7, v3, :cond_9

    .line 49
    aput v1, p2, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 48
    :cond_9
    aget-object v8, p0, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 50
    :cond_a
    invoke-static {v4, v5, p0, v7}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_b
    return-object p2
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x27

    add-int/2addr p3, v2

    add-int/2addr p3, v3

    add-int/2addr p3, v4

    invoke-direct {v5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 5
    aget-object p0, p1, p3

    invoke-virtual {p0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    xor-int/lit8 p0, p3, 0x1

    .line 6
    aget-object v0, p1, p0

    :cond_1
    return-object v0

    :cond_2
    if-nez p0, :cond_3

    return-object v0

    .line 9
    :cond_3
    instance-of p2, p0, [B

    const/4 p3, -0x1

    if-eqz p2, :cond_6

    .line 10
    move-object p2, p0

    check-cast p2, [B

    .line 11
    array-length p0, p2

    add-int/lit8 v2, p0, -0x1

    .line 12
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result p0

    :goto_0
    and-int/2addr p0, v2

    .line 14
    aget-byte p3, p2, p0

    const/16 v3, 0xff

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_4

    return-object v0

    .line 16
    :cond_4
    aget-object v3, p1, p3

    invoke-virtual {v3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    xor-int/lit8 p0, p3, 0x1

    .line 18
    aget-object p0, p1, p0

    return-object p0

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 19
    :cond_6
    instance-of p2, p0, [S

    if-eqz p2, :cond_9

    .line 20
    move-object p2, p0

    check-cast p2, [S

    .line 21
    array-length p0, p2

    add-int/lit8 v2, p0, -0x1

    .line 22
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result p0

    :goto_1
    and-int/2addr p0, v2

    .line 24
    aget-short p3, p2, p0

    int-to-char p3, p3

    const v3, 0xffff

    if-ne p3, v3, :cond_7

    return-object v0

    .line 26
    :cond_7
    aget-object v3, p1, p3

    invoke-virtual {v3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    xor-int/lit8 p0, p3, 0x1

    .line 28
    aget-object p0, p1, p0

    return-object p0

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 29
    :cond_9
    check-cast p0, [I

    .line 30
    array-length p2, p0

    add-int/2addr p2, p3

    .line 31
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v2

    :goto_2
    and-int/2addr v2, p2

    .line 33
    aget v3, p0, v2

    if-ne v3, p3, :cond_a

    return-object v0

    .line 35
    :cond_a
    aget-object v4, p1, v3

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    xor-int/lit8 p0, v3, 0x1

    .line 37
    aget-object p0, p1, p0

    return-object p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method createEntrySet()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method createKeySet()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 2
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;)V

    return-object v1
.end method

.method createValues()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    return v0
.end method
