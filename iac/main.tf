resource "vercel_project" "project" {
  name           = "nextjs-vercel-terraform"
  framework      = "nextjs"
  root_directory = "src"

  git_repository = {
    type = "github"
    repo = "{github_account}/{repository}"
  }
}

resource "vercel_project_domain" "andrelopes_vercel" {
  project_id = vercel_project.project.id
  domain     = "totally-unique.vercel.app"
}
