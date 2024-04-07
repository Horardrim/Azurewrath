.class public Lorg/hamcrest/JMock1Matchers;
.super Ljava/lang/Object;
.source "JMock1Matchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalTo(Ljava/lang/String;)Lorg/jmock/core/Constraint;
    .locals 0

    .line 10
    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/integration/JMock1Adapter;->adapt(Lorg/hamcrest/Matcher;)Lorg/jmock/core/Constraint;

    move-result-object p0

    return-object p0
.end method
