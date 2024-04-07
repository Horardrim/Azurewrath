.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$Blocker;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Blocker"
.end annotation


# instance fields
.field private final task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$Blocker;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$Blocker;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$Blocker;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$Blocker;->setOwner(Ljava/lang/Thread;)V

    return-void
.end method

.method private setOwner(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask$Blocker;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
