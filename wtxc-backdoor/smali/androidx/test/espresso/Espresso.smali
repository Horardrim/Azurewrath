.class public final Landroidx/test/espresso/Espresso;
.super Ljava/lang/Object;
.source "Espresso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;
    }
.end annotation


# static fields
.field private static final BASE:Landroidx/test/espresso/BaseLayerComponent;

.field private static final OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Espresso"

.field private static final TIMEOUT_SECONDS:I = 0x5

.field private static final baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2
    invoke-static {}, Landroidx/test/espresso/GraphHolder;->baseLayer()Landroidx/test/espresso/BaseLayerComponent;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    .line 3
    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->idlingResourceRegistry()Landroidx/test/espresso/base/IdlingResourceRegistry;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 4
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v0

    const-string v1, "More options"

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->withContentDescription(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 5
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    const-string v2, "OverflowMenuButton"

    invoke-static {v2}, Lorg/hamcrest/Matchers;->endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->withClassName(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroidx/test/espresso/BaseLayerComponent;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    return-object v0
.end method

.method static synthetic access$200()Lorg/hamcrest/Matcher;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    return-object v0
.end method

.method public static closeSoftKeyboard()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->closeSoftKeyboard()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    return-void
.end method

.method public static getIdlingResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/espresso/IdlingResource;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-virtual {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->getResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static hasVirtualOverflowButton(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method static final synthetic lambda$waitUntilNextFrame$0$Espresso(Ljava/util/concurrent/CountDownLatch;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static final synthetic lambda$waitUntilNextFrame$1$Espresso(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroidx/test/espresso/Espresso$$Lambda$1;

    invoke-direct {v1, p0}, Landroidx/test/espresso/Espresso$$Lambda$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public static onData(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/DataInteraction;

    invoke-direct {v0, p0}, Landroidx/test/espresso/DataInteraction;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static onIdle(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 4
    new-instance v2, Landroidx/test/espresso/Espresso$1;

    invoke-direct {v2}, Landroidx/test/espresso/Espresso$1;-><init>()V

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-virtual {v2, v3, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->controlledLooper()Landroidx/test/internal/platform/os/ControlledLooper;

    move-result-object p0

    invoke-interface {p0}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 10
    :try_start_0
    invoke-virtual {v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->get()Ljava/lang/Object;

    .line 11
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/AppNotIdleException;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/AppNotIdleException;

    throw p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static onIdle()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/Espresso$2;

    invoke-direct {v0}, Landroidx/test/espresso/Espresso$2;-><init>()V

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onIdle(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public static onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/ViewInteraction;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    new-instance v1, Landroidx/test/espresso/ViewInteractionModule;

    invoke-direct {v1, p0}, Landroidx/test/espresso/ViewInteractionModule;-><init>(Lorg/hamcrest/Matcher;)V

    invoke-interface {v0, v1}, Landroidx/test/espresso/BaseLayerComponent;->plus(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/test/espresso/ViewInteractionComponent;->viewInteraction()Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    return-object p0
.end method

.method public static openActionBarOverflowOrOptionsMenu(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/Espresso;->waitUntilNextFrame(I)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-ge v1, v4, :cond_0

    .line 3
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressMenuKey()Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroidx/test/espresso/Espresso;->hasVirtualOverflowButton(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    new-instance v4, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;-><init>(Landroidx/test/espresso/Espresso$1;)V

    aput-object v4, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 6
    sget-object p0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressMenuKey()Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 8
    :goto_0
    invoke-static {v0}, Landroidx/test/espresso/Espresso;->waitUntilNextFrame(I)V

    return-void
.end method

.method public static openContextualActionModeOverflowMenu()V
    .locals 5

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/test/espresso/ViewAction;

    new-instance v3, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;-><init>(Landroidx/test/espresso/Espresso$1;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 2
    sget-object v0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressBack()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/action/ViewActions;->click(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    return-void
.end method

.method public static pressBack()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressBack()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    return-void
.end method

.method public static pressBackUnconditionally()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressBackUnconditionally()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    return-void
.end method

.method public static varargs registerIdlingResources([Landroidx/test/espresso/IdlingResource;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/test/espresso/IdlingRegistry;->register([Landroidx/test/espresso/IdlingResource;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 3
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingRegistry;->getResources()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/espresso/IdlingRegistry;->getLoopers()Ljava/util/Collection;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v0, v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return v1

    .line 5
    :cond_0
    array-length p0, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static registerLooperAsIdlingResource(Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/test/espresso/Espresso;->registerLooperAsIdlingResource(Landroid/os/Looper;Z)V

    return-void
.end method

.method public static registerLooperAsIdlingResource(Landroid/os/Looper;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/test/espresso/IdlingRegistry;->registerLooperAsIdlingResource(Landroid/os/Looper;)V

    .line 4
    sget-object p0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 5
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/espresso/IdlingRegistry;->getResources()Ljava/util/Collection;

    move-result-object p1

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingRegistry;->getLoopers()Ljava/util/Collection;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public static setFailureHandler(Landroidx/test/espresso/FailureHandler;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->failureHolder()Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    move-result-object v0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/FailureHandler;

    invoke-virtual {v0, p0}, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;->update(Landroidx/test/espresso/FailureHandler;)V

    return-void
.end method

.method public static varargs unregisterIdlingResources([Landroidx/test/espresso/IdlingResource;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/test/espresso/IdlingRegistry;->unregister([Landroidx/test/espresso/IdlingResource;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 3
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingRegistry;->getResources()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/espresso/IdlingRegistry;->getLoopers()Ljava/util/Collection;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v0, v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return v1

    .line 5
    :cond_0
    array-length p0, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static waitUntilNextFrame(I)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    new-instance v3, Landroidx/test/espresso/Espresso$$Lambda$0;

    invoke-direct {v3, v1}, Landroidx/test/espresso/Espresso$$Lambda$0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 7
    sget-object v2, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    invoke-interface {v2}, Landroidx/test/espresso/BaseLayerComponent;->controlledLooper()Landroidx/test/internal/platform/os/ControlledLooper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    const-wide/16 v2, 0x5

    .line 8
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :catch_0
    sget-object p0, Landroidx/test/espresso/Espresso;->TAG:Ljava/lang/String;

    const-string v0, "Waited for the next frame to start but never happened."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
