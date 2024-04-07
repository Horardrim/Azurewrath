.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideMainLooperFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/os/Looper;",
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
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;)V

    return-object v0
.end method

.method public static provideMainLooper(Landroidx/test/espresso/base/BaseLayerModule;)Landroid/os/Looper;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule;->provideMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    invoke-static {v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;->provideMainLooper(Landroidx/test/espresso/base/BaseLayerModule;)Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainLooperFactory;->get()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
