resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0e3312fa5648c3e0f"]
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = "${each.key}. ${var.environment}"
            Module = "${each.key}. ${var.environment}"
            Environment = var.environment
        }
    )  
}
