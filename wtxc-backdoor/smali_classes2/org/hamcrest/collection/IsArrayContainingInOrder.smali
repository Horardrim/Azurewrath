.class public Lorg/hamcrest/collection/IsArrayContainingInOrder;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "IsArrayContainingInOrder.java"


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
.field private final iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/collection/IsIterableContainingInOrder<",
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 20
    new-instance v0, Lorg/hamcrest/collection/IsIterableContainingInOrder;

    invoke-direct {v0, p1}, Lorg/hamcrest/collection/IsIterableContainingInOrder;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInOrder;->iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInOrder;

    .line 21
    iput-object p1, p0, Lorg/hamcrest/collection/IsArrayContainingInOrder;->matchers:Ljava/util/Collection;

    return-void
.end method

.method public static arrayContaining(Ljava/util/List;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 88
    new-instance v0, Lorg/hamcrest/collection/IsArrayContainingInOrder;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsArrayContainingInOrder;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs arrayContaining([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
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

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 54
    invoke-static {v3}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v0}, Lorg/hamcrest/collection/IsArrayContainingInOrder;->arrayContaining(Ljava/util/List;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs arrayContaining([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
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

    .line 72
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInOrder;->arrayContaining(Ljava/util/List;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsArrayContainingInOrder;->describeMismatchSafely([Ljava/lang/Object;Lorg/hamcrest/Description;)V

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
    iget-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInOrder;->iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInOrder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInOrder;->matchers:Ljava/util/Collection;

    const-string v1, "["

    const-string v2, ", "

    const-string v3, "]"

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/hamcrest/Description;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsArrayContainingInOrder;->matchesSafely([Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lorg/hamcrest/collection/IsArrayContainingInOrder;->iterableMatcher:Lorg/hamcrest/collection/IsIterableContainingInOrder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
