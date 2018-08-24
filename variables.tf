variable "loc" {
    description = "Default Azure region"
    default     =   "westeurope"
}

variable "tags" {
    default     = {
        source  = "citadel"
        env     = "training"
        Team    = "IT-SAAS-DTNA-Test"
    }
}

variable "tenant_id" {
    # az ad sp show --id "http://terraformKeyVaultReader" --output tsv --query appOwnerTenantId
    description = "GUID for the Azure AD tenancy or directory. "
    default     = "4f4f4c56-a772-461a-967e-7890c3960b3a"
}

variable "kvr_object_id" {
    # az ad sp show --id "http://terraformKeyVaultReader" --output tsv --query objectId}
    description = "Object ID for the terraformKeyVaultReader service principal"
    default     = "8c148645-4a91-4b81-b909-04cc09f721d5"
}

variable "webapplocs" {
    description = "List of locations for web apps"
    type        = "list"
    default     = []
}