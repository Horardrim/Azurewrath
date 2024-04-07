.class public Lskin/support/content/res/SkinCompatResources;
.super Ljava/lang/Object;
.source "SkinCompatResources.java"


# static fields
.field private static volatile sInstance:Lskin/support/content/res/SkinCompatResources;


# instance fields
.field private isDefaultSkin:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSkinName:Ljava/lang/String;

.field private mSkinPkgName:Ljava/lang/String;

.field private mSkinResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lskin/support/content/res/SkinResources;",
            ">;"
        }
    .end annotation
.end field

.field private mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinPkgName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinResources:Ljava/util/List;

    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 1

    .line 233
    invoke-static {}, Lskin/support/content/res/SkinCompatResources;->getInstance()Lskin/support/content/res/SkinCompatResources;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lskin/support/content/res/SkinCompatResources;->getSkinColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 237
    invoke-static {}, Lskin/support/content/res/SkinCompatResources;->getInstance()Lskin/support/content/res/SkinCompatResources;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lskin/support/content/res/SkinCompatResources;->getSkinColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 241
    invoke-static {}, Lskin/support/content/res/SkinCompatResources;->getInstance()Lskin/support/content/res/SkinCompatResources;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lskin/support/content/res/SkinCompatResources;->getSkinDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lskin/support/content/res/SkinCompatResources;
    .locals 2

    .line 34
    sget-object v0, Lskin/support/content/res/SkinCompatResources;->sInstance:Lskin/support/content/res/SkinCompatResources;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lskin/support/content/res/SkinCompatResources;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lskin/support/content/res/SkinCompatResources;->sInstance:Lskin/support/content/res/SkinCompatResources;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lskin/support/content/res/SkinCompatResources;

    invoke-direct {v1}, Lskin/support/content/res/SkinCompatResources;-><init>()V

    sput-object v1, Lskin/support/content/res/SkinCompatResources;->sInstance:Lskin/support/content/res/SkinCompatResources;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lskin/support/content/res/SkinCompatResources;->sInstance:Lskin/support/content/res/SkinCompatResources;

    return-object v0
.end method

