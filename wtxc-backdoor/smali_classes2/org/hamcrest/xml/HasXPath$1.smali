.class final Lorg/hamcrest/xml/HasXPath$1;
.super Ljava/lang/Object;
.source "HasXPath.java"

# interfaces
.implements Lorg/hamcrest/Condition$Step;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hamcrest/xml/HasXPath;->nodeExists()Lorg/hamcrest/Condition$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/hamcrest/Condition$Step<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/hamcrest/Description;",
            ")",
            "Lorg/hamcrest/Condition<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "xpath returned no results."

    .line 85
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 86
    invoke-static {}, Lorg/hamcrest/Condition;->notMatched()Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/hamcrest/Condition;->matched(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1
.end method
