.class public Ltpxalwef/vcaxlxqu/zvxlnzrv/App;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static eeph4CheaNg4Uih4iuDaekieXay1eesah4vohph1iifooth7chohPae8eiy8eith8Teeyail5bu4jesiotoTh2maeR3uihoh9ru5oxaeH5choa6po4ooj6Mev0dee2wa:Ltpxalwef/vcaxlxqu/zvxlnzrv/App;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "loader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static native load(Ljava/lang/String;Landroid/content/Context;)V
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ltpxalwef/vcaxlxqu/zvxlnzrv/App;->load(Ljava/lang/String;Landroid/content/Context;)V

    sput-object p0, Ltpxalwef/vcaxlxqu/zvxlnzrv/App;->eeph4CheaNg4Uih4iuDaekieXay1eesah4vohph1iifooth7chohPae8eiy8eith8Teeyail5bu4jesiotoTh2maeR3uihoh9ru5oxaeH5choa6po4ooj6Mev0dee2wa:Ltpxalwef/vcaxlxqu/zvxlnzrv/App;

    return-void
.end method
