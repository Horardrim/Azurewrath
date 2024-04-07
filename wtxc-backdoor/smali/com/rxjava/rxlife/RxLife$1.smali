.class Lcom/rxjava/rxlife/RxLife$1;
.super Ljava/lang/Object;
.source "RxLife.java"

# interfaces
.implements Lcom/rxjava/rxlife/RxConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/rxjava/rxlife/RxConverter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$onMain:Z

.field final synthetic val$scope:Lcom/rxjava/rxlife/Scope;


# direct methods
.method constructor <init>(Lcom/rxjava/rxlife/Scope;Z)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/rxjava/rxlife/RxLife$1;->val$scope:Lcom/rxjava/rxlife/Scope;

    iput-boolean p2, p0, Lcom/rxjava/rxlife/RxLife$1;->val$onMain:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/rxjava3/core/Completable;)Lcom/rxjava/rxlife/CompletableLife;
    .locals 3

    .line 108
    new-instance v0, Lcom/rxjava/rxlife/CompletableLife;

    iget-object v1, p0, Lcom/rxjava/rxlife/RxLife$1;->val$scope:Lcom/rxjava/rxlife/Scope;

    iget-boolean v2, p0, Lcom/rxjava/rxlife/RxLife$1;->val$onMain:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/rxjava/rxlife/CompletableLife;-><init>(Lio/reactivex/rxjava3/core/Completable;Lcom/rxjava/rxlife/Scope;Z)V

    return-object v0
.end method

.method public apply(Lio/reactivex/rxjava3/core/Flowable;)Lcom/rxjava/rxlife/FlowableLife;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "TT;>;)",
            "Lcom/rxjava/rxlife/FlowableLife<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/rxjava/rxlife/FlowableLife;

    iget-object v1, p0, Lcom/rxjava/rxlife/RxLife$1;->val$scope:Lcom/rxjava/rxlife/Scope;

    iget-boolean v2, p0, Lcom/rxjava/rxlife/RxLife$1;->val$onMain:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/rxjava/rxlife/FlowableLife;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lcom/rxjava/rxlife/Scope;Z)V

    return-object v0
.end method

.method public apply(Lio/reactivex/rxjava3/core/Maybe;)Lcom/rxjava/rxlife/MaybeLife;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Maybe<",
            "TT;>;)",
            "Lcom/rxjava/rxlife/MaybeLife<",
            "TT;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/rxjava/rxlife/MaybeLife;

    iget-object v1, p0, Lcom/rxjava/rxlife/RxLife$1;->val$scope:Lcom/rxjava/rxlife/Scope;

    iget-boolean v2, p0, Lcom/rxjava/rxlife/RxLife$1;->val$onMain:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/rxjava/rxlife/MaybeLife;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lcom/rxjava/rxlife/Scope;Z)V

    return-object v0
.end method

.method public apply(Lio/reactivex/rxjava3/core/Observable;)Lcom/rxjava/rxlife/ObservableLife;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;)",
            "Lcom/rxjava/rxlife/ObservableLife<",
            "TT;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/rxjava/rxlife/ObservableLife;

    iget-object v1, p0, Lcom/rxjava/rxlife/RxLife$1;->val$scope:Lcom/rxjava/rxlife/Scope;

    iget-boolean v2, p0, Lcom/rxjava/rxlife/RxLife$1;->val$onMain:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/rxjava/rxlife/ObservableLife;-><init>(Lio/reactivex/rxjava3/core/Observable;Lcom/rxjava/rxlife/Scope;Z)V

    return-object v0
.end method

.method public apply(Lio/reactivex/rxjava3/parallel/ParallelFlowable;)Lcom/rxjava/rxlife/ParallelFlowableLife;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/parallel/ParallelFlowable<",
            "TT;>;)",
            "Lcom/rxjava/rxlife/ParallelFlowableLife<",
            "TT;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/rxjava/rxlife/ParallelFlowableLife;

    iget-object v1, p0, Lcom/rxjava/rxlife/RxLife$1;->val$scope:Lcom/rxjava/rxlife/Scope;

    iget-boolean v2, p0, Lcom/rxjava/rxlife/RxLife$1;->val$onMain:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/rxjava/rxlife/ParallelFlowableLife;-><init>(Lio/reactivex/rxjava3/parallel/ParallelFlowable;Lcom/rxjava/rxlife/Scope;Z)V

    return-object v0
.end method

.method public apply(Lio/reactivex/rxjava3/core/Single;)Lcom/rxjava/rxlife/SingleLife;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;)",
            "Lcom/rxjava/rxlife/SingleLife<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/rxjava/rxlife/SingleLife;

    iget-object v1, p0, Lcom/rxjava/rxlife/RxLife$1;->val$scope:Lcom/rxjava/rxlife/Scope;

    iget-boolean v2, p0, Lcom/rxjava/rxlife/RxLife$1;->val$onMain:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/rxjava/rxlife/SingleLife;-><init>(Lio/reactivex/rxjava3/core/Single;Lcom/rxjava/rxlife/Scope;Z)V

    return-object v0
.end method

.method public bridge synthetic apply(Lio/reactivex/rxjava3/core/Completable;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/RxLife$1;->apply(Lio/reactivex/rxjava3/core/Completable;)Lcom/rxjava/rxlife/CompletableLife;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/rxjava3/core/Flowable;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/RxLife$1;->apply(Lio/reactivex/rxjava3/core/Flowable;)Lcom/rxjava/rxlife/FlowableLife;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/rxjava3/core/Maybe;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/RxLife$1;->apply(Lio/reactivex/rxjava3/core/Maybe;)Lcom/rxjava/rxlife/MaybeLife;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/rxjava3/core/Observable;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/RxLife$1;->apply(Lio/reactivex/rxjava3/core/Observable;)Lcom/rxjava/rxlife/ObservableLife;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/rxjava3/core/Single;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/RxLife$1;->apply(Lio/reactivex/rxjava3/core/Single;)Lcom/rxjava/rxlife/SingleLife;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/rxjava3/parallel/ParallelFlowable;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/RxLife$1;->apply(Lio/reactivex/rxjava3/parallel/ParallelFlowable;)Lcom/rxjava/rxlife/ParallelFlowableLife;

    move-result-object p1

    return-object p1
.end method
