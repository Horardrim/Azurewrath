.class public final Lrxhttp/AwaitTransformKt$timeout$$inlined$newAwait$1;
.super Ljava/lang/Object;
.source "AwaitTransform.kt"

# interfaces
.implements Lrxhttp/wrapper/coroutines/Await;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/AwaitTransformKt;->timeout(Lrxhttp/wrapper/coroutines/Await;J)Lrxhttp/wrapper/coroutines/Await;
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
    value = "SMAP\nAwaitTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AwaitTransform.kt\nrxhttp/AwaitTransformKt$newAwait$1\n+ 2 AwaitTransform.kt\nrxhttp/AwaitTransformKt\n*L\n1#1,448:1\n338#2:449\n*E\n"
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

    iput-object p1, p0, Lrxhttp/AwaitTransformKt$timeout$$inlined$newAwait$1;->$this_newAwait:Lrxhttp/wrapper/coroutines/Await;

    iput-wide p2, p0, Lrxhttp/AwaitTransformKt$timeout$$inlined$newAwait$1;->$timeMillis$inlined:J

    .line 18
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

    .line 21
    iget-object v0, p0, Lrxhttp/AwaitTransformKt$timeout$$inlined$newAwait$1;->$this_newAwait:Lrxhttp/wrapper/coroutines/Await;

    .line 449
    iget-wide v1, p0, Lrxhttp/AwaitTransformKt$timeout$$inlined$newAwait$1;->$timeMillis$inlined:J

    new-instance v3, Lrxhttp/AwaitTransformKt$timeout$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lrxhttp/AwaitTransformKt$timeout$1$1;-><init>(Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
