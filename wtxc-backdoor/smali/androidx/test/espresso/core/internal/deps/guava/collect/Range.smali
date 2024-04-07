.class public final Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/RangeGwtSerializationDependencies;
.source "Range.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/RangeGwtSerializationDependencies;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Predicate<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field

.field final upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v1

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    return-void
.end method

.method private constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RangeGwtSerializationDependencies;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    .line 4
    invoke-virtual {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 5
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 6
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->toString(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid range: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static all()Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    return-object v0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object p0

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->create(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method static compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static create(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)V

    return-object v0
.end method

.method private static toString(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "*>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->apply(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iget-object v2, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->all()Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->toString(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
