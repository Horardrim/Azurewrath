.class public Lorg/hamcrest/integration/EasyMock2Adapter;
.super Ljava/lang/Object;
.source "EasyMock2Adapter.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;


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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/hamcrest/integration/EasyMock2Adapter;->hamcrestMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method public static adapt(Lorg/hamcrest/Matcher;)Lorg/easymock/IArgumentMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/easymock/IArgumentMatcher;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/hamcrest/integration/EasyMock2Adapter;

    invoke-direct {v0, p0}, Lorg/hamcrest/integration/EasyMock2Adapter;-><init>(Lorg/hamcrest/Matcher;)V

    .line 24
    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    return-object v0
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/hamcrest/integration/EasyMock2Adapter;->hamcrestMatcher:Lorg/hamcrest/Matcher;

    new-instance v1, Lorg/hamcrest/StringDescription;

    invoke-direct {v1, p1}, Lorg/hamcrest/StringDescription;-><init>(Ljava/lang/Appendable;)V

    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/hamcrest/integration/EasyMock2Adapter;->hamcrestMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
