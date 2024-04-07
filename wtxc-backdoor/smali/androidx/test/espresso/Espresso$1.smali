.class Landroidx/test/espresso/Espresso$1;
.super Ljava/lang/Object;
.source "Espresso.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/Espresso;->onIdle(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/test/espresso/Espresso;->access$100()Landroidx/test/espresso/BaseLayerComponent;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->uiController()Landroidx/test/espresso/UiController;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    return-void
.end method
