.class public abstract enum Landroidx/test/espresso/action/GeneralLocation;
.super Ljava/lang/Enum;
.source "GeneralLocation.java"

# interfaces
.implements Landroidx/test/espresso/action/CoordinatesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/GeneralLocation$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/GeneralLocation;",
        ">;",
        "Landroidx/test/espresso/action/CoordinatesProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum BOTTOM_CENTER:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum BOTTOM_LEFT:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum BOTTOM_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum CENTER:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum CENTER_LEFT:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum CENTER_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum TOP_CENTER:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum TOP_LEFT:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum TOP_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

.field public static final enum VISIBLE_CENTER:Landroidx/test/espresso/action/GeneralLocation;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/action/GeneralLocation;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Landroidx/test/espresso/action/GeneralLocation;

    .line 1
    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->TOP_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->TOP_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->TOP_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->CENTER_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->CENTER:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->CENTER_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation;->VISIBLE_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$1;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->TOP_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    .line 2
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$2;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->TOP_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    .line 3
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$3;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->TOP_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    .line 4
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$4;

    const-string v1, "CENTER_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->CENTER_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    .line 5
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$5;

    const-string v1, "CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->CENTER:Landroidx/test/espresso/action/GeneralLocation;

    .line 6
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$6;

    const-string v1, "CENTER_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->CENTER_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    .line 7
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$7;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    .line 8
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$8;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    .line 9
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$9;

    const-string v1, "BOTTOM_RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    .line 10
    new-instance v0, Landroidx/test/espresso/action/GeneralLocation$10;

    const-string v1, "VISIBLE_CENTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->VISIBLE_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    .line 11
    invoke-static {}, Landroidx/test/espresso/action/GeneralLocation;->$values()[Landroidx/test/espresso/action/GeneralLocation;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/GeneralLocation;->$VALUES:[Landroidx/test/espresso/action/GeneralLocation;

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
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/GeneralLocation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/test/espresso/action/GeneralLocation;->getCoordinates(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/test/espresso/action/GeneralLocation;->getCoordinatesOfVisiblePart(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F

    move-result-object p0

    return-object p0
.end method

.method private static getCoordinates(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroidx/test/espresso/action/GeneralLocation$Position;->getPosition(II)F

    move-result p2

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroidx/test/espresso/action/GeneralLocation$Position;->getPosition(II)F

    move-result p0

    new-array p1, v0, [F

    aput p2, p1, v2

    aput p0, p1, v3

    return-object p1
.end method

.method private static getCoordinatesOfVisiblePart(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p0, 0x0

    aget v3, v1, p0

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroidx/test/espresso/action/GeneralLocation$Position;->getPosition(II)F

    move-result p2

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroidx/test/espresso/action/GeneralLocation$Position;->getPosition(II)F

    move-result p1

    new-array v0, v0, [F

    aput p2, v0, p0

    aput p1, v0, v3

    return-object v0
.end method

.method static translate(Landroidx/test/espresso/action/CoordinatesProvider;FF)Landroidx/test/espresso/action/CoordinatesProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/action/TranslatedCoordinatesProvider;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/espresso/action/TranslatedCoordinatesProvider;-><init>(Landroidx/test/espresso/action/CoordinatesProvider;FF)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/GeneralLocation;
    .locals 1

    const-class v0, Landroidx/test/espresso/action/GeneralLocation;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/GeneralLocation;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/GeneralLocation;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/GeneralLocation;->$VALUES:[Landroidx/test/espresso/action/GeneralLocation;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/GeneralLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/GeneralLocation;

    return-object v0
.end method
