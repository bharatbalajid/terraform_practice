# create a iam user
resource "aws_iam_user" "myuser" {
  for_each = toset(["gobi", "gokul", "kanagaraj", "jai", "aravind"])
  name     = each.key

}
