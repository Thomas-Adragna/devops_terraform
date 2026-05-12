resource "github_repository" "app" {
  name        = "${var.project_name}-demo"
  description = "Dépôt géré par Terraform - DevOps S8"
  visibility  = "public"
  has_issues  = true
  has_wiki    = false
  auto_init   = true

  topics = ["terraform", "devops"]
}

resource "github_actions_secret" "db_url" {
  repository      = github_repository.app.name
  secret_name     = "DATABASE_URL"
  plaintext_value = var.db_url
}

resource "github_repository" "test" {
  name        = "${var.project_name}-test"
  description = "Second dépôt Terraform"

  visibility = "public"

  has_wiki   = true
  has_issues = false
  auto_init  = true
}