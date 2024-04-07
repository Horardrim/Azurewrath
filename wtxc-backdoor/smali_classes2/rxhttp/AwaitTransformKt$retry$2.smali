.class public final Lrxhttp/AwaitTransformKt$retry$2;
.super Ljava/lang/Object;
.source "AwaitTransform.kt"

# interfaces
.implements Lrxhttp/wrapper/coroutines/Await;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/AwaitTransformKt;->retry(Lrxhttp/wrapper/coroutines/Await;JJLkotlin/jvm/functions/Function2;)Lrxhttp/wrapper/coroutines/Await;
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0011\u0010\u0008\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "rxhttp/AwaitTransformKt$retry$2",
        "Lrxhttp/wrapper/coroutines/Await;",
        "retryTime",
        "",
        "getRetryTime",
        "()J",
        "setRetryTime",
        "(J)V",
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
.field final synthetic $period:J

.field final synthetic $test:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_retry:Lrxhttp/wrapper/coroutines/Await;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/coroutines/Await<",
            "TT;>;"
        }
    .end annotation
.end field

.field private retryTime:J


# direct methods
.method constructor <init>(JLrxhttp/wrapper/coroutines/Await;Lkotlin/jvm/functions/Function2;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrxhttp/wrapper/coroutines/Await<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    iput-object p3, p0, Lrxhttp/AwaitTransformKt$retry$2;->$this_retry:Lrxhttp/wrapper/coroutines/Await;

    iput-object p4, p0, Lrxhttp/AwaitTransformKt$retry$2;->$test:Lkotlin/jvm/functions/Function2;

    iput-wide p5, p0, Lrxhttp/AwaitTransformKt$retry$2;->$period:J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lrxhttp/AwaitTransformKt$retry$2;->retryTime:J

    return-void
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lrxhttp/AwaitTransformKt$retry$2$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;

    iget v1, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;

    invoke-direct {v0, p0, p1}, Lrxhttp/AwaitTransformKt$retry$2$await$1;-><init>(Lrxhttp/AwaitTransformKt$retry$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_2
    iget-object v2, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lrxhttp/AwaitTransformKt$retry$2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-wide v6, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->J$0:J

    iget-object v2, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v8, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lrxhttp/AwaitTransformKt$retry$2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lrxhttp/AwaitTransformKt$retry$2;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    :try_start_1
    iget-object p1, p0, Lrxhttp/AwaitTransformKt$retry$2;->$this_retry:Lrxhttp/wrapper/coroutines/Await;

    iput-object p0, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    invoke-interface {p1, v0}, Lrxhttp/wrapper/coroutines/Await;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_9

    return-object v1

    :catchall_1
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    .line 42
    :goto_1
    iget-wide v7, p1, Lrxhttp/AwaitTransformKt$retry$2;->retryTime:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v7, v9

    if-eqz v9, :cond_6

    const-wide/16 v9, 0x1

    sub-long v9, v7, v9

    .line 44
    iput-wide v9, p1, Lrxhttp/AwaitTransformKt$retry$2;->retryTime:J

    .line 46
    :cond_6
    iget-object v9, p1, Lrxhttp/AwaitTransformKt$retry$2;->$test:Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$1:Ljava/lang/Object;

    iput-wide v7, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->J$0:J

    iput v6, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    invoke-interface {v9, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    :cond_7
    move-wide v11, v7

    move-object v8, p1

    move-object p1, v6

    move-wide v6, v11

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-lez v6, :cond_a

    if-eqz p1, :cond_a

    .line 48
    iget-wide v6, v8, Lrxhttp/AwaitTransformKt$retry$2;->$period:J

    iput-object v8, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v2, v8

    .line 49
    :goto_3
    iput-object v3, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lrxhttp/AwaitTransformKt$retry$2$await$1;->label:I

    invoke-virtual {v2, v0}, Lrxhttp/AwaitTransformKt$retry$2;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    return-object p1

    .line 50
    :cond_a
    throw v2
.end method

.method public final getRetryTime()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lrxhttp/AwaitTransformKt$retry$2;->retryTime:J

    return-wide v0
.end method

.method public final setRetryTime(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lrxhttp/AwaitTransformKt$retry$2;->retryTime:J

    return-void
.end method
