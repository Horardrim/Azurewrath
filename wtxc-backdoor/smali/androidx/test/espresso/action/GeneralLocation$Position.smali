.class abstract enum Landroidx/test/espresso/action/GeneralLocation$Position;
.super Ljava/lang/Enum;
.source "GeneralLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/GeneralLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/GeneralLocation$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/GeneralLocation$Position;

.field public static final enum BEGIN:Landroidx/test/espresso/action/GeneralLocation$Position;

.field public static final enum END:Landroidx/test/espresso/action/GeneralLocation$Position;

.field public static final enum MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/action/GeneralLocation$Position;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 1
    sget-object v1, Landroidx/test/espresso/action/GeneralLocation$Position;->BEGIN:Landroidx/test/espresso/action/GeneralLocation$Position;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation$Position;->MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation$Position;->END:Landroidx/test/espresso/action/GeneralLocation$Position;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$Position$1;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$Position$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->BEGIN:Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 2
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$Position$2;

    const-string v1, "MIDDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$Position$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 3
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$Position$3;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$Position$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->END:Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 4
    invoke-static {}, Landroidx/test/espresso/action/GeneralLocation$Position;->$values()[Landroidx/test/espresso/action/GeneralLocation$Position;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->$VALUES:[Landroidx/test/espresso/action/GeneralLocation$Position;

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

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/action/GeneralLocation$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/GeneralLocation$Position;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/GeneralLocation$Position;
    .locals 1

    const-class v0, Landroidx/test/espresso/action/GeneralLocation$Position;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/GeneralLocation$Position;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/GeneralLocation$Position;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->$VALUES:[Landroidx/test/espresso/action/GeneralLocation$Position;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/GeneralLocation$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/GeneralLocation$Position;

    return-object v0
.end method


# virtual methods
.method abstract getPosition(II)F
.end method
