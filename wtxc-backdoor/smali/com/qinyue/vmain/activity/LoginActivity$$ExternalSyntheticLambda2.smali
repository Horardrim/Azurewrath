.class public final synthetic Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/qinyue/vmain/activity/LoginActivity;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/qinyue/vmain/activity/LoginActivity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda2;->f$0:Lcom/qinyue/vmain/activity/LoginActivity;

    iput-wide p2, p0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda2;->f$0:Lcom/qinyue/vmain/activity/LoginActivity;

    iget-wide v1, p0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda2;->f$1:J

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/qinyue/vmain/activity/LoginActivity;->lambda$uploadImg$7$com-qinyue-vmain-activity-LoginActivity(JLjava/lang/String;)V

    return-void
.end method
