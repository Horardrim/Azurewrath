.class Landroidx/test/espresso/base/UiControllerImpl$4;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/UiControllerImpl;->injectMotionEventSequence(Ljava/lang/Iterable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/UiControllerImpl;

.field final synthetic val$mei:Ljava/util/Iterator;

.field final synthetic val$shift:J


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/Iterator;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    iput-object p2, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->val$mei:Ljava/util/Iterator;

    iput-wide p3, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->val$shift:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->val$mei:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->val$mei:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->val$shift:J

    add-long/2addr v2, v4

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 7
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 8
    :cond_0
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->val$mei:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-static {v2}, Landroidx/test/espresso/base/UiControllerImpl;->access$100(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/EventInjector;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/test/espresso/base/EventInjector;->injectMotionEventAsync(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl$4;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-static {v2}, Landroidx/test/espresso/base/UiControllerImpl;->access$100(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/EventInjector;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/test/espresso/base/EventInjector;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    and-int/2addr v0, v1

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
