.class public final Lrxhttp/wrapper/parse/SuspendStreamParserKt;
.super Ljava/lang/Object;
.source "SuspendStreamParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001aU\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062.\u0010\u0007\u001a*\u0008\u0001\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0008H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "writeTo",
        "",
        "Lokhttp3/Response;",
        "body",
        "Lokhttp3/ResponseBody;",
        "outStream",
        "Ljava/io/OutputStream;",
        "progress",
        "Lkotlin/Function4;",
        "",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rxhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lrxhttp/wrapper/parse/SuspendStreamParserKt;->writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Lokhttp3/ResponseBody;",
            "Ljava/io/OutputStream;",
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
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;

    iget v2, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;

    invoke-direct {v1, v0}, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 40
    iget v3, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iget-object v3, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function4;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v8

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    invoke-static/range {p0 .. p0}, Lrxhttp/wrapper/OkHttpCompat;->getDownloadOffSize(Lokhttp3/Response;)Lrxhttp/wrapper/entity/DownloadOffSize;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lrxhttp/wrapper/entity/DownloadOffSize;->getOffSize()J

    move-result-wide v8

    goto :goto_1

    :cond_4
    const-wide/16 v8, 0x0

    :goto_1
    move-wide v11, v8

    .line 46
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static/range {p0 .. p0}, Lrxhttp/wrapper/OkHttpCompat;->getContentLength(Lokhttp3/Response;)J

    move-result-wide v8

    iput-wide v8, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 47
    iget-wide v8, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_5

    iget-wide v8, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long/2addr v8, v11

    iput-wide v8, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 48
    :cond_5
    iget-wide v8, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_6

    const-string v3, "Unable to calculate callback progress without `Content-Length` response header"

    .line 49
    invoke-static {v3}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/String;)V

    .line 52
    :cond_6
    new-instance v17, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v17 .. v17}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 53
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 54
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 56
    sget-object v8, Lrxhttp/wrapper/utils/IOUtil;->INSTANCE:Lrxhttp/wrapper/utils/IOUtil;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    new-instance v19, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;

    const/16 v18, 0x0

    move-object/from16 v10, v19

    move-object v13, v3

    move-object v14, v0

    move-object/from16 v16, p3

    invoke-direct/range {v10 .. v18}, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$2;-><init>(JLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v10, v19

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, p3

    iput-object v11, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$2:Ljava/lang/Object;

    iput v5, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->label:I

    move-object/from16 v5, p2

    invoke-virtual {v8, v9, v5, v10, v1}, Lrxhttp/wrapper/utils/IOUtil;->suspendWrite(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_7

    return-object v2

    :cond_7
    move-object v5, v0

    .line 76
    :goto_2
    iget-wide v8, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_9

    const/16 v0, 0x64

    .line 78
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v5, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    iput-object v6, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->L$2:Ljava/lang/Object;

    iput v4, v1, Lrxhttp/wrapper/parse/SuspendStreamParserKt$writeTo$1;->label:I

    invoke-interface {v11, v0, v3, v5, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    return-object v2

    .line 80
    :cond_8
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
