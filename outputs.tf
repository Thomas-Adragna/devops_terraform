output "repository_name" {
  value = github_repository.app.name
}

output "repository_url" {
  value = github_repository.app.html_url
}