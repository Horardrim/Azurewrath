.class public final enum Landroidx/test/espresso/action/Swiper$Status;
.super Ljava/lang/Enum;
.source "Swiper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Swiper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/Swiper$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/Swiper$Status;

.field public static final enum FAILURE:Landroidx/test/espresso/action/Swiper$Status;

.field public static final enum SUCCESS:Landroidx/test/espresso/action/Swiper$Status;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/action/Swiper$Status;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/espresso/action/Swiper$Status;

    .line 1
    sget-object v1, Landroidx/test/espresso/action/Swiper$Status;->SUCCESS:Landroidx/test/espresso/action/Swiper$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/action/Swiper$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Swiper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Swiper$Status;->SUCCESS:Landroidx/test/espresso/action/Swiper$Status;

    .line 2
    new-instance v0, Landroidx/test/espresso/action/Swiper$Status;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Swiper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;

    .line 3
    invoke-static {}, Landroidx/test/espresso/action/Swiper$Status;->$values()[Landroidx/test/espresso/action/Swiper$Status;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/Swiper$Status;->$VALUES:[Landroidx/test/espresso/action/Swiper$Status;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/Swiper$Status;
    .locals 1

    const-class v0, Landroidx/test/espresso/action/Swiper$Status;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/Swiper$Status;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/Swiper$Status;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/Swiper$Status;->$VALUES:[Landroidx/test/espresso/action/Swiper$Status;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/Swiper$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/Swiper$Status;

    return-object v0
.end method
