.class public final Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1;
.super Ljava/lang/Object;
.source "AwaitTransform.kt"

# interfaces
.implements Lrxhttp/wrapper/coroutines/Await;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/AwaitTransformKt;->delay(Lrxhttp/wrapper/coroutines/Await;J)Lrxhttp/wrapper/coroutines/Await;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAwaitTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AwaitTransform.kt\nrxhttp/AwaitTransformKt$newAwait$1\n+ 2 AwaitTransform.kt\nrxhttp/AwaitTransformKt\n*L\n1#1,448:1\n380#2,3:449\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0011\u0010\u0002\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "rxhttp/AwaitTransformKt$newAwait$1",
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
.field final synthetic $this_newAwait:Lrxhttp/wrapper/coroutines/Await;

.field final synthetic $timeMillis$inlined:J


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/coroutines/Await;J)V
    .locals 0

    iput-object p1, p0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1;->$this_newAwait:Lrxhttp/wrapper/coroutines/Await;

    iput-wide p2, p0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1;->$timeMillis$inlined:J

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;

    iget v1, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;

    invoke-direct {v0, p0, p1}, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;-><init>(Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 451
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    iget-object v2, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1;->$this_newAwait:Lrxhttp/wrapper/coroutines/Await;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 449
    iput-object p0, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->label:I

    invoke-interface {p1, v0}, Lrxhttp/wrapper/coroutines/Await;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 450
    :goto_1
    iget-wide v4, v2, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1;->$timeMillis$inlined:J

    iput-object p1, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lrxhttp/AwaitTransformKt$delay$$inlined$newAwait$1$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p1

    :goto_2
    return-object v0
.end method
