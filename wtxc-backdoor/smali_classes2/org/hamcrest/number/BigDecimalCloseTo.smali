.class public Lorg/hamcrest/number/BigDecimalCloseTo;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "BigDecimalCloseTo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final delta:Ljava/math/BigDecimal;

.field private final value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 17
    iput-object p2, p0, Lorg/hamcrest/number/BigDecimalCloseTo;->delta:Ljava/math/BigDecimal;

    .line 18
    iput-object p1, p0, Lorg/hamcrest/number/BigDecimalCloseTo;->value:Ljava/math/BigDecimal;

    return-void
.end method

.method private actualDelta(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/hamcrest/number/BigDecimalCloseTo;->value:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/number/BigDecimalCloseTo;->delta:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public static closeTo(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 60
    new-instance v0, Lorg/hamcrest/number/BigDecimalCloseTo;

    invoke-direct {v0, p0, p1}, Lorg/hamcrest/number/BigDecimalCloseTo;-><init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/number/BigDecimalCloseTo;->describeMismatchSafely(Ljava/math/BigDecimal;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeMismatchSafely(Ljava/math/BigDecimal;Lorg/hamcrest/Description;)V
    .locals 1

    .line 28
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p2

    const-string v0, " differed by "

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/hamcrest/number/BigDecimalCloseTo;->actualDelta(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "a numeric value within "

    .line 35
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/number/BigDecimalCloseTo;->delta:Ljava/math/BigDecimal;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " of "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/number/BigDecimalCloseTo;->value:Ljava/math/BigDecimal;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lorg/hamcrest/number/BigDecimalCloseTo;->matchesSafely(Ljava/math/BigDecimal;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Ljava/math/BigDecimal;)Z
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lorg/hamcrest/number/BigDecimalCloseTo;->actualDelta(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
