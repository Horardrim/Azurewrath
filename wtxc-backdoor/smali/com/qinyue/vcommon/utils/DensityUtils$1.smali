.class Lcom/qinyue/vcommon/utils/DensityUtils$1;
.super Ljava/lang/Object;
.source "DensityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vcommon/utils/DensityUtils;->forceGetViewSize(Landroid/view/View;Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;Landroid/view/View;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/qinyue/vcommon/utils/DensityUtils$1;->val$listener:Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;

    iput-object p2, p0, Lcom/qinyue/vcommon/utils/DensityUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/DensityUtils$1;->val$listener:Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/qinyue/vcommon/utils/DensityUtils$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;->onGetSize(Landroid/view/View;)V

    :cond_0
    return-void
.end method
