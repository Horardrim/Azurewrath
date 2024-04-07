.class Lorg/hamcrest/beans/HasPropertyWithValue$1;
.super Ljava/lang/Object;
.source "HasPropertyWithValue.java"

# interfaces
.implements Lorg/hamcrest/Condition$Step;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hamcrest/beans/HasPropertyWithValue;->withPropertyValue(Ljava/lang/Object;)Lorg/hamcrest/Condition$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/hamcrest/Condition$Step<",
        "Ljava/lang/reflect/Method;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hamcrest/beans/HasPropertyWithValue;

.field final synthetic val$bean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/hamcrest/beans/HasPropertyWithValue;Ljava/lang/Object;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/hamcrest/beans/HasPropertyWithValue$1;->this$0:Lorg/hamcrest/beans/HasPropertyWithValue;

    iput-object p2, p0, Lorg/hamcrest/beans/HasPropertyWithValue$1;->val$bean:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .locals 0

    .line 104
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/beans/HasPropertyWithValue$1;->apply(Ljava/lang/reflect/Method;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/reflect/Method;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lorg/hamcrest/Description;",
            ")",
            "Lorg/hamcrest/Condition<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/hamcrest/beans/HasPropertyWithValue$1;->val$bean:Ljava/lang/Object;

    sget-object v1, Lorg/hamcrest/beans/PropertyUtil;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/hamcrest/Condition;->matched(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 111
    invoke-static {}, Lorg/hamcrest/Condition;->notMatched()Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1
.end method
