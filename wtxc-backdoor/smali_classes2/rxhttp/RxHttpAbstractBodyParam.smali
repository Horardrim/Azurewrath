.class public Lrxhttp/RxHttpAbstractBodyParam;
.super Lrxhttp/RxHttp;
.source "RxHttpAbstractBodyParam.java"

# interfaces
.implements Lrxhttp/wrapper/BodyParamFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lrxhttp/wrapper/param/AbstractBodyParam<",
        "TP;>;R:",
        "Lrxhttp/RxHttpAbstractBodyParam<",
        "TP;TR;>;>",
        "Lrxhttp/RxHttp<",
        "TP;TR;>;",
        "Lrxhttp/wrapper/BodyParamFactory;"
    }
.end annotation


# instance fields
.field private observeOnScheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrxhttp/wrapper/param/AbstractBodyParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lrxhttp/RxHttp;-><init>(Lrxhttp/wrapper/param/Param;)V

    return-void
.end method


# virtual methods
.method public final asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lrxhttp/RxHttpAbstractBodyParam;->observeOnScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v1, p0, Lrxhttp/RxHttpAbstractBodyParam;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p0, p1, v0, v1}, Lrxhttp/RxHttpAbstractBodyParam;->asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lrxhttp/RxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    iget-boolean v0, p0, Lrxhttp/RxHttpAbstractBodyParam;->isAsync:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lrxhttp/ObservableCallEnqueue;

    invoke-direct {v0, p0, v1}, Lrxhttp/ObservableCallEnqueue;-><init>(Lrxhttp/wrapper/CallFactory;Z)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lrxhttp/ObservableCallExecute;

    invoke-direct {v0, p0, v1}, Lrxhttp/ObservableCallExecute;-><init>(Lrxhttp/wrapper/CallFactory;Z)V

    .line 68
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lrxhttp/ObservableCall;->asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getParam()Lrxhttp/wrapper/param/AbstractBodyParam;
    .locals 1

    .line 18
    invoke-super {p0}, Lrxhttp/RxHttp;->getParam()Lrxhttp/wrapper/param/Param;

    move-result-object v0

    check-cast v0, Lrxhttp/wrapper/param/AbstractBodyParam;

    return-object v0
.end method

.method public final setUploadMaxLength(J)Lrxhttp/RxHttpAbstractBodyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lrxhttp/RxHttpAbstractBodyParam;->param:Lrxhttp/wrapper/param/Param;

    check-cast v0, Lrxhttp/wrapper/param/AbstractBodyParam;

    invoke-virtual {v0, p1, p2}, Lrxhttp/wrapper/param/AbstractBodyParam;->setUploadMaxLength(J)Lrxhttp/wrapper/param/AbstractBodyParam;

    return-object p0
.end method

.method public final upload(Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lrxhttp/RxHttpAbstractBodyParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)TR;"
        }
    .end annotation

    .line 46
    iput-object p2, p0, Lrxhttp/RxHttpAbstractBodyParam;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    .line 47
    iput-object p1, p0, Lrxhttp/RxHttpAbstractBodyParam;->observeOnScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public final upload(Lio/reactivex/rxjava3/functions/Consumer;)Lrxhttp/RxHttpAbstractBodyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1}, Lrxhttp/RxHttpAbstractBodyParam;->upload(Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lrxhttp/RxHttpAbstractBodyParam;

    move-result-object p1

    return-object p1
.end method
