#################################################
#                                               #
#          set this variable to your            #
#      main lucidum stack aws account number    #
#                                               #
#################################################


trust_account = "308025194586"
#trust_account = "123456789012"


assume_role_creation = false
# this flag controls assume role creation


ec2_detection = true
ec2_detection_name = "lucidum-ec2-detection"
#lucidum_s3_bucket = "example-ec2-detection-bucket"
# this bucket is only required for ec2 detection lambda deployment


#aws_profile = "subaccount-awscli-profile"
# optional aws profile override.
# defaults to 'default' aws profile.
