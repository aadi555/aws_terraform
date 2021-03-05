module "policy_attach" {
  source = "../../Modules/lambda/policyattach"
  iam_policy_attach = {
    role       = module.iam_role.iam_role
    policy_arn = module.aws_iam_policy.policy_arn
  }
}