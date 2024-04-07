.class abstract Lcom/rxjava/rxlife/RxSource;
.super Ljava/lang/Object;
.source "RxSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field onMain:Z

.field scope:Lcom/rxjava/rxlife/Scope;


# direct methods
.method constructor <init>(Lcom/rxjava/rxlife/Scope;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/rxjava/rxlife/RxSource;->scope:Lcom/rxjava/rxlife/Scope;

    .line 30
    iput-boolean p2, p0, Lcom/rxjava/rxlife/RxSource;->onMain:Z

    return-void
.end method


# virtual methods
.method public abstract subscribe()Lio/reactivex/rxjava3/disposables/Disposable;
.end method

.method public abstract subscribe(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public subscribeWith(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:TE;>(TO;)TO;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/RxSource;->subscribe(Ljava/lang/Object;)V

    return-object p1
.end method
