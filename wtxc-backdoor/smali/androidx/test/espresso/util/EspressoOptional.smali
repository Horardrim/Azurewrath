.class public final Landroidx/test/espresso/util/EspressoOptional;
.super Ljava/lang/Object;
.source "EspressoOptional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    return-void
.end method

.method public static absent()Landroidx/test/espresso/util/EspressoOptional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/util/EspressoOptional;

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->absent()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/espresso/util/EspressoOptional;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V

    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/util/EspressoOptional;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/util/EspressoOptional;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/util/EspressoOptional;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/util/EspressoOptional;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->asSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/test/espresso/util/EspressoOptional;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/test/espresso/util/EspressoOptional;

    .line 3
    iget-object p1, p1, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public or(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "+TT;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->or(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    return-object p1
.end method

.method public or(Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->or(Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "-TT;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->transform(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    return-object p1
.end method
