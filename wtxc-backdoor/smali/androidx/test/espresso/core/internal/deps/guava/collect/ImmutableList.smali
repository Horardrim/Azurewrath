.class public abstract Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SerializedForm;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_ITR:Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableList;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->EMPTY_ITR:Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static asImmutableList([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static asImmutableList([Ljava/lang/Object;I)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableList;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static builder()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;-><init>()V

    return-object v0
.end method

.method private static varargs construct([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableList;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 3
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    .line 4
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    .line 5
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    .line 6
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 3
    invoke-virtual {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    invoke-virtual {p0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->listIterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public listIterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->listIterator(I)Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkPositionIndex(II)I

    .line 4
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->EMPTY_ITR:Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Itr;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;I)V

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->listIterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->listIterator(I)Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public subList(II)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkPositionIndexes(III)V

    sub-int v0, p2, p1

    .line 3
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->subListUnchecked(II)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->subList(II)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method subListUnchecked(II)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SubList;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;II)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
