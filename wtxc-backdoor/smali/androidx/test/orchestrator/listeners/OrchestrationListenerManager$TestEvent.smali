.class public final enum Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
.super Ljava/lang/Enum;
.source "OrchestrationListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_IGNORED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_RUN_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_RUN_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;


# direct methods
.method private static synthetic $values()[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 36
    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_IGNORED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_RUN_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 38
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_RUN_FINISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 39
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 40
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_FINISHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 41
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_FAILURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 42
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_ASSUMPTION_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 43
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_IGNORED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_IGNORED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 36
    invoke-static {}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->$values()[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    move-result-object v0

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->$VALUES:[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 36
    const-class v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    return-object p0
.end method

.method public static values()[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    .locals 1

    .line 36
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->$VALUES:[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-virtual {v0}, [Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    return-object v0
.end method
