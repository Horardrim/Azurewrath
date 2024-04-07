.class public Lcom/rxjava/rxlife/ParallelFlowableLife;
.super Ljava/lang/Object;
.source "ParallelFlowableLife.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final onMain:Z

.field private final scope:Lcom/rxjava/rxlife/Scope;

.field private final upStream:Lio/reactivex/rxjava3/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/parallel/ParallelFlowable;Lcom/rxjava/rxlife/Scope;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/parallel/ParallelFlowable<",
            "TT;>;",
            "Lcom/rxjava/rxlife/Scope;",
            "Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->upStream:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    .line 25
    iput-object p2, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->scope:Lcom/rxjava/rxlife/Scope;

    .line 26
    iput-boolean p3, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->onMain:Z

    return-void
.end method

.method private parallelism()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->upStream:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method private validate([Lorg/reactivestreams/Subscriber;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "*>;)Z"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/rxjava/rxlife/ParallelFlowableLife;->parallelism()I

    move-result v0

    .line 58
    array-length v1, p1

    if-eq v1, v0, :cond_1

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parallelism = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subscribers = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 61
    invoke-static {v1, v4}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/rxjava/rxlife/ParallelFlowableLife;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    array-length v0, p1

    .line 37
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 40
    aget-object v3, p1, v2

    .line 41
    instance-of v4, v3, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    if-eqz v4, :cond_1

    .line 42
    new-instance v4, Lcom/rxjava/rxlife/LifeConditionalSubscriber;

    check-cast v3, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    iget-object v5, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->scope:Lcom/rxjava/rxlife/Scope;

    invoke-direct {v4, v3, v5}, Lcom/rxjava/rxlife/LifeConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lcom/rxjava/rxlife/Scope;)V

    aput-object v4, v1, v2

    goto :goto_1

    .line 44
    :cond_1
    new-instance v4, Lcom/rxjava/rxlife/LifeSubscriber;

    iget-object v5, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->scope:Lcom/rxjava/rxlife/Scope;

    invoke-direct {v4, v3, v5}, Lcom/rxjava/rxlife/LifeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lcom/rxjava/rxlife/Scope;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->upStream:Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    .line 48
    iget-boolean v0, p0, Lcom/rxjava/rxlife/ParallelFlowableLife;->onMain:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->runOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object p1

    .line 49
    :cond_3
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
