.class public Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;
.super Ljava/lang/Object;
.source "InstrumentationCoverageReporter.java"


# static fields
.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final EMMA_RUNTIME_CLASS:Ljava/lang/String; = "com.vladium.emma.rt.RT"

.field private static final TAG:Ljava/lang/String; = "InstrumentationCoverageReporter"


# instance fields
.field private final instrumentation:Landroid/app/Instrumentation;

.field private final runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Landroidx/test/internal/runner/storage/RunnerIO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instrumentation",
            "runnerIO"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->instrumentation:Landroid/app/Instrumentation;

    .line 53
    iput-object p2, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    return-void
.end method

.method private dumpCoverageToFile(Ljava/lang/String;Ljava/io/PrintStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coverageFilePath",
            "instrumentationResultWriter"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 105
    sget-object p1, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    const-string v0, "No coverage file path was specified. Dumps to the default file path."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->instrumentation:Landroid/app/Instrumentation;

    .line 107
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "coverage.ec"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->generateCoverageInternal(Ljava/lang/String;Ljava/io/PrintStream;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 113
    sget-object p2, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to generate the coverage data file. Please refer to the instrumentation result for more info."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method private dumpCoverageToTestStorage(Ljava/lang/String;Ljava/io/PrintStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coverageFilePath",
            "instrumentationResultWriter"
        }
    .end annotation

    const-string v0, "coverage.ec"

    if-nez p1, :cond_0

    .line 128
    sget-object p1, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    const-string v1, "No coverage file path was specified. Dumps to the default coverage file using test storage."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 135
    :cond_0
    iget-object v1, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->instrumentation:Landroid/app/Instrumentation;

    .line 136
    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0, p2}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->generateCoverageInternal(Ljava/lang/String;Ljava/io/PrintStream;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    sget-object v1, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to generate the coverage data file. Please refer to the instrumentation result for more info."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :try_start_0
    sget-object v1, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    const-string v2, "Test service is available. Moving the coverage data file to be managed by the storage service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, v0, p1}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->moveFileToTestStorage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 154
    invoke-direct {p0, p2, p1}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private moveFileToTestStorage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcFilePath",
            "destFilePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    sget-object v1, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "Moving coverage file [%s] to the internal test storage [%s]."

    .line 164
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    invoke-interface {v2, p2}, Landroidx/test/internal/runner/storage/RunnerIO;->openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2

    .line 168
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 169
    :try_start_1
    invoke-static {p2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v6, 0x0

    .line 170
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    move-object v5, p1

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 171
    :try_start_3
    invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 172
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v4, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Failed to delete original coverage file [%s]"

    .line 175
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 167
    :try_start_5
    invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v0, v1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_4

    :try_start_7
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {v0, p1}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz p2, :cond_5

    :try_start_9
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    invoke-static {p1, p2}, Landroidx/test/runner/internal/deps/desugar/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method private reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "e"
        }
    .end annotation

    const-string v0, ""

    .line 231
    invoke-direct {p0, p1, v0, p2}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private reportEmmaError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "hint",
            "e"
        }
    .end annotation

    .line 235
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Failed to generate Emma/JaCoCo coverage. "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 236
    :goto_0
    sget-object v0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "\nError: %s"

    .line 237
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public generateCoverageInternal(Ljava/lang/String;Ljava/io/PrintStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coverageFilePath",
            "instrumentationResultWriter"
        }
    .end annotation

    const-string v0, "com.vladium.emma.rt.RT"

    .line 190
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 199
    :try_start_0
    iget-object v3, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->instrumentation:Landroid/app/Instrumentation;

    .line 201
    invoke-virtual {v3}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 200
    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    .line 203
    :catch_5
    :try_start_1
    iget-object v3, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->instrumentation:Landroid/app/Instrumentation;

    .line 204
    invoke-virtual {v3}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "Generating coverage for alternate test context."

    .line 206
    sget-object v4, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "\nWarning: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, p1

    .line 207
    invoke-virtual {p2, v4, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_0
    const-string v3, "dumpCoverageData"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, p1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 214
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, p1

    .line 216
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    .line 225
    :goto_1
    invoke-direct {p0, p2, v0}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Is Emma/JaCoCo jar on classpath?"

    .line 219
    invoke-direct {p0, p2, v1, v0}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return p1
.end method

.method public generateCoverageReport(Ljava/lang/String;Ljava/io/PrintStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coverageFilePath",
            "instrumentationResultWriter"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->runnerIO:Landroidx/test/internal/runner/storage/RunnerIO;

    instance-of v0, v0, Landroidx/test/internal/runner/storage/RunnerTestStorageIO;

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->dumpCoverageToTestStorage(Ljava/lang/String;Ljava/io/PrintStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->dumpCoverageToFile(Ljava/lang/String;Ljava/io/PrintStream;)Ljava/lang/String;

    move-result-object p1

    .line 92
    :goto_0
    sget-object v0, Landroidx/test/internal/runner/coverage/InstrumentationCoverageReporter;->TAG:Ljava/lang/String;

    const-string v1, "Coverage file was generated to "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "\nGenerated code coverage data to %s"

    .line 94
    invoke-virtual {p2, v1, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-object p1
.end method
