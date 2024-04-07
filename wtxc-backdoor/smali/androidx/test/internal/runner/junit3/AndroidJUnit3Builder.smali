.class public Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;
.super Lorg/junit/internal/builders/JUnit3Builder;
.source "AndroidJUnit3Builder.java"


# static fields
.field public static final NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

.field private static final TAG:Ljava/lang/String; = "AndroidJUnit3Builder"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

.field private final scanningPath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder$1;

    invoke-direct {v0}, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder$1;-><init>()V

    sput-object v0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

    return-void
.end method

.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerParams"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnerParams",
            "scanningPath"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/junit/internal/builders/JUnit3Builder;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 64
    iput-boolean p2, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->scanningPath:Z

    return-void
.end method


# virtual methods
.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->isJUnit3Test(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-boolean v0, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->scanningPath:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->hasJUnit3TestMethod(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object p1, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v1, Landroidx/test/internal/runner/junit3/AndroidTestSuite;

    iget-object v2, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-direct {v1, p1, v2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;-><init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "AndroidJUnit3Builder"

    const-string v1, "Error constructing runner"

    .line 91
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    throw p1
.end method
