.class public final enum Lcom/qinyue/vcommon/constants/SkinType;
.super Ljava/lang/Enum;
.source "SkinType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qinyue/vcommon/constants/SkinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinyue/vcommon/constants/SkinType;

.field public static final enum NIGHT:Lcom/qinyue/vcommon/constants/SkinType;

.field public static final enum NORMAL:Lcom/qinyue/vcommon/constants/SkinType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/qinyue/vcommon/constants/SkinType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "normal"

    invoke-direct {v0, v1, v2, v3}, Lcom/qinyue/vcommon/constants/SkinType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qinyue/vcommon/constants/SkinType;->NORMAL:Lcom/qinyue/vcommon/constants/SkinType;

    new-instance v1, Lcom/qinyue/vcommon/constants/SkinType;

    const-string v3, "NIGHT"

    const/4 v4, 0x1

    const-string v5, "night"

    invoke-direct {v1, v3, v4, v5}, Lcom/qinyue/vcommon/constants/SkinType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/qinyue/vcommon/constants/SkinType;->NIGHT:Lcom/qinyue/vcommon/constants/SkinType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/qinyue/vcommon/constants/SkinType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 9
    sput-object v3, Lcom/qinyue/vcommon/constants/SkinType;->$VALUES:[Lcom/qinyue/vcommon/constants/SkinType;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/qinyue/vcommon/constants/SkinType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinyue/vcommon/constants/SkinType;
    .locals 1

    .line 9
    const-class v0, Lcom/qinyue/vcommon/constants/SkinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qinyue/vcommon/constants/SkinType;

    return-object p0
.end method

.method public static values()[Lcom/qinyue/vcommon/constants/SkinType;
    .locals 1

    .line 9
    sget-object v0, Lcom/qinyue/vcommon/constants/SkinType;->$VALUES:[Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {v0}, [Lcom/qinyue/vcommon/constants/SkinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinyue/vcommon/constants/SkinType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/qinyue/vcommon/constants/SkinType;->value:Ljava/lang/String;

    return-object v0
.end method
