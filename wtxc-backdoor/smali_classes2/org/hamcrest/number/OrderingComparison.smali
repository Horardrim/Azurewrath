.class public Lorg/hamcrest/number/OrderingComparison;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "OrderingComparison.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EQUAL:I = 0x0

.field private static final GREATER_THAN:I = 0x1

.field private static final LESS_THAN:I = -0x1

.field private static final comparisonDescriptions:[Ljava/lang/String;


# instance fields
.field private final expected:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final maxCompare:I

.field private final minCompare:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "less than"

    const-string v1, "equal to"

    const-string v2, "greater than"

    .line 19
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/hamcrest/number/OrderingComparison;->comparisonDescriptions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Comparable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/hamcrest/number/OrderingComparison;->expected:Ljava/lang/Comparable;

    .line 27
    iput p2, p0, Lorg/hamcrest/number/OrderingComparison;->minCompare:I

    .line 28
    iput p3, p0, Lorg/hamcrest/number/OrderingComparison;->maxCompare:I

    return-void
.end method

.method private static asText(I)Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lorg/hamcrest/number/OrderingComparison;->comparisonDescriptions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static comparesEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 71
    new-instance v0, Lorg/hamcrest/number/OrderingComparison;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/hamcrest/number/OrderingComparison;-><init>(Ljava/lang/Comparable;II)V

    return-object v0
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 89
    new-instance v0, Lorg/hamcrest/number/OrderingComparison;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lorg/hamcrest/number/OrderingComparison;-><init>(Ljava/lang/Comparable;II)V

    return-object v0
.end method

.method public static greaterThanOrEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 107
    new-instance v0, Lorg/hamcrest/number/OrderingComparison;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/hamcrest/number/OrderingComparison;-><init>(Ljava/lang/Comparable;II)V

    return-object v0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 125
    new-instance v0, Lorg/hamcrest/number/OrderingComparison;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Lorg/hamcrest/number/OrderingComparison;-><init>(Ljava/lang/Comparable;II)V

    return-object v0
.end method

.method public static lessThanOrEqualTo(Ljava/lang/Comparable;)Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 143
    new-instance v0, Lorg/hamcrest/number/OrderingComparison;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/hamcrest/number/OrderingComparison;-><init>(Ljava/lang/Comparable;II)V

    return-object v0
.end method


# virtual methods
.method public describeMismatchSafely(Ljava/lang/Comparable;Lorg/hamcrest/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p2

    const-string v0, " was "

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    iget-object v0, p0, Lorg/hamcrest/number/OrderingComparison;->expected:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lorg/hamcrest/number/OrderingComparison;->asText(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string p2, " "

    invoke-interface {p1, p2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object p2, p0, Lorg/hamcrest/number/OrderingComparison;->expected:Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/number/OrderingComparison;->describeMismatchSafely(Ljava/lang/Comparable;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2

    const-string v0, "a value "

    .line 46
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget v1, p0, Lorg/hamcrest/number/OrderingComparison;->minCompare:I

    invoke-static {v1}, Lorg/hamcrest/number/OrderingComparison;->asText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 47
    iget v0, p0, Lorg/hamcrest/number/OrderingComparison;->minCompare:I

    iget v1, p0, Lorg/hamcrest/number/OrderingComparison;->maxCompare:I

    if-eq v0, v1, :cond_0

    const-string v0, " or "

    .line 48
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget v1, p0, Lorg/hamcrest/number/OrderingComparison;->maxCompare:I

    invoke-static {v1}, Lorg/hamcrest/number/OrderingComparison;->asText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    :cond_0
    const-string v0, " "

    .line 50
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/number/OrderingComparison;->expected:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matchesSafely(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/hamcrest/number/OrderingComparison;->expected:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    .line 34
    iget v0, p0, Lorg/hamcrest/number/OrderingComparison;->minCompare:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/hamcrest/number/OrderingComparison;->maxCompare:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/hamcrest/number/OrderingComparison;->matchesSafely(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method
