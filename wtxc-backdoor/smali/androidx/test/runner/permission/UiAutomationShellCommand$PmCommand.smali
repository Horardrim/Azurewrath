.class final enum Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;
.super Ljava/lang/Enum;
.source "UiAutomationShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/runner/permission/UiAutomationShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PmCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

.field public static final enum GRANT_PERMISSION:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;


# instance fields
.field private final pmCommand:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    .line 42
    sget-object v1, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->GRANT_PERMISSION:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    const-string v1, "GRANT_PERMISSION"

    const/4 v2, 0x0

    const-string v3, "grant"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->GRANT_PERMISSION:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    .line 42
    invoke-static {}, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->$values()[Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    move-result-object v0

    sput-object v0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->$VALUES:[Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "command"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "pm "

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->pmCommand:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 42
    const-class v0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    return-object p0
.end method

.method public static values()[Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;
    .locals 1

    .line 42
    sget-object v0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->$VALUES:[Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    invoke-virtual {v0}, [Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->pmCommand:Ljava/lang/String;

    return-object v0
.end method
