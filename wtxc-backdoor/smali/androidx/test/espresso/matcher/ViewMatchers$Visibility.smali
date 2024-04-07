.class public final enum Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
.super Ljava/lang/Enum;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/matcher/ViewMatchers$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

.field public static final enum GONE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

.field public static final enum INVISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

.field public static final enum VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 1
    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->INVISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->GONE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->INVISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 3
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const-string v1, "GONE"

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->GONE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 4
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->$values()[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->$VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->value:I

    return-void
.end method

.method public static forViewVisibility(I)Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->GONE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid visibility value <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->INVISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-object p0
.end method

.method public static forViewVisibility(Landroid/view/View;)Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->forViewVisibility(I)Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .locals 1

    const-class v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->$VALUES:[Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v0}, [Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->value:I

    return v0
.end method
