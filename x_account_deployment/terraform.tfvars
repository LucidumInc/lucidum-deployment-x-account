#################################################
#                                               #
#             variables used by                 #
#         lucidum x-account deployment          #
#                                               #
#################################################


trust_account = "308025194586"
# this is required for the assume role deployment
# this is the account that will be allowed to assume from


assume_role_creation = false
# this flag controls assume role creation


ec2_detection = true
# this flag controls ec2 detection lambda creation


ec2_detection_name = "lucidum-ec2-detection"
lucidum_s3_bucket  = "lucidum-x-account-s3-bucket-20210806185627531300000001"
# this bucket is only required for ec2 detection lambda deployment
# this is the location where the lambda code will write to


# enable ec2 detection lambda per region
us_west_1_enable = true
us_west_2_enable = true
us_east_1_enable = true
us_east_2_enable = true

ca_central_1_enable   = false
eu_north_1_enable     = false
eu_west_3_enable      = false
eu_west_2_enable      = false
eu_west_1_enable      = false
eu_central_1_enable   = false
ap_south_1_enable     = false
ap_northeast_1_enable = false
ap_northeast_2_enable = false
ap_southeast_1_enable = false
ap_southeast_2_enable = false
sa_east_1_enable      = false


# optional terraform variables variables

#aws_profile = "subaccount-awscli-profile"
# this allows overriding the account to where deployment will occur
# defaults to 'default' aws profile.
