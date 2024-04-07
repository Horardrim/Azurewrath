.class public final Lcom/qinyue/vcommon/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static bridge synthetic -$$Nest$smshowToast(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qinyue/vcommon/utils/ToastUtils;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .line 138
    sget-object v0, Lcom/qinyue/vcommon/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private static isMainLooper()Z
    .locals 2

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 3

    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qinyue/vcommon/R$layout;->layout_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x11

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v1, p0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 126
    sget p0, Lcom/qinyue/vcommon/R$id;->tv_info:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setDuration(I)V

    return-object v1
.end method

.method private static showToast(Ljava/lang/String;I)V
    .locals 1

    .line 104
    sget-object v0, Lcom/qinyue/vcommon/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/qinyue/vcommon/utils/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/qinyue/vcommon/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/qinyue/vcommon/R$id;->tv_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    sget-object p0, Lcom/qinyue/vcommon/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static toast(I)V
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public static toast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public static toast(Ljava/lang/String;I)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/qinyue/vcommon/utils/ToastUtils;->isMainLooper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Lcom/qinyue/vcommon/utils/ToastUtils;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/qinyue/vcommon/utils/ToastUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/qinyue/vcommon/utils/ToastUtils$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/XUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static toastDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
