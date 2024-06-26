.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableWithLatestFromMany.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithLatestInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/rxjava3/core/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d3210de62c61a18L


# instance fields
.field hasValue:Z

.field final index:I

.field final parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber<",
            "**>;I)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 266
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;

    .line 267
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->index:I

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 0

    .line 294
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 290
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->index:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->hasValue:Z

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;->innerComplete(IZ)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->index:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;->innerError(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 277
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->hasValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->hasValue:Z

    .line 280
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber;->index:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber;->innerNext(ILjava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 272
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method
