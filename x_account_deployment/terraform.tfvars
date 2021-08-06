#################################################
#                                               #
#             variables used by                 #
#         lucidum x-account deployment          #
#                                               #
#################################################


trust_account = "123456789012"
# this is required for the assume role deployment
# this is the account that will be allowed to assume from

assume_role_creation = false
# this flag controls assume role creation

ec2_detection = true
# this flag controls ec2 detection lambda creation

ec2_detection_name = "lucidum-ec2-detection"
lucidum_s3_bucket = "lucidum-x-account-s3-bucket-20210806185627531300000001"
# this bucket is only required for ec2 detection lambda deployment
# this is the location where the lambda code will write to


# optional terraform variables variables

#aws_profile = "subaccount-awscli-profile"
# this allows overriding the account to where deployment will occur
# defaults to 'default' aws profile.
