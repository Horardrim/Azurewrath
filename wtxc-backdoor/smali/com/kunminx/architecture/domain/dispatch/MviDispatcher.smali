.class public Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;
.super Landroidx/lifecycle/ViewModel;
.source "MviDispatcher.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/kunminx/architecture/domain/event/Event;",
        ">",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_QUEUE_LENGTH:I = 0xa


# instance fields
.field private final mFragmentOwner:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/Observer<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final mOwner:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kunminx/architecture/domain/queue/FixedLengthList<",
            "Lcom/kunminx/architecture/domain/message/MutableResult<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mOwner:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mFragmentOwner:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mObservers:Ljava/util/HashMap;

    .line 27
    new-instance v0, Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-direct {v0}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;-><init>()V

    iput-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    return-void
.end method

.method private outputTo(Ljava/lang/Integer;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "TE;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mOwner:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-virtual {p1}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunminx/architecture/domain/message/MutableResult;

    .line 50
    invoke-virtual {v0, p2, p3}, Lcom/kunminx/architecture/domain/message/MutableResult;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected initQueueMaxLength()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public input(Lcom/kunminx/architecture/domain/event/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method synthetic lambda$sendResult$0$com-kunminx-architecture-domain-dispatch-MviDispatcher(Lcom/kunminx/architecture/domain/message/MutableResult;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Observer;

    .line 58
    invoke-virtual {p1, v1}, Lcom/kunminx/architecture/domain/message/MutableResult;->removeObserver(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 100
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 101
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mFragmentOwner:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mOwner:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    .line 104
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 106
    iget-object v1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mOwner:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mFragmentOwner:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-virtual {v0}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kunminx/architecture/domain/message/MutableResult;

    .line 109
    iget-object v2, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2}, Lcom/kunminx/architecture/domain/message/MutableResult;->removeObserver(Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mObservers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 116
    iget-object p1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-virtual {p1}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->clear()V

    :cond_5
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final output(Landroidx/appcompat/app/AppCompatActivity;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/lifecycle/Observer<",
            "TE;>;)V"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 35
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0, p1, p2}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->outputTo(Ljava/lang/Integer;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final output(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/lifecycle/Observer<",
            "TE;>;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 41
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mFragmentOwner:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->outputTo(Ljava/lang/Integer;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected final sendResult(Lcom/kunminx/architecture/domain/event/Event;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-virtual {p0}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->initQueueMaxLength()I

    move-result v1

    new-instance v2, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->init(ILcom/kunminx/architecture/domain/queue/FixedLengthList$QueueCallback;)V

    .line 62
    iget-object v0, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-virtual {v0}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kunminx/architecture/domain/message/MutableResult;

    .line 63
    invoke-virtual {v1}, Lcom/kunminx/architecture/domain/message/MutableResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 64
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/kunminx/architecture/domain/message/MutableResult;

    invoke-direct {v0, p1}, Lcom/kunminx/architecture/domain/message/MutableResult;-><init>(Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/Observer;

    .line 75
    iget-object v4, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mOwner:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    .line 77
    invoke-virtual {v0, v3, v2}, Lcom/kunminx/architecture/domain/message/MutableResult;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-virtual {v1, v0}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;->mResults:Lcom/kunminx/architecture/domain/queue/FixedLengthList;

    invoke-virtual {v1}, Lcom/kunminx/architecture/domain/queue/FixedLengthList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kunminx/architecture/domain/message/MutableResult;

    .line 84
    invoke-virtual {v2}, Lcom/kunminx/architecture/domain/message/MutableResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 85
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_4

    move-object v0, v2

    :cond_5
    if-eqz v0, :cond_6

    .line 91
    invoke-virtual {v0, p1}, Lcom/kunminx/architecture/domain/message/MutableResult;->setValue(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
