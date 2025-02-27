# policy_as_code.tf

# Example policy as code using Sentinel
import "tfplan"

# Define a policy that checks for tags on all resources
main = rule {
    all tfplan.resources as resource {
        resource.type is "aws_instance" implies
            resource.applied.tags["Environment"] is not null
    }
}