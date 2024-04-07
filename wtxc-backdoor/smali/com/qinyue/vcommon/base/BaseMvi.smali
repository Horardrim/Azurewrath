.class public abstract Lcom/qinyue/vcommon/base/BaseMvi;
.super Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;
.source "BaseMvi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qinyue/vcommon/base/BaseEvent;",
        ">",
        "Lcom/kunminx/architecture/domain/dispatch/MviDispatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mScope:Lcom/rxjava/rxlife/BaseScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/rxjava/rxlife/BaseScope;

    invoke-direct {v0, p1}, Lcom/rxjava/rxlife/BaseScope;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/qinyue/vcommon/base/BaseMvi;->mScope:Lcom/rxjava/rxlife/BaseScope;

    .line 22
    invoke-super {p0, p1}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setResult(Lcom/qinyue/vcommon/base/BaseEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    iget v0, p1, Lcom/qinyue/vcommon/base/BaseEvent;->eventId:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 27
    iget-object p1, p1, Lcom/qinyue/vcommon/base/BaseEvent;->result:Ljava/lang/Object;

    check-cast p1, Lcom/qinyue/vcommon/base/BaseResult;

    iget-object p1, p1, Lcom/qinyue/vcommon/base/BaseResult;->errorInfo:Lcom/qinyue/vcommon/http/ErrorInfo;

    invoke-virtual {p1}, Lcom/qinyue/vcommon/http/ErrorInfo;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/base/BaseMvi;->sendResult(Lcom/kunminx/architecture/domain/event/Event;)V

    return-void
.end method
