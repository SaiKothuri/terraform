#
variable "bucketname"{
   type = string
   description = "Name of my First S3 Bucket" 
}
variable "name"{
   type = string
   description = "My First S3 Bucket"
}
variable "env"{
   type = string
}
variable "status"{
   type = string
}
variable "block_public_acls"{
   type = bool
}
variable "block_public_policy"{
   type = bool
}
variable "ignore_public_acls"{
   type = bool
}
variable "restrict_public_buckets"{
   type = bool
}
variable "versioning_status"{
   type = string
}
