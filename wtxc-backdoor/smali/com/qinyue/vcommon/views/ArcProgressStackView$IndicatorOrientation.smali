.class public final enum Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;
.super Ljava/lang/Enum;
.source "ArcProgressStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vcommon/views/ArcProgressStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

.field public static final enum HORIZONTAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

.field public static final enum VERTICAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1125
    new-instance v0, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->HORIZONTAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    new-instance v1, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->VERTICAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1124
    sput-object v3, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->$VALUES:[Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;
    .locals 1

    .line 1124
    const-class v0, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    return-object p0
.end method

.method public static values()[Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;
    .locals 1

    .line 1124
    sget-object v0, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->$VALUES:[Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    invoke-virtual {v0}, [Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    return-object v0
.end method
