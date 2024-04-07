.class public final enum Landroidx/test/services/events/TestStatus$Status;
.super Ljava/lang/Enum;
.source "TestStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/TestStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/events/TestStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/events/TestStatus$Status;

.field public static final enum ABORTED:Landroidx/test/services/events/TestStatus$Status;

.field public static final enum CANCELLED:Landroidx/test/services/events/TestStatus$Status;

.field public static final enum FAILED:Landroidx/test/services/events/TestStatus$Status;

.field public static final enum IGNORED:Landroidx/test/services/events/TestStatus$Status;

.field public static final enum PASSED:Landroidx/test/services/events/TestStatus$Status;

.field public static final enum SKIPPED:Landroidx/test/services/events/TestStatus$Status;


# direct methods
.method private static synthetic $values()[Landroidx/test/services/events/TestStatus$Status;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/test/services/events/TestStatus$Status;

    .line 31
    sget-object v1, Landroidx/test/services/events/TestStatus$Status;->CANCELLED:Landroidx/test/services/events/TestStatus$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/TestStatus$Status;->IGNORED:Landroidx/test/services/events/TestStatus$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/TestStatus$Status;->SKIPPED:Landroidx/test/services/events/TestStatus$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/TestStatus$Status;->ABORTED:Landroidx/test/services/events/TestStatus$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/TestStatus$Status;->PASSED:Landroidx/test/services/events/TestStatus$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/TestStatus$Status;->FAILED:Landroidx/test/services/events/TestStatus$Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Landroidx/test/services/events/TestStatus$Status;

    const-string v1, "CANCELLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/TestStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/TestStatus$Status;->CANCELLED:Landroidx/test/services/events/TestStatus$Status;

    .line 46
    new-instance v0, Landroidx/test/services/events/TestStatus$Status;

    const-string v1, "IGNORED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/TestStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/TestStatus$Status;->IGNORED:Landroidx/test/services/events/TestStatus$Status;

    .line 55
    new-instance v0, Landroidx/test/services/events/TestStatus$Status;

    const-string v1, "SKIPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/TestStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/TestStatus$Status;->SKIPPED:Landroidx/test/services/events/TestStatus$Status;

    .line 61
    new-instance v0, Landroidx/test/services/events/TestStatus$Status;

    const-string v1, "ABORTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/TestStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/TestStatus$Status;->ABORTED:Landroidx/test/services/events/TestStatus$Status;

    .line 63
    new-instance v0, Landroidx/test/services/events/TestStatus$Status;

    const-string v1, "PASSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/TestStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/TestStatus$Status;->PASSED:Landroidx/test/services/events/TestStatus$Status;

    .line 65
    new-instance v0, Landroidx/test/services/events/TestStatus$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/TestStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/TestStatus$Status;->FAILED:Landroidx/test/services/events/TestStatus$Status;

    .line 31
    invoke-static {}, Landroidx/test/services/events/TestStatus$Status;->$values()[Landroidx/test/services/events/TestStatus$Status;

    move-result-object v0

    sput-object v0, Landroidx/test/services/events/TestStatus$Status;->$VALUES:[Landroidx/test/services/events/TestStatus$Status;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/events/TestStatus$Status;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 31
    const-class v0, Landroidx/test/services/events/TestStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/services/events/TestStatus$Status;

    return-object p0
.end method

.method public static values()[Landroidx/test/services/events/TestStatus$Status;
    .locals 1

    .line 31
    sget-object v0, Landroidx/test/services/events/TestStatus$Status;->$VALUES:[Landroidx/test/services/events/TestStatus$Status;

    invoke-virtual {v0}, [Landroidx/test/services/events/TestStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/events/TestStatus$Status;

    return-object v0
.end method
