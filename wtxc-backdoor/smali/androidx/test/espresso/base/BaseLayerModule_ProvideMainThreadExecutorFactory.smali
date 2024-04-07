.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideMainThreadExecutorFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Landroidx/test/espresso/base/BaseLayerModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->mainLooperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMainThreadExecutor(Landroidx/test/espresso/base/BaseLayerModule;Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/BaseLayerModule;->provideMainThreadExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->mainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->provideMainThreadExecutor(Landroidx/test/espresso/base/BaseLayerModule;Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
