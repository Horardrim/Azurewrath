.class public Lcom/kunminx/architecture/domain/queue/FixedLengthList;
.super Ljava/util/LinkedList;
.source "FixedLengthList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private hasBeenInit:Z

.field private maxLength:I

.field private queueCallback:Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->maxLength:I

    if-le v0, v1, :cond_0

    .line 24
    invoke-super {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->queueCallback:Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;->onRemoveFirst(Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final init(ILcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
    iget-boolean v0, p0, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->hasBeenInit:Z

    if-nez v0, :cond_0

    .line 15
    iput p1, p0, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->maxLength:I

    .line 16
    iput-object p2, p0, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->queueCallback:Lcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->hasBeenInit:Z

    :cond_0
    return-void
.end method
