.class public Lorg/hamcrest/collection/IsIterableWithSize;
.super Lorg/hamcrest/FeatureMatcher;
.source "IsIterableWithSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/FeatureMatcher<",
        "Ljava/lang/Iterable<",
        "TE;>;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "an iterable with size"

    const-string v1, "iterable size"

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lorg/hamcrest/FeatureMatcher;-><init>(Lorg/hamcrest/Matcher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/collection/IsIterableWithSize;->iterableWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static iterableWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 40
    new-instance v0, Lorg/hamcrest/collection/IsIterableWithSize;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsIterableWithSize;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method


# virtual methods
.method protected featureValueOf(Ljava/lang/Iterable;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic featureValueOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsIterableWithSize;->featureValueOf(Ljava/lang/Iterable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
