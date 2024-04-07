.class public Lorg/hamcrest/EasyMock2Matchers;
.super Ljava/lang/Object;
.source "EasyMock2Matchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/integration/EasyMock2Adapter;->adapt(Lorg/hamcrest/Matcher;)Lorg/easymock/IArgumentMatcher;

    const/4 p0, 0x0

    return-object p0
.end method
