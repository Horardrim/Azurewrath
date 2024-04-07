.class public final Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "DataInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/DataInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayDataMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayDataMatcher"


# instance fields
.field private final adapterDataLoaderAction:Landroidx/test/espresso/action/AdapterDataLoaderAction;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x3
    .end annotation
.end field

.field private final adapterMatcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

.field private final adapterViewProtocolClass:Ljava/lang/Class;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/test/espresso/action/AdapterViewProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private final dataMatcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/action/AdapterViewProtocol;Landroidx/test/espresso/action/AdapterDataLoaderAction;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol;",
            "Landroidx/test/espresso/action/AdapterDataLoaderAction;",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "Landroidx/test/espresso/action/AdapterDataLoaderAction;",
            "Landroidx/test/espresso/ViewInteraction;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterMatcher:Lorg/hamcrest/Matcher;

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->dataMatcher:Lorg/hamcrest/Matcher;

    .line 4
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterViewProtocol;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterViewProtocolClass:Ljava/lang/Class;

    .line 6
    invoke-static {p4}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterDataLoaderAction;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterDataLoaderAction:Landroidx/test/espresso/action/AdapterDataLoaderAction;

    .line 7
    invoke-static {p5}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {p1, p4}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/lang/Class;Landroidx/test/espresso/action/AdapterDataLoaderAction;)V
    .locals 6
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/test/espresso/action/AdapterViewProtocol;",
            ">;",
            "Landroidx/test/espresso/action/AdapterDataLoaderAction;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 9
    sget-object v3, Landroidx/test/espresso/matcher/RootMatchers;->DEFAULT:Lorg/hamcrest/Matcher;

    new-instance v0, Landroidx/test/espresso/remote/ConstructorInvocation;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v0, p3, v4, v2}, Landroidx/test/espresso/remote/ConstructorInvocation;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/test/espresso/remote/ConstructorInvocation;->invokeConstructor([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroidx/test/espresso/action/AdapterViewProtocol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/action/AdapterViewProtocol;Landroidx/test/espresso/action/AdapterDataLoaderAction;)V

    return-void
.end method

.method private constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/action/AdapterViewProtocol;Landroidx/test/espresso/action/AdapterDataLoaderAction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol;",
            "Landroidx/test/espresso/action/AdapterDataLoaderAction;",
            ")V"
        }
    .end annotation

    .line 13
    new-instance v5, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;

    invoke-direct {v5, p1, p3}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/action/AdapterViewProtocol;Landroidx/test/espresso/action/AdapterDataLoaderAction;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)V

    return-void
.end method

.method public static displayDataMatcher(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/util/EspressoOptional;Landroidx/test/espresso/action/AdapterViewProtocol;)Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol;",
            ")",
            "Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;

    new-instance v5, Landroidx/test/espresso/action/AdapterDataLoaderAction;

    invoke-direct {v5, p1, p3, p4}, Landroidx/test/espresso/action/AdapterDataLoaderAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/util/EspressoOptional;Landroidx/test/espresso/action/AdapterViewProtocol;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/action/AdapterViewProtocol;Landroidx/test/espresso/action/AdapterDataLoaderAction;)V

    return-object v6
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, " displaying data matching: "

    .line 1
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->dataMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    const-string v0, " within adapter view matching: "

    .line 3
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "adapterViewProtocol cannot be null!"

    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 3
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v2, v0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    check-cast v0, Landroid/widget/AdapterView;

    .line 7
    invoke-interface {v2, v0, p1}, Landroidx/test/espresso/action/AdapterViewProtocol;->getDataRenderedByView(Landroid/widget/AdapterView;Landroid/view/View;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/test/espresso/util/EspressoOptional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    iget-object p1, p1, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->adapterDataLoaderAction:Landroidx/test/espresso/action/AdapterDataLoaderAction;

    .line 10
    invoke-virtual {v0}, Landroidx/test/espresso/action/AdapterDataLoaderAction;->getAdaptedData()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    move-result-object v0

    iget-object v0, v0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
