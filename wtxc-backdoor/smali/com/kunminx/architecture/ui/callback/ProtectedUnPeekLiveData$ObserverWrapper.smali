.class Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "ProtectedUnPeekLiveData.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObserverWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private mVersion:I

.field final synthetic this$0:Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;


# direct methods
.method public constructor <init>(Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;Landroidx/lifecycle/Observer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->this$0:Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    .line 123
    iput p3, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->mVersion:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    check-cast p1, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;

    .line 143
    iget-object v0, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    iget-object p1, p1, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->this$0:Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;

    invoke-static {v0}, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;->access$000(Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->mVersion:I

    if-le v0, v1, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->this$0:Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;

    iget-boolean v0, v0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData;->isAllowNullValue:Z

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kunminx/architecture/ui/callback/ProtectedUnPeekLiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    invoke-interface {v0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
