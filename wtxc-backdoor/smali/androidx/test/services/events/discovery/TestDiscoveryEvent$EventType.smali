.class final enum Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;
.super Ljava/lang/Enum;
.source "TestDiscoveryEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/discovery/TestDiscoveryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

.field public static final enum FINISHED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

.field public static final enum STARTED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

.field public static final enum TEST_FOUND:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;


# direct methods
.method private static synthetic $values()[Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    .line 27
    sget-object v1, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->STARTED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->TEST_FOUND:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->FINISHED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->STARTED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    .line 29
    new-instance v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    const-string v1, "TEST_FOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->TEST_FOUND:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    .line 30
    new-instance v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->FINISHED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    .line 27
    invoke-static {}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->$values()[Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    move-result-object v0

    sput-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->$VALUES:[Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 27
    const-class v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    return-object p0
.end method

.method public static values()[Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;
    .locals 1

    .line 27
    sget-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->$VALUES:[Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    invoke-virtual {v0}, [Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    return-object v0
.end method
