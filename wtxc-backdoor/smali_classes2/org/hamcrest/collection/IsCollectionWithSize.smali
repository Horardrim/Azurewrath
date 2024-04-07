.class public Lorg/hamcrest/collection/IsCollectionWithSize;
.super Lorg/hamcrest/FeatureMatcher;
.source "IsCollectionWithSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/FeatureMatcher<",
        "Ljava/util/Collection<",
        "+TE;>;",
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

    const-string v0, "a collection with size"

    const-string v1, "collection size"

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lorg/hamcrest/FeatureMatcher;-><init>(Lorg/hamcrest/Matcher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lorg/hamcrest/collection/IsCollectionWithSize;->hasSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
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
            "Ljava/util/Collection<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 36
    new-instance v0, Lorg/hamcrest/collection/IsCollectionWithSize;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsCollectionWithSize;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method


# virtual methods
.method protected featureValueOf(Ljava/util/Collection;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic featureValueOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsCollectionWithSize;->featureValueOf(Ljava/util/Collection;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
