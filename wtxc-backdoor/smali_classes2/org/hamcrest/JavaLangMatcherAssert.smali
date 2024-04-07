.class public Lorg/hamcrest/JavaLangMatcherAssert;
.super Ljava/lang/Object;
.source "JavaLangMatcherAssert.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static that(Ljava/lang/Object;Lorg/hamcrest/Matcher;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 16
    invoke-interface {p1, p0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
