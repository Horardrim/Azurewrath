.class public Lorg/hamcrest/object/IsEventFrom;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "IsEventFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Ljava/util/EventObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/hamcrest/object/IsEventFrom;->eventClass:Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Lorg/hamcrest/object/IsEventFrom;->source:Ljava/lang/Object;

    return-void
.end method

.method public static eventFrom(Ljava/lang/Class;Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/EventObject;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 66
    new-instance v0, Lorg/hamcrest/object/IsEventFrom;

    invoke-direct {v0, p0, p1}, Lorg/hamcrest/object/IsEventFrom;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static eventFrom(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 81
    const-class v0, Ljava/util/EventObject;

    invoke-static {v0, p0}, Lorg/hamcrest/object/IsEventFrom;->eventFrom(Ljava/lang/Class;Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method private eventHasSameSource(Ljava/util/EventObject;)Z
    .locals 1

    .line 41
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/object/IsEventFrom;->source:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "an event of type "

    .line 46
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/object/IsEventFrom;->eventClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " from "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/object/IsEventFrom;->source:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 16
    check-cast p1, Ljava/util/EventObject;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/object/IsEventFrom;->matchesSafely(Ljava/util/EventObject;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Ljava/util/EventObject;Lorg/hamcrest/Description;)Z
    .locals 3

    .line 27
    iget-object v0, p0, Lorg/hamcrest/object/IsEventFrom;->eventClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item type was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return v1

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lorg/hamcrest/object/IsEventFrom;->eventHasSameSource(Ljava/util/EventObject;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "source was "

    .line 33
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
