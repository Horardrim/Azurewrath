.class public final Lorg/hamcrest/text/IsEmptyString;
.super Lorg/hamcrest/BaseMatcher;
.source "IsEmptyString.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/BaseMatcher<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/hamcrest/text/IsEmptyString;

.field private static final NULL_OR_EMPTY_INSTANCE:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lorg/hamcrest/text/IsEmptyString;

    invoke-direct {v0}, Lorg/hamcrest/text/IsEmptyString;-><init>()V

    sput-object v0, Lorg/hamcrest/text/IsEmptyString;->INSTANCE:Lorg/hamcrest/text/IsEmptyString;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/hamcrest/Matcher;

    .line 18
    invoke-static {}, Lorg/hamcrest/core/IsNull;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/hamcrest/core/AnyOf;->anyOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    sput-object v0, Lorg/hamcrest/text/IsEmptyString;->NULL_OR_EMPTY_INSTANCE:Lorg/hamcrest/Matcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    return-void
.end method

.method public static isEmptyOrNullString()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 52
    sget-object v0, Lorg/hamcrest/text/IsEmptyString;->NULL_OR_EMPTY_INSTANCE:Lorg/hamcrest/Matcher;

    return-object v0
.end method

.method public static isEmptyString()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 39
    sget-object v0, Lorg/hamcrest/text/IsEmptyString;->INSTANCE:Lorg/hamcrest/text/IsEmptyString;

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "an empty string"

    .line 27
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
