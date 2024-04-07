.class Lcom/qinyue/vcommon/views/ArcProgressStackView$1;
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

    .line 107
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$1;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$1;->setDither(Z)V

    .line 110
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$1;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
