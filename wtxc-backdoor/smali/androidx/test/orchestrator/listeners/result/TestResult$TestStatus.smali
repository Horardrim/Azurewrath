.class public final enum Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
.super Ljava/lang/Enum;
.source "TestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/listeners/result/TestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum IGNORED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum PASSED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;


# direct methods
.method private static synthetic $values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 29
    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->PASSED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->IGNORED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v1, "FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 33
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v1, "PASSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->PASSED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 35
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v1, "INCOMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 37
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v1, "ASSUMPTION_FAILURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 39
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v1, "IGNORED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->IGNORED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 29
    invoke-static {}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->$values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v0

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->$VALUES:[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 29
    const-class v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-object p0
.end method

.method public static values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .locals 1

    .line 29
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->$VALUES:[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v0}, [Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-object v0
.end method
