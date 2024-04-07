.class public final Landroidx/test/espresso/base/RootViewPicker_Factory;
.super Ljava/lang/Object;
.source "RootViewPicker_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/RootViewPicker;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityLifecycleMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final controlledLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;"
        }
    .end annotation
.end field

.field private final needsActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rootResultFetcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private final uiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/UiController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/UiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->rootResultFetcherProvider:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->activityLifecycleMonitorProvider:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->needsActivityProvider:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->controlledLooperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootViewPicker_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/UiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;)",
            "Landroidx/test/espresso/base/RootViewPicker_Factory;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroidx/test/espresso/base/RootViewPicker_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/base/RootViewPicker_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroidx/test/espresso/UiController;Ljava/lang/Object;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)Landroidx/test/espresso/base/RootViewPicker;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/UiController;",
            "Ljava/lang/Object;",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ")",
            "Landroidx/test/espresso/base/RootViewPicker;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroidx/test/espresso/base/RootViewPicker;

    move-object v2, p1

    check-cast v2, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/base/RootViewPicker;-><init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)V

    return-object v6
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/RootViewPicker;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/UiController;

    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->rootResultFetcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->activityLifecycleMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->needsActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->controlledLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/test/espresso/base/RootViewPicker_Factory;->newInstance(Landroidx/test/espresso/UiController;Ljava/lang/Object;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)Landroidx/test/espresso/base/RootViewPicker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker_Factory;->get()Landroidx/test/espresso/base/RootViewPicker;

    move-result-object v0

    return-object v0
.end method
