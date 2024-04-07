.class final Lrxhttp/ObservableCallExecute;
.super Lrxhttp/ObservableCall;
.source "ObservableCallExecute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrxhttp/ObservableCallExecute$HttpDisposable;
    }
.end annotation


# instance fields
.field private callFactory:Lrxhttp/wrapper/CallFactory;

.field private callbackUploadProgress:Z


# direct methods
.method constructor <init>(Lrxhttp/wrapper/CallFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lrxhttp/ObservableCallExecute;-><init>(Lrxhttp/wrapper/CallFactory;Z)V

    return-void
.end method

.method constructor <init>(Lrxhttp/wrapper/CallFactory;Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lrxhttp/ObservableCall;-><init>()V

    .line 31
    iput-object p1, p0, Lrxhttp/ObservableCallExecute;->callFactory:Lrxhttp/wrapper/CallFactory;

    .line 32
    iput-boolean p2, p0, Lrxhttp/ObservableCallExecute;->callbackUploadProgress:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lrxhttp/ObservableCallExecute$HttpDisposable;

    iget-object v1, p0, Lrxhttp/ObservableCallExecute;->callFactory:Lrxhttp/wrapper/CallFactory;

    iget-boolean v2, p0, Lrxhttp/ObservableCallExecute;->callbackUploadProgress:Z

    invoke-direct {v0, p1, v1, v2}, Lrxhttp/ObservableCallExecute$HttpDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;Lrxhttp/wrapper/CallFactory;Z)V

    .line 38
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 39
    invoke-virtual {v0}, Lrxhttp/ObservableCallExecute$HttpDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {v0}, Lrxhttp/ObservableCallExecute$HttpDisposable;->run()V

    return-void
.end method
