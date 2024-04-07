.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cancellation"
.end annotation


# static fields
.field static final CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

.field static final CAUSELESS_INTERRUPTED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;


# instance fields
.field final cause:Ljava/lang/Throwable;

.field final wasInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$300()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 3
    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    .line 5
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    return-void
.end method
