.class public final Lrxhttp/CallFactoryToAwaitKt$toAwait$1;
.super Ljava/lang/Object;
.source "CallFactoryToAwait.kt"

# interfaces
.implements Lrxhttp/wrapper/coroutines/Await;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/CallFactoryToAwaitKt;->toAwait(Lkotlinx/coroutines/flow/Flow;)Lrxhttp/wrapper/coroutines/Await;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrxhttp/wrapper/coroutines/Await<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0011\u0010\u0002\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0004"
    }
    d2 = {
        "rxhttp/CallFactoryToAwaitKt$toAwait$1",
        "Lrxhttp/wrapper/coroutines/Await;",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rxhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_toAwait:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1;->$this_toAwait:Lkotlinx/coroutines/flow/Flow;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;

    iget v1, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;

    invoke-direct {v0, p0, p1}, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;-><init>(Lrxhttp/CallFactoryToAwaitKt$toAwait$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 89
    iget-object v2, p0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1;->$this_toAwait:Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$2;

    invoke-direct {v4, p1}, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    .line 90
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
