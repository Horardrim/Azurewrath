.class Lcom/qinyue/vcommon/views/ArcProgressStackView$4;
.super Ljava/lang/Object;
.source "ArcProgressStackView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vcommon/views/ArcProgressStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;


# direct methods
.method constructor <init>(Lcom/qinyue/vcommon/views/ArcProgressStackView;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$4;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$4;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->-$$Nest$fputmAnimatedFraction(Lcom/qinyue/vcommon/views/ArcProgressStackView;F)V

    .line 313
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$4;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-static {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->-$$Nest$fgetmAnimatorUpdateListener(Lcom/qinyue/vcommon/views/ArcProgressStackView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$4;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-static {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->-$$Nest$fgetmAnimatorUpdateListener(Lcom/qinyue/vcommon/views/ArcProgressStackView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$4;->this$0:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-virtual {p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method
