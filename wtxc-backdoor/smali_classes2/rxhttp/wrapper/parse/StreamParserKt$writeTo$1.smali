.class final Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StreamParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/wrapper/parse/StreamParserKt;->writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lrxhttp/wrapper/callback/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lrxhttp/wrapper/callback/ProgressCallback;

.field final synthetic $contentLength:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $lastSize:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $offsetSize:J


# direct methods
.method constructor <init>(JLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lrxhttp/wrapper/callback/ProgressCallback;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-wide p1, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$offsetSize:J

    iput-object p3, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastSize:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p5, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p6, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$callback:Lrxhttp/wrapper/callback/ProgressCallback;

    iput-object p7, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 54
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->invoke(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(J)V
    .locals 8

    .line 55
    iget-wide v0, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$offsetSize:J

    add-long v4, p1, v0

    .line 56
    iget-object p1, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastSize:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v4, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 57
    iget-object p1, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p1, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 60
    iget-object v0, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 61
    iget-object v2, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$callback:Lrxhttp/wrapper/callback/ProgressCallback;

    const/4 v3, 0x0

    iget-object v0, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-interface/range {v2 .. v7}, Lrxhttp/wrapper/callback/ProgressCallback;->onProgress(IJJ)V

    .line 62
    iget-object v0, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastRefreshTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    int-to-long p1, p1

    mul-long/2addr p1, v4

    .line 66
    iget-object v0, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    div-long/2addr p1, v0

    long-to-int v3, p1

    .line 67
    iget-object p1, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-le v3, p1, :cond_1

    .line 68
    iget-object p1, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$lastProgress:Lkotlin/jvm/internal/Ref$IntRef;

    iput v3, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 69
    iget-object v2, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$callback:Lrxhttp/wrapper/callback/ProgressCallback;

    iget-object p1, p0, Lrxhttp/wrapper/parse/StreamParserKt$writeTo$1;->$contentLength:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-interface/range {v2 .. v7}, Lrxhttp/wrapper/callback/ProgressCallback;->onProgress(IJJ)V

    :cond_1
    :goto_0
    return-void
.end method
