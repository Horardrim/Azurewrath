.class final enum Landroidx/test/espresso/action/Press$3;
.super Landroidx/test/espresso/action/Press;
.source "Press.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Press;
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
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/Press;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/Press$1;)V

    return-void
.end method


# virtual methods
.method public describePrecision()[F
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x41c80000    # 25.0f
        0x41c80000    # 25.0f
    .end array-data
.end method
