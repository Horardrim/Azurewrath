.class final enum Landroidx/test/espresso/action/Tap$1;
.super Landroidx/test/espresso/action/Tap;
.source "Tap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Tap;
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
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/Tap;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/Tap$1;)V

    return-void
.end method


# virtual methods
.method public sendTap(Landroidx/test/espresso/UiController;[F[F)Landroidx/test/espresso/action/Tapper$Status;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/test/espresso/action/Tap$1;->sendTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;

    move-result-object p1

    return-object p1
.end method

.method public sendTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/test/espresso/action/Tap;->access$100(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;

    move-result-object p2

    .line 4
    sget-object p3, Landroidx/test/espresso/action/Tapper$Status;->SUCCESS:Landroidx/test/espresso/action/Tapper$Status;

    if-ne p3, p2, :cond_0

    .line 5
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3fc00000    # 1.5f

    mul-float/2addr p3, p4

    float-to-long p3, p3

    .line 6
    invoke-interface {p1, p3, p4}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    :cond_0
    return-object p2
.end method
