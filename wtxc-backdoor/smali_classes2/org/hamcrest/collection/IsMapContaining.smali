.class public Lorg/hamcrest/collection/IsMapContaining;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "IsMapContaining.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Ljava/util/Map<",
        "+TK;+TV;>;>;"
    }
.end annotation


# instance fields
.field private final keyMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private final valueMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-TK;>;",
            "Lorg/hamcrest/Matcher<",
            "-TV;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/hamcrest/collection/IsMapContaining;->keyMatcher:Lorg/hamcrest/Matcher;

    .line 20
    iput-object p2, p0, Lorg/hamcrest/collection/IsMapContaining;->valueMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method public static hasEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 80
    new-instance v0, Lorg/hamcrest/collection/IsMapContaining;

    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p1}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/hamcrest/collection/IsMapContaining;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static hasEntry(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 62
    new-instance v0, Lorg/hamcrest/collection/IsMapContaining;

    invoke-direct {v0, p0, p1}, Lorg/hamcrest/collection/IsMapContaining;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static hasKey(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 2
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 110
    new-instance v0, Lorg/hamcrest/collection/IsMapContaining;

    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {}, Lorg/hamcrest/core/IsAnything;->anything()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/hamcrest/collection/IsMapContaining;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static hasKey(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 95
    new-instance v0, Lorg/hamcrest/collection/IsMapContaining;

    invoke-static {}, Lorg/hamcrest/core/IsAnything;->anything()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/hamcrest/collection/IsMapContaining;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static hasValue(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 2
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 140
    new-instance v0, Lorg/hamcrest/collection/IsMapContaining;

    invoke-static {}, Lorg/hamcrest/core/IsAnything;->anything()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/hamcrest/collection/IsMapContaining;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static hasValue(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 125
    new-instance v0, Lorg/hamcrest/collection/IsMapContaining;

    invoke-static {}, Lorg/hamcrest/core/IsAnything;->anything()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/hamcrest/collection/IsMapContaining;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsMapContaining;->describeMismatchSafely(Ljava/util/Map;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeMismatchSafely(Ljava/util/Map;Lorg/hamcrest/Description;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    const-string v0, "map was "

    .line 35
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "["

    const-string v1, ", "

    const-string v2, "]"

    invoke-interface {p2, v0, v1, v2, p1}, Lorg/hamcrest/Description;->appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "map containing ["

    .line 40
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/collection/IsMapContaining;->keyMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, "->"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/collection/IsMapContaining;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, "]"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsMapContaining;->matchesSafely(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    iget-object v1, p0, Lorg/hamcrest/collection/IsMapContaining;->keyMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/hamcrest/collection/IsMapContaining;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
