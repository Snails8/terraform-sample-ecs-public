# ==========================================================
# IAM 設定
# ECS-Agentが使用するIAMロール や タスク(=コンテナ)に付与するIAMロール の定義
# ==========================================================

variable "app_name" {
  type = string
}

# 第三者に「自アカウントのAPI権限を委譲する」ためのもの

# AWS->ECSのサービスを信頼する => ECSがAssumeRoleを行えるようになる
resource "aws_iam_role" "task_execution" {
  name = "${var.app_name}-TaskExecution"
  assume_role_policy = file(".iam/task_execution_role.json")
}