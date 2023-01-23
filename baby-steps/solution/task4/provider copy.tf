provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
  region                  = "us-west-2"
}

#Depending on the version of the provider or the OS you are using, these configs may vary.


