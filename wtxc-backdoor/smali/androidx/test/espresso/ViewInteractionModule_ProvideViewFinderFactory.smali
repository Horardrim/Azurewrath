.class public final Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;
.super Ljava/lang/Object;
.source "ViewInteractionModule_ProvideViewFinderFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/ViewFinder;",
        ">;"
    }
.end annotation


# instance fields
.field private final implProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ViewFinderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Landroidx/test/espresso/ViewInteractionModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/ViewInteractionModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewInteractionModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ViewFinderImpl;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;->implProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Landroidx/test/espresso/ViewInteractionModule;Ljavax/inject/Provider;)Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewInteractionModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ViewFinderImpl;",
            ">;)",
            "Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;-><init>(Landroidx/test/espresso/ViewInteractionModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideViewFinder(Landroidx/test/espresso/ViewInteractionModule;Landroidx/test/espresso/base/ViewFinderImpl;)Landroidx/test/espresso/ViewFinder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/test/espresso/ViewInteractionModule;->provideViewFinder(Landroidx/test/espresso/base/ViewFinderImpl;)Landroidx/test/espresso/ViewFinder;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/ViewFinder;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/ViewFinder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    iget-object v1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;->implProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/ViewFinderImpl;

    invoke-static {v0, v1}, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;->provideViewFinder(Landroidx/test/espresso/ViewInteractionModule;Landroidx/test/espresso/base/ViewFinderImpl;)Landroidx/test/espresso/ViewFinder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;->get()Landroidx/test/espresso/ViewFinder;

    move-result-object v0

    return-object v0
.end method
