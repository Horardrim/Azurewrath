.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideActiveRootListerFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/ActiveRootLister;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/base/BaseLayerModule;

.field private final rootsOracleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootsOracle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootsOracle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->rootsOracleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootsOracle;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideActiveRootLister(Landroidx/test/espresso/base/BaseLayerModule;Ljava/lang/Object;)Landroidx/test/espresso/base/ActiveRootLister;
    .locals 0

    .line 1
    check-cast p1, Landroidx/test/espresso/base/RootsOracle;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/BaseLayerModule;->provideActiveRootLister(Landroidx/test/espresso/base/RootsOracle;)Landroidx/test/espresso/base/ActiveRootLister;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/ActiveRootLister;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/ActiveRootLister;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->rootsOracleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->provideActiveRootLister(Landroidx/test/espresso/base/BaseLayerModule;Ljava/lang/Object;)Landroidx/test/espresso/base/ActiveRootLister;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->get()Landroidx/test/espresso/base/ActiveRootLister;

    move-result-object v0

    return-object v0
.end method