.method private getSkinColor(Landroid/content/Context;I)I
    .locals 2

    .line 129
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/content/res/SkinCompatUserThemeManager;->isColorEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lskin/support/content/res/SkinCompatUserThemeManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1

    .line 135
    :cond_0
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lskin/support/SkinCompatManager$SkinLoaderStrategy;->getColor(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1

    .line 141
    :cond_1
    iget-boolean v0, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p0, p1, p2}, Lskin/support/content/res/SkinCompatResources;->getTargetResId(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getSkinColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 151
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/content/res/SkinCompatUserThemeManager;->isColorEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lskin/support/content/res/SkinCompatUserThemeManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    if-eqz v0, :cond_1

    .line 158
    iget-object v1, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lskin/support/SkinCompatManager$SkinLoaderStrategy;->getColorStateList(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 163
    :cond_1
    iget-boolean v0, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    if-nez v0, :cond_2

    .line 164
    invoke-virtual {p0, p1, p2}, Lskin/support/content/res/SkinCompatResources;->getTargetResId(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 169
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 172
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private getSkinDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 177
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/content/res/SkinCompatUserThemeManager;->isColorEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lskin/support/content/res/SkinCompatUserThemeManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 183
    :cond_0
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/content/res/SkinCompatUserThemeManager;->isDrawableEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lskin/support/content/res/SkinCompatUserThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 189
    :cond_1
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    if-eqz v0, :cond_2

    .line 190
    iget-object v1, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lskin/support/SkinCompatManager$SkinLoaderStrategy;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 195
    :cond_2
    iget-boolean v0, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    if-nez v0, :cond_3

    .line 196
    invoke-virtual {p0, p1, p2}, Lskin/support/content/res/SkinCompatResources;->getTargetResId(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 201
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getSkinValue(Landroid/content/Context;ILandroid/util/TypedValue;Z)V
    .locals 1

    .line 222
    iget-boolean v0, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2}, Lskin/support/content/res/SkinCompatResources;->getTargetResId(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v0, p3, p4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method private getSkinXml(Landroid/content/Context;I)Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 212
    iget-boolean v0, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0, p1, p2}, Lskin/support/content/res/SkinCompatResources;->getTargetResId(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public static getValue(Landroid/content/Context;ILandroid/util/TypedValue;Z)V
    .locals 1

    .line 249
    invoke-static {}, Lskin/support/content/res/SkinCompatResources;->getInstance()Lskin/support/content/res/SkinCompatResources;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lskin/support/content/res/SkinCompatResources;->getSkinValue(Landroid/content/Context;ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public static getXml(Landroid/content/Context;I)Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 245
    invoke-static {}, Lskin/support/content/res/SkinCompatResources;->getInstance()Lskin/support/content/res/SkinCompatResources;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lskin/support/content/res/SkinCompatResources;->getSkinXml(Landroid/content/Context;I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addSkinResources(Lskin/support/content/res/SkinResources;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColor(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/SkinCompatManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lskin/support/content/res/SkinCompatResources;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/SkinCompatManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lskin/support/content/res/SkinCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/SkinCompatManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lskin/support/content/res/SkinCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getSkinPkgName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSkinResources()Landroid/content/res/Resources;
    .locals 1

    .line 81
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getStrategy()Lskin/support/SkinCompatManager$SkinLoaderStrategy;
    .locals 1

    .line 89
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    return-object v0
.end method

.method getStrategyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 205
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lskin/support/SkinCompatManager$SkinLoaderStrategy;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetResId(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x0

    .line 114
    :try_start_0
    iget-object v1, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    invoke-interface {v1, p1, v0, p2}, Lskin/support/SkinCompatManager$SkinLoaderStrategy;->getTargetResourceEntryName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lskin/support/content/res/SkinCompatResources;->mSkinPkgName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDefaultSkin()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 49
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/SkinCompatManager;->getStrategies()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    invoke-virtual {p0, v0}, Lskin/support/content/res/SkinCompatResources;->reset(Lskin/support/SkinCompatManager$SkinLoaderStrategy;)V

    return-void
.end method

.method public reset(Lskin/support/SkinCompatManager$SkinLoaderStrategy;)V
    .locals 1

    .line 53
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/SkinCompatManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinPkgName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    .line 58
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lskin/support/content/res/SkinCompatUserThemeManager;->clearCaches()V

    .line 59
    iget-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mSkinResources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lskin/support/content/res/SkinResources;

    .line 60
    invoke-interface {v0}, Lskin/support/content/res/SkinResources;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupSkin(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lskin/support/SkinCompatManager$SkinLoaderStrategy;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iput-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mResources:Landroid/content/res/Resources;

    .line 70
    iput-object p2, p0, Lskin/support/content/res/SkinCompatResources;->mSkinPkgName:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lskin/support/content/res/SkinCompatResources;->mSkinName:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lskin/support/content/res/SkinCompatResources;->mStrategy:Lskin/support/SkinCompatManager$SkinLoaderStrategy;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lskin/support/content/res/SkinCompatResources;->isDefaultSkin:Z

    .line 74
    invoke-static {}, Lskin/support/content/res/SkinCompatUserThemeManager;->get()Lskin/support/content/res/SkinCompatUserThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lskin/support/content/res/SkinCompatUserThemeManager;->clearCaches()V

    .line 75
    iget-object p1, p0, Lskin/support/content/res/SkinCompatResources;->mSkinResources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lskin/support/content/res/SkinResources;

    .line 76
    invoke-interface {p2}, Lskin/support/content/res/SkinResources;->clear()V

    goto :goto_0

    :cond_1
    return-void

    .line 66
    :cond_2
    :goto_1
    invoke-virtual {p0, p4}, Lskin/support/content/res/SkinCompatResources;->reset(Lskin/support/SkinCompatManager$SkinLoaderStrategy;)V

    return-void
.end method
