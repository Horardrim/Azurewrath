.class Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;
.super Ljava/lang/Object;
.source "IsIterableContainingInAnyOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hamcrest/collection/IsIterableContainingInAnyOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matching"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final matchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field private final mismatchDescription:Lorg/hamcrest/Description;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lorg/hamcrest/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/hamcrest/Matcher<",
            "-TS;>;>;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->matchers:Ljava/util/Collection;

    .line 48
    iput-object p2, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->mismatchDescription:Lorg/hamcrest/Description;

    return-void
.end method

.method private isMatched(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->matchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/Matcher;

    .line 75
    invoke-interface {v1, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object p1, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->matchers:Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->mismatchDescription:Lorg/hamcrest/Description;

    const-string v1, "Not matched: "

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    const/4 p1, 0x0

    return p1
.end method

.method private isNotSurplus(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->matchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->mismatchDescription:Lorg/hamcrest/Description;

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
.method public isFinished(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TS;>;)Z"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->matchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->mismatchDescription:Lorg/hamcrest/Description;

    const-string v1, "No item matches: "

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->matchers:Ljava/util/Collection;

    const-string v2, ""

    const-string v3, ", "

    invoke-interface {v0, v2, v3, v2, v1}, Lorg/hamcrest/Description;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v1, " in "

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v1, "["

    const-string v2, "]"

    invoke-interface {v0, v1, v3, v2, p1}, Lorg/hamcrest/Description;->appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    const/4 p1, 0x0

    return p1
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->isNotSurplus(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/hamcrest/collection/IsIterableContainingInAnyOrder$Matching;->isMatched(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
