.class final synthetic Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;
.super Ljava/lang/Object;
.source "ActivityScenarioRule.java"

# interfaces
.implements Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;


# instance fields
.field private final arg$1:Ljava/lang/Class;

.field private final arg$2:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;->arg$1:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;->arg$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 79
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;->arg$1:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;->arg$2:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$1$ActivityScenarioRule(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    move-result-object v0

    return-object v0
.end method
