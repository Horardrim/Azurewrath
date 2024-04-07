.class public final Landroidx/test/espresso/base/RootViewPicker;
.super Ljava/lang/Object;
.source "RootViewPicker.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/RootViewPicker$RootViewWithoutFocusException;,
        Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;,
        Landroidx/test/espresso/base/RootViewPicker$NoMatchingRootBackoff;,
        Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;,
        Landroidx/test/espresso/base/RootViewPicker$BackOff;,
        Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;,
        Landroidx/test/espresso/base/RootViewPicker$RootResults;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUMED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RootViewPicker"


# instance fields
.field private final activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private final needsActivity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

.field private final uiController:Landroidx/test/espresso/UiController;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x96

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker;->CREATED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    const/16 v0, 0x64

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x7530

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker;->RESUMED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/UiController;",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker;->rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    .line 4
    iput-object p3, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    .line 5
    iput-object p4, p0, Landroidx/test/espresso/base/RootViewPicker;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    iput-object p5, p0, Landroidx/test/espresso/base/RootViewPicker;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAllActiveActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->RESTARTED:Landroidx/test/runner/lifecycle/Stage;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/Stage;

    .line 3
    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    invoke-interface {v3, v2}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private pickARoot()Landroidx/test/espresso/Root;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->fetch()Landroidx/test/espresso/base/RootViewPicker$RootResults;

    move-result-object v2

    .line 3
    new-instance v3, Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;

    invoke-direct {v3}, Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;-><init>()V

    .line 4
    new-instance v4, Landroidx/test/espresso/base/RootViewPicker$NoMatchingRootBackoff;

    invoke-direct {v4}, Landroidx/test/espresso/base/RootViewPicker$NoMatchingRootBackoff;-><init>()V

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gtz v5, :cond_3

    .line 6
    sget-object v5, Landroidx/test/espresso/base/RootViewPicker$1;->$SwitchMap$androidx$test$espresso$base$RootViewPicker$RootResults$State:[I

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getState()Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v2, 0x2

    if-eq v5, v2, :cond_1

    const/4 v2, 0x3

    if-eq v5, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-virtual {v4}, Landroidx/test/espresso/base/RootViewPicker$BackOff;->getNextBackoffInMillis()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-virtual {v3}, Landroidx/test/espresso/base/RootViewPicker$BackOff;->getNextBackoffInMillis()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 8
    :goto_1
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->fetch()Landroidx/test/espresso/base/RootViewPicker$RootResults;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getPickedRoot()Landroidx/test/espresso/Root;

    move-result-object v0

    return-object v0

    .line 12
    :cond_3
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getState()Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 13
    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getPickedRoot()Landroidx/test/espresso/Root;

    move-result-object v0

    return-object v0

    .line 14
    :cond_4
    invoke-static {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->access$100(Landroidx/test/espresso/base/RootViewPicker$RootResults;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->access$200(Landroidx/test/espresso/base/RootViewPicker$RootResults;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/NoMatchingRootException;->create(Lorg/hamcrest/Matcher;Ljava/util/List;)Landroidx/test/espresso/NoMatchingRootException;

    move-result-object v0

    throw v0
.end method

.method private pickRootView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->pickARoot()Landroidx/test/espresso/Root;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/espresso/base/RootViewPicker;->waitForRootToBeReady(Landroidx/test/espresso/Root;)Landroidx/test/espresso/Root;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/Root;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private waitForAtLeastOneActivityToBeResumed()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    .line 2
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-interface {v0}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 5
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->getAllActiveActivities()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "ms for one to appear."

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Landroidx/test/espresso/base/RootViewPicker;->CREATED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    .line 10
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x48

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "No activities found - waiting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-interface {v0, v3, v4}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 12
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->getAllActiveActivities()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 14
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker;->RESUMED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    .line 17
    sget-object v1, Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x52

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "No activity currently resumed - waiting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-interface {v1, v3, v4}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 19
    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    sget-object v3, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v1, v3}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 22
    :cond_4
    new-instance v0, Landroidx/test/espresso/NoActivityResumedException;

    const-string v1, "No activities in stage RESUMED. Did you forget to launch the activity. (test.getActivity() or similar)?"

    invoke-direct {v0, v1}, Landroidx/test/espresso/NoActivityResumedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    new-instance v0, Landroidx/test/espresso/NoActivityResumedException;

    const-string v1, "No activities found. Did you forget to launch the activity by calling getActivity() or startActivitySync or similar?"

    invoke-direct {v0, v1}, Landroidx/test/espresso/NoActivityResumedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method private waitForRootToBeReady(Landroidx/test/espresso/Root;)Landroidx/test/espresso/Root;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    new-instance v2, Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;

    invoke-direct {v2}, Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;-><init>()V

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/test/espresso/Root;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/test/internal/platform/os/ControlledLooper;->simulateWindowFocus(Landroid/view/View;)V

    .line 6
    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$BackOff;->getNextBackoffInMillis()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootViewWithoutFocusException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Waited for the root of the view hierarchy to have window focus and not request layout for 10 seconds. If you specified a non default root matcher, it may be picking a root that never takes focus. Root:\n%s"

    .line 9
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/espresso/base/RootViewPicker$RootViewWithoutFocusException;-><init>(Ljava/lang/String;Landroidx/test/espresso/base/RootViewPicker$1;)V

    throw v0
.end method


# virtual methods
.method public get()Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "must be called on main thread."

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->waitForAtLeastOneActivityToBeResumed()V

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->pickRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker;->get()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
