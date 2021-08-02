#################################################
#                                               #
#          set this variable to your            #
#      main lucidum stack aws account number    #
#                                               #
#################################################


trust_account = "308025194586"
#trust_account = "123456789012"



ec2_detection = false
lucidum_s3_bucket = "example-ec2-detection-bucket"
# this is only required for ec2 detection lambda deployment



#aws_profile = "subaccount-awscli-profile"
# optional aws profile override.
# defaults to 'default' aws profile.
