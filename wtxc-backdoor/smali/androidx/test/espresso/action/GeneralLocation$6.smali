.class final enum Landroidx/test/espresso/action/GeneralLocation$6;
.super Landroidx/test/espresso/action/GeneralLocation;
.source "GeneralLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/GeneralLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/GeneralLocation;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/GeneralLocation$1;)V

    return-void
.end method


# virtual methods
.method public calculateCoordinates(Landroid/view/View;)[F
    .locals 2

    .line 1
    sget-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation$Position;->END:Landroidx/test/espresso/action/GeneralLocation$Position;

    invoke-static {p1, v0, v1}, Landroidx/test/espresso/action/GeneralLocation;->access$100(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F

    move-result-object p1

    return-object p1
.end method
