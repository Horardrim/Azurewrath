.class public Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;
.super Lorg/hamcrest/DiagnosingMatcher;
.source "SamePropertyValuesAs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hamcrest/beans/SamePropertyValuesAs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/DiagnosingMatcher<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyName:Ljava/lang/String;

.field private final readMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/beans/PropertyDescriptor;Ljava/lang/Object;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lorg/hamcrest/DiagnosingMatcher;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->propertyName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->readMethod:Ljava/lang/reflect/Method;

    .line 95
    invoke-static {p1, p2}, Lorg/hamcrest/beans/SamePropertyValuesAs;->access$000(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    iput-object p1, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->matcher:Lorg/hamcrest/Matcher;

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matches(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->readMethod:Ljava/lang/reflect/Method;

    invoke-static {v0, p1}, Lorg/hamcrest/beans/SamePropertyValuesAs;->access$000(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 103
    iget-object v0, p0, Lorg/hamcrest/beans/SamePropertyValuesAs$PropertyMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
