.class public Lorg/hamcrest/Matchers;
.super Ljava/lang/Object;
.source "Matchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2, p3}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 63
    invoke-static {p0, p1, p2, p3, p4}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 73
    invoke-static/range {p0 .. p5}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs allOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lorg/hamcrest/core/AllOf;->allOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static any(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 371
    invoke-static {p0}, Lorg/hamcrest/core/IsInstanceOf;->any(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object p0

    return-object p0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 133
    invoke-static {p0, p1}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object p0

    return-object p0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 93
    invoke-static {p0, p1, p2}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object p0

    return-object p0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 103
    invoke-static {p0, p1, p2, p3}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object p0

    return-object p0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 113
    invoke-static {p0, p1, p2, p3, p4}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object p0

    return-object p0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 123
    invoke-static/range {p0 .. p5}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 143
    invoke-static {p0}, Lorg/hamcrest/core/AnyOf;->anyOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object p0

    return-object p0
.end method

.method public static anything()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {}, Lorg/hamcrest/core/IsAnything;->anything()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static anything(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-static {p0}, Lorg/hamcrest/core/IsAnything;->anything(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs array([Lorg/hamcrest/Matcher;)Lorg/hamcrest/collection/IsArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/collection/IsArray<",
            "TT;>;"
        }
    .end annotation

    .line 545
    invoke-static {p0}, Lorg/hamcrest/collection/IsArray;->array([Lorg/hamcrest/Matcher;)Lorg/hamcrest/collection/IsArray;

    move-result-object p0

    return-object p0
.end method

.method public static arrayContaining(Ljava/util/List;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 590
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInOrder;->arrayContaining(Ljava/util/List;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs arrayContaining([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInOrder;->arrayContaining([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

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

    .line 620
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInOrder;->arrayContaining([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static arrayContainingInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 680
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->arrayContainingInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs arrayContainingInAnyOrder([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .line 640
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->arrayContainingInAnyOrder([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

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

    .line 660
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContainingInAnyOrder;->arrayContainingInAnyOrder([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static arrayWithSize(I)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .line 708
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayWithSize;->arrayWithSize(I)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static arrayWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .line 694
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayWithSize;->arrayWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static both(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-T",
            "LHS;",
            ">;)",
            "Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Lorg/hamcrest/core/CombinableMatcher;->both(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static closeTo(DD)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1105
    invoke-static {p0, p1, p2, p3}, Lorg/hamcrest/number/IsCloseTo;->closeTo(DD)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static closeTo(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 1122
    invoke-static {p0, p1}, Lorg/hamcrest/number/BigDecimalCloseTo;->closeTo(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static comparesEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1137
    invoke-static {p0}, Lorg/hamcrest/number/OrderingComparison;->comparesEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/util/List;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 860
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->contains(Ljava/util/List;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 843
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->contains(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs contains([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 827
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->contains([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

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

    .line 811
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInOrder;->contains([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static containsInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 900
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->containsInAnyOrder(Ljava/util/Collection;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static containsInAnyOrder(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 937
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->containsInAnyOrder(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs containsInAnyOrder([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
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

    .line 880
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->containsInAnyOrder([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

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

    .line 920
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;->containsInAnyOrder([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    invoke-static {p0}, Lorg/hamcrest/core/StringContains;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs describedAs(Ljava/lang/String;Lorg/hamcrest/Matcher;[Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 181
    invoke-static {p0, p1, p2}, Lorg/hamcrest/core/DescribedAs;->describedAs(Ljava/lang/String;Lorg/hamcrest/Matcher;[Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static either(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-T",
            "LHS;",
            ">;)",
            "Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lorg/hamcrest/core/CombinableMatcher;->either(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;

    move-result-object p0

    return-object p0
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

    .line 758
    invoke-static {}, Lorg/hamcrest/collection/IsEmptyCollection;->empty()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static emptyArray()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .line 719
    invoke-static {}, Lorg/hamcrest/collection/IsArrayWithSize;->emptyArray()Lorg/hamcrest/Matcher;

    move-result-object v0

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

    .line 772
    invoke-static {p0}, Lorg/hamcrest/collection/IsEmptyCollection;->emptyCollectionOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
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

    .line 782
    invoke-static {}, Lorg/hamcrest/collection/IsEmptyIterable;->emptyIterable()Lorg/hamcrest/Matcher;

    move-result-object v0

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

    .line 795
    invoke-static {p0}, Lorg/hamcrest/collection/IsEmptyIterable;->emptyIterableOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 530
    invoke-static {p0}, Lorg/hamcrest/core/StringEndsWith;->endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 355
    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static equalToIgnoringCase(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1215
    invoke-static {p0}, Lorg/hamcrest/text/IsEqualIgnoringCase;->equalToIgnoringCase(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static equalToIgnoringWhiteSpace(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1234
    invoke-static {p0}, Lorg/hamcrest/text/IsEqualIgnoringWhiteSpace;->equalToIgnoringWhiteSpace(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static eventFrom(Ljava/lang/Class;Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/EventObject;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation

    .line 1327
    invoke-static {p0, p1}, Lorg/hamcrest/object/IsEventFrom;->eventFrom(Ljava/lang/Class;Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static eventFrom(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation

    .line 1341
    invoke-static {p0}, Lorg/hamcrest/object/IsEventFrom;->eventFrom(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static everyItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TU;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TU;>;>;"
        }
    .end annotation

    .line 196
    invoke-static {p0}, Lorg/hamcrest/core/Every;->everyItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1153
    invoke-static {p0}, Lorg/hamcrest/number/OrderingComparison;->greaterThan(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static greaterThanOrEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1169
    invoke-static {p0}, Lorg/hamcrest/number/OrderingComparison;->greaterThanOrEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Map<",
            "+TK;+TV;>;>;"
        }
    .end annotation

    .line 984
    invoke-static {p0, p1}, Lorg/hamcrest/collection/IsMapContaining;->hasEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasEntry(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TK;>;",
            "Lorg/hamcrest/Matcher<",
            "-TV;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Map<",
            "+TK;+TV;>;>;"
        }
    .end annotation

    .line 1001
    invoke-static {p0, p1}, Lorg/hamcrest/collection/IsMapContaining;->hasEntry(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .line 281
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .line 297
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasItemInArray(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "[TT;>;"
        }
    .end annotation

    .line 560
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContaining;->hasItemInArray(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasItemInArray(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "[TT;>;"
        }
    .end annotation

    .line 575
    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayContaining;->hasItemInArray(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs hasItems([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 313
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItems([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs hasItems([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
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
            "TT;>;>;"
        }
    .end annotation

    .line 329
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItems([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasKey(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Map<",
            "+TK;*>;>;"
        }
    .end annotation

    .line 1029
    invoke-static {p0}, Lorg/hamcrest/collection/IsMapContaining;->hasKey(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasKey(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TK;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Map<",
            "+TK;*>;>;"
        }
    .end annotation

    .line 1015
    invoke-static {p0}, Lorg/hamcrest/collection/IsMapContaining;->hasKey(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasProperty(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1355
    invoke-static {p0}, Lorg/hamcrest/beans/HasProperty;->hasProperty(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasProperty(Ljava/lang/String;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1371
    invoke-static {p0, p1}, Lorg/hamcrest/beans/HasPropertyWithValue;->hasProperty(Ljava/lang/String;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasSize(I)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Collection<",
            "+TE;>;>;"
        }
    .end annotation

    .line 747
    invoke-static {p0}, Lorg/hamcrest/collection/IsCollectionWithSize;->hasSize(I)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Collection<",
            "+TE;>;>;"
        }
    .end annotation

    .line 733
    invoke-static {p0}, Lorg/hamcrest/collection/IsCollectionWithSize;->hasSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasToString(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1297
    invoke-static {p0}, Lorg/hamcrest/object/HasToString;->hasToString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasToString(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1283
    invoke-static {p0}, Lorg/hamcrest/object/HasToString;->hasToString(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasValue(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Map<",
            "*+TV;>;>;"
        }
    .end annotation

    .line 1043
    invoke-static {p0}, Lorg/hamcrest/collection/IsMapContaining;->hasValue(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasValue(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TV;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/Map<",
            "*+TV;>;>;"
        }
    .end annotation

    .line 1057
    invoke-static {p0}, Lorg/hamcrest/collection/IsMapContaining;->hasValue(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasXPath(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 1416
    invoke-static {p0}, Lorg/hamcrest/xml/HasXPath;->hasXPath(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/namespace/NamespaceContext;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 1402
    invoke-static {p0, p1}, Lorg/hamcrest/xml/HasXPath;->hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/namespace/NamespaceContext;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 1435
    invoke-static {p0, p1, p2}, Lorg/hamcrest/xml/HasXPath;->hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasXPath(Ljava/lang/String;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 1451
    invoke-static {p0, p1}, Lorg/hamcrest/xml/HasXPath;->hasXPath(Ljava/lang/String;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 385
    invoke-static {p0}, Lorg/hamcrest/core/IsInstanceOf;->instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 235
    invoke-static {p0}, Lorg/hamcrest/core/Is;->is(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 208
    invoke-static {p0}, Lorg/hamcrest/core/Is;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static is(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 221
    invoke-static {p0}, Lorg/hamcrest/core/Is;->is(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static isA(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 247
    invoke-static {p0}, Lorg/hamcrest/core/Is;->isA(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static isEmptyOrNullString()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1255
    invoke-static {}, Lorg/hamcrest/text/IsEmptyString;->isEmptyOrNullString()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isEmptyString()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1244
    invoke-static {}, Lorg/hamcrest/text/IsEmptyString;->isEmptyString()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isIn(Ljava/util/Collection;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1071
    invoke-static {p0}, Lorg/hamcrest/collection/IsIn;->isIn(Ljava/util/Collection;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static isIn([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1075
    invoke-static {p0}, Lorg/hamcrest/collection/IsIn;->isIn([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static varargs isOneOf([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1089
    invoke-static {p0}, Lorg/hamcrest/collection/IsIn;->isOneOf([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static iterableWithSize(I)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TE;>;>;"
        }
    .end annotation

    .line 967
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableWithSize;->iterableWithSize(I)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static iterableWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TE;>;>;"
        }
    .end annotation

    .line 952
    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableWithSize;->iterableWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1185
    invoke-static {p0}, Lorg/hamcrest/number/OrderingComparison;->lessThan(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static lessThanOrEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1201
    invoke-static {p0}, Lorg/hamcrest/number/OrderingComparison;->lessThanOrEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static not(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 414
    invoke-static {p0}, Lorg/hamcrest/core/IsNot;->not(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 399
    invoke-static {p0}, Lorg/hamcrest/core/IsNot;->not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static notNullValue()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-static {}, Lorg/hamcrest/core/IsNull;->notNullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static notNullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 466
    invoke-static {p0}, Lorg/hamcrest/core/IsNull;->notNullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static nullValue()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 424
    invoke-static {}, Lorg/hamcrest/core/IsNull;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static nullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 438
    invoke-static {p0}, Lorg/hamcrest/core/IsNull;->nullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static sameInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 477
    invoke-static {p0}, Lorg/hamcrest/core/IsSame;->sameInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static samePropertyValuesAs(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 1386
    invoke-static {p0}, Lorg/hamcrest/beans/SamePropertyValuesAs;->samePropertyValuesAs(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static startsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    invoke-static {p0}, Lorg/hamcrest/core/StringStartsWith;->startsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static stringContainsInOrder(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1269
    invoke-static {p0}, Lorg/hamcrest/text/StringContainsInOrder;->stringContainsInOrder(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static theInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 488
    invoke-static {p0}, Lorg/hamcrest/core/IsSame;->theInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static typeCompatibleWith(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1311
    invoke-static {p0}, Lorg/hamcrest/object/IsCompatibleType;->typeCompatibleWith(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method
