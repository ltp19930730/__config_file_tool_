alias instance='aws ec2 run-instances --key-name devenv-key --image-id'
alias stopinstance='aws ec2 terminate-instances --instance-ids'

# instance in aws
alias aws_ubuntu='aws ec2 run-instances --key-name devenv-key --image-id ami-6de0dd04 --instance-type t1.micro'
alias aws_omnios='aws ec2 run-instances --key-name devenv-key --image-id ami-50ecc847 --instance-type t1.micro'
alias aws_freebsd='aws ec2 run-instances --key-name devenv-key --image-id ami-d0b520b8 --instance-type t1.micro'


alias gitstat='git status'
alias gitcom='git commit -m '

# regular exp
alias ipv4_reg='echo "^(((\\d{1,2})|(1\\d{2})|(2[0-4]\\d)|(25[0-5]))\\.){3}((\\d{1,2})|(1\\d{2})|(2[0-4]\\d)|(25[0-5]))$"'
