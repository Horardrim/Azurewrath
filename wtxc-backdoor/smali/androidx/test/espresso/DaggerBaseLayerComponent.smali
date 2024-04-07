.class public final Landroidx/test/espresso/DaggerBaseLayerComponent;
.super Ljava/lang/Object;
.source "DaggerBaseLayerComponent.java"

# interfaces
.implements Landroidx/test/espresso/BaseLayerComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;,
        Landroidx/test/espresso/DaggerBaseLayerComponent$Builder;
    }
.end annotation


# instance fields
.field private final baseLayerModule:Landroidx/test/espresso/base/BaseLayerModule;

.field private failureHandlerHolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private idlingResourceRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private provideActiveRootListerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            ">;"
        }
    .end annotation
.end field

.field private provideCompatAsyncTaskMonitorProvider:Ljavax/inject/Provider;

.field private provideControlledLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultFailureHanderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/DefaultFailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideDynamicNotiferProvider:Ljavax/inject/Provider;

.field private provideEventInjectorProvider:Ljavax/inject/Provider;

.field private provideFailureHanderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideLifecycleMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainThreadExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideRemoteExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkAsyncTaskMonitorProvider:Ljavax/inject/Provider;

.field private provideTargetContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/UiController;",
            ">;"
        }
    .end annotation
.end field

.field private rootsOracleProvider:Ljavax/inject/Provider;

.field private threadPoolExecutorExtractorProvider:Ljavax/inject/Provider;

.field private uiControllerImplProvider:Ljavax/inject/Provider;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/UiControllerModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->baseLayerModule:Landroidx/test/espresso/base/BaseLayerModule;

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/DaggerBaseLayerComponent;->initialize(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/UiControllerModule;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/UiControllerModule;Landroidx/test/espresso/DaggerBaseLayerComponent$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/DaggerBaseLayerComponent;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/UiControllerModule;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideActiveRootListerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideUiControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideLifecycleMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideControlledLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainThreadExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideRemoteExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Landroidx/test/espresso/DaggerBaseLayerComponent$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/DaggerBaseLayerComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/DaggerBaseLayerComponent$Builder;-><init>(Landroidx/test/espresso/DaggerBaseLayerComponent$1;)V

    return-object v0
.end method

.method public static create()Landroidx/test/espresso/BaseLayerComponent;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/DaggerBaseLayerComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/DaggerBaseLayerComponent$Builder;-><init>(Landroidx/test/espresso/DaggerBaseLayerComponent$1;)V

    invoke-virtual {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent$Builder;->build()Landroidx/test/espresso/BaseLayerComponent;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/UiControllerModule;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideTargetContextProvider:Ljavax/inject/Provider;

    .line 2
    invoke-static {p1, v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideDefaultFailureHanderProvider:Ljavax/inject/Provider;

    .line 3
    invoke-static {p1, v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHanderFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHanderFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideFailureHanderProvider:Ljavax/inject/Provider;

    .line 4
    invoke-static {v0}, Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;->create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->failureHandlerHolderProvider:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 6
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry_Factory;->create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/IdlingResourceRegistry_Factory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->idlingResourceRegistryProvider:Ljavax/inject/Provider;

    .line 7
    invoke-static {p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideEventInjectorFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideEventInjectorFactory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideEventInjectorProvider:Ljavax/inject/Provider;

    .line 8
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;->create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->threadPoolExecutorExtractorProvider:Ljavax/inject/Provider;

    .line 9
    invoke-static {p1, v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideSdkAsyncTaskMonitorFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideSdkAsyncTaskMonitorFactory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideSdkAsyncTaskMonitorProvider:Ljavax/inject/Provider;

    .line 10
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->threadPoolExecutorExtractorProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideCompatAsyncTaskMonitorFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideCompatAsyncTaskMonitorFactory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideCompatAsyncTaskMonitorProvider:Ljavax/inject/Provider;

    .line 11
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->idlingResourceRegistryProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;

    move-result-object v4

    iput-object v4, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideDynamicNotiferProvider:Ljavax/inject/Provider;

    .line 12
    iget-object v1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideEventInjectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideSdkAsyncTaskMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideCompatAsyncTaskMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->idlingResourceRegistryProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v6}, Landroidx/test/espresso/base/UiControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/UiControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->uiControllerImplProvider:Ljavax/inject/Provider;

    .line 13
    invoke-static {p2, v0}, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;->create(Landroidx/test/espresso/base/UiControllerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;

    move-result-object p2

    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideUiControllerProvider:Ljavax/inject/Provider;

    .line 14
    iget-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;

    move-result-object p2

    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainThreadExecutorProvider:Ljavax/inject/Provider;

    .line 15
    invoke-static {p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideControlledLooperFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideControlledLooperFactory;

    move-result-object p2

    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideControlledLooperProvider:Ljavax/inject/Provider;

    .line 16
    iget-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Landroidx/test/espresso/base/RootsOracle_Factory;->create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootsOracle_Factory;

    move-result-object p2

    iput-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->rootsOracleProvider:Ljavax/inject/Provider;

    .line 17
    invoke-static {p1, p2}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;

    move-result-object p2

    iput-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideActiveRootListerProvider:Ljavax/inject/Provider;

    .line 18
    invoke-static {p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;

    move-result-object p2

    iput-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideLifecycleMonitorProvider:Ljavax/inject/Provider;

    .line 19
    invoke-static {p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideRemoteExecutorFactory;->create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideRemoteExecutorFactory;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideRemoteExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private rootsOracle()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0}, Landroidx/test/espresso/base/RootsOracle_Factory;->newInstance(Landroid/os/Looper;)Landroidx/test/espresso/base/RootsOracle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activeRootLister()Landroidx/test/espresso/base/ActiveRootLister;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->baseLayerModule:Landroidx/test/espresso/base/BaseLayerModule;

    invoke-direct {p0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->rootsOracle()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->provideActiveRootLister(Landroidx/test/espresso/base/BaseLayerModule;Ljava/lang/Object;)Landroidx/test/espresso/base/ActiveRootLister;

    move-result-object v0

    return-object v0
.end method

.method public controlledLooper()Landroidx/test/internal/platform/os/ControlledLooper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideControlledLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/os/ControlledLooper;

    return-object v0
.end method

.method public failureHandler()Landroidx/test/espresso/FailureHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->baseLayerModule:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->failureHandlerHolderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;->provideFailureHandler(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;)Landroidx/test/espresso/FailureHandler;

    move-result-object v0

    return-object v0
.end method

.method public failureHolder()Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->failureHandlerHolderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    return-object v0
.end method

.method public idlingResourceRegistry()Landroidx/test/espresso/base/IdlingResourceRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->idlingResourceRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/IdlingResourceRegistry;

    return-object v0
.end method

.method public mainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainThreadExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public plus(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionComponent;
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;-><init>(Landroidx/test/espresso/DaggerBaseLayerComponent;Landroidx/test/espresso/ViewInteractionModule;Landroidx/test/espresso/DaggerBaseLayerComponent$1;)V

    return-object v0
.end method

.method public uiController()Landroidx/test/espresso/UiController;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent;->provideUiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/UiController;

    return-object v0
.end method
