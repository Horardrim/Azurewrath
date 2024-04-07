.class final Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuspendStreamParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/wrapper/parse/SuspendStreamParserKt;->writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
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
    c = "rxhttp.wrapper.parse.SuspendStreamParserKt$writeTo$2"
    f = "SuspendStreamParser.kt"
    i = {
        0x0
    }
    l = {
        0x3f,
        0x47
    }
    m = "invokeSuspend"
    n = {
        "curTime"
    }
    s = {
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $contentLength:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $lastSize:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $offsetSize:J

.field final synthetic $progress:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field synthetic J$0:J

.field label:I


# direct methods
.method constructor <init>(JLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$offsetSize:J

    iput-object p3, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastSize:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p5, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p6, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$progress:Lkotlin/jvm/functions/Function4;

    iput-object p7, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v9, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;

    iget-wide v1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$offsetSize:J

    iget-object v3, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastSize:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$progress:Lkotlin/jvm/functions/Function4;

    iget-object v7, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;-><init>(JLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, v9, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->J$0:J

    check-cast v9, Lkotlin/coroutines/Continuation;

    return-object v9
.end method

.method public final invoke(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1, p2}, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->invoke(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    iget-wide v0, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v4, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->J$0:J

    .line 57
    iget-wide v6, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$offsetSize:J

    add-long/2addr v4, v6

    .line 58
    iget-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastSize:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v4, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 59
    iget-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v8, -0x1

    cmp-long p1, v6, v8

    if-nez p1, :cond_4

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 62
    iget-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x1f4

    cmp-long p1, v6, v8

    if-lez p1, :cond_5

    .line 63
    iget-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$progress:Lkotlin/jvm/functions/Function4;

    const/4 v6, 0x0

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v7, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    iput-wide v1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->J$0:J

    iput v3, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->label:I

    invoke-interface {p1, v6, v4, v5, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-wide v0, v1

    .line 64
    :goto_0
    iget-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_1

    :cond_4
    const/16 p1, 0x64

    int-to-long v6, p1

    mul-long/2addr v6, v4

    .line 68
    iget-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v8, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    div-long/2addr v6, v8

    long-to-int p1, v6

    .line 69
    iget-object v1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-le p1, v1, :cond_5

    .line 70
    iget-object v1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 71
    iget-object v1, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$progress:Lkotlin/jvm/functions/Function4;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v4, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    iput v2, p0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;->label:I

    invoke-interface {v1, p1, v3, v4, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 74
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
