.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideLifecycleMonitorFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/base/BaseLayerModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;)V

    return-object v0
.end method

.method public static provideLifecycleMonitor(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule;->provideLifecycleMonitor()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    invoke-static {v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;->provideLifecycleMonitor(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideLifecycleMonitorFactory;->get()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    return-object v0
.end method
