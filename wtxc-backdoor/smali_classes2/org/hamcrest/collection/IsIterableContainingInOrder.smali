.class public Lorg/hamcrest/collection/IsIterableContainingInOrder;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "IsIterableContainingInOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Ljava/lang/Iterable<",
        "+TE;>;>;"
    }
.end annotation


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder;->matchers:Ljava/util/List;

    return-void
.end method

.method public static contains(Ljava/util/List;)Lorg/hamcrest/Matcher;
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
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 159
    new-instance v0, Lorg/hamcrest/collection/IsIterableContainingInOrder;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static contains(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/hamcrest/Matcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->contains(Ljava/util/List;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs contains([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 103
    invoke-static {v3}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->contains(Ljava/util/List;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs contains([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 141
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->contains(Ljava/util/List;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 4

    const-string v0, "iterable containing "

    .line 35
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder;->matchers:Ljava/util/List;

    const-string v1, "["

    const-string v2, ", "

    const-string v3, "]"

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/hamcrest/Description;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected matchesSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/hamcrest/Description;",
            ")Z"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;

    iget-object v1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder;->matchers:Ljava/util/List;

    invoke-direct {v0, v1, p2}, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;-><init>(Ljava/util/List;Lorg/hamcrest/Description;)V

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->matches(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_1
    invoke-virtual {v0}, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->isFinished()Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->matchesSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method
