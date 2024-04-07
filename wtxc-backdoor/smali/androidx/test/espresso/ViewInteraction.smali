.class public final Landroidx/test/espresso/ViewInteraction;
.super Ljava/lang/Object;
.source "ViewInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;,
        Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewInteraction"


# instance fields
.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private volatile failureHandler:Landroidx/test/espresso/FailureHandler;

.field private hasRootMatcher:Z

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final needsActivity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

.field private final remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

.field private final rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uiController:Landroidx/test/espresso/base/InterruptableUiController;

.field private final viewFinder:Landroidx/test/espresso/ViewFinder;

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/ViewFinder;Ljava/util/concurrent/Executor;Landroidx/test/espresso/FailureHandler;Lorg/hamcrest/Matcher;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/espresso/remote/RemoteInteraction;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;Landroidx/test/internal/platform/os/ControlledLooper;)V
    .locals 1
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation runtime Landroidx/test/espresso/base/MainThread;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/UiController;",
            "Landroidx/test/espresso/ViewFinder;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/test/espresso/FailureHandler;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/test/espresso/remote/RemoteInteraction;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/test/espresso/ViewInteraction;->hasRootMatcher:Z

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/test/espresso/ViewFinder;

    iput-object p2, p0, Landroidx/test/espresso/ViewInteraction;->viewFinder:Landroidx/test/espresso/ViewFinder;

    .line 4
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/InterruptableUiController;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    .line 5
    invoke-static {p4}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/FailureHandler;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    .line 6
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p5}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 8
    invoke-static {p6}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-static {p7}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-static {p8}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/remote/RemoteInteraction;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    .line 11
    invoke-static {p9}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    .line 12
    invoke-static {p10}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/espresso/ViewInteraction;->doPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/ViewInteraction;)Landroidx/test/espresso/base/InterruptableUiController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/ViewInteraction;)Landroidx/test/espresso/ViewFinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/ViewInteraction;->viewFinder:Landroidx/test/espresso/ViewFinder;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/ViewInteraction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/test/espresso/ViewInteraction;)Lorg/hamcrest/Matcher;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method private desugaredPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    .locals 8

    .line 1
    new-instance v0, Landroidx/test/espresso/ViewInteraction$1;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/ViewInteraction$1;-><init>(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V

    .line 2
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getInnerViewAction()Landroidx/test/espresso/ViewAction;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0, v0}, Landroidx/test/espresso/ViewInteraction;->postAsynchronouslyOnUiThread(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    invoke-interface {v0}, Landroidx/test/espresso/remote/RemoteInteraction;->isRemoteProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iget-object v3, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    iget-object v4, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/hamcrest/Matcher;

    iget-object v5, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/test/espresso/ViewAction;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 p1, 0x1

    aput-object v1, v6, p1

    .line 8
    invoke-static {v6}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromViewActions([Landroidx/test/espresso/ViewAction;)Ljava/util/Map;

    move-result-object v6

    new-array p1, p1, [Landroidx/test/espresso/ViewAction;

    aput-object v1, p1, v7

    .line 9
    invoke-interface {v3, v4, v5, v6, p1}, Landroidx/test/espresso/remote/RemoteInteraction;->createRemotePerformCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;[Landroidx/test/espresso/ViewAction;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 6
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    invoke-direct {p0, v2}, Landroidx/test/espresso/ViewInteraction;->waitForAndHandleInteractionResults(Ljava/util/List;)V

    return-void
.end method

.method private doPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hamcrest/Matcher;

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-interface {v1}, Landroidx/test/espresso/base/InterruptableUiController;->loopMainThreadUntilIdle()V

    .line 4
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->viewFinder:Landroidx/test/espresso/ViewFinder;

    invoke-interface {v1}, Landroidx/test/espresso/ViewFinder;->getView()Landroid/view/View;

    move-result-object v1

    .line 5
    sget-object v2, Landroidx/test/espresso/ViewInteraction;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Performing \'%s\' action on view %s"

    .line 7
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Lorg/hamcrest/StringDescription;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action will not be performed because the target view does not match one or more of the following constraints:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/hamcrest/StringDescription;-><init>(Ljava/lang/Appendable;)V

    .line 10
    invoke-interface {v0, v2}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    const-string v0, "\nTarget view: "

    .line 12
    invoke-virtual {v2, v0}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    .line 13
    invoke-static {v1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 14
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getInnerViewAction()Landroidx/test/espresso/ViewAction;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/action/ScrollToAction;

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/AdapterView;

    .line 15
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDescendantOfA(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\nFurther Info: ScrollToAction on a view inside an AdapterView will not work. Use Espresso.onData to load the view."

    .line 16
    invoke-virtual {v2, v0}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 17
    :cond_0
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    invoke-virtual {v2}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-virtual {p1, v0, v1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    return-void
.end method

.method private static varargs getBindables([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroidx/test/espresso/remote/Bindable;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    instance-of v4, v3, Landroidx/test/espresso/remote/Bindable;

    if-eqz v4, :cond_0

    .line 4
    check-cast v3, Landroidx/test/espresso/remote/Bindable;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getIBindersFromBindables(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/remote/Bindable;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/remote/Bindable;

    .line 3
    invoke-interface {v1}, Landroidx/test/espresso/remote/Bindable;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bindable id cannot be null!"

    invoke-static {v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Landroidx/test/espresso/remote/Bindable;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "Bindable binder cannot be null!"

    invoke-static {v1, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getIBindersFromViewActions([Landroidx/test/espresso/ViewAction;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/test/espresso/ViewAction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getBindables([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromBindables(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getIBindersFromViewAssertions([Landroidx/test/espresso/ViewAssertion;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/test/espresso/ViewAssertion;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getBindables([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromBindables(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private postAsynchronouslyOnUiThread(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method private waitForAndHandleInteractionResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-interface {v0}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/InteractionResultsHandler;->gatherAnyResult(Ljava/util/List;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iget-object p1, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-interface {p1}, Landroidx/test/espresso/base/InterruptableUiController;->interruptEspressoTasks()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/FailureHandler;->handle(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/FailureHandler;->handle(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3
    :goto_1
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-interface {v0}, Landroidx/test/espresso/base/InterruptableUiController;->interruptEspressoTasks()V

    .line 6
    throw p1
.end method


# virtual methods
.method public check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;
    .locals 8

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;-><init>(Landroidx/test/espresso/ViewAssertion;Landroidx/test/espresso/ViewInteraction$1;)V

    .line 3
    new-instance v1, Landroidx/test/espresso/ViewInteraction$2;

    invoke-direct {v1, p0, p1, v0}, Landroidx/test/espresso/ViewInteraction$2;-><init>(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewAssertion;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-direct {p0, v1}, Landroidx/test/espresso/ViewInteraction;->postAsynchronouslyOnUiThread(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    invoke-interface {v1}, Landroidx/test/espresso/remote/RemoteInteraction;->isRemoteProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iget-object v3, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    iget-object v4, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/hamcrest/Matcher;

    iget-object v5, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/test/espresso/ViewAssertion;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object p1, v6, v0

    .line 9
    invoke-static {v6}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromViewAssertions([Landroidx/test/espresso/ViewAssertion;)Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v3, v4, v5, v0, p1}, Landroidx/test/espresso/remote/RemoteInteraction;->createRemoteCheckCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;Landroidx/test/espresso/ViewAssertion;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 11
    invoke-interface {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 7
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    invoke-direct {p0, v2}, Landroidx/test/espresso/ViewInteraction;->waitForAndHandleInteractionResults(Ljava/util/List;)V

    return-object p0
.end method

.method public inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;)",
            "Landroidx/test/espresso/ViewInteraction;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/test/espresso/ViewInteraction;->hasRootMatcher:Z

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public noActivity()Landroidx/test/espresso/ViewInteraction;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/test/espresso/ViewInteraction;->hasRootMatcher:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/test/espresso/matcher/RootMatchers;->DEFAULT:Lorg/hamcrest/Matcher;

    .line 3
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->hasWindowLayoutParams()Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->isSystemAlertWindow()Lorg/hamcrest/Matcher;

    move-result-object v3

    .line 4
    invoke-static {v2, v3}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    new-instance v3, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;

    iget-object v4, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;-><init>(Landroidx/test/espresso/ViewAction;Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewInteraction$1;)V

    .line 4
    invoke-direct {p0, v3}, Landroidx/test/espresso/ViewInteraction;->desugaredPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withFailureHandler(Landroidx/test/espresso/FailureHandler;)Landroidx/test/espresso/ViewInteraction;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/FailureHandler;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    return-object p0
.end method
