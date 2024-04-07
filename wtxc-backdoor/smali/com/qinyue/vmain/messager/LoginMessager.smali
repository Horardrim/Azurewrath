.class public Lcom/qinyue/vmain/messager/LoginMessager;
.super Lcom/qinyue/vcommon/base/BaseMvi;
.source "LoginMessager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qinyue/vcommon/base/BaseMvi<",
        "Lcom/qinyue/vmain/event/LoginEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseMvi;-><init>()V

    return-void
.end method

.method private toLogin(Lcom/qinyue/vmain/event/LoginEvent;)V
    .locals 4

    .line 55
    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object v0, v0, Lcom/qinyue/vmain/event/LoginEvent$Param;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object v0, v0, Lcom/qinyue/vmain/event/LoginEvent$Param;->pwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object v0, v0, Lcom/qinyue/vmain/event/LoginEvent$Param;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast p1, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object p1, p1, Lcom/qinyue/vmain/event/LoginEvent$Param;->pwd:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/qinyue/vmain/http/MainHttpWrapper;->toLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/qinyue/vmain/messager/LoginMessager;->mScope:Lcom/rxjava/rxlife/BaseScope;

    .line 62
    invoke-static {v0}, Lcom/rxjava/rxlife/RxLife;->toMain(Lcom/rxjava/rxlife/Scope;)Lcom/rxjava/rxlife/RxConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->to(Lio/reactivex/rxjava3/core/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rxjava/rxlife/ObservableLife;

    new-instance v0, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda2;-><init>(Lcom/qinyue/vmain/messager/LoginMessager;)V

    new-instance v1, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda0;-><init>(Lcom/qinyue/vmain/messager/LoginMessager;)V

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/rxjava/rxlife/ObservableLife;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    .line 56
    :cond_1
    :goto_0
    new-instance p1, Lcom/qinyue/vmain/event/LoginEvent;

    const/16 v0, -0x64

    invoke-direct {p1, v0}, Lcom/qinyue/vmain/event/LoginEvent;-><init>(I)V

    .line 57
    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->result:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Result;

    new-instance v1, Lcom/qinyue/vcommon/http/ErrorInfo;

    const/4 v2, 0x1

    const-string v3, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u8d26\u53f7\u6216\u5bc6\u7801"

    invoke-direct {v1, v2, v3}, Lcom/qinyue/vcommon/http/ErrorInfo;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lcom/qinyue/vmain/event/LoginEvent$Result;->errorInfo:Lcom/qinyue/vcommon/http/ErrorInfo;

    .line 58
    invoke-virtual {p0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->setResult(Lcom/qinyue/vcommon/base/BaseEvent;)V

    return-void
.end method

.method private toRegister(Lcom/qinyue/vmain/event/LoginEvent;)V
    .locals 4

    .line 36
    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object v0, v0, Lcom/qinyue/vmain/event/LoginEvent$Param;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object v0, v0, Lcom/qinyue/vmain/event/LoginEvent$Param;->pwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object v0, v0, Lcom/qinyue/vmain/event/LoginEvent$Param;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    check-cast p1, Lcom/qinyue/vmain/event/LoginEvent$Param;

    iget-object p1, p1, Lcom/qinyue/vmain/event/LoginEvent$Param;->pwd:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/qinyue/vmain/http/MainHttpWrapper;->toRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/qinyue/vmain/messager/LoginMessager;->mScope:Lcom/rxjava/rxlife/BaseScope;

    .line 43
    invoke-static {v0}, Lcom/rxjava/rxlife/RxLife;->toMain(Lcom/rxjava/rxlife/Scope;)Lcom/rxjava/rxlife/RxConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->to(Lio/reactivex/rxjava3/core/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rxjava/rxlife/ObservableLife;

    new-instance v0, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda3;-><init>(Lcom/qinyue/vmain/messager/LoginMessager;)V

    new-instance v1, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda1;-><init>(Lcom/qinyue/vmain/messager/LoginMessager;)V

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/rxjava/rxlife/ObservableLife;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    .line 37
    :cond_1
    :goto_0
    new-instance p1, Lcom/qinyue/vmain/event/LoginEvent;

    const/16 v0, -0x64

    invoke-direct {p1, v0}, Lcom/qinyue/vmain/event/LoginEvent;-><init>(I)V

    .line 38
    iget-object v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->result:Ljava/lang/Object;

    check-cast v0, Lcom/qinyue/vmain/event/LoginEvent$Result;

    new-instance v1, Lcom/qinyue/vcommon/http/ErrorInfo;

    const/4 v2, 0x1

    const-string v3, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u8d26\u53f7\u6216\u5bc6\u7801"

    invoke-direct {v1, v2, v3}, Lcom/qinyue/vcommon/http/ErrorInfo;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lcom/qinyue/vmain/event/LoginEvent$Result;->errorInfo:Lcom/qinyue/vcommon/http/ErrorInfo;

    .line 39
    invoke-virtual {p0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->setResult(Lcom/qinyue/vcommon/base/BaseEvent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic input(Lcom/kunminx/architecture/domain/event/Event;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/qinyue/vmain/event/LoginEvent;

    invoke-virtual {p0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->input(Lcom/qinyue/vmain/event/LoginEvent;)V

    return-void
.end method

.method public input(Lcom/qinyue/vmain/event/LoginEvent;)V
    .locals 2

    .line 23
    iget v0, p1, Lcom/qinyue/vmain/event/LoginEvent;->eventId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->toRegister(Lcom/qinyue/vmain/event/LoginEvent;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->toLogin(Lcom/qinyue/vmain/event/LoginEvent;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$toLogin$2$com-qinyue-vmain-messager-LoginMessager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    new-instance p1, Lcom/qinyue/vmain/event/LoginEvent;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/qinyue/vmain/event/LoginEvent;-><init>(I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->setResult(Lcom/qinyue/vcommon/base/BaseEvent;)V

    return-void
.end method

.method synthetic lambda$toLogin$3$com-qinyue-vmain-messager-LoginMessager(Lcom/qinyue/vcommon/http/ErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/qinyue/vmain/event/LoginEvent;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Lcom/qinyue/vmain/event/LoginEvent;-><init>(I)V

    .line 68
    iget-object v1, v0, Lcom/qinyue/vmain/event/LoginEvent;->result:Ljava/lang/Object;

    check-cast v1, Lcom/qinyue/vmain/event/LoginEvent$Result;

    iput-object p1, v1, Lcom/qinyue/vmain/event/LoginEvent$Result;->errorInfo:Lcom/qinyue/vcommon/http/ErrorInfo;

    .line 69
    invoke-virtual {p0, v0}, Lcom/qinyue/vmain/messager/LoginMessager;->setResult(Lcom/qinyue/vcommon/base/BaseEvent;)V

    return-void
.end method

.method synthetic lambda$toRegister$0$com-qinyue-vmain-messager-LoginMessager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    new-instance p1, Lcom/qinyue/vmain/event/LoginEvent;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/qinyue/vmain/event/LoginEvent;-><init>(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->setResult(Lcom/qinyue/vcommon/base/BaseEvent;)V

    return-void
.end method

.method synthetic lambda$toRegister$1$com-qinyue-vmain-messager-LoginMessager(Lcom/qinyue/vcommon/http/ErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/qinyue/vmain/event/LoginEvent;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Lcom/qinyue/vmain/event/LoginEvent;-><init>(I)V

    .line 49
    iget-object v1, v0, Lcom/qinyue/vmain/event/LoginEvent;->result:Ljava/lang/Object;

    check-cast v1, Lcom/qinyue/vmain/event/LoginEvent$Result;

    iput-object p1, v1, Lcom/qinyue/vmain/event/LoginEvent$Result;->errorInfo:Lcom/qinyue/vcommon/http/ErrorInfo;

    .line 50
    invoke-virtual {p0, v0}, Lcom/qinyue/vmain/messager/LoginMessager;->setResult(Lcom/qinyue/vcommon/base/BaseEvent;)V

    return-void
.end method
