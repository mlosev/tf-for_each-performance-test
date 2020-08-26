locals {
    users = yamldecode(file("../users.yaml"))
}

resource "null_resource" "user" {
    for_each = local.users

    triggers = {
        name = each.key
        groups = join(",", each.value)
    }
}

resource "null_resource" "user_group" {
    for_each = local.users

    triggers = {
        name = each.key
        groups = join(",", each.value)
    }
}
