.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;
.super Ljava/lang/Object;
.source "ObservableSequenceEqual.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final index:I

.field final parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "index",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<",
            "TT;>;II)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    .line 228
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->index:I

    .line 229
    new-instance p1, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-direct {p1, p3}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    .line 253
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    .line 247
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->index:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;I)Z

    return-void
.end method
