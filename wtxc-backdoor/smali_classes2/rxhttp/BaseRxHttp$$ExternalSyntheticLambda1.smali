.class public final synthetic Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lrxhttp/BaseRxHttp;

.field public final synthetic f$1:Lio/reactivex/rxjava3/core/Scheduler;

.field public final synthetic f$2:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method public synthetic constructor <init>(Lrxhttp/BaseRxHttp;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;->f$0:Lrxhttp/BaseRxHttp;

    iput-object p2, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;->f$1:Lio/reactivex/rxjava3/core/Scheduler;

    iput-object p3, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;->f$2:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;->f$0:Lrxhttp/BaseRxHttp;

    iget-object v1, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;->f$1:Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v2, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;->f$2:Lio/reactivex/rxjava3/functions/Consumer;

    check-cast p1, Lrxhttp/wrapper/parse/StreamParser;

    invoke-virtual {v0, v1, v2, p1}, Lrxhttp/BaseRxHttp;->lambda$asAppendDownload$2$rxhttp-BaseRxHttp(Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;Lrxhttp/wrapper/parse/StreamParser;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
