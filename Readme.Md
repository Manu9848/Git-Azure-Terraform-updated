Following is the format where Terraform Refers for Access Credentials For Azure.
# For Linux & MacOS Terminals
export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"  
export ARM_CLIENT_SECRET="12345678-0000-0000-0000-000000000000"  
export ARM_TENANT_ID="10000000-0000-0000-0000-000000000000"  
export ARM_SUBSCRIPTION_ID="20000000-0000-0000-0000-000000000000"  

# For PowerShell
$env:ARM_CLIENT_ID = "00000000-0000-0000-0000-000000000000"  
$env:ARM_CLIENT_SECRET = "12345678-0000-0000-0000-000000000000"  
$env:ARM_TENANT_ID = "10000000-0000-0000-0000-000000000000"  
$env:ARM_SUBSCRIPTION_ID = "20000000-0000-0000-0000-000000000000"  

# Terraform for Windows
1. mkdir C:\Tools and add this path to env variables.  
2. Download latest Terraform.exe to C:\Tools.  
3. Right click and open Powershell in project folder and run terraform version.  

# Terraform for Linux & MacOS
1. Download terraform to /usr/local/bin  
2. Change directory to project folder and run terraform version.  



#####DISCUSSIONS HAPPEBED##########
1. Installing Git.
2. Creating GitHub Account.
3. Azure SP Creation
4. Azure SP Access
5. Terraform code for RG, VNET, KV, Variables.
6. Terraform state mv, terraform plan --refresh-only
7. Terraform statefile locking with Storage Lease
8. GitHub Branches and pull requests.

9. Random Integer and locals expressions.
10. Ammend commit messages and dealing with remote repos.
9. Merge Conflicts
10. GitHub Actions
11. Cherry-Pick
12. Stash
###############