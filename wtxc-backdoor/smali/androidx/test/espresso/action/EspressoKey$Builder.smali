.class public Landroidx/test/espresso/action/EspressoKey$Builder;
.super Ljava/lang/Object;
.source "EspressoKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/EspressoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private builderKeyCode:I

.field private isAltPressed:Z

.field private isCtrlPressed:Z

.field private isShiftPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/action/EspressoKey$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    return p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/action/EspressoKey$Builder;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/action/EspressoKey$Builder;->getMetaState()I

    move-result p0

    return p0
.end method

.method private getMetaState()I
    .locals 3

    .line 2
    iget-boolean v0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isShiftPressed:Z

    .line 3
    iget-boolean v1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isAltPressed:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 5
    :cond_0
    iget-boolean v1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isCtrlPressed:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    return v0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/action/EspressoKey;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    const-string v2, "Invalid key code: %s"

    .line 1
    invoke-static {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 3
    new-instance v0, Landroidx/test/espresso/action/EspressoKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/action/EspressoKey;-><init>(Landroidx/test/espresso/action/EspressoKey$Builder;Landroidx/test/espresso/action/EspressoKey$1;)V

    return-object v0
.end method

.method public withAltPressed(Z)Landroidx/test/espresso/action/EspressoKey$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isAltPressed:Z

    return-object p0
.end method

.method public withCtrlPressed(Z)Landroidx/test/espresso/action/EspressoKey$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isCtrlPressed:Z

    return-object p0
.end method

.method public withKeyCode(I)Landroidx/test/espresso/action/EspressoKey$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    return-object p0
.end method

.method public withShiftPressed(Z)Landroidx/test/espresso/action/EspressoKey$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isShiftPressed:Z

    return-object p0
.end method
