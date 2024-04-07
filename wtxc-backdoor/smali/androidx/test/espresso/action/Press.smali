.class public abstract enum Landroidx/test/espresso/action/Press;
.super Ljava/lang/Enum;
.source "Press.java"

# interfaces
.implements Landroidx/test/espresso/action/PrecisionDescriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/Press;",
        ">;",
        "Landroidx/test/espresso/action/PrecisionDescriber;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/Press;

.field public static final enum FINGER:Landroidx/test/espresso/action/Press;

.field public static final enum PINPOINT:Landroidx/test/espresso/action/Press;

.field public static final enum THUMB:Landroidx/test/espresso/action/Press;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/action/Press;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/espresso/action/Press;

    .line 1
    sget-object v1, Landroidx/test/espresso/action/Press;->PINPOINT:Landroidx/test/espresso/action/Press;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/Press;->THUMB:Landroidx/test/espresso/action/Press;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/action/Press$1;

    const-string v1, "PINPOINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Press$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Press;->PINPOINT:Landroidx/test/espresso/action/Press;

    .line 2
    new-instance v0, Landroidx/test/espresso/action/Press$2;

    const-string v1, "FINGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Press$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    .line 3
    new-instance v0, Landroidx/test/espresso/action/Press$3;

    const-string v1, "THUMB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Press$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Press;->THUMB:Landroidx/test/espresso/action/Press;

    .line 4
    invoke-static {}, Landroidx/test/espresso/action/Press;->$values()[Landroidx/test/espresso/action/Press;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/Press;->$VALUES:[Landroidx/test/espresso/action/Press;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/action/Press$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/Press;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/Press;
    .locals 1

    const-class v0, Landroidx/test/espresso/action/Press;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/Press;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/Press;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/Press;->$VALUES:[Landroidx/test/espresso/action/Press;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/Press;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/Press;

    return-object v0
.end method
