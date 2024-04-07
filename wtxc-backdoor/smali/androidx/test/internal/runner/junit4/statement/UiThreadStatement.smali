.class public Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;
.super Lorg/junit/runners/model/Statement;
.source "UiThreadStatement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiThreadStatement"


# instance fields
.field private final base:Lorg/junit/runners/model/Statement;

.field private final runOnUiThread:Z


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "runOnUiThread"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->base:Lorg/junit/runners/model/Statement;

    .line 40
    iput-boolean p2, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->base:Lorg/junit/runners/model/Statement;

    return-object p0
.end method

.method private static classHasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 101
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 111
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_3
    return v2
.end method

.method private static hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0, p1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->classHasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadUiThreadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "UiThreadStatement"

    const-string v1, "Already on the UI thread, this method should not be called from the main application thread"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 136
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const-string v0, "android.test.UiThreadTest"

    .line 73
    invoke-static {v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->loadUiThreadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "androidx.test.annotation.UiThreadTest"

    .line 80
    invoke-static {v1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->loadUiThreadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    invoke-static {p0, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-static {p0, v1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public evaluate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread:Z

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 51
    new-instance v1, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;

    invoke-direct {v1, p0, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;-><init>(Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    throw v0

    .line 67
    :cond_1
    iget-object v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    :goto_0
    return-void
.end method

.method public isRunOnUiThread()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread:Z

    return v0
.end method
