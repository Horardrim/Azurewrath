.class Lcom/qinyue/vcommon/utils/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/qinyue/vcommon/utils/ToastUtils$1;->val$text:Ljava/lang/String;

    iput p2, p0, Lcom/qinyue/vcommon/utils/ToastUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ToastUtils$1;->val$text:Ljava/lang/String;

    iget v1, p0, Lcom/qinyue/vcommon/utils/ToastUtils$1;->val$duration:I

    invoke-static {v0, v1}, Lcom/qinyue/vcommon/utils/ToastUtils;->-$$Nest$smshowToast(Ljava/lang/String;I)V

    return-void
.end method
