.class public Landroidx/test/espresso/DataInteraction;
.super Ljava/lang/Object;
.source "DataInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;
    }
.end annotation


# instance fields
.field private adapterMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

.field private atPosition:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dataMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rootMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/widget/AdapterView;

    .line 2
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->adapterMatcher:Lorg/hamcrest/Matcher;

    .line 3
    invoke-static {}, Landroidx/test/espresso/util/EspressoOptional;->absent()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    .line 4
    invoke-static {}, Landroidx/test/espresso/util/EspressoOptional;->absent()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    .line 5
    invoke-static {}, Landroidx/test/espresso/action/AdapterViewProtocols;->standardProtocol()Landroidx/test/espresso/action/AdapterViewProtocol;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    .line 6
    sget-object v0, Landroidx/test/espresso/matcher/RootMatchers;->DEFAULT:Lorg/hamcrest/Matcher;

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    .line 7
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->dataMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method private makeTargetMatcher()Lorg/hamcrest/Matcher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DataInteraction;->adapterMatcher:Lorg/hamcrest/Matcher;

    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->dataMatcher:Lorg/hamcrest/Matcher;

    iget-object v2, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    iget-object v3, p0, Landroidx/test/espresso/DataInteraction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    iget-object v4, p0, Landroidx/test/espresso/DataInteraction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->displayDataMatcher(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/util/EspressoOptional;Landroidx/test/espresso/action/AdapterViewProtocol;)Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v1}, Landroidx/test/espresso/util/EspressoOptional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v1}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDescendantOfA(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public atPosition(Ljava/lang/Integer;)Landroidx/test/espresso/DataInteraction;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/test/espresso/util/EspressoOptional;->of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    return-object p0
.end method

.method public check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/DataInteraction;->makeTargetMatcher()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/espresso/ViewInteraction;->check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p1

    return-object p1
.end method

.method public inAdapterView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->adapterMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method public inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method public onChildView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    invoke-static {p1}, Landroidx/test/espresso/util/EspressoOptional;->of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    return-object p0
.end method

.method public varargs perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/DataInteraction;->makeTargetMatcher()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p1

    return-object p1
.end method

.method public usingAdapterViewProtocol(Landroidx/test/espresso/action/AdapterViewProtocol;)Landroidx/test/espresso/DataInteraction;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterViewProtocol;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    return-object p0
.end method
