.class public final synthetic Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/qinyue/vmain/activity/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qinyue/vmain/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda0;->f$0:Lcom/qinyue/vmain/activity/LoginActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda0;->f$0:Lcom/qinyue/vmain/activity/LoginActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/qinyue/vmain/activity/LoginActivity;->lambda$checkPermissions$0$com-qinyue-vmain-activity-LoginActivity(Ljava/lang/Boolean;)V

    return-void
.end method
