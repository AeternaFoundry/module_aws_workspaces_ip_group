variable "workspaces_ip_groups" {
  description = <<EOT
Map of workspaces_ip_groups, attributes below
Required:
    - name
Optional:
    - description
    - region
    - tags
    - tags_all
    - rules (block):
        - description (optional)
        - source (required)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    rules = optional(list(object({
      description = optional(string)
      source      = string
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

