.class public final Landroidx/test/espresso/action/EspressoKey;
.super Ljava/lang/Object;
.source "EspressoKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/EspressoKey$Builder;
    }
.end annotation


# instance fields
.field private final keyCode:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field

.field private final metaState:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/test/espresso/action/EspressoKey;->keyCode:I

    .line 3
    iput p2, p0, Landroidx/test/espresso/action/EspressoKey;->metaState:I

    return-void
.end method

.method private constructor <init>(Landroidx/test/espresso/action/EspressoKey$Builder;)V
    .locals 1

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/action/EspressoKey$Builder;->access$000(Landroidx/test/espresso/action/EspressoKey$Builder;)I

    move-result v0

    invoke-static {p1}, Landroidx/test/espresso/action/EspressoKey$Builder;->access$100(Landroidx/test/espresso/action/EspressoKey$Builder;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/test/espresso/action/EspressoKey;-><init>(II)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/action/EspressoKey$Builder;Landroidx/test/espresso/action/EspressoKey$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroidx/test/espresso/action/EspressoKey;-><init>(Landroidx/test/espresso/action/EspressoKey$Builder;)V

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/espresso/action/EspressoKey;->keyCode:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/espresso/action/EspressoKey;->metaState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/action/EspressoKey;->keyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroidx/test/espresso/action/EspressoKey;->metaState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "keyCode: %s, metaState: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
