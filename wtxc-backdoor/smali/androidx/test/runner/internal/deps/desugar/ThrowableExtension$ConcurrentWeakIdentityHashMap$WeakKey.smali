.class final Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p2, "The referent cannot be null"

    .line 358
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 376
    :cond_1
    check-cast p1, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;

    .line 379
    iget v2, p0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    iget v3, p1, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 365
    iget v0, p0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap$WeakKey;->hash:I

    return v0
.end method
