.class public Lorg/hamcrest/collection/IsIn;
.super Lorg/hamcrest/BaseMatcher;
.source "IsIn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/hamcrest/collection/IsIn;->collection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/hamcrest/collection/IsIn;->collection:Ljava/util/Collection;

    return-void
.end method

.method public static isIn(Ljava/util/Collection;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 46
    new-instance v0, Lorg/hamcrest/collection/IsIn;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsIn;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static isIn([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 62
    new-instance v0, Lorg/hamcrest/collection/IsIn;

    invoke-direct {v0, p0}, Lorg/hamcrest/collection/IsIn;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs isOneOf([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 78
    invoke-static {p0}, Lorg/hamcrest/collection/IsIn;->isIn([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 4

    const-string v0, "one of "

    .line 29
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 30
    iget-object v0, p0, Lorg/hamcrest/collection/IsIn;->collection:Ljava/util/Collection;

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/hamcrest/Description;->appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/hamcrest/collection/IsIn;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
