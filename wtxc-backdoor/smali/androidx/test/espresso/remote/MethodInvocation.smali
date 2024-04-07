.class final Landroidx/test/espresso/remote/MethodInvocation;
.super Ljava/lang/Object;
.source "MethodInvocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/remote/MethodInvocation$MethodKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MethodInvocation"

.field private static final methodCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
            "Landroidx/test/espresso/remote/MethodInvocation$MethodKey;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final instance:Ljava/lang/Object;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->newBuilder()Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize(J)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->build()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/remote/MethodInvocation;->methodCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "clazz cannot be null!"

    .line 2
    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/remote/MethodInvocation;->instance:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "methodName cannot be null or empty"

    .line 4
    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6
    iput-object p3, p0, Landroidx/test/espresso/remote/MethodInvocation;->methodName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Landroidx/test/espresso/remote/MethodInvocation;->parameterTypes:[Ljava/lang/Class;

    return-void
.end method

.method private static getDeclaredMethod(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Landroidx/test/espresso/remote/MethodInvocation;->getMethodInternal(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static getMethod(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/test/espresso/remote/MethodInvocation;->getMethodInternal(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static getMethodInternal(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;Z)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/espresso/remote/MethodInvocation;->methodCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const-string v2, "MethodInvocation"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v1, :cond_1

    new-array v1, v6, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$000(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 5
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$100(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 6
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$200(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Cache miss for method: %s#%s(%s). Loading into cache."

    .line 3
    invoke-static {v2, v3, v1}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$000(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$100(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$200(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$000(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$100(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$200(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 10
    invoke-interface {v0, p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array p1, v6, [Ljava/lang/Object;

    .line 12
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$000(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    .line 13
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$100(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 14
    invoke-static {p0}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->access$200(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)[Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v3

    const-string p0, "Cache hit for method: %s#%s(%s)."

    .line 11
    invoke-static {v2, p0, p1}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v1
.end method

.method public static invalidateCache()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/remote/MethodInvocation;->methodCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->invalidateAll()V

    return-void
.end method

.method private varargs invokeMethodExplosively(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, "%s.invokeMethodExplosively(%s,%s)"

    const-string v1, "MethodInvocation"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3
    iget-object v6, p0, Landroidx/test/espresso/remote/MethodInvocation;->instance:Ljava/lang/Object;

    invoke-virtual {p1, v6, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    iget-object v6, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 16
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->methodName:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 17
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    .line 4
    invoke-static {v1, v0, v3}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v6

    .line 6
    :try_start_1
    new-instance v7, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Method not accessible: %s"

    new-array v10, v5, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v4

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1, v6}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_1
    move-exception p1

    .line 9
    new-instance v6, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "Cannot create instance of %s"

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 10
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v6

    .line 12
    new-instance v7, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Cannot invoke method %s with args [%s] on builder %s"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object p1, v10, v4

    .line 13
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v5

    iget-object p1, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v2

    .line 15
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1, v6}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    iget-object v6, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 16
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->methodName:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 17
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    .line 4
    invoke-static {v1, v0, v3}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    throw p1
.end method


# virtual methods
.method public varargs invokeDeclaredMethod([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;

    iget-object v1, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Landroidx/test/espresso/remote/MethodInvocation;->methodName:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/espresso/remote/MethodInvocation;->parameterTypes:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 2
    invoke-static {v0}, Landroidx/test/espresso/remote/MethodInvocation;->getDeclaredMethod(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/test/espresso/remote/MethodInvocation;->invokeMethodExplosively(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->methodName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->parameterTypes:[Ljava/lang/Class;

    .line 5
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "No method: %s(%s) found for clazz: %s Available methods: %s"

    .line 8
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs invokeMethod([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;

    iget-object v1, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Landroidx/test/espresso/remote/MethodInvocation;->methodName:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/espresso/remote/MethodInvocation;->parameterTypes:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 2
    invoke-static {v0}, Landroidx/test/espresso/remote/MethodInvocation;->getMethod(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/test/espresso/remote/MethodInvocation;->invokeMethodExplosively(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->methodName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroidx/test/espresso/remote/MethodInvocation;->clazz:Ljava/lang/Class;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "No method: %s found for clazz: %s. Available methods: %s"

    .line 7
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
