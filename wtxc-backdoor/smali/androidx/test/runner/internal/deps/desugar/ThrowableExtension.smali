.class public final Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;,
        Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;,
        Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;,
        Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ReuseDesugaringStrategy;,
        Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;
    }
.end annotation


# static fields
.field private static final ANDROID_OS_BUILD_VERSION:Ljava/lang/String; = "android.os.Build$VERSION"

.field static final API_LEVEL:I

.field static final STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

.field public static final SYSTEM_PROPERTY_TWR_DISABLE_MIMIC:Ljava/lang/String; = "androidx.test.runner.internal.deps.desugar.twr_disable_mimic"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    :try_start_0
    invoke-static {}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->readApiLevelFromBuildVersion()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 57
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 58
    new-instance v1, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ReuseDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$ReuseDesugaringStrategy;-><init>()V

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->useMimicStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;-><init>()V

    goto :goto_1

    .line 62
    :cond_1
    new-instance v1, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    .line 67
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v3, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;

    .line 70
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x85

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "will be used. The error is: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 73
    new-instance v1, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;-><init>()V

    .line 75
    :goto_1
    sput-object v1, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    sput v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->API_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    sget-object v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static closeResource(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    :try_start_0
    sget v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->API_LEVEL:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 109
    check-cast p1, Ljava/lang/AutoCloseable;

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_2

    .line 112
    check-cast p1, Ljava/io/Closeable;

    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "close"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 116
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 126
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 127
    throw p1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 122
    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Fail to call close() on "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    .line 118
    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have a close() method."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 133
    invoke-static {p0, p1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 134
    throw p0

    .line 136
    :cond_3
    throw p1
.end method

.method public static getStrategy()Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;
    .locals 1

    .line 80
    sget-object v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    return-object v0
.end method

.method public static getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 1

    .line 88
    sget-object v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;->getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    .line 92
    sget-object v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 1

    .line 100
    sget-object v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 1

    .line 96
    sget-object v0, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static readApiLevelFromBuildVersion()Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 161
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 165
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method private static useMimicStrategy()Z
    .locals 1

    const-string v0, "androidx.test.runner.internal.deps.desugar.twr_disable_mimic"

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
