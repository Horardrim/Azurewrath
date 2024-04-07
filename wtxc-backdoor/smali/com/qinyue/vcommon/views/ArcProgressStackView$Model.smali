.class public Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;
.super Ljava/lang/Object;
.source "ArcProgressStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vcommon/views/ArcProgressStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Model"
.end annotation


# instance fields
.field private mBgColor:I

.field private final mBounds:Landroid/graphics/RectF;

.field private mColor:I

.field private mColors:[I

.field private mLastProgress:F

.field private final mPath:Landroid/graphics/Path;

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mPos:[F

.field private mProgress:F

.field private mSweepGradient:Landroid/graphics/SweepGradient;

.field private final mTan:[F

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastProgress(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)F
    .locals 0

    iget p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mLastProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPath(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPathMeasure(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/PathMeasure;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPathMeasure:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPos:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSweepGradient(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/SweepGradient;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mSweepGradient:Landroid/graphics/SweepGradient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTan(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTan:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTextBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSweepGradient(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;Landroid/graphics/SweepGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mSweepGradient:Landroid/graphics/SweepGradient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 2

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mBounds:Landroid/graphics/RectF;

    .line 1044
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTextBounds:Landroid/graphics/Rect;

    .line 1046
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPath:Landroid/graphics/Path;

    .line 1049
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1050
    iput-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPos:[F

    new-array v0, v0, [F

    .line 1051
    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTan:[F

    .line 1054
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setTitle(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0, p2}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setProgress(F)V

    .line 1056
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FII)V
    .locals 2

    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mBounds:Landroid/graphics/RectF;

    .line 1044
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTextBounds:Landroid/graphics/Rect;

    .line 1046
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPath:Landroid/graphics/Path;

    .line 1049
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1050
    iput-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPos:[F

    new-array v0, v0, [F

    .line 1051
    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTan:[F

    .line 1066
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setTitle(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0, p2}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setProgress(F)V

    .line 1068
    invoke-virtual {p0, p4}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setColor(I)V

    .line 1069
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setBgColor(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI[I)V
    .locals 2

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mBounds:Landroid/graphics/RectF;

    .line 1044
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTextBounds:Landroid/graphics/Rect;

    .line 1046
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPath:Landroid/graphics/Path;

    .line 1049
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1050
    iput-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPos:[F

    new-array v0, v0, [F

    .line 1051
    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTan:[F

    .line 1073
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setTitle(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0, p2}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setProgress(F)V

    .line 1075
    invoke-virtual {p0, p4}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setColors([I)V

    .line 1076
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setBgColor(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F[I)V
    .locals 2

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mBounds:Landroid/graphics/RectF;

    .line 1044
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTextBounds:Landroid/graphics/Rect;

    .line 1046
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPath:Landroid/graphics/Path;

    .line 1049
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1050
    iput-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mPos:[F

    new-array v0, v0, [F

    .line 1051
    iput-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTan:[F

    .line 1060
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setTitle(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0, p2}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setProgress(F)V

    .line 1062
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setColors([I)V

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .line 1107
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mBgColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 1099
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mColor:I

    return v0
.end method

.method public getColors()[I
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mColors:[I

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1088
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mProgress:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setBgColor(I)V
    .locals 0

    .line 1111
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mBgColor:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1103
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mColor:I

    return-void
.end method

.method public setColors([I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1119
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mColors:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1120
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mColors:[I

    :goto_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1094
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mProgress:F

    iput v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mLastProgress:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1095
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mProgress:F

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->mTitle:Ljava/lang/String;

    return-void
.end method
