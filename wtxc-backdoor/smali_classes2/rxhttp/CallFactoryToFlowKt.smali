.class public final Lrxhttp/CallFactoryToFlowKt;
.super Ljava/lang/Object;
.source "CallFactoryToFlow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallFactoryToFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallFactoryToFlow.kt\nrxhttp/CallFactoryToFlowKt\n+ 2 CallFactoryToAwait.kt\nrxhttp/CallFactoryToAwaitKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,121:1\n38#1:122\n38#1:123\n38#1:124\n38#1:126\n45#1,2:127\n49#1,6:130\n45#1,10:136\n28#2:125\n28#2:129\n28#2:146\n54#3:147\n57#3:151\n50#4:148\n55#4:150\n106#5:149\n*S KotlinDebug\n*F\n+ 1 CallFactoryToFlow.kt\nrxhttp/CallFactoryToFlowKt\n*L\n29#1:122\n31#1:123\n33#1:124\n35#1:126\n43#1:127,2\n43#1:130,6\n43#1:136,10\n35#1:125\n43#1:129\n46#1:146\n121#1:147\n121#1:151\n121#1:148\n121#1:150\n121#1:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aN\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00030\u00012\"\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001aS\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2$\u0008\u0008\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\u001b\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0010H\u0086\u0008\u001ad\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0001*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2&\u0008\u0002\u0010\u0004\u001a \u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017\u001a\\\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0001*\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2&\u0008\u0002\u0010\u0004\u001a \u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001ah\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00102\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u001c2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2&\u0008\u0002\u0010\u0004\u001a \u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001d\u001a)\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00102\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u001fH\u0086\u0008\u001a\u0010\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0001*\u00020\u0010\u001a\u0010\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u0001*\u00020\u0010\u001a\u0010\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u0001*\u00020\u0010\u001a;\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00030\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u000c2\u000e\u0008\u0002\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u001f2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u0086\u0008\u001a:\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00030\u0001*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u001a2\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00030\u0001*\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u001a>\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00102\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u001c2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "onEachProgress",
        "Lkotlinx/coroutines/flow/Flow;",
        "T",
        "Lrxhttp/wrapper/entity/ProgressT;",
        "progress",
        "Lkotlin/Function2;",
        "Lrxhttp/wrapper/entity/Progress;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;",
        "toFlow",
        "Lrxhttp/wrapper/BodyParamFactory;",
        "capacity",
        "",
        "(Lrxhttp/wrapper/BodyParamFactory;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;",
        "Lrxhttp/wrapper/CallFactory;",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "uri",
        "append",
        "",
        "(Lrxhttp/wrapper/CallFactory;Landroid/content/Context;Landroid/net/Uri;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;",
        "",
        "destPath",
        "(Lrxhttp/wrapper/CallFactory;Ljava/lang/String;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;",
        "osFactory",
        "Lrxhttp/wrapper/callback/OutputStreamFactory;",
        "(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;",
        "await",
        "Lrxhttp/wrapper/coroutines/Await;",
        "toFlowBitmap",
        "Landroid/graphics/Bitmap;",
        "toFlowHeaders",
        "Lokhttp3/Headers;",
        "toFlowOkResponse",
        "Lokhttp3/Response;",
        "toFlowProgress",
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
.method public static final onEachProgress(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lrxhttp/wrapper/entity/ProgressT<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lrxhttp/CallFactoryToFlowKt$onEachProgress$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrxhttp/CallFactoryToFlowKt$onEachProgress$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 149
    new-instance p1, Lrxhttp/CallFactoryToFlowKt$onEachProgress$$inlined$mapNotNull$1;

    invoke-direct {p1, p0}, Lrxhttp/CallFactoryToFlowKt$onEachProgress$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    return-object p1
.end method

.method public static final synthetic toFlow(Lrxhttp/wrapper/BodyParamFactory;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/BodyParamFactory;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    move-object v0, p0

    check-cast v0, Lrxhttp/wrapper/CallFactory;

    .line 129
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$1;

    invoke-direct {v1}, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$1;-><init>()V

    check-cast v1, Lrxhttp/wrapper/parse/Parser;

    invoke-static {v0, v1}, Lrxhttp/CallFactoryToAwaitKt;->toParser(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/parse/Parser;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object v0

    .line 130
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2;-><init>(Lrxhttp/wrapper/BodyParamFactory;Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 135
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 43
    invoke-static {p0, p2}, Lrxhttp/CallFactoryToFlowKt;->onEachProgress(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic toFlow(Lrxhttp/wrapper/CallFactory;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/CallFactory;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toClass$1;

    invoke-direct {v0}, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toClass$1;-><init>()V

    check-cast v0, Lrxhttp/wrapper/parse/Parser;

    invoke-static {p0, v0}, Lrxhttp/CallFactoryToAwaitKt;->toParser(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/parse/Parser;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object p0

    .line 126
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlow$1;-><init>(Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlow(Lrxhttp/wrapper/CallFactory;Landroid/content/Context;Landroid/net/Uri;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "ZI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/callback/UriOutputStreamFactory;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v0, Lrxhttp/wrapper/callback/OutputStreamFactory;

    invoke-static {p0, v0, p3, p4, p5}, Lrxhttp/CallFactoryToFlowKt;->toFlow(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlow(Lrxhttp/wrapper/CallFactory;Ljava/lang/String;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            "Ljava/lang/String;",
            "ZI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lrxhttp/wrapper/callback/FileOutputStreamFactory;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/callback/FileOutputStreamFactory;-><init>(Ljava/lang/String;)V

    check-cast v0, Lrxhttp/wrapper/callback/OutputStreamFactory;

    invoke-static {p0, v0, p2, p3, p4}, Lrxhttp/CallFactoryToFlowKt;->toFlow(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlow(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/CallFactory;",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;ZI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 84
    new-instance p3, Lrxhttp/CallFactoryToFlowKt$toFlow$2;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p2, p4}, Lrxhttp/CallFactoryToFlowKt$toFlow$2;-><init>(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZLkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 87
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lrxhttp/CallFactoryToFlowKt;->toFlowProgress(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZI)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 90
    invoke-static {p0, p4}, Lrxhttp/CallFactoryToFlowKt;->onEachProgress(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final synthetic toFlow(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/coroutines/Await;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/CallFactory;",
            "Lrxhttp/wrapper/coroutines/Await<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "await"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p0, Lrxhttp/CallFactoryToFlowKt$toFlow$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrxhttp/CallFactoryToFlowKt$toFlow$1;-><init>(Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlow$default(Lrxhttp/wrapper/BodyParamFactory;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    const-string p3, "<this>"

    .line 40
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "progress"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    move-object p3, p0

    check-cast p3, Lrxhttp/wrapper/CallFactory;

    .line 129
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p4, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$1;

    invoke-direct {p4}, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$1;-><init>()V

    check-cast p4, Lrxhttp/wrapper/parse/Parser;

    invoke-static {p3, p4}, Lrxhttp/CallFactoryToAwaitKt;->toParser(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/parse/Parser;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object p3

    .line 140
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p4, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p3, v0}, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2;-><init>(Lrxhttp/wrapper/BodyParamFactory;Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 145
    sget-object p3, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 43
    invoke-static {p0, p2}, Lrxhttp/CallFactoryToFlowKt;->onEachProgress(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlow$default(Lrxhttp/wrapper/CallFactory;Landroid/content/Context;Landroid/net/Uri;ZILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 69
    invoke-static/range {v0 .. v5}, Lrxhttp/CallFactoryToFlowKt;->toFlow(Lrxhttp/wrapper/CallFactory;Landroid/content/Context;Landroid/net/Uri;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlow$default(Lrxhttp/wrapper/CallFactory;Ljava/lang/String;ZILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 62
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lrxhttp/CallFactoryToFlowKt;->toFlow(Lrxhttp/wrapper/CallFactory;Ljava/lang/String;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlow$default(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 77
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lrxhttp/CallFactoryToFlowKt;->toFlow(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlowBitmap(Lrxhttp/wrapper/CallFactory;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lrxhttp/CallFactoryToAwaitKt;->toBitmap(Lrxhttp/wrapper/CallFactory;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object p0

    .line 122
    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlowBitmap$$inlined$toFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrxhttp/CallFactoryToFlowKt$toFlowBitmap$$inlined$toFlow$1;-><init>(Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlowHeaders(Lrxhttp/wrapper/CallFactory;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lrxhttp/CallFactoryToAwaitKt;->toHeaders(Lrxhttp/wrapper/CallFactory;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object p0

    .line 123
    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlowHeaders$$inlined$toFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrxhttp/CallFactoryToFlowKt$toFlowHeaders$$inlined$toFlow$1;-><init>(Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlowOkResponse(Lrxhttp/wrapper/CallFactory;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p0}, Lrxhttp/CallFactoryToAwaitKt;->toOkResponse(Lrxhttp/wrapper/CallFactory;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object p0

    .line 124
    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlowOkResponse$$inlined$toFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrxhttp/CallFactoryToFlowKt$toFlowOkResponse$$inlined$toFlow$1;-><init>(Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic toFlowProgress(Lrxhttp/wrapper/BodyParamFactory;Lrxhttp/wrapper/coroutines/Await;I)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/BodyParamFactory;",
            "Lrxhttp/wrapper/coroutines/Await<",
            "TT;>;I)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lrxhttp/wrapper/entity/ProgressT<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "await"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$1;-><init>(Lrxhttp/wrapper/BodyParamFactory;Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 54
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {p0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->buffer(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlowProgress(Lrxhttp/wrapper/CallFactory;Landroid/content/Context;Landroid/net/Uri;ZI)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "ZI)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lrxhttp/wrapper/entity/ProgressT<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/callback/UriOutputStreamFactory;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v0, Lrxhttp/wrapper/callback/OutputStreamFactory;

    invoke-static {p0, v0, p3, p4}, Lrxhttp/CallFactoryToFlowKt;->toFlowProgress(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZI)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlowProgress(Lrxhttp/wrapper/CallFactory;Ljava/lang/String;ZI)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            "Ljava/lang/String;",
            "ZI)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lrxhttp/wrapper/entity/ProgressT<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lrxhttp/wrapper/callback/FileOutputStreamFactory;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/callback/FileOutputStreamFactory;-><init>(Ljava/lang/String;)V

    check-cast v0, Lrxhttp/wrapper/callback/OutputStreamFactory;

    invoke-static {p0, v0, p2, p3}, Lrxhttp/CallFactoryToFlowKt;->toFlowProgress(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZI)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFlowProgress(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZI)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/CallFactory;",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;ZI)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lrxhttp/wrapper/entity/ProgressT<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$2;-><init>(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 116
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {p0, p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->buffer(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 117
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlowProgress$default(Lrxhttp/wrapper/BodyParamFactory;Lrxhttp/wrapper/coroutines/Await;IILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 46
    move-object p1, p0

    check-cast p1, Lrxhttp/wrapper/CallFactory;

    .line 146
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p4, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$default$$inlined$toClass$1;

    invoke-direct {p4}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$default$$inlined$toClass$1;-><init>()V

    check-cast p4, Lrxhttp/wrapper/parse/Parser;

    invoke-static {p1, p4}, Lrxhttp/CallFactoryToAwaitKt;->toParser(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/parse/Parser;)Lrxhttp/wrapper/coroutines/Await;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    const-string p3, "<this>"

    .line 45
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "await"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p3, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lrxhttp/CallFactoryToFlowKt$toFlowProgress$1;-><init>(Lrxhttp/wrapper/BodyParamFactory;Lrxhttp/wrapper/coroutines/Await;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 54
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {p0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->buffer(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlowProgress$default(Lrxhttp/wrapper/CallFactory;Landroid/content/Context;Landroid/net/Uri;ZIILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 99
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lrxhttp/CallFactoryToFlowKt;->toFlowProgress(Lrxhttp/wrapper/CallFactory;Landroid/content/Context;Landroid/net/Uri;ZI)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlowProgress$default(Lrxhttp/wrapper/CallFactory;Ljava/lang/String;ZIILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 93
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lrxhttp/CallFactoryToFlowKt;->toFlowProgress(Lrxhttp/wrapper/CallFactory;Ljava/lang/String;ZI)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toFlowProgress$default(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZIILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 106
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lrxhttp/CallFactoryToFlowKt;->toFlowProgress(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;ZI)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
