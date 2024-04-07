.class public Lorg/hamcrest/collection/IsEmptyIterable;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "IsEmptyIterable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Ljava/lang/Iterable<",
        "+TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    return-void
.end method

.method public static emptyIterable()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 36
    new-instance v0, Lorg/hamcrest/collection/IsEmptyIterable;

    invoke-direct {v0}, Lorg/hamcrest/collection/IsEmptyIterable;-><init>()V

    return-object v0
.end method

.method public static emptyIterableOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 51
    invoke-static {}, Lorg/hamcrest/collection/IsEmptyIterable;->emptyIterable()Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeMismatchSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    const-string v0, "["

    const-string v1, ","

    const-string v2, "]"

    .line 19
    invoke-interface {p2, v0, v1, v2, p1}, Lorg/hamcrest/Description;->appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsEmptyIterable;->describeMismatchSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "an empty iterable"

    .line 24
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matchesSafely(Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsEmptyIterable;->matchesSafely(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method
