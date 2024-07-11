terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 1.11"
    }
  }

  backend "s3" {
    bucket = "terraform-medium-api-notification"
    key    = "nextjs_vercel_terraform.tfstate"
  }
}

provider "vercel" {}
