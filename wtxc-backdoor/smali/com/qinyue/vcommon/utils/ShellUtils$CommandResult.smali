.class public Lcom/qinyue/vcommon/utils/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vcommon/utils/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public final result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p1, p0, Lcom/qinyue/vcommon/utils/ShellUtils$CommandResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p1, p0, Lcom/qinyue/vcommon/utils/ShellUtils$CommandResult;->result:I

    .line 262
    iput-object p2, p0, Lcom/qinyue/vcommon/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 263
    iput-object p3, p0, Lcom/qinyue/vcommon/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method
