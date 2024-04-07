.class public final Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;,
        Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ConcurrentWeakIdentityHashMap;,
        Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;,
        Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ReuseDesugaringStrategy;,
        Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;
    }
.end annotation


# static fields
.field static final API_LEVEL:I

.field static final STRATEGY:Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;->readApiLevelFromBuildVersion()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 4
    new-instance v1, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ReuseDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$ReuseDesugaringStrategy;-><init>()V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;->useMimicStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$MimicDesugaringStrategy;-><init>()V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    .line 10
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v3, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit16 v4, v4, 0x85

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "will be used. The error is: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 13
    new-instance v1, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v1}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$NullDesugaringStrategy;-><init>()V

    .line 14
    :goto_1
    sput-object v1, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    sput v0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;->API_LEVEL:I

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;->STRATEGY:Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static readApiLevelFromBuildVersion()Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 5
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method private static useMimicStrategy()Z
    .locals 1

    const-string v0, "androidx.test.espresso.core.internal.deps.desugar.twr_disable_mimic"

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
