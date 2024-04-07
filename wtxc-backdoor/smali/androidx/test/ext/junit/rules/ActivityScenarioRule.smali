.class public final Landroidx/test/ext/junit/rules/ActivityScenarioRule;
.super Lorg/junit/rules/ExternalResource;
.source "ActivityScenarioRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Lorg/junit/rules/ExternalResource;"
    }
.end annotation


# instance fields
.field private scenario:Landroidx/test/core/app/ActivityScenario;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier<",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 88
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$2;

    invoke-direct {v0, p1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$2;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startActivityIntent",
            "activityOptions"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 97
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$3;

    invoke-direct {v0, p1, p2}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$3;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 70
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$0;

    invoke-direct {v0, p1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$0;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityClass",
            "activityOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 79
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;

    invoke-direct {v0, p1, p2}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    return-void
.end method

.method static final synthetic lambda$new$0$ActivityScenarioRule(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 70
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Landroidx/test/core/app/ActivityScenario;->launch(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$1$ActivityScenarioRule(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 79
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->launch(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$2$ActivityScenarioRule(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 88
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-static {p0}, Landroidx/test/core/app/ActivityScenario;->launch(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$3$ActivityScenarioRule(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 0

    .line 98
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->launch(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected after()V
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    invoke-virtual {v0}, Landroidx/test/core/app/ActivityScenario;->close()V

    return-void
.end method

.method protected before()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    invoke-interface {v0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/core/app/ActivityScenario;

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    return-void
.end method

.method public getScenario()Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/core/app/ActivityScenario;

    return-object v0
.end method
