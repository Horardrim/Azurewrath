.class Lcom/qinyue/vmain/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vmain/activity/LoginActivity;->onInitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinyue/vmain/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/qinyue/vmain/activity/LoginActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$2;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 143
    iget-object p2, p0, Lcom/qinyue/vmain/activity/LoginActivity$2;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {p2}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$mcheckPermissions(Lcom/qinyue/vmain/activity/LoginActivity;)V

    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
