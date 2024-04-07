.class public Lorg/hamcrest/collection/IsArray;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "IsArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "[TT;>;"
    }
.end annotation


# instance fields
.field private final elementMatchers:[Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 18
    invoke-virtual {p1}, [Lorg/hamcrest/Matcher;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/hamcrest/Matcher;

    iput-object p1, p0, Lorg/hamcrest/collection/IsArray;->elementMatchers:[Lorg/hamcrest/Matcher;

    return-void
.end method

.method public static varargs array([Lorg/hamcrest/Matcher;)Lorg/hamcrest/collection/IsArray;
    .locals 1
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 95
    new-instance v0, Lorg/hamcrest/collection/IsArray;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsArray;-><init>([Lorg/hamcrest/Matcher;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/collection/IsArray;->describeMismatchSafely([Ljava/lang/Object;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeMismatchSafely([Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 34
    array-length v0, p1

    iget-object v1, p0, Lorg/hamcrest/collection/IsArray;->elementMatchers:[Lorg/hamcrest/Matcher;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "array length was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 39
    iget-object v1, p0, Lorg/hamcrest/collection/IsArray;->elementMatchers:[Lorg/hamcrest/Matcher;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lorg/hamcrest/collection/IsArray;->descriptionStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/hamcrest/collection/IsArray;->descriptionSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/hamcrest/collection/IsArray;->descriptionEnd()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/hamcrest/collection/IsArray;->elementMatchers:[Lorg/hamcrest/Matcher;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/hamcrest/Description;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected descriptionEnd()Ljava/lang/String;
    .locals 1

    const-string v0, "]"

    return-object v0
.end method

.method protected descriptionSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, ", "

    return-object v0
.end method

.method protected descriptionStart()Ljava/lang/String;
    .locals 1

    const-string v0, "["

    return-object v0
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsArray;->matchesSafely([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .line 23
    array-length v0, p1

    iget-object v1, p0, Lorg/hamcrest/collection/IsArray;->elementMatchers:[Lorg/hamcrest/Matcher;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 25
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 26
    iget-object v1, p0, Lorg/hamcrest/collection/IsArray;->elementMatchers:[Lorg/hamcrest/Matcher;

    aget-object v1, v1, v0

    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
