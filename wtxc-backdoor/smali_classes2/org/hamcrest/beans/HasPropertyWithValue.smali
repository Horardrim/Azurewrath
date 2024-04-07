.class public Lorg/hamcrest/beans/HasPropertyWithValue;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "HasPropertyWithValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final WITH_READ_METHOD:Lorg/hamcrest/Condition$Step;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Condition$Step<",
            "Ljava/beans/PropertyDescriptor;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final propertyName:Ljava/lang/String;

.field private final valueMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    invoke-static {}, Lorg/hamcrest/beans/HasPropertyWithValue;->withReadMethod()Lorg/hamcrest/Condition$Step;

    move-result-object v0

    sput-object v0, Lorg/hamcrest/beans/HasPropertyWithValue;->WITH_READ_METHOD:Lorg/hamcrest/Condition$Step;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->propertyName:Ljava/lang/String;

    .line 76
    invoke-static {p2}, Lorg/hamcrest/beans/HasPropertyWithValue;->nastyGenericsWorkaround(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p1

    iput-object p1, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->valueMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method public static hasProperty(Ljava/lang/String;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 150
    new-instance v0, Lorg/hamcrest/beans/HasPropertyWithValue;

    invoke-direct {v0, p0, p1}, Lorg/hamcrest/beans/HasPropertyWithValue;-><init>(Ljava/lang/String;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method private static nastyGenericsWorkaround(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method private propertyOn(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")",
            "Lorg/hamcrest/Condition<",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->propertyName:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/hamcrest/beans/PropertyUtil;->getPropertyDescriptor(Ljava/lang/String;Ljava/lang/Object;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No property \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 97
    invoke-static {}, Lorg/hamcrest/Condition;->notMatched()Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    invoke-static {p1, p2}, Lorg/hamcrest/Condition;->matched(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1
.end method

.method private withPropertyValue(Ljava/lang/Object;)Lorg/hamcrest/Condition$Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/hamcrest/Condition$Step<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/hamcrest/beans/HasPropertyWithValue$1;

    invoke-direct {v0, p0, p1}, Lorg/hamcrest/beans/HasPropertyWithValue$1;-><init>(Lorg/hamcrest/beans/HasPropertyWithValue;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static withReadMethod()Lorg/hamcrest/Condition$Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Condition$Step<",
            "Ljava/beans/PropertyDescriptor;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/hamcrest/beans/HasPropertyWithValue$2;

    invoke-direct {v0}, Lorg/hamcrest/beans/HasPropertyWithValue$2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "hasProperty("

    .line 89
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->propertyName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, ", "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, ")"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")Z"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/hamcrest/beans/HasPropertyWithValue;->propertyOn(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p2

    sget-object v0, Lorg/hamcrest/beans/HasPropertyWithValue;->WITH_READ_METHOD:Lorg/hamcrest/Condition$Step;

    invoke-virtual {p2, v0}, Lorg/hamcrest/Condition;->and(Lorg/hamcrest/Condition$Step;)Lorg/hamcrest/Condition;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/hamcrest/beans/HasPropertyWithValue;->withPropertyValue(Ljava/lang/Object;)Lorg/hamcrest/Condition$Step;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/hamcrest/Condition;->and(Lorg/hamcrest/Condition$Step;)Lorg/hamcrest/Condition;

    move-result-object p1

    iget-object p2, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->valueMatcher:Lorg/hamcrest/Matcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/hamcrest/beans/HasPropertyWithValue;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/hamcrest/Condition;->matching(Lorg/hamcrest/Matcher;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
