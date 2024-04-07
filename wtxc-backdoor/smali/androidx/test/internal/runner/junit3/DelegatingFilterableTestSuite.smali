.class Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;
.super Landroidx/test/internal/runner/junit3/DelegatingTestSuite;
.source "DelegatingFilterableTestSuite.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;


# annotations
.annotation runtime Lorg/junit/Ignore;
.end annotation


# direct methods
.method public constructor <init>(Ljunit/framework/TestSuite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suiteDelegate"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    return-void
.end method

.method private static makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->getDelegateSuite()Ljunit/framework/TestSuite;

    move-result-object v0

    .line 37
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 40
    invoke-virtual {v0, v3}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    .line 41
    invoke-static {v4}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v1, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->setDelegateSuite(Ljunit/framework/TestSuite;)V

    .line 46
    invoke-virtual {v1}, Ljunit/framework/TestSuite;->testCount()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 47
    :cond_2
    new-instance p1, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {p1}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw p1
.end method
