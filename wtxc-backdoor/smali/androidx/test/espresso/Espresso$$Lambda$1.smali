.class final synthetic Landroidx/test/espresso/Espresso$$Lambda$1;
.super Ljava/lang/Object;
.source "Espresso.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private final arg$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/espresso/Espresso$$Lambda$1;->arg$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/Espresso$$Lambda$1;->arg$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1, p2}, Landroidx/test/espresso/Espresso;->lambda$waitUntilNextFrame$0$Espresso(Ljava/util/concurrent/CountDownLatch;J)V

    return-void
.end method
