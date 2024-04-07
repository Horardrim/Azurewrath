.class Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;
.super Ljava/lang/Object;
.source "NonLeakyTestSuite.java"

# interfaces
.implements Ljunit/framework/Test;
.implements Lorg/junit/runner/Describable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/junit3/NonLeakyTestSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonLeakyTest"
.end annotation


# instance fields
.field private delegate:Ljunit/framework/Test;

.field private final desc:Lorg/junit/runner/Description;


# direct methods
.method constructor <init>(Ljunit/framework/Test;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->delegate:Ljunit/framework/Test;

    .line 48
    invoke-static {p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->desc:Lorg/junit/runner/Description;

    return-void
.end method


# virtual methods
.method public countTestCases()I
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->delegate:Ljunit/framework/Test;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->desc:Lorg/junit/runner/Description;

    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->delegate:Ljunit/framework/Test;

    invoke-interface {v0, p1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->delegate:Ljunit/framework/Test;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->delegate:Ljunit/framework/Test;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite$NonLeakyTest;->desc:Lorg/junit/runner/Description;

    invoke-virtual {v0}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
