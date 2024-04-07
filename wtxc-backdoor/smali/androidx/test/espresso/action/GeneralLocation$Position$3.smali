.class final enum Landroidx/test/espresso/action/GeneralLocation$Position$3;
.super Landroidx/test/espresso/action/GeneralLocation$Position;
.source "GeneralLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/GeneralLocation$Position;
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
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/GeneralLocation$Position;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/GeneralLocation$1;)V

    return-void
.end method


# virtual methods
.method public getPosition(II)F
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    return p1
.end method
