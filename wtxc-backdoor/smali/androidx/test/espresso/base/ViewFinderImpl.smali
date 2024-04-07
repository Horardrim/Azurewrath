.class public final Landroidx/test/espresso/base/ViewFinderImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroidx/test/espresso/ViewFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/ViewFinderImpl$MatcherPredicateAdapter;
    }
.end annotation


# instance fields
.field private final rootViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/ViewFinderImpl;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/ViewFinderImpl;->rootViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private checkMainThread()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Executing a query on the view hierarchy outside of the main thread (on: %s)"

    .line 3
    invoke-static {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/AmbiguousViewMatcherException;,
            Landroidx/test/espresso/NoMatchingViewException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/ViewFinderImpl;->checkMainThread()V

    .line 2
    new-instance v0, Landroidx/test/espresso/base/ViewFinderImpl$MatcherPredicateAdapter;

    iget-object v1, p0, Landroidx/test/espresso/base/ViewFinderImpl;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 3
    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/Matcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/ViewFinderImpl$MatcherPredicateAdapter;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/base/ViewFinderImpl$1;)V

    .line 4
    iget-object v1, p0, Landroidx/test/espresso/base/ViewFinderImpl;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    invoke-static {v1}, Landroidx/test/espresso/util/TreeIterables;->breadthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->filter(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v2

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;-><init>()V

    iget-object v4, p0, Landroidx/test/espresso/base/ViewFinderImpl;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 11
    invoke-virtual {v2, v4}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withRootView(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v3}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withView1(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object v1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withView2(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object v1

    const-class v2, Landroid/view/View;

    .line 15
    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withOtherAmbiguousViews([Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->build()Landroidx/test/espresso/AmbiguousViewMatcherException;

    move-result-object v0

    throw v0

    :cond_1
    if-nez v3, :cond_3

    .line 18
    new-instance v0, Landroidx/test/espresso/base/ViewFinderImpl$MatcherPredicateAdapter;

    const-class v3, Landroid/widget/AdapterView;

    .line 19
    invoke-static {v3}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroidx/test/espresso/base/ViewFinderImpl$MatcherPredicateAdapter;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/base/ViewFinderImpl$1;)V

    .line 20
    invoke-static {v1}, Landroidx/test/espresso/util/TreeIterables;->breadthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->filter(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    new-instance v0, Landroidx/test/espresso/NoMatchingViewException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/NoMatchingViewException$Builder;-><init>()V

    iget-object v2, p0, Landroidx/test/espresso/base/ViewFinderImpl;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 24
    invoke-virtual {v0, v2}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withRootView(Landroid/view/View;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroidx/test/espresso/NoMatchingViewException$Builder;->build()Landroidx/test/espresso/NoMatchingViewException;

    move-result-object v0

    throw v0

    .line 27
    :cond_2
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "\n- "

    .line 28
    invoke-static {v5}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->on(Ljava/lang/String;)Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "\nIf the target view is not part of the view hierarchy, you may need to use Espresso.onData to load it from one of the following AdapterViews:%s"

    .line 29
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    new-instance v3, Landroidx/test/espresso/NoMatchingViewException$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/NoMatchingViewException$Builder;-><init>()V

    iget-object v4, p0, Landroidx/test/espresso/base/ViewFinderImpl;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 31
    invoke-virtual {v3, v4}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v1}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withRootView(Landroid/view/View;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withAdapterViews(Ljava/util/List;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object v0

    .line 34
    invoke-static {v2}, Landroidx/test/espresso/util/EspressoOptional;->of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withAdapterViewWarning(Landroidx/test/espresso/util/EspressoOptional;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroidx/test/espresso/NoMatchingViewException$Builder;->build()Landroidx/test/espresso/NoMatchingViewException;

    move-result-object v0

    throw v0

    :cond_3
    return-object v3
.end method
