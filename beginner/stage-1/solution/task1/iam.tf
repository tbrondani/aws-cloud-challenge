resource "aws_iam_role_policy_attachment" "example" {
  role = "${aws_iam_role.example.name}"
  policy_arn = "${aws_iam_policy.example.arn}"
}

resource "aws_iam_instance_profile" "example" {
  name = "s3-access-profile"
  role = "${aws_iam_role.example.name}"
}

resource "aws_iam_role" "example" {
  name = "s3-access-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
  tags = {
    Function = "S3-Access"
    Description = "Role to access the S3 bucket"
  }
}

resource "aws_iam_policy" "example" {
  name = "s3-access-policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "${aws_s3_bucket.example.arn}/*",
        "${aws_s3_bucket.example.arn}"
      ]
    }
  ]
}
EOF
}