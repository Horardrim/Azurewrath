.class Lcom/qinyue/vcommon/views/ArcProgressStackView$2;
.super Landroid/text/TextPaint;
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

    .line 113
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$2;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-direct {p0, p2}, Landroid/text/TextPaint;-><init>(I)V

    const/4 p1, 0x1

    .line 115
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$2;->setDither(Z)V

    .line 116
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$2;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method
