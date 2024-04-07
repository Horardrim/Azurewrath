.class public Lorg/hamcrest/integration/JMock1Adapter;
.super Ljava/lang/Object;
.source "JMock1Adapter.java"

# interfaces
.implements Lorg/jmock/core/Constraint;


# instance fields
.field private final hamcrestMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/hamcrest/integration/JMock1Adapter;->hamcrestMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method public static adapt(Lorg/hamcrest/Matcher;)Lorg/jmock/core/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/jmock/core/Constraint;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/hamcrest/integration/JMock1Adapter;

    invoke-direct {v0, p0}, Lorg/hamcrest/integration/JMock1Adapter;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method


# virtual methods
.method public describeTo(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/hamcrest/integration/JMock1Adapter;->hamcrestMatcher:Lorg/hamcrest/Matcher;

    new-instance v1, Lorg/hamcrest/StringDescription;

    invoke-direct {v1, p1}, Lorg/hamcrest/StringDescription;-><init>(Ljava/lang/Appendable;)V

    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    return-object p1
.end method

.method public eval(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/hamcrest/integration/JMock1Adapter;->hamcrestMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
