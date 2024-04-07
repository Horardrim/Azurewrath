.class Lcom/qinyue/vcommon/utils/KeyboardUtils$1;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vcommon/utils/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 192
    invoke-static {}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$sfgetonSoftInputChangedListener()Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/KeyboardUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$smgetContentViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v0

    .line 194
    invoke-static {}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$sfgetsContentViewInvisibleHeightPre()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 195
    invoke-static {}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$sfgetonSoftInputChangedListener()Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    .line 196
    invoke-static {v0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->-$$Nest$sfputsContentViewInvisibleHeightPre(I)V

    :cond_0
    return-void
.end method
