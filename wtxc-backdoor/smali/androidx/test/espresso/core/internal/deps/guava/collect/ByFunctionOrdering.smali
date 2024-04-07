.class final Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field final ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/base/Function;Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "TF;+TT;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {v1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3
    :cond_0
    instance-of v1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;

    .line 5
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    iget-object v3, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {v1, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xd

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".onResultOf("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
