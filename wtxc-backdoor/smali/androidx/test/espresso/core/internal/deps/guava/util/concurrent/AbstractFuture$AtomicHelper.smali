.class abstract Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract casListeners(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation
.end method

.method abstract casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method abstract casWaiters(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation
.end method

.method abstract putNext(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V
.end method

.method abstract putThread(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
.end method
