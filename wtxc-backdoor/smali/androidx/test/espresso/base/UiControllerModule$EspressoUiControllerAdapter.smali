.class Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;
.super Ljava/lang/Object;
.source "UiControllerModule.java"

# interfaces
.implements Landroidx/test/espresso/base/InterruptableUiController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EspressoUiControllerAdapter"
.end annotation


# instance fields
.field private final platformUiController:Landroidx/test/platform/ui/UiController;


# direct methods
.method private constructor <init>(Landroidx/test/platform/ui/UiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/platform/ui/UiController;Landroidx/test/espresso/base/UiControllerModule$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;-><init>(Landroidx/test/platform/ui/UiController;)V

    return-void
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1}, Landroidx/test/platform/ui/UiController;->injectKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/test/platform/ui/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1}, Landroidx/test/platform/ui/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/test/platform/ui/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public injectMotionEventSequence(Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/test/espresso/UiController$$CC;->injectMotionEventSequence$$dflt$$(Landroidx/test/espresso/UiController;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public injectString(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1}, Landroidx/test/platform/ui/UiController;->injectString(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/test/platform/ui/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public interruptEspressoTasks()V
    .locals 2

    const-string v0, "UiController"

    const-string v1, "interruptEspressoTasks called, no-op"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loopMainThreadForAtLeast(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1, p2}, Landroidx/test/platform/ui/UiController;->loopMainThreadForAtLeast(J)V

    return-void
.end method

.method public loopMainThreadUntilIdle()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0}, Landroidx/test/platform/ui/UiController;->loopMainThreadUntilIdle()V

    return-void
.end method
