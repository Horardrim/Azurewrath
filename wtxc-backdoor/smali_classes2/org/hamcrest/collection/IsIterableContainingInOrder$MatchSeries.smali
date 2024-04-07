.class Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;
.super Ljava/lang/Object;
.source "IsIterableContainingInOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hamcrest/collection/IsIterableContainingInOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchSeries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TF;>;>;"
        }
    .end annotation
.end field

.field private final mismatchDescription:Lorg/hamcrest/Description;

.field public nextMatchIx:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/hamcrest/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TF;>;>;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    .line 44
    iput-object p2, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->mismatchDescription:Lorg/hamcrest/Description;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 48
    iput-object p1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->matchers:Ljava/util/List;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Should specify at least one expected element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private describeMismatch(Lorg/hamcrest/Matcher;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-TF;>;TF;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->mismatchDescription:Lorg/hamcrest/Description;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 83
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->mismatchDescription:Lorg/hamcrest/Description;

    invoke-interface {p1, p2, v0}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    return-void
.end method

.method private isMatched(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->matchers:Ljava/util/List;

    iget v1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hamcrest/Matcher;

    .line 65
    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0, v0, p1}, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->describeMismatch(Lorg/hamcrest/Matcher;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    iget p1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    return v0
.end method

.method private isNotSurplus(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    if-gt v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->mismatchDescription:Lorg/hamcrest/Description;

    const-string v1, "Not matched: "

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public isFinished()Z
    .locals 3

    .line 56
    iget v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    iget-object v1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->mismatchDescription:Lorg/hamcrest/Description;

    const-string v1, "No item matched: "

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->matchers:Ljava/util/List;

    iget v2, p0, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->nextMatchIx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/SelfDescribing;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->isNotSurplus(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/hamcrest/collection/IsIterableContainingInOrder$MatchSeries;->isMatched(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
