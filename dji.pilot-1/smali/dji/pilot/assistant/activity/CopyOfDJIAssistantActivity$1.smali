.class Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity$1;
.super Ljava/lang/Object;
.source "CopyOfDJIAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;


# direct methods
.method constructor <init>(Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity$1;->this$0:Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity$1;->this$0:Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;

    # getter for: Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;->fpsView:Ldji/publics/DJIUI/DJITextView;
    invoke-static {v0}, Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;->access$0(Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;)Ldji/publics/DJIUI/DJITextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FPS:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity$1;->this$0:Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;

    # getter for: Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;->mFps:I
    invoke-static {v2}, Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;->access$1(Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nQueueSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ldji/midware/natives/FPVController;->native_getQueueSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldji/publics/DJIUI/DJITextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity$1;->this$0:Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;->access$2(Ldji/pilot/assistant/activity/CopyOfDJIAssistantActivity;I)V

    .line 102
    return-void
.end method
