.class Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Landroidx/test/espresso/base/IdlingResourceRegistry$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    return-void
.end method

.method private deregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$1000()Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$602(Landroidx/test/espresso/base/IdlingResourceRegistry;Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    return-void
.end method

.method private handleRaceCondition(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 2
    iget-boolean v1, v0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    .line 4
    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Resource %s isIdleNow() is returning true, but a message indicating that the resource has transitioned from busy to idle was never sent."

    .line 5
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private handleResourceIdled(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    .line 5
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$500(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    if-eqz v3, :cond_1

    .line 6
    iget-boolean v3, v5, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v4, :cond_0

    if-ne v5, p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 12
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$400()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring message from unregistered resource: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 15
    :try_start_0
    iget-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {p1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$600(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->allResourcesIdle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    .line 17
    throw p1

    :cond_5
    return-void
.end method

.method private handleTimeout()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$700(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$600(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->resourcesHaveTimedOut(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    .line 6
    throw v0
.end method

.method private handleTimeoutWarning()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$700(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroidx/test/espresso/IdlingPolicies;->getDynamicIdlingResourceWarningPolicy()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v2

    .line 5
    iget-object v3, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v3}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$600(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->resourcesStillBusyWarning(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 7
    invoke-static {v3}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 8
    invoke-virtual {v2}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeout()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 11
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleRaceCondition(Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleTimeoutWarning()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleTimeout()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleResourceIdled(Landroid/os/Message;)V

    :goto_0
    return v1
.end method
