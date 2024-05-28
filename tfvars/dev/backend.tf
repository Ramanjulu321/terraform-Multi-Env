terraform { 

backend "s3" {

bucket = "daws-78s-devlopment"
key = "multi-env-tfvars"
region = "us-east-1"
dynamodb_table = "daws-78s-dev"

}
}