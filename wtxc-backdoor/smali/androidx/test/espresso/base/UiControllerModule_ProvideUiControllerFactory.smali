.class public final Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;
.super Ljava/lang/Object;
.source "UiControllerModule_ProvideUiControllerFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/UiController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/base/UiControllerModule;

.field private final uiControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/UiControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/UiControllerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/UiControllerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/UiControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;->module:Landroidx/test/espresso/base/UiControllerModule;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;->uiControllerImplProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Landroidx/test/espresso/base/UiControllerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/UiControllerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/UiControllerImpl;",
            ">;)",
            "Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;-><init>(Landroidx/test/espresso/base/UiControllerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUiController(Landroidx/test/espresso/base/UiControllerModule;Ljava/lang/Object;)Landroidx/test/espresso/UiController;
    .locals 0

    .line 1
    check-cast p1, Landroidx/test/espresso/base/UiControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/UiControllerModule;->provideUiController(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/UiController;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/UiController;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/UiController;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;->module:Landroidx/test/espresso/base/UiControllerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;->uiControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;->provideUiController(Landroidx/test/espresso/base/UiControllerModule;Ljava/lang/Object;)Landroidx/test/espresso/UiController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerModule_ProvideUiControllerFactory;->get()Landroidx/test/espresso/UiController;

    move-result-object v0

    return-object v0
.end method
