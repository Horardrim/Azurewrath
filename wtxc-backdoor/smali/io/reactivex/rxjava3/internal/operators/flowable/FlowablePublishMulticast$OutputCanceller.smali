.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;
.super Ljava/lang/Object;
.source "FlowablePublishMulticast.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OutputCanceller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/FlowableSubscriber<",
        "TR;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<",
            "*>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "processor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<",
            "*>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    .line 83
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 119
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 120
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 108
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 109
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 103
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->processor:Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->dispose()V

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
            "(TR;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    .line 91
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
