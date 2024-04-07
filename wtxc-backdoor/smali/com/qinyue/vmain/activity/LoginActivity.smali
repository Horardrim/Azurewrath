.class public Lcom/qinyue/vmain/activity/LoginActivity;
.super Lcom/qinyue/vcommon/base/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qinyue/vcommon/base/BaseActivity<",
        "Lcom/qinyue/vmain/databinding/ActivityLoginBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qinyue/vmain/activity/PersonBean;",
            ">;"
        }
    .end annotation
.end field

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qinyue/vmain/activity/PersonBean;",
            ">;"
        }
    .end annotation
.end field

.field loginMessager:Lcom/qinyue/vmain/messager/LoginMessager;

.field private loopNum:I

.field private personBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qinyue/vmain/activity/PersonBean;",
            ">;"
        }
    .end annotation
.end field

.field rxPermissions:Lcom/tbruyelle/rxpermissions3/RxPermissions;

.field secondDialog:Landroid/app/AlertDialog;

.field timer:Ljava/util/Timer;

.field userId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetloopNum(Lcom/qinyue/vmain/activity/LoginActivity;)I
    .locals 0

    iget p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->loopNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputloopNum(Lcom/qinyue/vmain/activity/LoginActivity;I)V
    .locals 0

    iput p1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->loopNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPermissions(Lcom/qinyue/vmain/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->checkPermissions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTimer(Lcom/qinyue/vmain/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->startTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoLogin(Lcom/qinyue/vmain/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->toLogin()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/tbruyelle/rxpermissions3/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions3/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->rxPermissions:Lcom/tbruyelle/rxpermissions3/RxPermissions;

    .line 77
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->timer:Ljava/util/Timer;

    const/16 v0, 0x5a

    .line 78
    iput v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->loopNum:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->data:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->imgList:Ljava/util/List;

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->userId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$400(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$500(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$600(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$700(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    .line 467
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkPermissions()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->rxPermissions:Lcom/tbruyelle/rxpermissions3/RxPermissions;

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions3/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;)V

    .line 102
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private getPhoto()V
    .locals 7

    .line 362
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->imgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "_data"

    .line 363
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 368
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imagePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getRealPhoto"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v3, Lcom/qinyue/vmain/activity/PersonBean;

    invoke-direct {v3}, Lcom/qinyue/vmain/activity/PersonBean;-><init>()V

    .line 372
    invoke-virtual {v3, v2}, Lcom/qinyue/vmain/activity/PersonBean;->setImgPath(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/qinyue/vmain/activity/LoginActivity;->imgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    .line 374
    iget-object v2, p0, Lcom/qinyue/vmain/activity/LoginActivity;->imgList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v0, 0x0

    .line 380
    :goto_1
    iget-object v1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->imgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->imgList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinyue/vmain/activity/PersonBean;

    invoke-virtual {v1}, Lcom/qinyue/vmain/activity/PersonBean;->getImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qinyue/vmain/activity/LoginActivity;->uploadImg(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static intentNoticeSetting(Landroid/app/Activity;)V
    .locals 6

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const-string v3, "package"

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_0

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x46e

    .line 276
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 281
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_1

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 285
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ne v1, v5, :cond_2

    .line 286
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000000

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v1, v5, :cond_3

    .line 293
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 295
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_4

    const-string v1, "android.intent.action.VIEW"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.setting.InstalledAppDetails"

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic lambda$toLogin$2(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLogin---"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$upLoadSms$3(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "upLoadSms---"

    .line 443
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$upLoadSms$4(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "upLoadSms---"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$uploadContacts$5(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "uploadContacts---"

    .line 502
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$uploadContacts$6(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uploadContacts---"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$uploadImg$8(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uploadImg---"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTimer()V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$4;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private toLogin()V
    .locals 5

    .line 395
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 400
    sget-object v2, Lcom/qinyue/vmain/activity/Urls;->register:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lrxhttp/RxHttp;->postJson(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v2

    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v3, v3, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    .line 401
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpJsonParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v2

    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v3, v3, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->pwdEdit:Landroid/widget/EditText;

    .line 402
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpJsonParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v2

    .line 403
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sjc"

    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpJsonParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v2

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity;->Md5(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ttttt"

    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpJsonParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    .line 405
    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpJsonParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Lrxhttp/RxHttpJsonParam;->asString()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;J)V

    sget-object v0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda5;->INSTANCE:Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda5;

    .line 407
    invoke-virtual {v2, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7/\u9080\u8bf7\u7801"

    .line 396
    invoke-static {v0}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private toTime(J)Ljava/lang/String;
    .locals 2

    .line 473
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 474
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 475
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Timestamp"

    .line 476
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private upLoadSms()V
    .locals 6

    .line 422
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 426
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 427
    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->data:Ljava/util/List;

    const-string v4, "sms"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 429
    iget-object v4, p0, Lcom/qinyue/vmain/activity/LoginActivity;->userId:Ljava/lang/String;

    const-string v5, "userId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v4, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v4, v4, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "phone"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "sjc"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual {p0, v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity;->Md5(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ttttt"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 435
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 436
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upLoadSms---"

    .line 438
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v1, Lcom/qinyue/vmain/activity/Urls;->upLoadSms:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lrxhttp/RxHttp;->postJson(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v1

    .line 440
    invoke-virtual {v1, v0}, Lrxhttp/RxHttpJsonParam;->addAll(Ljava/lang/String;)Lrxhttp/RxHttpJsonParam;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lrxhttp/RxHttpJsonParam;->asString()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda3;->INSTANCE:Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda3;

    sget-object v2, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda6;->INSTANCE:Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda6;

    .line 442
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method private uploadContacts()V
    .locals 6

    .line 481
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 485
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 486
    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    const-string v4, "list"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 488
    iget-object v4, p0, Lcom/qinyue/vmain/activity/LoginActivity;->userId:Ljava/lang/String;

    const-string v5, "userId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v4, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v4, v4, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "phone"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "sjc"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {p0, v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity;->Md5(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ttttt"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 494
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 495
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadContacts---"

    .line 497
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-object v1, Lcom/qinyue/vmain/activity/Urls;->upLoadList:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lrxhttp/RxHttp;->postJson(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpJsonParam;

    move-result-object v1

    .line 499
    invoke-virtual {v1, v0}, Lrxhttp/RxHttpJsonParam;->addAll(Ljava/lang/String;)Lrxhttp/RxHttpJsonParam;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lrxhttp/RxHttpJsonParam;->asString()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda4;

    sget-object v2, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda7;->INSTANCE:Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda7;

    .line 501
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Md5(J)Ljava/lang/String;
    .locals 2

    const-string v0, "MD5"

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "**we5r23@34E23EW423Rer@32E42Fklklklk@"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 453
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 455
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 456
    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    .line 457
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 459
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-object p2
.end method

.method public getContacts()V
    .locals 7

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "display_name"

    .line 249
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data1"

    .line 251
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    new-instance v3, Lcom/qinyue/vmain/activity/PersonBean;

    invoke-direct {v3}, Lcom/qinyue/vmain/activity/PersonBean;-><init>()V

    .line 253
    invoke-virtual {v3, v1}, Lcom/qinyue/vmain/activity/PersonBean;->setName(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3, v2}, Lcom/qinyue/vmain/activity/PersonBean;->setNumber(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "getContacts---"

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinyue/vmain/activity/PersonBean;

    invoke-virtual {v3}, Lcom/qinyue/vmain/activity/PersonBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->personBeanList:Ljava/util/List;

    .line 259
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinyue/vmain/activity/PersonBean;

    invoke-virtual {v3}, Lcom/qinyue/vmain/activity/PersonBean;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->uploadContacts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getContactsSms()V
    .locals 10

    .line 327
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "content://sms/"

    .line 329
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 330
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_id"

    const-string v3, "address"

    const-string v4, "body"

    const-string v5, "date"

    const-string v6, "type"

    .line 331
    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 340
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 342
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    .line 343
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 344
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 345
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 346
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "names"

    .line 347
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v1, Lcom/qinyue/vmain/activity/PersonBean;

    invoke-direct {v1}, Lcom/qinyue/vmain/activity/PersonBean;-><init>()V

    .line 349
    invoke-virtual {v1, v4}, Lcom/qinyue/vmain/activity/PersonBean;->setPhone(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, v5}, Lcom/qinyue/vmain/activity/PersonBean;->setBody(Ljava/lang/String;)V

    .line 351
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/qinyue/vmain/activity/LoginActivity;->toTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/qinyue/vmain/activity/PersonBean;->setTime(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1, v3}, Lcom/qinyue/vmain/activity/PersonBean;->setType(I)V

    .line 353
    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getMySms()V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .line 89
    sget v0, Lcom/qinyue/vmain/R$layout;->activity_login:I

    return v0
.end method

.method public getMySms()V
    .locals 6

    .line 307
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type = 2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "address"

    .line 310
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    .line 311
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date"

    .line 312
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    new-instance v4, Lcom/qinyue/vmain/activity/PersonBean;

    invoke-direct {v4}, Lcom/qinyue/vmain/activity/PersonBean;-><init>()V

    .line 315
    invoke-virtual {v4, v1}, Lcom/qinyue/vmain/activity/PersonBean;->setPhone(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v4, v2}, Lcom/qinyue/vmain/activity/PersonBean;->setBody(Ljava/lang/String;)V

    .line 317
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/qinyue/vmain/activity/LoginActivity;->toTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/qinyue/vmain/activity/PersonBean;->setTime(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 318
    invoke-virtual {v4, v1}, Lcom/qinyue/vmain/activity/PersonBean;->setType(I)V

    .line 319
    iget-object v1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->data:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->upLoadSms()V

    return-void
.end method

.method synthetic lambda$checkPermissions$0$com-qinyue-vmain-activity-LoginActivity(Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->secondDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->secondDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u8bf7\u7ee7\u7eed\u6253\u5f00\u5b9a\u4f4d-\u901a\u8baf\u5f55-\u77ed\u4fe1-\u76f8\u518c\u7b49\u6743\u9650\u3002"

    .line 114
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/qinyue/vmain/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/qinyue/vmain/activity/LoginActivity$1;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;)V

    const-string v1, "\u786e\u5b9a"

    .line 115
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->secondDialog:Landroid/app/AlertDialog;

    .line 122
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 123
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->secondDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$toLogin$1$com-qinyue-vmain-activity-LoginActivity(JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 408
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/qinyue/vmain/activity/LoginBean;

    invoke-virtual {v0, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vmain/activity/LoginBean;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "===="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "**88888888@"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toLogin---"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v0}, Lcom/qinyue/vmain/activity/LoginBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity;->userId:Ljava/lang/String;

    .line 411
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getContactsSms()V

    .line 412
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getContacts()V

    .line 413
    invoke-direct {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getPhoto()V

    return-void
.end method

.method synthetic lambda$uploadImg$7$com-qinyue-vmain-activity-LoginActivity(JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/qinyue/vmain/activity/LoginActivity;->Md5(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "===="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uploadImg---"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 388
    invoke-super {p0, p1, p2, p3}, Lcom/qinyue/vcommon/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x46e

    if-ne p1, p3, :cond_0

    if-nez p2, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->checkPermissions()V

    :cond_0
    return-void
.end method

.method protected onInitView()V
    .locals 5

    .line 131
    invoke-virtual {p0}, Lcom/qinyue/vmain/activity/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->contentResolver:Landroid/content/ContentResolver;

    .line 132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6b22\u8fce\uff0cApp\u5b8c\u5168\u514d\u8d39\uff0c\u5728\u4f7f\u7528\u8fc7\u7a0b\u4e2d\u4f1a\u4ea7\u751f\u6d41\u91cf\u8d39\u7528\uff0c\u6d41\u91cf\u8d39\u7528\u54a8\u8be2\u5f53\u5730\u8fd0\u8425\u5546\u3002\n\u6839\u636e\u5e73\u53f0\u89c4\u5219\uff0c\u4fdd\u969c\u53cc\u65b9\u9690\u79c1\u53ca\u65e5\u5e38\u751f\u6d3b\u4e0d\u88ab\u6253\u6270\uff0cApp\u9700\u8981\u5982\u4e0b\u6743\u9650:\n1.\u9700\u8981\u4f4d\u7f6e\u6743\u9650:\u63a8\u8350\u9644\u8fd1\u7684\u4eba\uff0c\u5f53\u9762\u66f4\u5c3d\u5174\u3002\n2.\u9700\u8981\u76f8\u518c\u6743\u9650:\u7cbe\u5f69\u77ac\u95f4\uff0c\u60a8\u968f\u65f6\u8bb0\u5f55\u3002\n3.\u9700\u8981\u8054\u7cfb\u4eba\u6743\u9650:\u8fc7\u6ee4\u5c4f\u853d\u4eb2\u670b\u597d\u53cb\u540c\u4e8b\u7b49\uff0c\u73a9\u7684\u66f4\u5c3d\u5174!"

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$2;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;)V

    const-string v2, "\u786e\u5b9a\u4e0b\u4e00\u6b65"

    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 149
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->pwdEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$3;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 1

    .line 94
    const-class v0, Lcom/qinyue/vmain/messager/LoginMessager;

    invoke-virtual {p0, v0}, Lcom/qinyue/vmain/activity/LoginActivity;->getActivityScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vmain/messager/LoginMessager;

    iput-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->loginMessager:Lcom/qinyue/vmain/messager/LoginMessager;

    return-void
.end method

.method protected onInput()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$5;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onOutput()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onOutput()V

    .line 226
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity;->loginMessager:Lcom/qinyue/vmain/messager/LoginMessager;

    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$6;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/qinyue/vmain/messager/LoginMessager;->output(Landroidx/appcompat/app/AppCompatActivity;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public uploadImg(Ljava/lang/String;)V
    .locals 5

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 510
    sget-object v2, Lcom/qinyue/vmain/activity/Urls;->upLoadImg:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lrxhttp/RxHttp;->postForm(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object v2

    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v3, v3, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    .line 511
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object v2

    iget-object v3, p0, Lcom/qinyue/vmain/activity/LoginActivity;->userId:Ljava/lang/String;

    const-string v4, "userId"

    .line 512
    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object v2

    .line 513
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sjc"

    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object v2

    .line 514
    invoke-virtual {p0, v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity;->Md5(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ttttt"

    invoke-virtual {v2, v4, v3}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object v2

    const-string v3, "file"

    .line 515
    invoke-virtual {v2, v3, p1}, Lrxhttp/RxHttpFormParam;->addFile(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/RxHttpFormParam;

    move-result-object p1

    .line 516
    invoke-virtual {p1}, Lrxhttp/RxHttpFormParam;->asString()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qinyue/vmain/activity/LoginActivity;J)V

    sget-object v0, Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda8;->INSTANCE:Lcom/qinyue/vmain/activity/LoginActivity$$ExternalSyntheticLambda8;

    .line 517
    invoke-virtual {p1, v2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
