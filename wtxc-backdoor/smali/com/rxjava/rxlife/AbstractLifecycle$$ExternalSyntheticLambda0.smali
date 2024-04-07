.class public final synthetic Lcom/rxjava/rxlife/AbstractLifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rxjava/rxlife/AbstractLifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/rxjava/rxlife/AbstractLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rxjava/rxlife/AbstractLifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/rxjava/rxlife/AbstractLifecycle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/rxjava/rxlife/AbstractLifecycle;

    invoke-virtual {v0}, Lcom/rxjava/rxlife/AbstractLifecycle;->removeObserver()V

    return-void
.end method
