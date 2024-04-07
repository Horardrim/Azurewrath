.class public Lorg/hamcrest/xml/HasXPath;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "HasXPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# static fields
.field private static final NODE_EXISTS:Lorg/hamcrest/Condition$Step;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Condition$Step<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_NAMESPACE_CONTEXT:Ljavax/xml/namespace/NamespaceContext;

.field private static final WITH_ANY_CONTENT:Lorg/hamcrest/core/IsAnything;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/core/IsAnything<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final compiledXPath:Ljavax/xml/xpath/XPathExpression;

.field private final evaluationMode:Ljavax/xml/namespace/QName;

.field private final valueMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final xpathString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lorg/hamcrest/core/IsAnything;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/hamcrest/core/IsAnything;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/hamcrest/xml/HasXPath;->WITH_ANY_CONTENT:Lorg/hamcrest/core/IsAnything;

    .line 24
    invoke-static {}, Lorg/hamcrest/xml/HasXPath;->nodeExists()Lorg/hamcrest/Condition$Step;

    move-result-object v0

    sput-object v0, Lorg/hamcrest/xml/HasXPath;->NODE_EXISTS:Lorg/hamcrest/Condition$Step;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/namespace/NamespaceContext;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hamcrest/xml/HasXPath;-><init>(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;Ljavax/xml/namespace/QName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/namespace/NamespaceContext;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/xml/namespace/QName;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 50
    invoke-static {p1, p2}, Lorg/hamcrest/xml/HasXPath;->compiledXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p2

    iput-object p2, p0, Lorg/hamcrest/xml/HasXPath;->compiledXPath:Ljavax/xml/xpath/XPathExpression;

    .line 51
    iput-object p1, p0, Lorg/hamcrest/xml/HasXPath;->xpathString:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/hamcrest/xml/HasXPath;->valueMatcher:Lorg/hamcrest/Matcher;

    .line 53
    iput-object p4, p0, Lorg/hamcrest/xml/HasXPath;->evaluationMode:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/hamcrest/xml/HasXPath;->NO_NAMESPACE_CONTEXT:Ljavax/xml/namespace/NamespaceContext;

    invoke-direct {p0, p1, v0, p2}, Lorg/hamcrest/xml/HasXPath;-><init>(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method private static compiledXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPathExpression;
    .locals 3

    .line 95
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 97
    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 99
    :cond_0
    invoke-interface {v0, p0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid XPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private evaluated(Lorg/w3c/dom/Node;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Lorg/hamcrest/Description;",
            ")",
            "Lorg/hamcrest/Condition<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/hamcrest/xml/HasXPath;->compiledXPath:Ljavax/xml/xpath/XPathExpression;

    iget-object v1, p0, Lorg/hamcrest/xml/HasXPath;->evaluationMode:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p1, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/hamcrest/Condition;->matched(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathExpressionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 77
    invoke-static {}, Lorg/hamcrest/Condition;->notMatched()Lorg/hamcrest/Condition;

    move-result-object p1

    return-object p1
.end method

.method public static hasXPath(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 155
    sget-object v0, Lorg/hamcrest/xml/HasXPath;->NO_NAMESPACE_CONTEXT:Ljavax/xml/namespace/NamespaceContext;

    invoke-static {p0, v0}, Lorg/hamcrest/xml/HasXPath;->hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/namespace/NamespaceContext;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 172
    new-instance v0, Lorg/hamcrest/xml/HasXPath;

    sget-object v1, Lorg/hamcrest/xml/HasXPath;->WITH_ANY_CONTENT:Lorg/hamcrest/core/IsAnything;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/hamcrest/xml/HasXPath;-><init>(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;Ljavax/xml/namespace/QName;)V

    return-object v0
.end method

.method public static hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/namespace/NamespaceContext;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 140
    new-instance v0, Lorg/hamcrest/xml/HasXPath;

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/hamcrest/xml/HasXPath;-><init>(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;Ljavax/xml/namespace/QName;)V

    return-object v0
.end method

.method public static hasXPath(Ljava/lang/String;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 120
    sget-object v0, Lorg/hamcrest/xml/HasXPath;->NO_NAMESPACE_CONTEXT:Ljavax/xml/namespace/NamespaceContext;

    invoke-static {p0, v0, p1}, Lorg/hamcrest/xml/HasXPath;->hasXPath(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method private static nodeExists()Lorg/hamcrest/Condition$Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Condition$Step<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/hamcrest/xml/HasXPath$1;

    invoke-direct {v0}, Lorg/hamcrest/xml/HasXPath$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2

    const-string v0, "an XML document with XPath "

    .line 65
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/xml/HasXPath;->xpathString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 66
    iget-object v0, p0, Lorg/hamcrest/xml/HasXPath;->valueMatcher:Lorg/hamcrest/Matcher;

    if-eqz v0, :cond_0

    const-string v0, " "

    .line 67
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Lorg/hamcrest/xml/HasXPath;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    :cond_0
    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 21
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/xml/HasXPath;->matchesSafely(Lorg/w3c/dom/Node;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Lorg/w3c/dom/Node;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/hamcrest/xml/HasXPath;->evaluated(Lorg/w3c/dom/Node;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object p1

    sget-object p2, Lorg/hamcrest/xml/HasXPath;->NODE_EXISTS:Lorg/hamcrest/Condition$Step;

    invoke-virtual {p1, p2}, Lorg/hamcrest/Condition;->and(Lorg/hamcrest/Condition$Step;)Lorg/hamcrest/Condition;

    move-result-object p1

    iget-object p2, p0, Lorg/hamcrest/xml/HasXPath;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1, p2}, Lorg/hamcrest/Condition;->matching(Lorg/hamcrest/Matcher;)Z

    move-result p1

    return p1
.end method
