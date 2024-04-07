.class Lcom/qinyue/vcommon/views/ArcProgressStackView$3;
.super Landroid/graphics/Paint;
.source "ArcProgressStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vcommon/views/ArcProgressStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;


# direct methods
.method constructor <init>(Lcom/qinyue/vcommon/views/ArcProgressStackView;I)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$3;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$3;->setDither(Z)V

    .line 122
    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$3;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    new-instance p1, Landroid/graphics/CornerPathEffect;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-direct {p1, p2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$3;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method
