.class public Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "IsIterableContainingInAnyOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Ljava/lang/Iterable<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field private final matchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->matchers:Ljava/util/Collection;

    return-void
.end method

.method public static containsInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 172
    new-instance v0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static containsInAnyOrder(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/hamcrest/Matcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->containsInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs containsInAnyOrder([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 148
    invoke-static {v3}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    new-instance p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;

    invoke-direct {p0, v0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static varargs containsInAnyOrder([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 125
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->containsInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 4

    const-string v0, "iterable over "

    .line 37
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->matchers:Ljava/util/Collection;

    const-string v1, "["

    const-string v2, ", "

    const-string v3, "]"

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/hamcrest/Description;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " in any order"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected matchesSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lorg/hamcrest/Description;",
            ")Z"
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;

    iget-object v1, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->matchers:Ljava/util/Collection;

    invoke-direct {v0, v1, p2}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;-><init>(Ljava/util/Collection;Lorg/hamcrest/Description;)V

    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_1
    invoke-virtual {v0, p1}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->isFinished(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->matchesSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method
