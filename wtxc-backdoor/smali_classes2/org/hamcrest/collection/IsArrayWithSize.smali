.class public Lorg/hamcrest/collection/IsArrayWithSize;
.super Lorg/hamcrest/FeatureMatcher;
.source "IsArrayWithSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/FeatureMatcher<",
        "[TE;",
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

    const-string v0, "an array with size"

    const-string v1, "array size"

    .line 15
    invoke-direct {p0, p1, v0, v1}, Lorg/hamcrest/FeatureMatcher;-><init>(Lorg/hamcrest/Matcher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/collection/IsArrayWithSize;->arrayWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static arrayWithSize(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
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
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 35
    new-instance v0, Lorg/hamcrest/collection/IsArrayWithSize;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsArrayWithSize;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static emptyArray()Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/hamcrest/Matcher<",
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lorg/hamcrest/collection/IsArrayWithSize;->arrayWithSize(I)Lorg/hamcrest/Matcher;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "an empty array"

    .line 64
    invoke-static {v2, v1, v0}, Lorg/hamcrest/core/DescribedAs;->describedAs(Ljava/lang/String;Lorg/hamcrest/Matcher;[Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected featureValueOf([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 20
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic featureValueOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/hamcrest/collection/IsArrayWithSize;->featureValueOf([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
