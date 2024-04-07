.class public Lorg/hamcrest/number/IsCloseTo;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "IsCloseTo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final delta:D

.field private final value:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 20
    iput-wide p3, p0, Lorg/hamcrest/number/IsCloseTo;->delta:D

    .line 21
    iput-wide p1, p0, Lorg/hamcrest/number/IsCloseTo;->value:D

    return-void
.end method

.method private actualDelta(Ljava/lang/Double;)D
    .locals 4

    .line 45
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/hamcrest/number/IsCloseTo;->value:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/hamcrest/number/IsCloseTo;->delta:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static closeTo(DD)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 62
    new-instance v0, Lorg/hamcrest/number/IsCloseTo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/hamcrest/number/IsCloseTo;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public describeMismatchSafely(Ljava/lang/Double;Lorg/hamcrest/Description;)V
    .locals 2

    .line 31
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p2

    const-string v0, " differed by "

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/hamcrest/number/IsCloseTo;->actualDelta(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/number/IsCloseTo;->describeMismatchSafely(Ljava/lang/Double;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2

    const-string v0, "a numeric value within "

    .line 38
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-wide v0, p0, Lorg/hamcrest/number/IsCloseTo;->delta:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " of "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-wide v0, p0, Lorg/hamcrest/number/IsCloseTo;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matchesSafely(Ljava/lang/Double;)Z
    .locals 4

    .line 26
    invoke-direct {p0, p1}, Lorg/hamcrest/number/IsCloseTo;->actualDelta(Ljava/lang/Double;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lorg/hamcrest/number/IsCloseTo;->matchesSafely(Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method
