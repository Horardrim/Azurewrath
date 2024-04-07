.class final Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;
.super Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;
.source "SingleToObservable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleToObservableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable<",
        "TT;>;",
        "Lio/reactivex/rxjava3/core/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x348c813e921c2851L


# instance fields
.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downstream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 83
    invoke-super {p0}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->dispose()V

    .line 84
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 67
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->complete(Ljava/lang/Object;)V

    return-void
.end method
