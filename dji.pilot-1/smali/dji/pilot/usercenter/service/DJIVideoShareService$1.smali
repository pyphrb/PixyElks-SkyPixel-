.class Ldji/pilot/usercenter/service/DJIVideoShareService$1;
.super Ljava/lang/Object;
.source "DJIVideoShareService.java"

# interfaces
.implements Ldji/pilot/usercenter/listener/UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldji/pilot/usercenter/service/DJIVideoShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;


# direct methods
.method constructor <init>(Ldji/pilot/usercenter/service/DJIVideoShareService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;->onSuccess(I)V

    .line 69
    :cond_0
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$1(Ldji/pilot/usercenter/service/DJIVideoShareService;Z)V

    .line 70
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    invoke-virtual {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->stopSelf()V

    .line 71
    return-void
.end method

.method public onFailure()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;->onFail(II)V

    .line 62
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 48
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;->onProgress(II)V

    .line 51
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ldji/pilot/usercenter/service/DJIVideoShareService$1;->this$0:Ldji/pilot/usercenter/service/DJIVideoShareService;

    # getter for: Ldji/pilot/usercenter/service/DJIVideoShareService;->listener:Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;
    invoke-static {v0}, Ldji/pilot/usercenter/service/DJIVideoShareService;->access$0(Ldji/pilot/usercenter/service/DJIVideoShareService;)Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;

    move-result-object v0

    invoke-interface {v0}, Ldji/pilot/usercenter/manager/VideoShareManager$OnResultListener;->onStart()V

    .line 44
    :cond_0
    return-void
.end method
