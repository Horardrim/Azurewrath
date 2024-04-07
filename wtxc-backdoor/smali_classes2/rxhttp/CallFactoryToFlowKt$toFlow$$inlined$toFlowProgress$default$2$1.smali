.class public final Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2$1;
.super Ljava/lang/Object;
.source "CallFactoryToFlow.kt"

# interfaces
.implements Lrxhttp/wrapper/callback/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallFactoryToFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallFactoryToFlow.kt\nrxhttp/CallFactoryToFlowKt$toFlowProgress$1$1\n*L\n1#1,121:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "progress",
        "",
        "currentSize",
        "",
        "totalSize",
        "onProgress",
        "rxhttp/CallFactoryToFlowKt$toFlowProgress$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Lrxhttp/wrapper/entity/ProgressT<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgress(IJJ)V
    .locals 8

    .line 51
    iget-object v0, p0, Lrxhttp/CallFactoryToFlowKt$toFlow$$inlined$toFlowProgress$default$2$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v7, Lrxhttp/wrapper/entity/ProgressT;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lrxhttp/wrapper/entity/ProgressT;-><init>(IJJ)V

    invoke-interface {v0, v7}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
