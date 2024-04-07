.class Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource$ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdlingState"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field idle:Z

.field final resource:Landroidx/test/espresso/IdlingResource;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/IdlingResource;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/IdlingResource;Landroid/os/Handler;Landroidx/test/espresso/base/IdlingResourceRegistry$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;-><init>(Landroidx/test/espresso/IdlingResource;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->registerSelf()V

    return-void
.end method

.method private registerSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v0, p0}, Landroidx/test/espresso/IdlingResource;->registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource;->isIdleNow()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    return-void
.end method


# virtual methods
.method public onTransitionToIdle()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
