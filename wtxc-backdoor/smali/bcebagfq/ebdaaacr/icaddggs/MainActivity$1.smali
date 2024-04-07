.class Lbcebagfq/ebdaaacr/icaddggs/MainActivity$1;
.super Lcom/qinyue/vcommon/listener/OnMultiClickListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->onInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbcebagfq/ebdaaacr/icaddggs/MainActivity;


# direct methods
.method constructor <init>(Lbcebagfq/ebdaaacr/icaddggs/MainActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/MainActivity;

    invoke-direct {p0}, Lcom/qinyue/vcommon/listener/OnMultiClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiClick(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/MainActivity;

    invoke-static {p1}, Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->-$$Nest$fgetmainMessager(Lbcebagfq/ebdaaacr/icaddggs/MainActivity;)Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;

    move-result-object p1

    new-instance v0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;->input(Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;)V

    return-void
.end method
