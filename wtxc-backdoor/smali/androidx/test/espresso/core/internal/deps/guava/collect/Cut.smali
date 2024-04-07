.class abstract Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowValue;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final endpoint:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->endpoint:Ljava/lang/Comparable;

    return-void
.end method

.method static aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;->access$100()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;

    move-result-object v0

    return-object v0
.end method

.method static aboveValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;->access$000()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;

    move-result-object v0

    return-object v0
.end method

.method static belowValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowValue;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->endpoint:Ljava/lang/Comparable;

    iget-object v1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 8
    :cond_2
    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;

    instance-of p1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;

    invoke-static {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/primitives/Booleans;->compare(ZZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I

    move-result p1

    return p1
.end method

.method abstract describeAsLowerBound(Ljava/lang/StringBuilder;)V
.end method

.method abstract describeAsUpperBound(Ljava/lang/StringBuilder;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract hashCode()I
.end method

.method abstract isLessThan(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method
