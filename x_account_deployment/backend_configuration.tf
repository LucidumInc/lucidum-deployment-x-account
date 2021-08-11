# comment and uncomment the following configuration below as needed to 
# enable terraform s3 remote state with dynamodb state locking

#terraform {
#  backend "local" {
#    path = "terraform.tfstate"
#  }
#}

terraform {
  backend "s3" {
    bucket         = "lucidum-x-account-s3-bucket-20210806185627531300000001"
    key            = "lucidum-x-account.tfstate"
    region         = "us-west-1"

    #dynamodb_table = "lucidum-x-account-tfstate-locking"
    # enable state locking with dynamodb
    # dynamodb table must be existing
  }
}
