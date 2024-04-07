.class public Landroidx/test/espresso/remote/RemoteInteractionRegistry;
.super Ljava/lang/Object;
.source "RemoteInteractionRegistry.java"


# static fields
.field private static final sInstance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/test/espresso/remote/RemoteInteraction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroidx/test/espresso/remote/NoopRemoteInteraction;

    invoke-direct {v1}, Landroidx/test/espresso/remote/NoopRemoteInteraction;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/test/espresso/remote/RemoteInteraction;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/remote/RemoteInteraction;

    return-object v0
.end method

.method public static registerInstance(Landroidx/test/espresso/remote/RemoteInteraction;)V
    .locals 1

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroidx/test/espresso/remote/NoopRemoteInteraction;

    invoke-direct {v0}, Landroidx/test/espresso/remote/NoopRemoteInteraction;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
