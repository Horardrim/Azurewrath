.class public Landroidx/test/espresso/Root$Builder;
.super Ljava/lang/Object;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/Root;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private decorView:Landroid/view/View;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/Root$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/Root$Builder;->decorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/Root$Builder;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/Root$Builder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/Root;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/Root;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/Root;-><init>(Landroidx/test/espresso/Root$Builder;Landroidx/test/espresso/Root$1;)V

    return-object v0
.end method

.method public withDecorView(Landroid/view/View;)Landroidx/test/espresso/Root$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/Root$Builder;->decorView:Landroid/view/View;

    return-object p0
.end method

.method public withWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroidx/test/espresso/Root$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/Root$Builder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method
