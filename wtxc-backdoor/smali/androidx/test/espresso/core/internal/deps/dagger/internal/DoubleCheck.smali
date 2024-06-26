.class public final Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;
.super Ljava/lang/Object;
.source "DoubleCheck.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = true

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 3
    sget-boolean v0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Ljavax/inject/Provider<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/MemoizedSentinel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x76

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " & "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This is likely due to a circular dependency."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object p1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 2
    sget-object v1, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
