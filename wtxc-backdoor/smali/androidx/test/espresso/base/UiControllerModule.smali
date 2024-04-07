.class public Landroidx/test/espresso/base/UiControllerModule;
.super Ljava/lang/Object;
.source "UiControllerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideUiController(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/UiController;
    .locals 2

    const-class v0, Landroidx/test/platform/ui/UiController;

    .line 2
    invoke-static {v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleServiceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/platform/ui/UiController;

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;-><init>(Landroidx/test/platform/ui/UiController;Landroidx/test/espresso/base/UiControllerModule$1;)V

    return-object p1
.end method
