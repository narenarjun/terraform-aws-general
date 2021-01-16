# Terraform AWS general

### AWS credentials

Since aws credentials are sensitive info, they are not added in the `main.tf` file,
they are set and exported in the environment variable in bash.

```bash
export AWS_ACCESS_KEY_ID="accesskeyinfo"
export AWS_SECRET_ACCESS_KEY="secretkeyinfo"
```