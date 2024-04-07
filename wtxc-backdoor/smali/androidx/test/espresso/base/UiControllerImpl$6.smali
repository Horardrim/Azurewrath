.class Landroidx/test/espresso/base/UiControllerImpl$6;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/UiControllerImpl;->interruptEspressoTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/UiControllerImpl;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/UiControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$400(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$400(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->interruptInterrogation()V

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$200(Landroidx/test/espresso/base/UiControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-static {v1}, Landroidx/test/espresso/base/UiControllerImpl;->access$500(Landroidx/test/espresso/base/UiControllerImpl;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
