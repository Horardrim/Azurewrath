.class public final Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# static fields
.field private static final getStackTraceDepthMethod:Ljava/lang/reflect/Method;

.field private static final getStackTraceElementMethod:Ljava/lang/reflect/Method;

.field private static final jla:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getJLA()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->jla:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getGetMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_0
    sput-object v2, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getStackTraceElementMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getSizeMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_1
    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getStackTraceDepthMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static getGetMethod()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "getStackTraceElement"

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getJLA()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sun.misc.SharedSecrets"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getJavaLangAccess"

    new-array v4, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0

    :catch_0
    move-exception v0

    .line 6
    throw v0
.end method

.method private static varargs getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ThreadDeath;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sun.misc.JavaLangAccess"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0

    :catch_0
    move-exception p0

    .line 4
    throw p0
.end method

.method private static getSizeMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getStackTraceDepth"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 1
    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static throwIfUnchecked(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 4
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 3
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method
