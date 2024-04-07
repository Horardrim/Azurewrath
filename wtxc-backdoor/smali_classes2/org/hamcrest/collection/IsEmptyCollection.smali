.class public Lorg/hamcrest/collection/IsEmptyCollection;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "IsEmptyCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Ljava/util/Collection<",
        "+TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    return-void
.end method

.method public static empty()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Collection<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 40
    new-instance v0, Lorg/hamcrest/collection/IsEmptyCollection;

    invoke-direct {v0}, Lorg/hamcrest/collection/IsEmptyCollection;-><init>()V

    return-object v0
.end method

.method public static emptyCollectionOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 56
    invoke-static {}, Lorg/hamcrest/collection/IsEmptyCollection;->empty()Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsEmptyCollection;->describeMismatchSafely(Ljava/util/Collection;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeMismatchSafely(Ljava/util/Collection;Lorg/hamcrest/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "an empty collection"

    .line 27
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsEmptyCollection;->matchesSafely(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    return p1
.end method
