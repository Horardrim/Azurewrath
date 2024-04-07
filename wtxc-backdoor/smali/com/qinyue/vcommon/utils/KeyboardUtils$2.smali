.class Lcom/qinyue/vcommon/utils/KeyboardUtils$2;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vcommon/utils/KeyboardUtils;->fixAndroidBug5497(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$contentViewChild:Landroid/view/View;

.field final synthetic val$paddingBottom:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$contentViewChild:Landroid/view/View;

    iput p3, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$paddingBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$smgetContentViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v0

    .line 237
    invoke-static {}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$sfgetsContentViewInvisibleHeightPre5497()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$contentViewChild:Landroid/view/View;

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$contentViewChild:Landroid/view/View;

    .line 240
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$contentViewChild:Landroid/view/View;

    .line 241
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;->val$paddingBottom:I

    add-int/2addr v5, v0

    .line 238
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 244
    invoke-static {v0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$sfputsContentViewInvisibleHeightPre5497(I)V

    :cond_0
    return-void
.end method
