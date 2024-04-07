.class final Lrxhttp/ObservableParser;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrxhttp/ObservableParser$AsyncParserObserver;,
        Lrxhttp/ObservableParser$SyncParserObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final parser:Lrxhttp/wrapper/parse/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final source:Lio/reactivex/rxjava3/core/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    .line 36
    iput-object p1, p0, Lrxhttp/ObservableParser;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    .line 37
    iput-object p2, p0, Lrxhttp/ObservableParser;->parser:Lrxhttp/wrapper/parse/Parser;

    .line 38
    iput-object p3, p0, Lrxhttp/ObservableParser;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 39
    iput-object p4, p0, Lrxhttp/ObservableParser;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lrxhttp/ObservableParser;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lrxhttp/ObservableParser;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    new-instance v1, Lrxhttp/ObservableParser$SyncParserObserver;

    iget-object v2, p0, Lrxhttp/ObservableParser;->parser:Lrxhttp/wrapper/parse/Parser;

    iget-object v3, p0, Lrxhttp/ObservableParser;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-direct {v1, p1, v2, v3}, Lrxhttp/ObservableParser$SyncParserObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lrxhttp/ObservableParser;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    new-instance v2, Lrxhttp/ObservableParser$AsyncParserObserver;

    iget-object v3, p0, Lrxhttp/ObservableParser;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    iget-object v4, p0, Lrxhttp/ObservableParser;->parser:Lrxhttp/wrapper/parse/Parser;

    invoke-direct {v2, p1, v0, v3, v4}, Lrxhttp/ObservableParser$AsyncParserObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/core/Scheduler$Worker;Lio/reactivex/rxjava3/functions/Consumer;Lrxhttp/wrapper/parse/Parser;)V

    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    :goto_0
    return-void
.end method
