.class public final Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;
.super Ljava/lang/Object;
.source "AwaitTransform.kt"

# interfaces
.implements Lrxhttp/wrapper/coroutines/Await;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/AwaitTransformKt;->distinctTo(Lrxhttp/wrapper/coroutines/Await;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lrxhttp/wrapper/coroutines/Await;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrxhttp/wrapper/coroutines/Await<",
        "TC;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAwaitTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AwaitTransform.kt\nrxhttp/AwaitTransformKt$newAwait$1\n+ 2 AwaitTransform.kt\nrxhttp/AwaitTransformKt\n*L\n1#1,448:1\n208#2,11:449\n*E\n"
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
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $destination$inlined:Ljava/util/List;

.field final synthetic $selector$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_newAwait:Lrxhttp/wrapper/coroutines/Await;


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/coroutines/Await;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$this_newAwait:Lrxhttp/wrapper/coroutines/Await;

    iput-object p2, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$destination$inlined:Ljava/util/List;

    iput-object p3, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$selector$inlined:Lkotlin/jvm/functions/Function1;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;

    iget v1, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;

    invoke-direct {v0, p0, p1}, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;-><init>(Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    iget-object v0, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 459
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$this_newAwait:Lrxhttp/wrapper/coroutines/Await;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 449
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 450
    iget-object v4, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$destination$inlined:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 451
    iget-object v6, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$selector$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 452
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 454
    :cond_3
    iput-object p0, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;->label:I

    invoke-interface {p1, v0}, Lrxhttp/wrapper/coroutines/Await;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    move-object v1, v2

    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 455
    iget-object v3, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$selector$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 456
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 457
    iget-object v3, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$destination$inlined:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 459
    :cond_6
    iget-object p1, v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$destination$inlined:Ljava/util/List;

    return-object p1
.end method

.method public await$$forInline(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    new-instance v0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;

    invoke-direct {v0, p0, p1}, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1$1;-><init>(Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 21
    iget-object v0, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$this_newAwait:Lrxhttp/wrapper/coroutines/Await;

    .line 449
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 450
    iget-object v2, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$destination$inlined:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 451
    iget-object v4, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$selector$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 452
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 454
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v0, p1}, Lrxhttp/wrapper/coroutines/Await;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 455
    iget-object v2, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$selector$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 456
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    iget-object v2, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$destination$inlined:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 459
    :cond_2
    iget-object p1, p0, Lrxhttp/AwaitTransformKt$distinctTo$$inlined$newAwait$1;->$destination$inlined:Ljava/util/List;

    return-object p1
.end method
