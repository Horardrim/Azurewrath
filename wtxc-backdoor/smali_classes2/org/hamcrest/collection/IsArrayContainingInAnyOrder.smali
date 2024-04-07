.class public Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "IsArrayContainingInAnyOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "[TE;>;"
    }
.end annotation


# instance fields
.field private final iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/collection/IsIterableContainingInAnyOrder<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final matchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 20
    new-instance v0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;

    invoke-direct {v0, p1}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;

    .line 21
    iput-object p1, p0, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->matchers:Ljava/util/Collection;

    return-void
.end method

.method public static arrayContainingInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 79
    new-instance v0, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs arrayContainingInAnyOrder([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 102
    invoke-static {v3}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;

    invoke-direct {p0, v0}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static varargs arrayContainingInAnyOrder([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 58
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->arrayContainingInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->describeMismatchSafely([Ljava/lang/Object;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeMismatchSafely([Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->matchers:Ljava/util/Collection;

    const-string v1, "["

    const-string v2, ", "

    const-string v3, "]"

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/hamcrest/Description;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " in any order"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->matchesSafely([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
