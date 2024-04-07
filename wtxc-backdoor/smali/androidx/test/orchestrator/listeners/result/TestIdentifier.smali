.class public Landroidx/test/orchestrator/listeners/result/TestIdentifier;
.super Ljava/lang/Object;
.source "TestIdentifier.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final testName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "testName"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 39
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "className and testName must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 73
    :cond_2
    check-cast p1, Landroidx/test/orchestrator/listeners/result/TestIdentifier;

    .line 74
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 75
    iget-object v2, p1, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 78
    :cond_3
    iget-object v3, p1, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 81
    :cond_4
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 82
    iget-object p1, p1, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 85
    :cond_5
    iget-object p1, p1, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 57
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 58
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->getTestName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s#%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
