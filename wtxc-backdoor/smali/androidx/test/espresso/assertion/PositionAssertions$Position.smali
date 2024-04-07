.class final enum Landroidx/test/espresso/assertion/PositionAssertions$Position;
.super Ljava/lang/Enum;
.source "PositionAssertions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/assertion/PositionAssertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/assertion/PositionAssertions$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum BOTTOM_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum LEFT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum RIGHT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum TOP_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;


# instance fields
.field private final positionValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/assertion/PositionAssertions$Position;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 1
    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->LEFT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->RIGHT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->TOP_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->BOTTOM_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "COMPLETELY_LEFT_OF"

    const/4 v2, 0x0

    const-string v3, "completely left of"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 2
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "COMPLETELY_RIGHT_OF"

    const/4 v2, 0x1

    const-string v3, "completely right of"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 3
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "COMPLETELY_ABOVE"

    const/4 v2, 0x2

    const-string v3, "completely above"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 4
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "COMPLETELY_BELOW"

    const/4 v2, 0x3

    const-string v3, "completely below"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 5
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "PARTIALLY_LEFT_OF"

    const/4 v2, 0x4

    const-string v3, "partially left of"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 6
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "PARTIALLY_RIGHT_OF"

    const/4 v2, 0x5

    const-string v3, "partially right of"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 7
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "PARTIALLY_ABOVE"

    const/4 v2, 0x6

    const-string v3, "partially above"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 8
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "PARTIALLY_BELOW"

    const/4 v2, 0x7

    const-string v3, "partially below"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 9
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "LEFT_ALIGNED"

    const/16 v2, 0x8

    const-string v3, "aligned left with"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->LEFT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 10
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "RIGHT_ALIGNED"

    const/16 v2, 0x9

    const-string v3, "aligned right with"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->RIGHT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 11
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "TOP_ALIGNED"

    const/16 v2, 0xa

    const-string v3, "aligned top with"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->TOP_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 12
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "BOTTOM_ALIGNED"

    const/16 v2, 0xb

    const-string v3, "aligned bottom with"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->BOTTOM_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 13
    invoke-static {}, Landroidx/test/espresso/assertion/PositionAssertions$Position;->$values()[Landroidx/test/espresso/assertion/PositionAssertions$Position;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->$VALUES:[Landroidx/test/espresso/assertion/PositionAssertions$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->positionValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/assertion/PositionAssertions$Position;
    .locals 1

    const-class v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/assertion/PositionAssertions$Position;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->$VALUES:[Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-virtual {v0}, [Landroidx/test/espresso/assertion/PositionAssertions$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/assertion/PositionAssertions$Position;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->positionValue:Ljava/lang/String;

    return-object v0
.end method
