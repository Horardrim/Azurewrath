.class final Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CallFactoryToAwait.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/CallFactoryToAwaitKt$toAwait$1;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "rxhttp.CallFactoryToAwaitKt$toAwait$1"
    f = "CallFactoryToAwait.kt"
    i = {
        0x0
    }
    l = {
        0x59
    }
    m = "await"
    n = {
        "t"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lrxhttp/CallFactoryToAwaitKt$toAwait$1;


# direct methods
.method constructor <init>(Lrxhttp/CallFactoryToAwaitKt$toAwait$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/CallFactoryToAwaitKt$toAwait$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->this$0:Lrxhttp/CallFactoryToAwaitKt$toAwait$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->result:Ljava/lang/Object;

    iget p1, p0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->label:I

    iget-object p1, p0, Lrxhttp/CallFactoryToAwaitKt$toAwait$1$await$1;->this$0:Lrxhttp/CallFactoryToAwaitKt$toAwait$1;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lrxhttp/CallFactoryToAwaitKt$toAwait$1;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
