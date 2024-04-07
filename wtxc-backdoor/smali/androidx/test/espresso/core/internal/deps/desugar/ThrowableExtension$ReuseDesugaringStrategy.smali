.class final Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ReuseDesugaringStrategy;
.super Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReuseDesugaringStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
