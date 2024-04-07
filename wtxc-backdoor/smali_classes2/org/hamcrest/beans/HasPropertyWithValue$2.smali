.class final Lorg/hamcrest/beans/HasPropertyWithValue$2;
.super Ljava/lang/Object;
.source "HasPropertyWithValue.java"

# interfaces
.implements Lorg/hamcrest/Condition$Step;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hamcrest/beans/HasPropertyWithValue;->withReadMethod()Lorg/hamcrest/Condition$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/hamcrest/Condition$Step<",
        "Ljava/beans/PropertyDescriptor;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/beans/PropertyDescriptor;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/beans/PropertyDescriptor;",
            "Lorg/hamcrest/Description;",
            ")",
            "Lorg/hamcrest/Condition<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not readable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 129
    invoke-static {}, Lorg/hamcrest/Condition;->notMatched()Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    invoke-static {v0, p2}, Lorg/hamcrest/Condition;->matched(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .locals 0

    .line 123
    check-cast p1, Ljava/beans/PropertyDescriptor;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/beans/HasPropertyWithValue$2;->apply(Ljava/beans/PropertyDescriptor;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1
.end method
