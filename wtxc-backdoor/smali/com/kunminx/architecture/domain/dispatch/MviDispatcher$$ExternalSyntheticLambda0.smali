.class public final synthetic Lcom/kunminx/architecture/domain/dispatch/MviDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;


# instance fields
.field public final synthetic f$0:Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;

    return-void
.end method


# virtual methods
.method public final onRemoveFirst(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;

    check-cast p1, Lcom/kunminx/architecture/domain/message/MutableResult;

    invoke-virtual {v0, p1}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->lambda$sendResult$0$com-kunminx-architecture-domain-dispatch-MviDispatcher(Lcom/kunminx/architecture/domain/message/MutableResult;)V

    return-void
.end method
