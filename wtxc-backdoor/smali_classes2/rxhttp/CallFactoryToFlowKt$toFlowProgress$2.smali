.class final Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CallFactoryToFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/CallFactoryToFlowKt;->toFlowProgress(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZI)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lrxhttp/wrapper/entity/ProgressT<",
        "TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallFactoryToFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallFactoryToFlow.kt\nrxhttp/CallFactoryToFlowKt$toFlowProgress$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n1#2:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lrxhttp/wrapper/entity/ProgressT;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "rxhttp.CallFactoryToFlowKt$toFlowProgress$2"
    f = "CallFactoryToFlow.kt"
    i = {
        0x0
    }
    l = {
        0x72,
        0x72
    }
    m = "invokeSuspend"
    n = {
        "$this$flow"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $append:Z

.field final synthetic $osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_toFlowProgress:Lrxhttp/wrapper/CallFactory;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$this_toFlowProgress:Lrxhttp/wrapper/CallFactory;

    iput-object p2, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    iput-boolean p3, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$append:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;

    iget-object v1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$this_toFlowProgress:Lrxhttp/wrapper/CallFactory;

    iget-object v2, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    iget-boolean v3, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$append:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;-><init>(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lrxhttp/wrapper/entity/ProgressT<",
            "TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 111
    iget v1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    iget-object v1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 112
    iget-object p1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$this_toFlowProgress:Lrxhttp/wrapper/CallFactory;

    iget-object v5, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    iget-boolean v6, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$append:Z

    invoke-static {p1, v5, v6}, Lrxhttp/wrapper/coroutines/RangeHeaderKt;->setRangeHeader(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;Z)V

    .line 113
    iget-object p1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$this_toFlowProgress:Lrxhttp/wrapper/CallFactory;

    iget-object v5, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->$osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    new-instance v6, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2$1;

    invoke-direct {v6, v1, v2}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v5, v6}, Lrxhttp/CallFactoryToAwaitKt;->toSyncDownload(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;Lkotlin/jvm/functions/Function2;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object p1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 114
    iput-object v1, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->label:I

    invoke-interface {p1, v5}, Lrxhttp/wrapper/coroutines/Await;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    new-instance v4, Lrxhttp/wrapper/entity/ProgressT;

    invoke-direct {v4, p1}, Lrxhttp/wrapper/entity/ProgressT;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;->label:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 115
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
