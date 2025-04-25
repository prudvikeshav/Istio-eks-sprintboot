variable "region" {
  description = "The AWS region to create the EKS cluster in"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "Istio-Demo"
}

variable "node_instance_type" {
  description = "The EC2 instance type for the EKS node group"
  default     = "t3.medium"
}

variable "node_group_name" {
  description = "The name of the node group"
  default     = "eks-node-group" # Added default value
}

variable "node_role_arn" {
  description = "The IAM role ARN for the EKS node group"
  default     = "arn:aws:iam::123456789012:role/eks-node-role" # Replace with your actual IAM role ARN
}

variable "subnet_ids" {
  description = "The subnet IDs for the EKS node group"
  type        = list(string)
  default     = ["subnet-12345678", "subnet-87654321"] # Replace with actual subnet IDs
}

variable "instance_types" {
  description = "The instance types for the EKS node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_size" {
  description = "The desired size of the node group"
  default     = 2
}

variable "min_size" {
  description = "The minimum size of the node group"
  default     = 2
}

variable "max_size" {
  description = "The maximum size of the node group"
  default     = 4
}
