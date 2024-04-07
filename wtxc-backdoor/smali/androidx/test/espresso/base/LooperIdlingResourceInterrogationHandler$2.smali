.class Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;
.super Ljava/lang/Object;
.source "LooperIdlingResourceInterrogationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->forLooper(Landroid/os/Looper;)Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->access$002(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;Landroid/os/MessageQueue;)Landroid/os/MessageQueue;

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->access$102(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;Z)Z

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    invoke-static {v0}, Landroidx/test/espresso/base/Interrogator;->loopAndInterrogate(Landroidx/test/espresso/base/Interrogator$InterrogationHandler;)Ljava/lang/Object;

    return-void
.end method
