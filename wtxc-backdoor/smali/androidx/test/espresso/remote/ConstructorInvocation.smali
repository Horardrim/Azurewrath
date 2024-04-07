.class public final Landroidx/test/espresso/remote/ConstructorInvocation;
.super Ljava/lang/Object;
.source "ConstructorInvocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConstructorInvocation"

.field private static final constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
            "Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

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

    sput-object v0, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
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

    iput-object p1, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    return-void
.end method

.method static invalidateCache()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->invalidateAll()V

    return-void
.end method

.method private varargs invokeConstructorExplosively([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "Cannot create instance of %s"

    const-string v1, "%s(%s)"

    const-string v2, "ConstructorInvocation"

    .line 3
    new-instance v3, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;

    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    iget-object v5, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4
    :try_start_0
    sget-object v8, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v8, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_4

    :try_start_1
    const-string v4, "Cache miss for constructor: %s(%s). Loading into cache."

    new-array v9, v5, [Ljava/lang/Object;

    .line 6
    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 7
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 6
    invoke-static {v2, v4, v9}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v9, v4

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v4, v10

    .line 11
    iget-object v12, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_0

    move-object v4, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_1
    if-nez v4, :cond_2

    .line 13
    :try_start_2
    iget-object v8, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    iget-object v9, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    move v8, v7

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    const-string v9, "No constructor found for annotation: %s, or parameter types: %s"

    .line 14
    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    iget-object v11, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    .line 15
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 14
    invoke-static {v8, v9, v10, v11}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v8, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v8, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_4
    :try_start_3
    const-string v3, "Cache hit for constructor: %s(%s)."

    new-array v4, v5, [Ljava/lang/Object;

    .line 17
    iget-object v9, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 18
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 17
    invoke-static {v2, v3, v4}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v8

    .line 20
    :goto_4
    :try_start_4
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-array v3, v5, [Ljava/lang/Object;

    .line 22
    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {v2, v1, v3}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_2
    move-exception v0

    move-object v4, v8

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v4, v8

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 24
    :goto_5
    :try_start_5
    new-instance v3, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Constructor not accessible: %s"

    new-array v10, v7, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v6

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v0

    .line 27
    new-instance v3, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "No constructor found for clazz: %s. Available constructors: %s"

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 28
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 29
    invoke-virtual {v10}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    aput-object v10, v9, v7

    .line 30
    invoke-static {v4, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v3

    .line 32
    new-instance v4, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 33
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_6
    move-exception v3

    .line 35
    new-instance v4, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 36
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 38
    :goto_6
    new-instance v3, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Cannot invoke constructor %s with constructorParams [%s] on clazz %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v6

    .line 39
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v7

    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 40
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v5

    .line 41
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    new-array v3, v5, [Ljava/lang/Object;

    .line 22
    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {v2, v1, v3}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    throw v0
.end method


# virtual methods
.method public varargs invokeConstructor([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/espresso/remote/ConstructorInvocation;->invokeConstructorExplosively([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
